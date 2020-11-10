unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxTabbedMDI, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Buttons, ActnList, StdCtrls, UniProvider, TLHelp32,
  InterBaseUniProvider, DB, DBAccess, Uni, cxLocalization, ShellAPI, WebCopy,
  AppEvnts, dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxBarBuiltInMenu,
  cxClasses, cxLookAndFeels;

type
  TfmMain = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    MainMenu1: TMainMenu;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    ActionList1: TActionList;
    ImageAction: TImageList;
    actTileCascade: TAction;
    actTileHorizontal: TAction;
    ImageList3: TImageList;
    actTileVertical: TAction;
    actTabMode: TAction;
    actCloseAll: TAction;
    actCapture: TAction;
    actUserManager: TAction;
    actCompUserRequest: TAction;
    actUserInformation: TAction;
    cxLocalizer1: TcxLocalizer;
    actSetupConfig: TAction;
    actCheckUpdate: TAction;
    WebCopy1: TWebCopy;
    actMemberDetail: TAction;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    UniSQL: TUniSQL;
    actCurrentLoginUser: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    lblTimer: TLabel;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure actTileCascadeExecute(Sender: TObject);
    procedure actTileHorizontalExecute(Sender: TObject);
    procedure actTileVerticalExecute(Sender: TObject);
    procedure actCaptureExecute(Sender: TObject);
    procedure actMemberManagerExecute(Sender: TObject);
    procedure actUserInformationExecute(Sender: TObject);
    procedure WebCopy1ConnectError(Sender: TObject);
    procedure WebCopy1FileDone(Sender: TObject; idx: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure actCurrentLoginUserExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure ActTodayExecute(Sender: TObject);
  private
    procedure DownloadUpdate;
    { Private declarations }
  public
    { Public declarations }
    appmgr : IInterface;
    SMS_LIST : TStringList;
    gsDefaultFolder : string;
    downfilename : string;
    FStartIdle: Cardinal;
  end;

var
  fmMain: TfmMain;

implementation


uses jjsApp, GlobalVar, UdmDBCommon, UfmSettings, UfmUserInfo;

  {$R *.dfm}

function CreateChild(sClass : string):Boolean;
var
  MyFormClass : TFormClass;
  WorkForm : TForm;
  H : THandle;
  I : Integer;
begin
  Result := True; H := 0;
  for I := 0 to Screen.CustomFormCount - 1 do begin
    if UpperCase('T' + Screen.CustomForms[I].Name) = UpperCase(sClass) then begin
      H := Screen.CustomForms[I].Handle;
      Break;
    end;
  end;
  if H = 0 then begin
    MyFormClass := TFormClass(GetClass(sClass));
    if MyFormClass <> nil then begin
      WorkForm := MyFormClass.Create(Application.MainForm);
    end else Result := False;
  end else begin
    if IsIconic(H) then ShowWindow(H, SW_SHOWNORMAL)
    else BringWindowToTop(H);
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  appmgr := TAppManager.Create;
  gsDefaultFolder := ExtractFilePath(Application.ExeName);

  cxLocalizer1.FileName := gsDefaultFolder + 'ccnkorean.ini';
  cxLocalizer1.StorageType := lstIni;
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := $0412;
end;

procedure TfmMain.FormShow(Sender: TObject);
var
  ukind : string;
begin
  if LoginUserKIND = 0 then begin
    ukind := '사용자';
  end else begin
    ukind := '관리자';
  end;
  StatusBar1.Panels[1].Text := '버전: ' + AppVersion;
  StatusBar1.Panels[2].Text := '사용자명: ' + LoginUserName + '(' + ukind + ')';
  StatusBar1.Panels[3].Text := '로그인ID: ' + LoginUserID;
end;

procedure TfmMain.N15Click(Sender: TObject);
begin
  CreateChild('TfmExtractMemberPicture');
end;

procedure TfmMain.Timer1Timer(Sender: TObject);
var
  vIdleTime : Cardinal;
  vSeconds  : Cardinal;
begin
  if ExecuteMode = 1 then begin
    vIdleTime := GetTickCount - FStartIdle;
    vSeconds := vIdleTime div 1000;
    lblTimer.Caption := Format('%.d', [vSeconds]);
    if vSeconds > 120 then begin
      UniSQL.Execute;
      FStartIdle := GetTickCount;
    end;
  end;
end;

procedure TfmMain.WebCopy1ConnectError(Sender: TObject);
begin
  ShowMessage('서버 연결 에러!!!');
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

procedure TfmMain.actCaptureExecute(Sender: TObject);
begin
  CreateChild('TfmCapture');
end;

procedure TfmMain.DownloadUpdate;
begin
  WebCopy1.Items.Clear;
  with WebCopy1.Items.Add do begin
    FTPHost := '210.122.36.244';
    FTPUserID := 'ftp_user';
    FTPPassword := '@CcnSoft!@#';
    URL := '/YogaBody/' + UpdateFileName;
    Protocol := wpFTP;
    FileDate := Date;
    CopyNewerOnly := false;
    TargetDir := gsDefaultFolder + UpdateFileName;
  end;
  WebCopy1.Execute;
end;

procedure TfmMain.WebCopy1FileDone(Sender: TObject; idx: Integer);
begin
  ShowMessage('파일 다운로드 완료!' + #13#10 + '확인버튼을 누르면 업데이트를 진행합니다.');
  ShellExecute(0, nil, PWideChar(gsDefaultFolder + UpdateFileName + '\' + UpdateFileName), nil, nil, SW_SHOWNORMAL);
  KillTask(ExtractFileName(Application.ExeName));
end;

procedure TfmMain.actCurrentLoginUserExecute(Sender: TObject);
begin
  CreateChild('TfmLoginUsers');
end;

procedure TfmMain.actMemberManagerExecute(Sender: TObject);
begin
  CreateChild('TfmMember');
end;

procedure TfmMain.actTileCascadeExecute(Sender: TObject);
begin
  Cascade;
end;

procedure TfmMain.actTileHorizontalExecute(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure TfmMain.actTileVerticalExecute(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

procedure TfmMain.ActTodayExecute(Sender: TObject);
begin
  CreateChild('TfmToday');
end;

procedure TfmMain.actUserInformationExecute(Sender: TObject);
begin
  fmUserInfo := TfmUserInfo.Create(Self);
  try
    fmUserInfo.ShowModal;
  finally
    fmUserInfo.Free;
  end;
end;

procedure TfmMain.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  if Timer1.Enabled then Exit;
  FStartIdle := GetTickCount;
  Timer1.Enabled := True;
end;

procedure TfmMain.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  Handled := False;
  case Msg.message of
    WM_KEYDOWN
    , WM_MOUSEMOVE
    , WM_MOUSEWHEEL
    , WM_LBUTTONDOWN
    , WM_RBUTTONDOWN
    , WM_MBUTTONDOWN : Timer1.Enabled := False;
  end;
end;

end.
