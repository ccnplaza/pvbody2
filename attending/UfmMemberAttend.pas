unit UfmMemberAttend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  DBAccess, Uni, MemDS, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxDropDownEdit, cxImageComboBox, StdCtrls, cxTextEdit, cxMaskEdit,
  cxSpinEdit, ComCtrls, Buttons, ExtCtrls, cxDBLookupComboBox, DateUtils, Gauges,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfmMemberAttend = class(TForm)
    Panel8: TPanel;
    Label1: TLabel;
    btnView: TBitBtn;
    btnAttendCalc: TBitBtn;
    s_date: TDateTimePicker;
    e_date: TDateTimePicker;
    btnExcelActive: TBitBtn;
    chkFilter: TCheckBox;
    btnSMSSending: TBitBtn;
    icbCenter: TcxImageComboBox;
    btnHistory: TBitBtn;
    btnCustInfo: TBitBtn;
    gridCustomer: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    gridAttend: TcxGridDBTableView;
    gridAttendID: TcxGridDBColumn;
    gridAttendL_NAME: TcxGridDBColumn;
    gridAttendATT_DATE: TcxGridDBColumn;
    gridAttendIN_TIME: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    LESSON_ATTENDANCE_SELID: TUniStoredProc;
    LESSON_ATTENDANCE_SELIDID: TStringField;
    LESSON_ATTENDANCE_SELIDATT_DATE: TDateField;
    LESSON_ATTENDANCE_SELIDLEC_CODE: TStringField;
    LESSON_ATTENDANCE_SELIDIN_TIME: TStringField;
    LESSON_ATTENDANCE_SELIDL_NAME: TStringField;
    LESSON_ATTENDANCE_SELIDCNAME: TStringField;
    LESSON_ATTENDANCE_SELIDIS_ACTIVE: TIntegerField;
    d_LESSON_ATTENDANCE_SELID: TDataSource;
    LESSON_CUSTOMER_SELALIVE: TUniStoredProc;
    d_LESSON_CUSTOMER_SELALIVE: TUniDataSource;
    LESSON_CUSTOMER_SELALIVEID: TStringField;
    LESSON_CUSTOMER_SELALIVEREG_DATE: TDateField;
    LESSON_CUSTOMER_SELALIVEMEMBER_UID: TStringField;
    LESSON_CUSTOMER_SELALIVESTART_DATE: TDateField;
    LESSON_CUSTOMER_SELALIVEEND_DATE: TDateField;
    LESSON_CUSTOMER_SELALIVELEC_MONTH: TSmallintField;
    LESSON_CUSTOMER_SELALIVELEC_CODE: TStringField;
    LESSON_CUSTOMER_SELALIVEIS_DONE: TSmallintField;
    LESSON_CUSTOMER_SELALIVEM_KIND: TSmallintField;
    LESSON_CUSTOMER_SELALIVELEC_PRICE: TFloatField;
    LESSON_CUSTOMER_SELALIVEPAY_KIND: TSmallintField;
    LESSON_CUSTOMER_SELALIVECNAME: TStringField;
    LESSON_CUSTOMER_SELALIVESEX: TStringField;
    LESSON_CUSTOMER_SELALIVECTEL: TStringField;
    LESSON_CUSTOMER_SELALIVEUSED_CNT: TSmallintField;
    gridCustomerID: TcxGridDBColumn;
    gridCustomerREG_DATE: TcxGridDBColumn;
    gridCustomerMEMBER_UID: TcxGridDBColumn;
    gridCustomerSTART_DATE: TcxGridDBColumn;
    gridCustomerEND_DATE: TcxGridDBColumn;
    gridCustomerLEC_MONTH: TcxGridDBColumn;
    gridCustomerLEC_CODE: TcxGridDBColumn;
    gridCustomerIS_DONE: TcxGridDBColumn;
    gridCustomerM_KIND: TcxGridDBColumn;
    gridCustomerLEC_PRICE: TcxGridDBColumn;
    gridCustomerPAY_KIND: TcxGridDBColumn;
    gridCustomerCNAME: TcxGridDBColumn;
    gridCustomerSEX: TcxGridDBColumn;
    gridCustomerCTEL: TcxGridDBColumn;
    gridCustomerUSED_CNT: TcxGridDBColumn;
    LESSON_CUSTOMER_SELALIVEIS_ACTIVE: TSmallintField;
    gridCustomerIS_ACTIVE: TcxGridDBColumn;
    q_attend_count: TUniQuery;
    q_attend_countATT_COUNT: TIntegerField;
    LESSON_CUSTOMER_ATTEND_UPD: TUniStoredProc;
    PanelMsg: TPanel;
    Label2: TLabel;
    Gauge1: TGauge;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
    procedure gridCustomerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnAttendCalcClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    S_CENTER, E_CENTER : Integer;
  end;

