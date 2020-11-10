unit UfmLauncher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBAccess, Uni, MemDS, UniProvider, InterBaseUniProvider,
  TLHelp32, ShellAPI, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls,
  cxImageComboBox, Menus, cxButtons, dxmdaset, ComCtrls, ImgList;

type
  TfmLauncher = class(TForm)
    InterBaseUniProvider1: TInterBaseUniProvider;
    UniConnection1: TUniConnection;
    VERSION_MANAGER_SEL: TUniStoredProc;
    VERSION_MANAGER_SELID: TIntegerField;
    VERSION_MANAGER_SELCURRENT_VERSION: TStringField;
    VERSION_MANAGER_SELUPDATE_DATE: TDateField;
    VERSION_MANAGER_SELUPDATE_MESSAGE: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Memo3: TMemo;
    btnDown: TcxButton;
    dxMemData1: TdxMemData;
    DataSource1: TDataSource;
    dxMemData1id: TIntegerField;
    dxMemData1version_id: TIntegerField;
    dxMemData1file_name: TStringField;
    dxMemData1up_states: TIntegerField;
    NEW_UPDATE_FILE_SEL: TUniStoredProc;
    NEW_UPDATE_FILE_SELID: TIntegerField;
    NEW_UPDATE_FILE_SELFILE_NAME: TStringField;
    NEW_UPDATE_FILE_SELVERSION_ID: TIntegerField;
    NEW_UPDATE_FILE_SELBYID: TUniStoredProc;
    NEW_UPDATE_FILE_SELBYIDFILE_NAME: TStringField;
    NEW_UPDATE_FILE_SELBYIDUPDATE_FILE: TBlobField;
    btnGotoUpdate: TcxButton;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridAttachFile: TcxGridTableView;
    gridAttachFileColumn1: TcxGridColumn;
    gridAttachFileColumn2: TcxGridColumn;
    gridAttachFileColumn3: TcxGridColumn;
    LabelServerVersion: TLabel;
    ImageList1: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormShow(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure btnGotoUpdateClick(Sender: TObject);
  private
    function GetServerVersion(v_kind : Integer): string;
    procedure append_file;
    { Private declarations }
  public
    { Public declarations }
    gsDefaultFolder : string;
  end;

var
  fmLauncher: TfmLauncher;

implementation

{$R *.dfm}

function FileVersion(const FileName: TFileName): String;
var
  VerInfoSize: Cardinal;
  VerValueSize: Cardinal;
  Dummy: Cardinal;
  PVerInfo: Pointer;
  PVerValue: PVSFixedFileInfo;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(FileName), Dummy);
  GetMem(PVerInfo, VerInfoSize);
  try
    if GetFileVersionInfo(PChar(FileName), 0, VerInfoSize, PVerInfo) then
      if VerQueryValue(PVerInfo, '\', Pointer(PVerValue), VerValueSize) then
        with PVerValue^ do
          Result := Format('%d.%d.%d.%d', [
            HiWord(dwFileVersionMS), //Major
            LoWord(dwFileVersionMS), //Minor
            HiWord(dwFileVersionLS), //Release
            LoWord(dwFileVersionLS)]); //Build
  finally
    FreeMem(PVerInfo, VerInfoSize);
  end;
end;

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function isFileOpen(ExeFileName: string): integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      result := FProcessEntry32.th32ProcessID;
      break;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function TfmLauncher.GetServerVersion(v_kind : Integer) : string;
begin
  VERSION_MANAGER_SEL.ParamByName('V_ID').Value := v_kind;
  VERSION_MANAGER_SEL.Active := True;
  if VERSION_MANAGER_SEL.RecordCount > 0 then begin
    Memo3.Text := VERSION_MANAGER_SELUPDATE_MESSAGE.AsString;
    Result := VERSION_MANAGER_SELCURRENT_VERSION.AsString;
  end else begin
    Result := '';
  end;
end;

procedure TfmLauncher.btnDownClick(Sender: TObject);
var
  i, cnt, data_id : Integer;
  mStream : TMemoryStream;
  fname : string;
begin
  Screen.Cursor := crHourGlass;
  mStream := TMemoryStream.Create;
  cnt := gridAttachFile.DataController.RecordCount;
  gridAttachFile.DataController.GotoFirst;
  for i := 0 to cnt - 1 do begin
    gridAttachFile.DataController.BeginUpdate;
    gridAttachFile.DataController.Values[i, 2] := 1;
    gridAttachFile.DataController.EndUpdate;
    cxGrid1.Refresh;
    data_id := gridAttachFile.DataController.Values[i, 0];
    fname := gridAttachFile.DataController.Values[i, 1];
    NEW_UPDATE_FILE_SELBYID.ParamByName('ID').Value := data_id;
    NEW_UPDATE_FILE_SELBYID.Active := True;
    NEW_UPDATE_FILE_SELBYID.Refresh;
    TBlobField(NEW_UPDATE_FILE_SELBYIDUPDATE_FILE).SaveToStream(mStream);
    mStream.Position := 0;
    mStream.SaveToFile(gsDefaultFolder + fname);
    mStream.Clear;

    gridAttachFile.DataController.BeginUpdate;
    gridAttachFile.DataController.Values[i, 2] := 2;
    gridAttachFile.DataController.EndUpdate;
    cxGrid1.Refresh;
    gridAttachFile.DataController.GotoNext;
  end;
  ShowMessage('파일 업데이트 완료!');
  mStream.Free;
  Screen.Cursor := crArrow;
  //본 프로그램을 실행하고 업데이트 실행파일을 종료한다.
  ShellExecute(0, 'open', PWideChar(gsDefaultFolder + 'PVBody.exe'), '@CcnSoft@', nil, SW_SHOWNORMAL);
  KillTask(ExtractFileName(Application.ExeName));

end;

procedure TfmLauncher.btnGotoUpdateClick(Sender: TObject);
begin
  append_file;
  cxPageControl1.ActivePageIndex := 1;
end;

procedure TfmLauncher.FormShow(Sender: TObject);
var
  ServerVersion, AppVersion : string;
  i, version_kind : Integer;
  fname : string;
begin
  cxPageControl1.Properties.HideTabs := True;
  cxPageControl1.ActivePageIndex := 0;
  gsDefaultFolder := ExtractFilePath(Application.ExeName);
  fname := gsDefaultFolder + 'PVBody.exe';
  if FileExists(fname) then begin
    version_kind := 1;
    AppVersion := FileVersion(fname);
    ServerVersion := GetServerVersion(version_kind);
    if isFileOpen('pvbody.exe') > 0 then
      KillTask('pvbody.exe');
    Label1.Caption := AppVersion;
    Label2.Caption := ServerVersion;
    LabelServerVersion.Caption := ServerVersion;
    if ServerVersion > AppVersion then begin
      Label3.Caption := '새로운 버전이 있습니다.' + #13#10 +
                      '업데이트 버튼을 클릭하여' + #13#10 +
                      '업데이트를 진행하세요.';
      btnGotoUpdate.Caption := '업데이트';
    end else begin
      //본 프로그램을 실행하고 업데이트 실행파일을 종료한다.
      ShellExecute(0, 'open', PWideChar(gsDefaultFolder + 'PVBody.exe'), '@CcnSoft@', nil, SW_SHOWNORMAL);
      KillTask(ExtractFileName(Application.ExeName));
    end;
  end else begin
    version_kind := 2;
    ServerVersion := GetServerVersion(version_kind);
    Label1.Caption := '없음';
    Label2.Caption := ServerVersion;
    Label3.Caption := '사용자의 PC에 프로그램을 설치합니다.' + #13#10 +
                      '다운로드버튼을 클릭하여' + #13#10 +
                      '설치를 진행하세요.';
    btnGotoUpdate.Caption := '다운로드';
  end;
end;

procedure TfmLauncher.append_file;
var
  i, cnt, n : Integer;
begin
  NEW_UPDATE_FILE_SEL.ParamByName('v_id').Value := VERSION_MANAGER_SELID.Value;
  NEW_UPDATE_FILE_SEL.Active := True;
  cnt := NEW_UPDATE_FILE_SEL.RecordCount;
  NEW_UPDATE_FILE_SEL.First;
  gridAttachFile.DataController.RecordCount := 0;
  for i := 0 to cnt - 1 do begin
    n := gridAttachFile.DataController.AppendRecord;
    gridAttachFile.DataController.BeginUpdate;
    gridAttachFile.DataController.Values[n, 0] := NEW_UPDATE_FILE_SELID.Value;
    gridAttachFile.DataController.Values[n, 1] := NEW_UPDATE_FILE_SELFILE_NAME.Value;         //세번째
    gridAttachFile.DataController.Values[n, 2] := 0;
    gridAttachFile.DataController.EndUpdate;
    NEW_UPDATE_FILE_SEL.Next;
  end;
  gridAttachFile.DataController.GotoFirst;
end;

end.
