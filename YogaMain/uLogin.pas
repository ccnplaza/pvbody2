unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, dxGDIPlusClasses, ExtCtrls, ShellAPI,
  UniProvider, InterBaseUniProvider, DB, DBAccess, Uni, IniFiles,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxPC, DateUtils, dxSkinOffice2013White, dxSkinMetropolis, TLHelp32,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxBarBuiltInMenu, MemDS, dxmdaset, Menus, cxButtons, Registry;

type
  TfmLogin = class(TForm)
    pnl1: TPanel;
    lbl7: TLabel;
    UniConnection1: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    grpLogin: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtUserID: TEdit;
    edtPassword: TEdit;
    btnLocalOK: TBitBtn;
    BitBtn1: TBitBtn;
    grpActivation: TGroupBox;
    Label3: TLabel;
    lblActivationMsg: TLabel;
    SP_CHECK_LOGIN_USER: TUniStoredProc;
    d_SP_CHECK_LOGIN_USER: TUniDataSource;
    SP_CHECK_LOGIN_USERUSER_ID: TStringField;
    SP_CHECK_LOGIN_USERUSER_NAME: TStringField;
    SP_CHECK_LOGIN_USERLOGIN_ID: TStringField;
    SP_CHECK_LOGIN_USERLOGIN_PASS: TStringField;
    SP_CHECK_LOGIN_USERAPPROVED_USER: TIntegerField;
    SP_CHECK_LOGIN_USERACTIVATION_CNT: TIntegerField;
    dxMemConnection: TdxMemData;
    dxMemConnections_addr: TStringField;
    dxMemConnections_ports: TIntegerField;
    dxMemConnections_db: TStringField;
    dxMemConnections_provider: TStringField;
    dxMemConnections_pass: TStringField;
    dxMemConnections_uname: TStringField;
    SP_CHECK_LOGIN_USERCOMP_ID: TStringField;
    btnRegistUser: TBitBtn;
    btnBack: TBitBtn;
    chkSaveLogin: TCheckBox;
    Label4: TLabel;
    cxTabSheet2: TcxTabSheet;
    Label5: TLabel;
    cxTabSheet4: TcxTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    VERSION_HISTORY_SELMAX: TUniStoredProc;
    UPDATE_FILE_SEL: TUniStoredProc;
    UPDATE_FILE_SELID: TIntegerField;
    UPDATE_FILE_SELUPDATE_FILE: TBlobField;
    SP_CHECK_LOGIN_USERUSER_KIND: TIntegerField;
    SP_CHECK_LOGIN_USERCAN_UPDATE: TSmallintField;
    SP_CHECK_LOGIN_USERCENTER_ID: TIntegerField;
    ds_VERSION_HISTORY_SELMAX: TDataSource;
    VERSION_HISTORY_SELMAXVERSION_NO: TStringField;
    VERSION_HISTORY_SELMAXCHANGE_DESC: TStringField;
    lbl3: TLabel;
    lblVersion: TLabel;
    img1: TImage;
    Memo1: TMemo;
    Panel1: TPanel;
    btnDown: TcxButton;
    COMPANY_GENARAL_LOOKUP: TUniStoredProc;
    ds_COMPANY_GENARAL_LOOKUP: TDataSource;
    COMPANY_GENARAL_LOOKUPCOMP_ID: TStringField;
    COMPANY_GENARAL_LOOKUPCOMP_NAME: TStringField;
    procedure btnLocalOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRegistUserClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function Check_UserSystem(LOGINID, LOGINPASS : string): boolean;
    procedure UpdateLoginCounter(login_id: string);
    function GetServerVersion: string;
    { Private declarations }
  public
    { Public declarations }
    isRegisted : Boolean;
    UPDATE_MSG : string;
  end;

var
  fmLogin: TfmLogin;

implementation

uses GlobalVar, uCommonLogic, UfmRequestRegistration, UfmCompanyRegistration;

{$R *.dfm}

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

