unit uSendingSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ExtDlgs, InvokeRegistry, Rio, SOAPHTTPClient,SHDocVw,Types,Math,
  DB, dxmdaset, jpeg, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxNavigator,
  dxSkinMetropolis, dxSkinMetropolisDark, IniFiles, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, MemDS, DBAccess, Uni,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, IdGlobal;

type
  TfmSendingSMS = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    gridSMS: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    btnSelectAll: TBitBtn;
    btnDeselect: TBitBtn;
    mdSMS: TdxMemData;
    dSMS: TDataSource;
    mdSMSid: TAutoIncField;
    mdSMScheck_send: TBooleanField;
    mdSMScname: TStringField;
    mdSMSctel: TStringField;
    gridSMSRecId: TcxGridDBColumn;
    gridSMSid: TcxGridDBColumn;
    gridSMScheck_send: TcxGridDBColumn;
    gridSMScname: TcxGridDBColumn;
    gridSMSctel: TcxGridDBColumn;
    mdSMSsex: TStringField;
    mdSMSjob: TStringField;
    gridSMSsex: TcxGridDBColumn;
    gridSMSjob: TcxGridDBColumn;
    Panel4: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    lblBytes: TLabel;
    Label11: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    lblCorpName: TLabel;
    Label9: TLabel;
    lblCorpID: TLabel;
    Label12: TLabel;
    lblUserName: TLabel;
    Label1: TLabel;
    lblRestPoint: TLabel;
    SMS_USER_SEL: TUniStoredProc;
    ds_SMS_USER_SEL: TDataSource;
    SMS_USER_SELUID: TIntegerField;
    SMS_USER_SELCERTKEY: TStringField;
    SMS_USER_SELCOPRNUM: TStringField;
    SMS_USER_SELCORPNAME: TStringField;
    SMS_USER_SELCEONAME: TStringField;
    SMS_USER_SELBIZTYPE: TStringField;
    SMS_USER_SELBIZCLASS: TStringField;
    SMS_USER_SELPOSTNUM: TStringField;
    SMS_USER_SELADDR1: TStringField;
    SMS_USER_SELADDR2: TStringField;
    SMS_USER_SELMEMBERNAME: TStringField;
    SMS_USER_SELID: TStringField;
    SMS_USER_SELPWD: TStringField;
    SMS_USER_SELTEL: TStringField;
    SMS_USER_SELEMAIL: TStringField;
    SMS_USER_SELMASTER_TEL: TStringField;
    btnSMSSend: TBitBtn;
    BitBtn1: TBitBtn;
    SMS_SENDER_TEL_SEL: TUniStoredProc;
    SMS_SENDER_TEL_INS: TUniStoredProc;
    SMS_SENDER_TEL_UPD: TUniStoredProc;
    ds_SMS_SENDER_TEL_SEL: TDataSource;
    SMS_SENDER_TEL_DEL: TUniStoredProc;
    GroupBox2: TGroupBox;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    cxGrid2: TcxGrid;
    gridSender: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    SMS_SENDER_TEL_SELID: TIntegerField;
    SMS_SENDER_TEL_SELCENTER_NAME: TStringField;
    SMS_SENDER_TEL_SELTEL_NO: TStringField;
    gridSenderID: TcxGridDBColumn;
    gridSenderCENTER_NAME: TcxGridDBColumn;
    gridSenderTEL_NO: TcxGridDBColumn;
    SMS_SENDER_TEL_LOOK: TUniStoredProc;
    ds_SMS_SENDER_TEL_LOOK: TDataSource;
    SMS_SENDER_TEL_LOOKID: TIntegerField;
    SMS_SENDER_TEL_LOOKTEL_NO: TStringField;
    edtSender: TcxLookupComboBox;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    procedure btnSMSSendClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure gridSMSCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnDeselectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    CERTKEY : string;
    BUSI_ID : string;
    USER_ID : string;
    USER_PASS : string;
    SENDERNO : string;
  public
    { Public declarations }

  end;

var
  fmSendingSMS: TfmSendingSMS;

implementation

uses BaroService_SMS, GlobalVar, UdmDBCommon, UfmSMSMember, UfmSenderTelEdit,
  UfmAddTempTel;

{$R *.dfm}

procedure TfmSendingSMS.FormShow(Sender: TObject);
var
  isUser : Integer;
  Result : longint;
