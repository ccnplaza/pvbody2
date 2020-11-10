unit UfmCompanyRegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, MemDS, DBAccess, Uni,
  TLHelp32, IdSMTP, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TfmCompanyRegistration = class(TForm)
    t_company: TUniTable;
    t_companyCOMP_ID: TStringField;
    t_companyCHIEF_NAME: TStringField;
    t_companyTEL_NO: TStringField;
    t_companyFAX_NO: TStringField;
    t_companyADDR: TStringField;
    t_companyLOCATION_AREA: TStringField;
    t_companyBUS_ID: TStringField;
    t_companyBANK_NAME: TStringField;
    t_companyBANK_NO: TStringField;
    t_companyBANK_OWNER: TStringField;
    t_companyREMARK: TStringField;
    t_companyCOMP_KIND: TIntegerField;
    t_companyCOMP_NAME: TStringField;
    t_companyAPPROVED: TSmallintField;
    t_companyREG_DATE: TDateField;
    d_company: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    edtComp_name: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtChief_name: TEdit;
    edtTel_no: TEdit;
    edtComp_kind: TComboBox;
    edtAddr: TEdit;
    Label7: TLabel;
    Panel3: TPanel;
    cbLocation: TComboBox;
    Panel4: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btnCheckUser: TBitBtn;
    edtEmail: TEdit;
    edtLOGIN_ID: TEdit;
    edtLOGIN_PASS: TEdit;
    edtLOGIN_PASS2: TEdit;
    edtUSER_NAME: TEdit;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    t_user: TUniTable;
    t_userID: TStringField;
    t_userUSER_NAME: TStringField;
    t_userLOGIN_ID: TStringField;
    t_userLOGIN_PASS: TStringField;
    t_userLOGIN_PASS2: TStringField;
    t_userUSER_KIND: TIntegerField;
    t_userAPPROVED: TIntegerField;
    t_userREG_DATE: TDateField;
    t_userCOMP_ID: TStringField;
    t_userREMARK: TStringField;
    d_user: TDataSource;
    pnlMessage: TPanel;
    Label4: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCheckUserClick(Sender: TObject);
    procedure edtLOGIN_IDChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LoginID_ISOK : boolean;
  end;

var
  fmCompanyRegistration: TfmCompanyRegistration;

implementation

uses uLogin, GlobalVar;

{$R *.dfm}

function SendEmail(sender_email, receiver, subject, msg : string ): boolean;
var
  IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMsg: TIdMessage;
begin
  IdSSLIOHandlerSocketOpenSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    IdSSLIOHandlerSocketOpenSSL.Destination := 'smtp.gmail.com:587';
    IdSSLIOHandlerSocketOpenSSL.Host := 'smtp.gmail.com';
    IdSSLIOHandlerSocketOpenSSL.Port := 587;
    IdSSLIOHandlerSocketOpenSSL.DefaultPort := 0;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method := sslvTLSv1;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.Mode := sslmUnassigned;
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.VerifyMode := [];
    IdSSLIOHandlerSocketOpenSSL.SSLOptions.VerifyDepth := 0;
    IdSMTP := TIdSMTP.Create(nil);
    try
      IdSMTP.IOHandler := IdSSLIOHandlerSocketOpenSSL;
      IdSMTP.Host := 'smtp.gmail.com';
      IdSMTP.Port := 587;
      IdSMTP.UseTLS := utUseExplicitTLS;
      IdSMTP.Username := 'ccnplaza@gmail.com';
      IdSMTP.Password := '@Choe3415';
      IdSMTP.Connect;
      try
        IdMsg := TIdMessage.Create;
        try
          IdMsg.From.Address := sender_email; //'ccnplaza@gmail.com';
          IdMsg.Recipients.EMailAddresses := receiver; //'ccnplaza@daum.net';
          IdMsg.ContentType := 'text/HTML; charset=euc-kr';
          IdMsg.ContentTransferEncoding := '8bit';
          IdMsg.Subject := subject; //'액티베이션 요청메일';
          IdMsg.Body.Text := msg; //'액티베이션 요청합니다.';
          IdSMTP.Send(IdMsg);
          Result := True;
        finally
          IdMsg.Free;
        end;
      finally
        IdSMTP.Disconnect;
      end;
    finally
      IdSMTP.Free;
    end;
  finally
    IdSSLIOHandlerSocketOpenSSL.Free;
  end;
end;

procedure TfmCompanyRegistration.btnCheckUserClick(Sender: TObject);
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