function TfmLogin.GetServerVersion : string;
begin
  VERSION_HISTORY_SELMAX.Open;
  ds_VERSION_HISTORY_SELMAX.DataSet.Refresh;
  Memo1.Text := VERSION_HISTORY_SELMAXCHANGE_DESC.AsString;
  Result := VERSION_HISTORY_SELMAXVERSION_NO.AsString;
end;

procedure TfmLogin.FormCreate(Sender: TObject);
begin
  try
    UniConnection1.Server := '210.122.36.244';
    UniConnection1.Port := 3050;
    UniConnection1.Database := 'D:\fb_data\newBodyCheck\YOGABODY_USER.FDB';
    UniConnection1.LoginPrompt := False;
    UniConnection1.ProviderName := 'InterBase';
    UniConnection1.Password := 'masterkey';
    UniConnection1.Username := 'sysdba';
    UniConnection1.Connected := True;
  except on E: Exception do begin
    ShowMessage('서버에 연결할 수 없습니다.');
    ModalResult := mrCancel;
    end;
  end;
end;

procedure TfmLogin.FormShow(Sender: TObject);
var
  pVersion, pDate, ServerVersion : string;
  approv_comp, approv_user : Integer;
  FIni : TIniFile;
  iniFileName, auto_login : string;
begin
  EXE_FILE := ExtractFileName(Application.ExeName);
  AppVersion := GetFileVersion(PWideChar(EXE_FILE));
  pDate := DateTimeToStr(FileDateToDateTime(FileAge(Application.ExeName)));
  pVersion := 'Version: ' + AppVersion + sLineBreak + 'Compiled: ' + pDate;
  lblVersion.Caption := pVersion;
  gsDefaultFolder := ExtractFilePath(Application.ExeName);
  cxPageControl1.Properties.HideTabs := True;
  cxPageControl1.ActivePageIndex := 0;
  iniFileName := gsDefaultFolder + 'LoginInfo.ini';
  FIni := TIniFile.Create(iniFileName);
  auto_login := FIni.ReadString('Login', 'Auto Login', '');
  if auto_login = '1' then begin
    chkSaveLogin.Checked := True;
    edtUserID.Text := FIni.ReadString('Login', 'Login ID', '');
    edtPassword.Text := FIni.ReadString('Login', 'Login PW', '');
    cxPageControl1.ActivePageIndex := 0;
  end;

end;

procedure TfmLogin.btnRegistUserClick(Sender: TObject);
begin
  fmRequestRegistration := TfmRequestRegistration.Create(Self);
  try
    fmRequestRegistration.ShowModal;
  finally
    fmRequestRegistration.Free;
  end;
end;

function TfmLogin.Check_UserSystem(LOGINID, LOGINPASS : string) : boolean;
begin
  SP_CHECK_LOGIN_USER.ParamByName('LOGINID').Value := LOGINID;
  SP_CHECK_LOGIN_USER.ParamByName('LOGINPASS').Value := LOGINPASS;
  SP_CHECK_LOGIN_USER.Active := True;
  SP_CHECK_LOGIN_USER.Refresh;
  if SP_CHECK_LOGIN_USER.RecordCount > 0 then
    Result := True
  else
    Result := False;
end;