var
  fmMemberAttend: TfmMemberAttend;

implementation

uses GlobalVar, UdmDBCommon, uMemberEditView, UfmCustomerHistory;

{$R *.dfm}


procedure TfmMemberAttend.btnAttendCalcClick(Sender: TObject);
var
  i, cnt, att_cnt : Integer;
  mid : string;
begin
  LESSON_CUSTOMER_SELALIVE.DisableControls;
  cnt := LESSON_CUSTOMER_SELALIVE.RecordCount;
  LESSON_CUSTOMER_SELALIVE.First;
  Gauge1.MaxValue := cnt;
  Gauge1.Progress := 0;
  PanelMsg.Visible := True;
  for i := 0 to cnt - 1 do begin
    mid := LESSON_CUSTOMER_SELALIVEMEMBER_UID.Value;
    q_attend_count.ParamByName('m_id').Value := mid;
    q_attend_count.Active := True;
    q_attend_count.Refresh;
    att_cnt := q_attend_countATT_COUNT.Value;
    LESSON_CUSTOMER_ATTEND_UPD.ParamByName('M_ID').Value := mid;
    LESSON_CUSTOMER_ATTEND_UPD.ParamByName('CNT').Value := att_cnt;
    LESSON_CUSTOMER_ATTEND_UPD.Execute;

    Gauge1.Progress := i + 1;
    PanelMsg.Refresh;
    LESSON_CUSTOMER_SELALIVE.Next;
  end;
  d_LESSON_CUSTOMER_SELALIVE.DataSet.Refresh;
  LESSON_CUSTOMER_SELALIVE.First;
  LESSON_CUSTOMER_SELALIVE.EnableControls;
  PanelMsg.Visible := False;
end;

procedure TfmMemberAttend.btnCustInfoClick(Sender: TObject);
begin
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    GLOVAL_MEMBER_UID := gridCustomerMEMBER_UID.EditValue;
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmMemberAttend.btnHistoryClick(Sender: TObject);
begin
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := gridCustomerMEMBER_UID.EditValue;
    fmCustomerHistory.ShowModal;
  finally
    fmCustomerHistory.Free;
  end;
end;

procedure TfmMemberAttend.btnViewClick(Sender: TObject);
begin
  if icbCenter.EditValue > 0 then begin
    S_CENTER := icbCenter.EditValue;
    E_CENTER := icbCenter.EditValue;
  end else begin
    S_CENTER := 0;
    E_CENTER := 99;
  end;

  LESSON_CUSTOMER_SELALIVE.ParamByName('s_center').Value := S_CENTER;
  LESSON_CUSTOMER_SELALIVE.ParamByName('e_center').Value := E_CENTER;
  LESSON_CUSTOMER_SELALIVE.ParamByName('s_date').Value := s_date.Date;
  LESSON_CUSTOMER_SELALIVE.ParamByName('e_date').Value := e_date.Date;
  LESSON_CUSTOMER_SELALIVE.Active := True;
  d_LESSON_CUSTOMER_SELALIVE.DataSet.Refresh;
end;

procedure TfmMemberAttend.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMemberAttend.FormResize(Sender: TObject);
begin
  PanelMsg.Top := (ClientHeight div 2) - (PanelMsg.Height div 2);
  PanelMsg.Left := (ClientWidth div 2) - (PanelMsg.Width div 2);
end;

procedure TfmMemberAttend.FormShow(Sender: TObject);
begin
  s_date.Date := StrToDate(Format('%.4d-%.2d-01', [YearOf(Date), 1]));
  e_date.Date := Date;
  dmDBCommon.SetCenter(icbCenter);
  icbCenter.Enabled := LoginUserKIND >= 2;
  dmDBCommon.LESSON_SEL_LOOK.Active := True;
  dmDBCommon.d_LESSON_SEL_LOOK.DataSet.Refresh;
  btnView.Click;
end;

procedure TfmMemberAttend.gridCustomerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  uid : string;
begin
  if VarToStr(gridCustomerMEMBER_UID.EditValue)  <> '' then begin
    uid := gridCustomerMEMBER_UID.EditValue;
    LESSON_ATTENDANCE_SELID.ParamByName('M_ID').Value := uid;
    LESSON_ATTENDANCE_SELID.Active := True;
    d_LESSON_ATTENDANCE_SELID.DataSet.Refresh;
  end;
end;

procedure TfmMemberAttend.icbCenterPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

initialization RegisterClasses([TfmMemberAttend]);
end.
