unit UfmUserManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, cxImageComboBox,
  UniProvider, InterBaseUniProvider, DBClient, Provider, IdHashMessageDigest, idHash,
  TLHelp32, IdSMTP, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  dxSkinOffice2013White;

type
  TfmUserManager = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    q_login_user: TUniQuery;
    d_login_user: TDataSource;
    q_login_userID: TStringField;
    q_login_userUSER_NAME: TStringField;
    q_login_userLOGIN_ID: TStringField;
    q_login_userLOGIN_PASS: TStringField;
    q_login_userLOGIN_PASS2: TStringField;
    q_login_userUSER_KIND: TIntegerField;
    q_login_userAPPROVED: TIntegerField;
    q_login_userREG_DATE: TDateField;
    q_company_general: TUniQuery;
    d_company_general: TDataSource;
    q_company_generalCOMP_ID: TStringField;
    q_company_generalCHIEF_NAME: TStringField;
    q_company_generalTEL_NO: TStringField;
    q_company_generalFAX_NO: TStringField;
    q_company_generalADDR: TStringField;
    q_company_generalLOCATION_AREA: TStringField;
    q_company_generalBUS_ID: TStringField;
    q_company_generalBANK_NAME: TStringField;
    q_company_generalBANK_NO: TStringField;
    q_company_generalBANK_OWNER: TStringField;
    q_company_generalREMARK: TStringField;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnDeleteUser: TBitBtn;
    btnEditUser: TBitBtn;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2COMP_ID: TcxGridDBColumn;
    cxGridDBTableView2CHIEF_NAME: TcxGridDBColumn;
    cxGridDBTableView2TEL_NO: TcxGridDBColumn;
    cxGridDBTableView2FAX_NO: TcxGridDBColumn;
    cxGridDBTableView2ADDR: TcxGridDBColumn;
    cxGridDBTableView2LOCATION_AREA: TcxGridDBColumn;
    cxGridDBTableView2BUS_ID: TcxGridDBColumn;
    cxGridDBTableView2BANK_NAME: TcxGridDBColumn;
    cxGridDBTableView2BANK_NO: TcxGridDBColumn;
    cxGridDBTableView2BANK_OWNER: TcxGridDBColumn;
    cxGridDBTableView2REMARK: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1USER_NAME: TcxGridDBColumn;
    cxGridDBTableView1LOGIN_ID: TcxGridDBColumn;
    cxGridDBTableView1LOGIN_PASS: TcxGridDBColumn;
    cxGridDBTableView1LOGIN_PASS2: TcxGridDBColumn;
    cxGridDBTableView1USER_KIND: TcxGridDBColumn;
    cxGridDBTableView1APPROVED: TcxGridDBColumn;
    cxGridDBTableView1REG_DATE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    q_company_generalCOMP_KIND: TIntegerField;
    q_company_generalCOMP_NAME: TStringField;
    q_company_generalAPPROVED: TSmallintField;
    q_company_generalREG_DATE: TDateField;
    cxGridDBTableView2COMP_KIND: TcxGridDBColumn;
    cxGridDBTableView2COMP_NAME: TcxGridDBColumn;
    cxGridDBTableView2APPROVED: TcxGridDBColumn;
    cxGridDBTableView2REG_DATE: TcxGridDBColumn;
    btnAddUser: TBitBtn;
    btnAddComp: TBitBtn;
    q_login_userCOMP_ID: TStringField;
    q_login_userREMARK: TStringField;
    cxGridDBTableView1COMP_ID: TcxGridDBColumn;
    cxGridDBTableView1REMARK: TcxGridDBColumn;
    btnChangeApproved: TBitBtn;
    btnChangeUser: TBitBtn;
    Splitter1: TSplitter;
    btnCompApprove: TBitBtn;
    btnChangeAnalyzer: TBitBtn;
    q_login_userEMAIL: TStringField;
    q_login_userCONFIRMED: TSmallintField;
    q_login_userIS_ANALYZER: TSmallintField;
    cxGridDBTableView1EMAIL: TcxGridDBColumn;
    cxGridDBTableView1CONFIRMED: TcxGridDBColumn;
    cxGridDBTableView1IS_ANALYZER: TcxGridDBColumn;
    q_company_generalCONFIRMED: TSmallintField;
    q_company_generalPAY_WAY: TIntegerField;
    cxGridDBTableView2PAY_WAY: TcxGridDBColumn;
    btnChangePayway: TBitBtn;
    q_login_userPAY_WAY: TSmallintField;
    q_login_userSYSTEM_SERIAL: TStringField;
    q_login_userACTIVATION_CODE: TStringField;
    q_login_userACTIVATION_CNT: TSmallintField;
    cxGridDBTableView1PAY_WAY: TcxGridDBColumn;
    cxGridDBTableView1SYSTEM_SERIAL: TcxGridDBColumn;
    cxGridDBTableView1ACTIVATION_CODE: TcxGridDBColumn;
    cxGridDBTableView1ACTIVATION_DATE: TcxGridDBColumn;
    cxGridDBTableView1ACTIVATION_CNT: TcxGridDBColumn;
    btnActivateUser: TBitBtn;
    btnChangeUserPay: TBitBtn;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_payment: TUniQuery;
    d_payment: TDataSource;
    q_paymentID: TStringField;
    q_paymentCOMPANY_ID: TStringField;
    q_paymentPAY_DATE: TDateField;
    q_paymentPAY_AMOUNT: TFloatField;
    q_paymentBIGO: TStringField;
    q_paymentPAY_MONTH: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1COMPANY_ID: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1BIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_MONTH: TcxGridDBColumn;
    btnPayIn: TBitBtn;
    pnlMessage: TPanel;
    Label4: TLabel;
    q_login_userACTIVATION_DATE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddUserClick(Sender: TObject);
    procedure btnAddCompClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnChangeApprovedClick(Sender: TObject);
    procedure btnChangeUserClick(Sender: TObject);
    procedure btnCompApproveClick(Sender: TObject);
    procedure cxGridDBTableView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnChangeAnalyzerClick(Sender: TObject);
    procedure btnDeleteUserClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnEditUserClick(Sender: TObject);
    procedure btnChangePaywayClick(Sender: TObject);
    procedure btnActivateUserClick(Sender: TObject);
    procedure btnChangeUserPayClick(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPayInClick(Sender: TObject);
    procedure q_paymentNewRecord(DataSet: TDataSet);
  private
    procedure InsertCompany;
    procedure InsertLoginUser;
    procedure SelectCompany;
    procedure UpdateCompany;
    procedure UpdateLoginUser(user_id: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUserManager: TfmUserManager;

implementation

uses GlobalVar, UfmUserRegist, UfmCompanyRegist, UdmDBCommon,
  UfmCompanyPaymentInsert;

{$R *.dfm}

function MD5(const text_str : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(text_str);
  finally
    idmd5.Free;
  end;
end;

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

procedure TfmUserManager.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmUserManager.FormShow(Sender: TObject);
var
  comp_id, user_id : string;
begin
  btnChangeUser.Visible := LoginUserKIND = 2;
  q_company_general.Active := True;
  comp_id := q_company_general.FieldByName('comp_id').AsString;
  q_login_user.ParamByName('comp_id').AsString := comp_id;
  q_login_user.Active := True;
  d_login_user.DataSet.Refresh;
  user_id := q_login_user.FieldByName('id').AsString;
  q_payment.ParamByName('company_id').AsString := user_id;
  q_payment.Active := True;
  d_payment.DataSet.Refresh;
end;

procedure TfmUserManager.btnAddUserClick(Sender: TObject);
begin
  fmUserRegist := TfmUserRegist.Create(Self);
  try
    fmUserRegist.ShowModal;
    if fmUserRegist.ModalResult = mrOk then begin
      InsertLoginUser;
    end;
  finally
    fmUserRegist.Free;
  end;
end;

procedure TfmUserManager.btnChangeAnalyzerClick(Sender: TObject);
var
  analyzer : integer;
begin
  analyzer := q_login_user.FieldByName('is_analyzer').AsInteger;
  if analyzer = 0 then
    analyzer := 1
  else
    analyzer := 0;
  q_login_user.Edit;
  q_login_user.FieldByName('is_analyzer').AsInteger := analyzer;
  q_login_user.Post;
  d_login_user.DataSet.Refresh;
end;

procedure TfmUserManager.btnChangeApprovedClick(Sender: TObject);
var
  approved : integer;
begin
  approved := q_login_user.FieldByName('approved').AsInteger;
  if approved = 0 then
    approved := 1
  else
    approved := 0;
  q_login_user.Edit;
  q_login_user.FieldByName('approved').AsInteger := approved;
  q_login_user.Post;
  d_login_user.DataSet.Refresh;
end;

procedure TfmUserManager.btnChangePaywayClick(Sender: TObject);
var
  payway : integer;
begin
  payway := q_company_general.FieldByName('pay_way').AsInteger;
  if payway = 0 then
    payway := 1
  else
    payway := 0;
  q_company_general.Edit;
  q_company_general.FieldByName('pay_way').AsInteger := payway;
  q_company_general.Post;
  d_company_general.DataSet.Refresh;
end;

procedure TfmUserManager.btnChangeUserClick(Sender: TObject);
var
  ukind : integer;
begin
  ukind := q_login_user.FieldByName('user_kind').AsInteger;
  if ukind = 0 then
    ukind := 1
  else
    ukind := 0;
  q_login_user.Edit;
  q_login_user.FieldByName('user_kind').AsInteger := ukind;
  q_login_user.Post;
  d_login_user.DataSet.Refresh;
end;

procedure TfmUserManager.btnChangeUserPayClick(Sender: TObject);
var
  payway : integer;
begin
  payway := q_login_userPAY_WAY.AsInteger;
  if payway = 0 then
    payway := 1
  else
    payway := 0;
  q_login_user.Edit;
  q_login_userPAY_WAY.AsInteger := payway;
  q_login_user.Post;
  d_login_user.DataSet.Refresh;
end;

procedure TfmUserManager.btnCompApproveClick(Sender: TObject);
var
  approved : integer;
begin
  approved := q_company_general.FieldByName('approved').AsInteger;
  if approved = 0 then
    approved := 1
  else
    approved := 0;
  q_company_general.Edit;
  q_company_general.FieldByName('approved').AsInteger := approved;
  q_company_general.Post;
  d_company_general.DataSet.Refresh;
end;

procedure TfmUserManager.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    q_company_general.Delete;
  end;
end;

procedure TfmUserManager.InsertLoginUser;
begin
  q_login_user.Append;
  q_login_userID.AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
  q_login_userCOMP_ID.AsString       := q_company_general.FieldByName('comp_id').AsString;
  q_login_userUSER_NAME.AsString     := fmUserRegist.edtUserName.Text;
  q_login_userLOGIN_ID.AsString      := fmUserRegist.edtLoginID.Text;
  q_login_userLOGIN_PASS.AsString    := fmUserRegist.edtPass.Text;
  q_login_userLOGIN_PASS2.AsString   := fmUserRegist.edtPass2.Text;
  q_login_userREMARK.AsString       := fmUserRegist.edtBigo.Text;
  q_login_userUSER_KIND.AsInteger   := 0;
  q_login_userAPPROVED.AsInteger    := 0;
  q_login_userREG_DATE.AsDateTime   := Date;
  q_login_user.Post;
  d_login_user.DataSet.Refresh;
end;

procedure TfmUserManager.q_paymentNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure TfmUserManager.btnDeleteUserClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    q_login_user.Delete;
  end;
end;

procedure TfmUserManager.btnActivateUserClick(Sender: TObject);
var
  HID : string;
  Activation_code : string;
  Activation_cnt : Integer;
  comp_approved : Integer;
  sender_email, receiver, subject, msg : string;
begin
  comp_approved := q_company_generalAPPROVED.AsInteger;
  if comp_approved <> 1 then begin
    ShowMessage('Company should approved before user approve...');
    btnCompApprove.Click;
  end;
  HID := q_login_userSYSTEM_SERIAL.AsString;
  Activation_cnt := q_login_userACTIVATION_CNT.AsInteger;
  if Length(HID) > 0 then begin
    Activation_Code := MD5('CCNSOFT' + UpperCase('PVBody.exe') + HID);
    q_login_user.Edit;
    q_login_userAPPROVED.AsInteger := 1;
    q_login_userACTIVATION_CODE.AsString := Activation_code;
    q_login_userACTIVATION_DATE.AsDateTime := Date;
    q_login_userCONFIRMED.AsInteger := 1;
    q_login_userACTIVATION_CNT.AsInteger := Activation_cnt + 1;
    q_login_userPAY_WAY.AsInteger := 0;
    q_login_user.Post;
    d_login_user.DataSet.Refresh;
    pnlMessage.Visible := True;
    try
      sender_email := 'ccnplaza@gmail.com';
      receiver := q_login_userEMAIL.AsString;
      subject := 'Registration for Medical Training';
      msg := '자세평가/회원관리 사용자 등록완료' + #13#10 +
            '사용자 ' + q_login_userUSER_NAME.AsString + '의 등록이 완료되었습니다.' + #13#10 +
            '자세평가 프로그램을 실행하여 등록요청 화면에서 액티베이션 실행을 하세요.' + #13#10 +
            '프로그램을 등록해 주셔서 감사합니다.' + #13#10 +
            '사용중 문제점이나 개선점은 자세평가/회원관리 개발팀(ccnplaza@gmail.com)으로 연락 주세요.';
      SendEmail(sender_email, receiver, subject, msg);
      pnlMessage.Visible := False;
      ShowMessage('메일전송 완료.');
    except on E: Exception do
      ShowMessage(E.ToString);
    end;
  end else begin
    ShowMessage('System ID가 없습니다.');
    Exit;
  end;
end;

procedure TfmUserManager.btnAddCompClick(Sender: TObject);
begin
  fmCompanyRegist := TfmCompanyRegist.Create(Self);
  try
    fmCompanyRegist.vt_company.Active := True;
    fmCompanyRegist.vt_company.Append;
    fmCompanyRegist.vt_companyREG_DATE.AsDateTime := Date;
    fmCompanyRegist.ShowModal;
    if fmCompanyRegist.ModalResult = mrOk then begin
      fmCompanyRegist.vt_company.Post;
      fmCompanyRegist.vd_company.DataSet.Refresh;
      InsertCompany;
      d_company_general.DataSet.Refresh;
    end;
  finally
    fmCompanyRegist.Free;
  end;
end;

procedure TfmUserManager.InsertCompany;
begin
  q_company_general.Append;
  q_company_generalCOMP_ID.AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
  q_company_generalCOMP_NAME.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('comp_name').AsString;
  q_company_generalCHIEF_NAME.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('CHIEF_NAME').AsString;
  q_company_generalTEL_NO.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('TEL_NO').AsString;
  q_company_generalFAX_NO.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('FAX_NO').AsString;
  q_company_generalADDR.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('ADDR').AsString;
  q_company_generalLOCATION_AREA.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('LOCATION_AREA').AsString;
  q_company_generalBUS_ID.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BUS_ID').AsString;
  q_company_generalBANK_NAME.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_NAME').AsString;
  q_company_generalBANK_NO.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_NO').AsString;
  q_company_generalBANK_OWNER.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_OWNER').AsString;
  q_company_generalREMARK.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('REMARK').AsString;
  q_company_generalCOMP_KIND.AsInteger     := fmCompanyRegist.vd_company.DataSet.FieldByName('COMP_KIND').AsInteger;
  q_company_generalAPPROVED.AsInteger     := fmCompanyRegist.vd_company.DataSet.FieldByName('APPROVED').AsInteger;
  q_company_generalREG_DATE.AsDateTime     := fmCompanyRegist.vd_company.DataSet.FieldByName('REG_DATE').AsDateTime;
  q_company_general.Post;
  d_company_general.DataSet.Refresh;
end;

procedure TfmUserManager.btnEditClick(Sender: TObject);
begin
  fmCompanyRegist := TfmCompanyRegist.Create(Self);
  try
    fmCompanyRegist.vt_company.Active := True;
    fmCompanyRegist.vt_company.Append;
    SelectCompany;
    fmCompanyRegist.ShowModal;
    if fmCompanyRegist.ModalResult = mrOk then begin
      fmCompanyRegist.vt_company.Post;
      fmCompanyRegist.vd_company.DataSet.Refresh;
      UpdateCompany;
    end;
  finally
    fmCompanyRegist.Free;
  end;
end;

procedure TfmUserManager.btnEditUserClick(Sender: TObject);
var
  user_id : string;
begin
  fmUserRegist := TfmUserRegist.Create(Self);
  try
    user_id := q_login_userID.AsString;
    fmUserRegist.edtUserName.Text := q_login_userUSER_NAME.AsString;
    fmUserRegist.edtLoginID.Text := q_login_userLOGIN_ID.AsString;
    fmUserRegist.edtPass.Text := q_login_userLOGIN_PASS.AsString;
    fmUserRegist.edtPass2.Text := q_login_userLOGIN_PASS2.AsString;
    fmUserRegist.edtBigo.Text := q_login_userREMARK.AsString;
    fmUserRegist.ShowModal;
    if fmUserRegist.ModalResult = mrOk then begin
      UpdateLoginUser(user_id);
      d_login_user.DataSet.Refresh;
    end;
  finally
    fmUserRegist.Free;
  end;
end;

procedure TfmUserManager.btnPayInClick(Sender: TObject);
begin
  fmCompanyPaymentInsert := TfmCompanyPaymentInsert.Create(Self);
  try
    fmCompanyPaymentInsert.edtPayDate.Date := Date;
    fmCompanyPaymentInsert.ShowModal;
    if fmCompanyPaymentInsert.ModalResult = mrOk then begin
      q_payment.Append;
      q_paymentCOMPANY_ID.AsString := q_login_userID.AsString;
      q_paymentPAY_DATE.AsDateTime := fmCompanyPaymentInsert.edtPayDate.Date;
      q_paymentPAY_MONTH.AsString := fmCompanyPaymentInsert.edtPayMonth.Text;
      q_paymentPAY_AMOUNT.AsFloat := StrToFloat(fmCompanyPaymentInsert.edtPayAmount.Text);
      q_payment.Post;
      d_payment.dataset.Refresh;
    end;
  finally
    fmCompanyPaymentInsert.Free;
  end;
end;

procedure TfmUserManager.UpdateLoginUser(user_id : string);
var
  user_name, login_id, login_pass, login_pass2, remark : string;
  qry : TUniQuery;
begin
  user_name     := fmUserRegist.edtUserName.Text;
  login_id      := fmUserRegist.edtLoginID.Text;
  login_pass    := fmUserRegist.edtPass.Text;
  login_pass2   := fmUserRegist.edtPass2.Text;
  remark   := fmUserRegist.edtBigo.Text;

  qry := TUniQuery.Create(nil);
  qry.Connection := dmDBCommon.UniDBConnection;
  qry.SQL.Clear;
  qry.sql.add('update company set user_name = :user_name, login_id = :login_id, login_pass = :login_pass, ');
  qry.sql.add('login_pass2 = :login_pass2, remark = :remark ');
  qry.SQL.add('where id = :id ');
  qry.ParamByName('id').AsString := user_id;
  qry.ParamByName('user_name').AsString := user_name;
  qry.ParamByName('login_id').AsString := login_id;
  qry.ParamByName('login_pass').AsString := login_pass;
  qry.ParamByName('login_pass2').AsString := login_pass2;
  qry.ParamByName('remark').AsString := remark;
  qry.Execute;
end;

procedure TfmUserManager.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  q_payment.ParamByName('company_id').AsString := q_login_user.FieldByName('id').AsString;
  q_payment.Active := True;
  d_payment.DataSet.Refresh;
end;

procedure TfmUserManager.cxGridDBTableView2CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  q_login_user.ParamByName('comp_id').AsString := q_company_general.FieldByName('comp_id').AsString;
  q_login_user.Active := True;
  d_login_user.DataSet.Refresh;

  q_payment.ParamByName('company_id').AsString := q_login_user.FieldByName('id').AsString;
  q_payment.Active := True;
  d_payment.DataSet.Refresh;
end;

procedure TfmUserManager.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmUserManager.SelectCompany;
begin
  fmCompanyRegist.vd_company.DataSet.FieldByName('COMP_ID').AsString    := q_company_generalCOMP_ID.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('comp_name').AsString  := q_company_generalCOMP_NAME.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('CHIEF_NAME').AsString := q_company_generalCHIEF_NAME.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('TEL_NO').AsString     := q_company_generalTEL_NO.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('FAX_NO').AsString     := q_company_generalFAX_NO.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('ADDR').AsString       := q_company_generalADDR.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('LOCATION_AREA').AsString  := q_company_generalLOCATION_AREA.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('BUS_ID').AsString     := q_company_generalBUS_ID.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_NAME').AsString  := q_company_generalBANK_NAME.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_NO').AsString    := q_company_generalBANK_NO.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_OWNER').AsString := q_company_generalBANK_OWNER.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('REMARK').AsString     := q_company_generalREMARK.AsString;
  fmCompanyRegist.vd_company.DataSet.FieldByName('COMP_KIND').AsInteger := q_company_generalCOMP_KIND.AsInteger;
  fmCompanyRegist.vd_company.DataSet.FieldByName('APPROVED').AsInteger  := q_company_generalAPPROVED.AsInteger;
  fmCompanyRegist.vd_company.DataSet.FieldByName('REG_DATE').AsDateTime := q_company_generalREG_DATE.AsDateTime;
end;

procedure TfmUserManager.UpdateCompany;
begin
  q_company_general.Edit;
  q_company_generalCOMP_ID.AsString := fmCompanyRegist.vd_company.DataSet.FieldByName('COMP_ID').AsString;
  q_company_generalCOMP_NAME.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('comp_name').AsString;
  q_company_generalCHIEF_NAME.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('CHIEF_NAME').AsString;
  q_company_generalTEL_NO.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('TEL_NO').AsString;
  q_company_generalFAX_NO.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('FAX_NO').AsString;
  q_company_generalADDR.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('ADDR').AsString;
  q_company_generalLOCATION_AREA.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('LOCATION_AREA').AsString;
  q_company_generalBUS_ID.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BUS_ID').AsString;
  q_company_generalBANK_NAME.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_NAME').AsString;
  q_company_generalBANK_NO.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_NO').AsString;
  q_company_generalBANK_OWNER.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('BANK_OWNER').AsString;
  q_company_generalREMARK.AsString     := fmCompanyRegist.vd_company.DataSet.FieldByName('REMARK').AsString;
  q_company_generalCOMP_KIND.AsInteger     := fmCompanyRegist.vd_company.DataSet.FieldByName('COMP_KIND').AsInteger;
  q_company_generalAPPROVED.AsInteger     := fmCompanyRegist.vd_company.DataSet.FieldByName('APPROVED').AsInteger;
  q_company_generalREG_DATE.AsDateTime     := fmCompanyRegist.vd_company.DataSet.FieldByName('REG_DATE').AsDateTime;
  q_company_general.Post;
  d_company_general.DataSet.Refresh;
end;

initialization RegisterClasses([TfmUserManager]);

end.