procedure TfmLogin.btnBackClick(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfmLogin.btnDownClick(Sender: TObject);
var
  i, cnt, data_id : Integer;
  mStream : TMemoryStream;
  fname : string;
begin
  Screen.Cursor := crHourGlass;
  cxPageControl1.ActivePageIndex := 3;
  cxPageControl1.Refresh;
  fname := gsDefaultFolder + 'bodycheck_update.exe';
  mStream := TMemoryStream.Create;
  UPDATE_FILE_SEL.ParamByName('FILE_ID').Value := 1;
  UPDATE_FILE_SEL.Active := True;
  UPDATE_FILE_SEL.Refresh;
  TBlobField(UPDATE_FILE_SELUPDATE_FILE).SaveToStream(mStream);
  mStream.Position := 0;
  mStream.SaveToFile(fname);
  mStream.Free;
  Screen.Cursor := crArrow;
  //본 프로그램을 실행하고 업데이트 실행파일을 종료한다.
  ShellExecute(0, 'open', PWideChar(fname), '', nil, SW_SHOWNORMAL);
  KillTask(ExtractFileName(Application.ExeName));
end;

procedure TfmLogin.btnLocalOKClick(Sender: TObject);
const
  msg_loginid = '아이디를 입력하세요.';
  msg_password = '비밀번호를 입력하세요.';
  msg_password2 = '아이디 또는 비밀번호가 틀렸습니다. 다시하세요.';
var
  FIni : TIniFile;
  iniFileName, ServerVersion : string;
  login_id, login_pass, pc_id : string;
  approv_user, can_update : Integer;
begin
  login_id := edtUserID.Text;
  login_pass := edtPassword.Text;
  if login_id = '' then begin
    ShowMessage(msg_loginid);
    edtUserID.Setfocus;
    Exit;
  end;
  if login_pass = '' then begin
    ShowMessage(msg_password);
    edtPassword.Setfocus;
    Exit;
  end;

  if Check_UserSystem(login_id, login_pass) = True then begin
    approv_user := SP_CHECK_LOGIN_USERAPPROVED_USER.AsInteger;
    LoginUserNo := SP_CHECK_LOGIN_USERUSER_ID.AsString;
    LoginUserName := SP_CHECK_LOGIN_USERUSER_NAME.AsString;
    LoginUserID := SP_CHECK_LOGIN_USERLOGIN_ID.AsString;
    LoginUserCompID := SP_CHECK_LOGIN_USERCOMP_ID.AsString;
    LoginUserPass := SP_CHECK_LOGIN_USERLOGIN_PASS.AsString;
    LoginCounter := SP_CHECK_LOGIN_USERACTIVATION_CNT.AsInteger;
    LoginUserKIND := SP_CHECK_LOGIN_USERUSER_KIND.AsInteger;
    can_update  := SP_CHECK_LOGIN_USERCAN_UPDATE.AsInteger;
    LoginUserCenterID := SP_CHECK_LOGIN_USERCENTER_ID.AsInteger;
    if approv_user = 1 then begin
      ServerVersion := GetServerVersion;
      if (CompareApplicationVersion(AppVersion, ServerVersion) > 0) and (can_update = 1) then begin
        cxPageControl1.ActivePageIndex := 2;
      end else begin
        UpdateLoginCounter(LoginUserID);
        if chkSaveLogin.Checked then begin
          iniFileName := gsDefaultFolder + 'LoginInfo.ini';
          FIni := TIniFile.Create(iniFileName);
          FIni.WriteString('Login', 'Login ID', edtUserID.Text);
          FIni.WriteString('Login', 'Login PW', edtPassword.Text);
          FIni.WriteString('Login', 'Auto Login', '1');
        end else begin
          iniFileName := gsDefaultFolder + 'LoginInfo.ini';
          FIni := TIniFile.Create(iniFileName);
          FIni.WriteString('Login', 'Login ID', '');
          FIni.WriteString('Login', 'Login PW', '');
          FIni.WriteString('Login', 'Auto Login', '0');
        end;
        ModalResult := mrOk;
      end;
    end else begin
      cxPageControl1.ActivePageIndex := 1;
    end;
  end else begin
    cxPageControl1.ActivePageIndex := 0;
    ShowMessage(msg_password2);
    edtUserID.Text := '';
    edtPassword.Text := '';
    edtUserID.Setfocus;
    Exit;
  end;
end;

procedure TfmLogin.UpdateLoginCounter(login_id : string);
var
  fQuery : TUniQuery;
  act_code : string;
begin
  fQuery := TUniQuery.Create(nil);
  with fQuery do begin
    Connection := UniConnection1;
    SQL.Clear;
    SQL.Add('Update COMPANY set ACTIVATION_DATE = :login_date, ACTIVATION_CNT = :login_cnt, USER_VERSION = :user_version ');
    SQL.Add('where LOGIN_ID = :login_id ');
    Params.ParamByName('login_date').AsDateTime := Now;
    Params.ParamByName('login_cnt').AsInteger := LoginCounter + 1;
    Params.ParamByName('login_id').AsString := login_id;
    Params.ParamByName('user_version').AsString := AppVersion;
    Execute;
  end;
end;


end.
