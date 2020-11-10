unit UfmSMSSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles,InvokeRegistry, Rio, SOAPHTTPClient,
  Uni, SHDocVw,Types,Math, DB, MemDS, DBAccess, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfmSMSSetting = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ID: TEdit;
    PWD: TEdit;
    btnSave: TBitBtn;
    EditSender: TEdit;
    CorpNum: TEdit;
    CorpName: TEdit;
    CEOName: TEdit;
    BizType: TEdit;
    BizClass: TEdit;
    PostNum: TEdit;
    Addr1: TEdit;
    Addr2: TEdit;
    MemberName: TEdit;
    TEL: TEdit;
    Email: TEdit;
    GroupBox2: TGroupBox;
    btnSMSHistory: TBitBtn;
    btnPointSite: TButton;
    Label20: TLabel;
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
    SMS_USER_UPD: TUniStoredProc;
    SMS_USER_IU: TUniStoredProc;
    btnRegistComp: TBitBtn;
    GroupBox3: TGroupBox;
    gridCenter: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    REGISTED_CENTER_SEL: TUniStoredProc;
    ds_REGISTED_CENTER_SEL: TDataSource;
    REGISTED_CENTER_SELID: TIntegerField;
    REGISTED_CENTER_SELC_NAME: TStringField;
    gridCenterID: TcxGridDBColumn;
    gridCenterC_NAME: TcxGridDBColumn;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPointSiteClick(Sender: TObject);
    procedure btnSMSHistoryClick(Sender: TObject);
    procedure btnRegistCompClick(Sender: TObject);
    procedure gridCenterCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure RetrieveCenterInfo;
    { Private declarations }
  public
    { Public declarations }
    CERTKEY : string;
    BUSI_ID : string;
    USER_ID : string;
    USER_PASS : string;
    SENDERNO : string;
  end;

var
  fmSMSSetting: TfmSMSSetting;

implementation

uses GlobalVar, BaroService_SMS, UdmDBCommon;

{$R *.dfm}

procedure TfmSMSSetting.btnPointSiteClick(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  rtnString := GetBaroService_SMSSoap(true).GetCashChargeURL(CERTKEY,BUSI_ID,USER_ID,USER_PASS);
  if( Copy( rtnString,0,1) = '-') then begin
    ShowMessage(rtnString + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,strtoint(rtnString)));
    Exit;
  end else begin
    WebB := TWebBrowser.Create(self);
    Options := navOpenInNewWindow;
    WebB.Navigate(rtnString,Options);
  end;
end;

procedure TfmSMSSetting.btnRegistCompClick(Sender: TObject);
var
  isUser, isOK : Integer;
begin
  isUser := GetBaroService_SMSSoap(true).CheckCorpIsMember(CERTKEY,CorpNum.Text, CorpNum.Text);
  if isUser = 1 then begin
    ShowMessage('이미 등록된 사용자입니다. 사용자정보를 변경한 후 다시 하세요.');
    Exit;
  end;

  isOK := GetBaroService_SMSSoap(true).RegistCorp(CERTKEY,
       CorpNum.Text, CorpName.Text, CEOName.Text, BizType.Text,
       BizClass.Text, PostNum.Text, Addr1.Text, Addr2.Text,
       MemberName.Text, '', ID.Text,PWD.Text,'', TEL.Text, '', Email.Text);

  if isOK = 1 then begin
    ShowMessage('사용자등록이 완료되었습니다. SMS 문자를 보내려면 포인트를 구매하세요.');
  end else begin
    ShowMessage(IntToStr(isOK) + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY, isOK));
    Exit;
  end;
end;

procedure TfmSMSSetting.btnSaveClick(Sender: TObject);
begin
  SMS_USER_IU.ParamByName('UID').Value := gridCenterID.EditValue;
  SMS_USER_IU.ParamByName('CERTKEY').Value := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';
  SMS_USER_IU.ParamByName('COPRNUM').Value := CorpNum.Text;
  SMS_USER_IU.ParamByName('CORPNAME').Value := CorpName.Text;
  SMS_USER_IU.ParamByName('CEONAME').Value := CEOName.Text;
  SMS_USER_IU.ParamByName('BIZTYPE').Value := BizType.Text;
  SMS_USER_IU.ParamByName('BIZCLASS').Value := BizClass.Text;
  SMS_USER_IU.ParamByName('POSTNUM').Value := PostNum.Text;
  SMS_USER_IU.ParamByName('ADDR1').Value :=  Addr1.Text;
  SMS_USER_IU.ParamByName('ADDR2').Value :=  Addr2.Text;
  SMS_USER_IU.ParamByName('MEMBERNAME').Value := MemberName.Text;
  SMS_USER_IU.ParamByName('ID').Value := ID.Text;
  SMS_USER_IU.ParamByName('PWD').Value := PWD.Text;
  SMS_USER_IU.ParamByName('TEL').Value := TEL.Text;
  SMS_USER_IU.ParamByName('EMAIL').Value := Email.Text;
  SMS_USER_IU.ParamByName('MASTER_TEL').Value := EditSender.Text;
  SMS_USER_IU.ExecProc;
end;