procedure TfmCompanyRegistration.btnSaveClick(Sender: TObject);
var
  qComp, qUser : TUniQuery;
  comp_id, user_id : string;
  pass1, pass2 : string;
  sender_email, receiver, subject, msg : string;
begin
  pass1 := edtLOGIN_PASS.Text;
  pass2 := edtLOGIN_PASS2.Text;
  if pass1 <> pass2 then begin
    ShowMessage('비밀번호 확인을 다시하세요.');
    Exit;
  end;
  if edtComp_name.Text = '' then begin
    ShowMessage('거래처를 선택 하세요.');
    Exit;
  end;
  if LoginID_ISOK = False then begin
    ShowMessage('로그인 아이디 중복확인을 하세요.');
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  comp_id := FormatDateTime('yyyymmddhhnnsszzz', now);
  qComp := TUniQuery.Create(nil);
  with qComp do begin
    Connection := fmLogin.UniConnection1;
    SQL.Clear;
    SQL.Add('insert into COMPANY_GENARAL ');
    SQL.Add('(COMP_ID, CHIEF_NAME, TEL_NO, ADDR, LOCATION_AREA, COMP_KIND, COMP_NAME, APPROVED, REG_DATE) ');
    SQL.Add('values(:COMP_ID, :CHIEF_NAME, :TEL_NO, :ADDR, :LOCATION_AREA, :COMP_KIND, :COMP_NAME, :APPROVED, :REG_DATE)');
    ParamByName('COMP_ID').AsString := comp_id;
    ParamByName('CHIEF_NAME').AsString := edtChief_name.Text;
    ParamByName('TEL_NO').AsString := edtTel_no.Text;
    ParamByName('ADDR').AsString := edtAddr.Text;
    ParamByName('LOCATION_AREA').AsString := cbLocation.Text;
    ParamByName('COMP_KIND').AsInteger := edtComp_kind.ItemIndex + 1;
    ParamByName('COMP_NAME').AsString := edtComp_name.Text;
    ParamByName('APPROVED').AsInteger := 0;
    ParamByName('REG_DATE').AsDateTime := Date;
    Execute;
  end;

  user_id := FormatDateTime('yyyymmddhhnnsszzz', now);
  qUser := TUniQuery.Create(nil);
  with qUser do begin
    Connection := fmLogin.UniConnection1;
    SQL.Clear;
    SQL.Add('insert into company ');
    SQL.Add('(id, user_name, login_id, login_pass, login_pass2, user_kind, approved, reg_date, comp_id, email, system_serial) ');
    SQL.Add('values(:id, :user_name, :login_id, :login_pass, :login_pass2, :user_kind, :approved, :reg_date, :comp_id, :email, :system_serial)');
    ParamByName('id').AsString := user_id;
    ParamByName('user_name').AsString := edtUSER_NAME.Text;
    ParamByName('login_id').AsString := edtLOGIN_ID.Text;
    ParamByName('login_pass').AsString := edtLOGIN_PASS.Text;
    ParamByName('login_pass2').AsString := edtLOGIN_PASS2.Text;
    ParamByName('user_kind').AsInteger := 0;
    ParamByName('approved').AsInteger := 0;
    ParamByName('reg_date').AsDateTime := Date;
    ParamByName('comp_id').AsString := comp_id;
    ParamByName('email').AsString := edtEmail.Text;
    ParamByName('system_serial').AsString := SYSTEM_SERIAL;
    Execute;
  end;

  ShowMessage('프로그램 등록이 완료되었습니다.' + #13#10 +
              '거래처 및 사용자 확인 절차를 거쳐 승인이 됩니다.' + #13#10 +
              '승인이 완료되면 입력하신 전화번호와 이메일로' + #13#10 +
              '승인여부를 알려 드립니다.' + #13#10 +
              '감사합니다.');

  //pnlMessage.Visible := True;
  sender_email := edtEmail.Text;
  receiver := 'ccnplaza@gmail.com';
  subject := 'Registration for Medical Training';
  msg := '자세분석/회원관리 사용자 등록요청' + #13#10 +
        '거래처명: ' + edtComp_name.Text + #13#10 +
        '사용자명: ' + edtUSER_NAME.Text;
  //SendEmail(sender_email, receiver, subject, msg);
  //pnlMessage.Visible := False;
  Screen.Cursor := crDefault;
  ModalResult := mrOk;
end;

procedure TfmCompanyRegistration.edtLOGIN_IDChange(Sender: TObject);
begin
  if Length(edtLOGIN_ID.Text) > 0 then
    btnCheckUser.Enabled := True
  else
    btnCheckUser.Enabled := False;
end;

end.
