unit UfmUserInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, StdCtrls, Buttons, cxMaskEdit, cxCalendar,
  ExtCtrls, MemDS, VirtualTable, DBClient, Provider, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, UniProvider, InterBaseUniProvider;

type
  TfmUserInfo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    btnCheckUser: TBitBtn;
    btnSave: TBitBtn;
    edtBigo: TEdit;
    edtComp_name: TEdit;
    edtEmail: TEdit;
    edtLOGIN_ID: TEdit;
    edtLOGIN_PASS: TEdit;
    edtLOGIN_PASS2: TEdit;
    edtUSER_NAME: TEdit;
    InterBaseUniProvider1: TInterBaseUniProvider;
    UniConnection1: TUniConnection;
    COMPANY_SEL: TUniStoredProc;
    COMPANY_SELUSER_NAME: TStringField;
    COMPANY_SELLOGIN_ID: TStringField;
    COMPANY_SELLOGIN_PASS: TStringField;
    COMPANY_SELLOGIN_PASS2: TStringField;
    COMPANY_SELREG_DATE: TDateField;
    COMPANY_SELREMARK: TStringField;
    COMPANY_SELEMAIL: TStringField;
    COMPANY_SELCOMP_NAME: TStringField;
    COMPANY_UPD: TUniStoredProc;
    procedure btnSaveClick(Sender: TObject);
    procedure edtLOGIN_IDChange(Sender: TObject);
    procedure btnCheckUserClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SaveUser;
    { Private declarations }
  public
    { Public declarations }
    LoginID_ISOK : boolean;
  end;

var
  fmUserInfo: TfmUserInfo;

implementation

uses GlobalVar;

{$R *.dfm}


procedure TfmUserInfo.btnCheckUserClick(Sender: TObject);
var
  qUser : TUniQuery;
  login_id : string;
begin
  login_id := edtLOGIN_ID.Text;
  qUser := TUniQuery.Create(nil);
  with qUser do begin
    Connection := UniConnection1;
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

procedure TfmUserInfo.btnSaveClick(Sender: TObject);
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
  if edtComp_name.Text = '' then begin
    ShowMessage('거래처명을 입력하세요.');
    edtComp_name.SetFocus;
    Exit;
  end;
  if edtEmail.Text = '' then begin
    ShowMessage('이메일을 입력하세요.');
    edtEmail.SetFocus;
    Exit;
  end;
  if LoginID_ISOK = False then begin
    ShowMessage('로그인 아이디 중복확인을 하세요.');
    Exit;
  end;
  SaveUser;
  ShowMessage('사용자정보가 변경 되었습니다.');
  ModalResult := mrOk;
end;

procedure TfmUserInfo.edtLOGIN_IDChange(Sender: TObject);
begin
  if (LoginUserID <> edtLOGIN_ID.Text) then begin
    btnCheckUser.Enabled := True;
    LoginID_ISOK := False;
  end else begin
    btnCheckUser.Enabled := False;
    LoginID_ISOK := True;
  end;
end;

procedure TfmUserInfo.FormCreate(Sender: TObject);
begin
  LoginID_ISOK := True;
  COMPANY_SEL.ParamByName('ID').Value := LoginUserNo;
  COMPANY_SEL.Active := True;
  COMPANY_SEL.Refresh;
  edtComp_name.Text := COMPANY_SELCOMP_NAME.Value;
  edtUSER_NAME.Text := COMPANY_SELUSER_NAME.Value;
  edtLOGIN_ID.Text := COMPANY_SELLOGIN_ID.Value;
  edtLOGIN_PASS.Text := COMPANY_SELLOGIN_PASS.Value;
  edtLOGIN_PASS2.Text := '';
  edtEmail.Text := COMPANY_SELEMAIL.Value;
  edtBigo.Text := COMPANY_SELREMARK.Value;
end;

procedure TfmUserInfo.SaveUser;
begin
  if LoginID_ISOK = True then begin
    COMPANY_UPD.ParamByName('ID').Value := LoginUserNo;
    COMPANY_UPD.ParamByName('USER_NAME').AsString := edtUSER_NAME.Text;
    COMPANY_UPD.ParamByName('LOGIN_ID').AsString := edtLOGIN_ID.Text;
    COMPANY_UPD.ParamByName('LOGIN_PASS').AsString := edtLOGIN_PASS.Text;
    COMPANY_UPD.ParamByName('LOGIN_PASS2').AsString := edtLOGIN_PASS2.Text;
    COMPANY_UPD.ParamByName('REG_DATE').AsDate := Date;
    COMPANY_UPD.ParamByName('REMARK').AsString := edtBigo.Text;
    COMPANY_UPD.ParamByName('EMAIL').AsString := edtEmail.Text;
    COMPANY_UPD.ParamByName('COMP_NAME').AsString := edtComp_name.Text;
    COMPANY_UPD.ExecProc;
  end;
end;

end.