procedure TfmSMSSetting.btnSMSHistoryClick(Sender: TObject);
var
  rtnString : String;
  Options : OleVariant;
  WebB : TWebBrowser;
begin
  rtnString := GetBaroService_SMSSoap(true).GetSMSHistoryURL(CERTKEY,BUSI_ID,USER_ID,USER_PASS);
  if( Copy( rtnString,0,1) = '-') then begin
    ShowMessage(rtnString + ' : '+ GetBaroService_SMSSoap(true).GetErrString(CERTKEY,strtoint(rtnString)));
    Exit;
  end else begin
    WebB := TWebBrowser.Create(self);
    Options := navOpenInNewWindow;
    WebB.Navigate(rtnString,Options);
  end;
end;

procedure TfmSMSSetting.FormShow(Sender: TObject);
var
  isUser : Integer;
  Result : integer;
begin
  REGISTED_CENTER_SEL.Active := True;
  ds_REGISTED_CENTER_SEL.DataSet.Refresh;
  REGISTED_CENTER_SEL.Locate('ID', LoginUserCenterID, []);
  SMS_USER_SEL.ParamByName('CENTER_ID').Value := REGISTED_CENTER_SELID.Value;
  SMS_USER_SEL.Active := True;
  ds_SMS_USER_SEL.DataSet.Refresh;

  //CERTKEY := '2AA42452-A8BB-4251-A5BB-1C9438567B3C';
  CERTKEY := SMS_USER_SELCERTKEY.Value;
  BUSI_ID := SMS_USER_SELCOPRNUM.Value;
  USER_ID := SMS_USER_SELID.Value;
  USER_PASS := SMS_USER_SELPWD.Value;
  SENDERNO := SMS_USER_SELMASTER_TEL.Value;
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

  CorpNum.Text := BUSI_ID;
  CorpName.Text := SMS_USER_SELCORPNAME.Value;
  CEOName.Text := SMS_USER_SELCEONAME.Value;
  BizType.Text := SMS_USER_SELBIZTYPE.Value;
  BizClass.Text := SMS_USER_SELBIZCLASS.Value;
  PostNum.Text := SMS_USER_SELPOSTNUM.Value;
  Addr1.Text := SMS_USER_SELADDR1.Value;
  Addr2.Text := SMS_USER_SELADDR2.Value;
  MemberName.Text := SMS_USER_SELMEMBERNAME.Value;
  ID.Text := USER_ID;
  PWD.Text := USER_PASS;
  TEL.Text := SMS_USER_SELTEL.Value;
  Email.Text := SMS_USER_SELEMAIL.Value;
  EditSender.Text := SENDERNO;
end;

procedure TfmSMSSetting.RetrieveCenterInfo;
var
  C_ID, Result : Integer;
begin
  C_ID := gridCenterID.EditValue;
  SMS_USER_SEL.ParamByName('CENTER_ID').Value := C_ID;
  SMS_USER_SEL.Active := True;
  ds_SMS_USER_SEL.DataSet.Refresh;
  if SMS_USER_SEL.RecordCount > 0 then begin
    CERTKEY := SMS_USER_SELCERTKEY.Value;
    BUSI_ID := SMS_USER_SELCOPRNUM.Value;
    USER_ID := SMS_USER_SELID.Value;
    USER_PASS := SMS_USER_SELPWD.Value;
    SENDERNO := SMS_USER_SELMASTER_TEL.Value;
    CorpNum.Text := BUSI_ID;
    CorpName.Text := SMS_USER_SELCORPNAME.Value;
    CEOName.Text := SMS_USER_SELCEONAME.Value;
    BizType.Text := SMS_USER_SELBIZTYPE.Value;
    BizClass.Text := SMS_USER_SELBIZCLASS.Value;
    PostNum.Text := SMS_USER_SELPOSTNUM.Value;
    Addr1.Text := SMS_USER_SELADDR1.Value;
    Addr2.Text := SMS_USER_SELADDR2.Value;
    MemberName.Text := SMS_USER_SELMEMBERNAME.Value;
    ID.Text := USER_ID;
    PWD.Text := USER_PASS;
    TEL.Text := SMS_USER_SELTEL.Value;
    Email.Text := SMS_USER_SELEMAIL.Value;
    EditSender.Text := SENDERNO;
  end else begin
    CERTKEY := '';
    BUSI_ID := '';
    USER_ID := '';
    USER_PASS := '';
    SENDERNO := '';
    CorpNum.Text := '';
    CorpName.Text := '';
    CEOName.Text := '';
    BizType.Text := '';
    BizClass.Text := '';
    PostNum.Text := '';
    Addr1.Text := '';
    Addr2.Text := '';
    MemberName.Text := '';
    ID.Text := '';
    PWD.Text := '';
    TEL.Text := '';
    Email.Text := '';
    EditSender.Text := '';
  end;
  Result := GetBaroService_SMSSoap(true).GetBalanceCostAmount(CERTKEY,BUSI_ID);
  if Result > 0 then
    lblRestPoint.Caption := IntToStr(Result) + ' 포인트'
  else
    lblRestPoint.Caption := '없음';
end;
procedure TfmSMSSetting.gridCenterCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RetrieveCenterInfo;
end;

end.
