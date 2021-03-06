unit UfmRequestRegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxTextEdit, cxDBEdit, ExtCtrls, Mask,
  DBCtrls, Registry, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfmRequestRegistration = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    edtUSER_NAME: TEdit;
    edtLOGIN_ID: TEdit;
    edtLOGIN_PASS: TEdit;
    edtLOGIN_PASS2: TEdit;
    edtEmail: TEdit;
    Label5: TLabel;
    btnCheckUser: TBitBtn;
    Label11: TLabel;
    Label2: TLabel;
    edtBigo: TEdit;
    Panel3: TPanel;
    COMPANY_INS: TUniStoredProc;
    cbCompany: TcxLookupComboBox;
    procedure btnSaveClick(Sender: TObject);
    procedure edtLOGIN_IDChange(Sender: TObject);
    procedure btnCheckUserClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure SaveRequests;
    procedure SetRegistryValue(ComputerID: string);
    { Private declarations }
  public
    { Public declarations }
    CompanyName_ISOK : boolean;
    LoginID_ISOK : boolean;
  end;

var
  fmRequestRegistration: TfmRequestRegistration;

implementation

uses uLogin, UfmCompanySelect, GlobalVar;

{$R *.dfm}

procedure TfmRequestRegistration.btnSaveClick(Sender: TObject);
var
  pass1, pass2 : string;
begin
  pass1 := edtLOGIN_PASS.Text;
  pass2 := edtLOGIN_PASS2.Text;
  if pass1 <> pass2 then begin
    ShowMessage('비밀번호 확인을 다시하세요.');
    edtLOGIN_PASS2.SetFocus;
    Exit;
  end;
  if cbCompany.EditValue = -1 then begin
    ShowMessage('거래처명을 입력하세요.');
    cbCompany.SetFocus;
    Exit;
  end;
  if edtEmail.Text = '' then begin
    ShowMessage('이메일을 입력하세요.');
    edtEmail.SetFocus;
    Exit;
  end;
  if edtBigo.Text = '' then begin
    ShowMessage('지역명을 입력하세요.');
    edtBigo.SetFocus;
    Exit;
  end;
  if LoginID_ISOK = False then begin
    ShowMessage('로그인 아이디 중복확인을 하세요.');
    Exit;
  end;
  SaveRequests;
  ShowMessage('사용자 등록 신청이 완료되었습니다.');
  ModalResult := mrOk;
end;

procedure TfmRequestRegistration.edtLOGIN_IDChange(Sender: TObject);
begin
  if Length(edtLOGIN_ID.Text) > 0 then
    btnCheckUser.Enabled := True
  else
    btnCheckUser.Enabled := False;
end;

procedure TfmRequestRegistration.FormShow(Sender: TObject);
begin
  fmLogin.COMPANY_GENARAL_LOOKUP.Open;
  fmLogin.ds_COMPANY_GENARAL_LOOKUP.DataSet.Refresh;
  LoginID_ISOK := False;
end;

procedure TfmRequestRegistration.SaveRequests;
var
  user_id : string;
begin
  if LoginID_ISOK = True then begin
    user_id := FormatDateTime('yyyymmddhhnnsszzz', now);
    COMPANY_INS.ParamByName('ID').Value := user_id;
    COMPANY_INS.ParamByName('USER_NAME').AsString := edtUSER_NAME.Text;
    COMPANY_INS.ParamByName('LOGIN_ID').AsString := edtLOGIN_ID.Text;
    COMPANY_INS.ParamByName('LOGIN_PASS').AsString := edtLOGIN_PASS.Text;
    COMPANY_INS.ParamByName('LOGIN_PASS2').AsString := edtLOGIN_PASS2.Text;
    COMPANY_INS.ParamByName('APPROVED').AsInteger := 0;
    COMPANY_INS.ParamByName('REG_DATE').AsDate := Date;
    COMPANY_INS.ParamByName('COMP_ID').AsString := cbCompany.EditValue; //씨씨엔소프트 코드로 등록
    COMPANY_INS.ParamByName('REMARK').AsString := edtBigo.Text;
    COMPANY_INS.ParamByName('EMAIL').AsString := edtEmail.Text;
    COMPANY_INS.ParamByName('SYSTEM_SERIAL').AsString := SYSTEM_SERIAL;
    COMPANY_INS.ParamByName('COMP_NAME').AsString := cbCompany.EditText;
    COMPANY_INS.ExecProc;

    SetRegistryValue(user_id);
  end;
end;

procedure TfmRequestRegistration.SetRegistryValue(ComputerID : string);
var
  Registry: TRegistry;
  GUID : string;
begin
  Registry := TRegistry.Create(KEY_WRITE);
  try
    Registry.RootKey := HKEY_CURRENT_USER; //\CCNS\PVY;
    Registry.OpenKey('CCNS\PVY', True);
    Registry.WriteString('cuid', ComputerID);
  finally
    Registry.Free;
  end;
end;

procedure TfmRequestRegistration.btnCheckUserClick(Sender: TObject);
var
  qUser : TUniQuery;
  login_id : string;
begin
  login_id := edtLOGIN_ID.Text;
  qUser := TUniQuery.Create(nil);
  with qUser do begin
    Connection := fmLogin.UniConnection1;
    SQL.Clear;
    SQL.Add('select * from company ');
    SQL.Add('where login_id = :login_id ');
    ParamByName('login_id').AsString := login_id;
    Active := True;
  end;
  if qUser.RecordCount > 0 then begin
    ShowMessage('사용중인 아이디 입니다. 다시 입력하세요.');
    LoginID_ISOK := False;
    edtLOGIN_ID.Text := '';
    edtLOGIN_ID.SetFocus;
  end else begin
    ShowMessage('중복없음! 사용해도 좋습니다.');
    LoginID_ISOK := True;
    btnCheckUser.Enabled := False;
    edtLOGIN_PASS.SetFocus;
  end;
end;


end.