begin
//  CERTKEY := 'B8A47326-B74A-4F82-B6B7-CC1CF05E2303';  //test bed용 키...
//  CERTKEY := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';  //실서비스ccnsoft꺼...
//  BUSI_ID := '2141058959';                        //연계사 사업자번호
//  USER_ID := 'jsy2013';                               //연계사 로그인ID
//  USER_PASS := '@jsy2013';                            //연계사 비밀번호

//  BUSI_ID := '1252401610';                        //연계사 사업자번호
//  USER_ID := 'ccnplaza';
//  USER_PASS := 'ccn6617';
  SMS_USER_SEL.ParamByName('CENTER_ID').Value := LoginUserCenterID;
  SMS_USER_SEL.Active := True;
  ds_SMS_USER_SEL.DataSet.Refresh;

  //CERTKEY := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';
  CERTKEY := SMS_USER_SELCERTKEY.Value;
  BUSI_ID := SMS_USER_SELCOPRNUM.Value;
  USER_ID := SMS_USER_SELID.Value;
  USER_PASS := SMS_USER_SELPWD.Value;
  SENDERNO := SMS_USER_SELMASTER_TEL.Value;

  lblCorpID.Caption := BUSI_ID;
  lblCorpName.Caption := SMS_USER_SELCORPNAME.Value;
  lblUserName.Caption := SMS_USER_SELMEMBERNAME.Value;
  ds_SMS_USER_SEL.DataSet.Refresh;
  SMS_SENDER_TEL_LOOK.Active := True;
  ds_SMS_SENDER_TEL_LOOK.DataSet.Refresh;
  edtSender.EditValue := 1;

  try
    isUser := GetBaroService_SMSSoap(true).CheckCorpIsMember(CERTKEY,BUSI_ID, BUSI_ID);
    if isUser = 0 then begin
      ShowMessage('SMS전송 사용자등록을 하세요.');
      Exit;
    end;

    Result := GetBaroService_SMSSoap(true).GetBalanceCostAmount(CERTKEY,BUSI_ID);
    if Result > 0 then
      lblRestPoint.Caption := IntToStr(Result) + ' 포인트'
    else
      lblRestPoint.Caption := '없음';
  except
    exit;
  end;
end;

procedure TfmSendingSMS.gridSMSCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  sel : Boolean;
begin
  sel := mdSMS.FieldByName('check_send').AsBoolean;
  mdSMS.Edit;
  mdSMS.FieldByName('check_send').AsBoolean := not sel;
  mdSMS.Post;
end;

procedure TfmSendingSMS.Memo1Change(Sender: TObject);
var
  bytes : Integer;
begin
  bytes := length(AnsiString(Memo1.Text));
  lblBytes.Caption := IntToStr(bytes) + '/90';
end;

procedure TfmSendingSMS.BitBtn2Click(Sender: TObject);
begin
  fmAddTempTel := TfmAddTempTel.Create(Self);
  try
    fmAddTempTel.ShowModal;
    if fmAddTempTel.ModalResult = mrOk then begin
      mdSMS.Append;
      mdSMS.FieldByName('cname').Value := fmAddTempTel.EditName.Text;
      mdSMS.FieldByName('ctel').Value := fmAddTempTel.EditTel.Text;
      mdSMS.FieldByName('check_send').Value := 1;
      mdSMS.Post;
    end;
  finally
    fmAddTempTel.Free;
  end;
end;

procedure TfmSendingSMS.BitBtn3Click(Sender: TObject);
begin
  mdSMS.Delete;
end;

procedure TfmSendingSMS.btnAddClick(Sender: TObject);
begin
  fmSenderTelEdit := TfmSenderTelEdit.Create(Self);
  try
    fmSenderTelEdit.ShowModal;
    if fmSenderTelEdit.ModalResult = mrOk then begin
      SMS_SENDER_TEL_INS.ParamByName('CENTER_NAME').Value := fmSenderTelEdit.EditCenter.Text;
      SMS_SENDER_TEL_INS.ParamByName('TEL_NO').Value := fmSenderTelEdit.EditTel.Text;
      SMS_SENDER_TEL_INS.ExecProc;
      ds_SMS_SENDER_TEL_SEL.DataSet.Refresh;
      ds_SMS_SENDER_TEL_LOOK.DataSet.Refresh;
    end;
  finally
    fmSenderTelEdit.Free;
  end;
end;

procedure TfmSendingSMS.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    SMS_SENDER_TEL_DEL.ParamByName('ID').Value := gridSenderID.EditValue;
    SMS_SENDER_TEL_DEL.ExecProc;
    ds_SMS_SENDER_TEL_SEL.DataSet.Refresh;
    ds_SMS_SENDER_TEL_LOOK.DataSet.Refresh;
  end;
end;

procedure TfmSendingSMS.btnDeselectClick(Sender: TObject);
begin
  mdSMS.DisableControls;
  mdSMS.First;
  while not mdSMS.Eof do begin
    mdSMS.Edit;
    mdSMS.FieldByName('check_send').AsBoolean := False;
    mdSMS.Post;
    mdSMS.Next;
  end;
  dSMS.DataSet.Refresh;
  mdSMS.First;
  mdSMS.EnableControls;
end;

procedure TfmSendingSMS.btnEditClick(Sender: TObject);
begin
  fmSenderTelEdit := TfmSenderTelEdit.Create(Self);
  try
    fmSenderTelEdit.EditCenter.Text := gridSenderCENTER_NAME.EditValue;
    fmSenderTelEdit.EditTel.Text := gridSenderTEL_NO.EditValue;
    fmSenderTelEdit.ShowModal;
    if fmSenderTelEdit.ModalResult = mrOk then begin
      SMS_SENDER_TEL_UPD.ParamByName('ID').Value := gridSenderID.EditValue;
      SMS_SENDER_TEL_UPD.ParamByName('CENTER_NAME').Value := fmSenderTelEdit.EditCenter.Text;
      SMS_SENDER_TEL_UPD.ParamByName('TEL_NO').Value := fmSenderTelEdit.EditTel.Text;
      SMS_SENDER_TEL_UPD.ExecProc;
      ds_SMS_SENDER_TEL_SEL.DataSet.Refresh;
      ds_SMS_SENDER_TEL_LOOK.DataSet.Refresh;
    end;
  finally
    fmSenderTelEdit.Free;
  end;
end;

procedure TfmSendingSMS.btnSelectAllClick(Sender: TObject);
begin
  mdSMS.DisableControls;
  mdSMS.First;
  while not mdSMS.Eof do begin
    mdSMS.Edit;
    mdSMS.FieldByName('check_send').AsBoolean := True;
    mdSMS.Post;
    mdSMS.Next;
  end;
  dSMS.DataSet.Refresh;
  mdSMS.First;
  mdSMS.EnableControls;
end;

procedure TfmSendingSMS.btnSMSSendClick(Sender: TObject);
var
  Messages : ArrayOfXMSMessage;
  Rtn : WideString;
  tcnt, cnt, i, Result : Integer;
  SENDER_NO, SEND_MSG : string;
  RECEIVER_NAME : string;
begin
  SENDER_NO := edtSender.Text;
  if edtSender.Text = '' then begin
    ShowMessage('송신번호를 입력하세요.');
    edtSender.SetFocus;
    Exit;
  end;
  SEND_MSG := Memo1.Text;
  if Memo1.Text = '' then begin
    ShowMessage('전송내용을 입력하세요.');
    Memo1.SetFocus;
    Exit;
  end;
  if USER_ID = '' then begin
    ShowMessage('바로빌 회원정보를 입력하세요.');
    Exit;
  end;
  if USER_ID = '' then begin
    ShowMessage('바로빌 회원정보를 입력하세요.');
    Exit;
  end;
  tcnt := mdSMS.RecordCount;
  if tcnt > 999 then begin
    ShowMessage('한번에 보낼수 있는 전송건수는 999건 까지 입니다.');
    tcnt := 999;
  end;
  mdSMS.First;
  cnt := 0;
  i := 0;
  for i := 0 to tcnt - 1 do begin
    if mdSMS.FieldByName('check_send').AsBoolean then begin
      RECEIVER_NAME := mdSMS.FieldByName('cname').AsString;
      Inc(cnt);
      SetLength(Messages, cnt);
      Messages[i] := XMSMessage.Create();
      Messages[i].ReceiverNum := mdSMS.FieldByName('ctel').AsString;
      Messages[i].ReceiverName := RECEIVER_NAME;
      Messages[i].SenderNum := SENDER_NO;
      Messages[i].Message := SEND_MSG;
    end;
    mdSMS.Next;
  end;
  Rtn := GetBaroService_SMSSoap(true).SendMessages(CERTKEY,BUSI_ID,USER_ID,cnt, False, Messages,'');
  Result := GetBaroService_SMSSoap(true).GetBalanceCostAmount(CERTKEY,BUSI_ID);
  if Result > 0 then
    lblRestPoint.Caption := IntToStr(Result) + ' 포인트'
  else
    lblRestPoint.Caption := '없음';
  ShowMessage('문자전송완료!');
end;

end.
