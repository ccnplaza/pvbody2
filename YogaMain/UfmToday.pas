unit UfmToday;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, Buttons,
  ExtCtrls, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, Uni, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox, cxImageComboBox,
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
  TfmToday = class(TForm)
    Panel1: TPanel;
    lbl1: TLabel;
    btnView: TBitBtn;
    Panel2: TPanel;
    cxDateEdit1: TcxDateEdit;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    gridLesson: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    LESSON_CUSTOMER_MIXSEL: TUniStoredProc;
    LESSON_CUSTOMER_MIXSELID: TStringField;
    LESSON_CUSTOMER_MIXSELREG_DATE: TDateField;
    LESSON_CUSTOMER_MIXSELMEMBER_UID: TStringField;
    LESSON_CUSTOMER_MIXSELSTART_DATE: TDateField;
    LESSON_CUSTOMER_MIXSELEND_DATE: TDateField;
    LESSON_CUSTOMER_MIXSELLEC_CODE: TStringField;
    LESSON_CUSTOMER_MIXSELCOMPANY_ID: TStringField;
    LESSON_CUSTOMER_MIXSELIS_DONE: TSmallintField;
    LESSON_CUSTOMER_MIXSELCNAME: TStringField;
    LESSON_CUSTOMER_MIXSELSEX: TStringField;
    LESSON_CUSTOMER_MIXSELCTEL: TStringField;
    LESSON_CUSTOMER_MIXSELM_KIND: TSmallintField;
    LESSON_CUSTOMER_MIXSELLOCKER_NO: TStringField;
    LESSON_CUSTOMER_MIXSELNEW_OR_RENEW: TSmallintField;
    LESSON_CUSTOMER_MIXSELLEC_PRICE: TFloatField;
    LESSON_CUSTOMER_MIXSELPAY_KIND: TSmallintField;
    LESSON_CUSTOMER_MIXSELLEC_MONTH: TSmallintField;
    LESSON_CUSTOMER_MIXSELOUT_DATE: TStringField;
    LESSON_CUSTOMER_MIXSELOUT_PRICE: TFloatField;
    LESSON_CUSTOMER_MIXSELOUT_KIND: TSmallintField;
    LESSON_CUSTOMER_MIXSELOUT_REASON: TStringField;
    LESSON_CUSTOMER_MIXSELUSED_CNT: TSmallintField;
    LESSON_CUSTOMER_MIXSELLEC_DESC: TStringField;
    LESSON_CUSTOMER_MIXSELIS_ACTIVE: TIntegerField;
    d_LESSON_CUSTOMER_MIXSEL: TUniDataSource;
    gridLessonID: TcxGridDBColumn;
    gridLessonREG_DATE: TcxGridDBColumn;
    gridLessonMEMBER_UID: TcxGridDBColumn;
    gridLessonSTART_DATE: TcxGridDBColumn;
    gridLessonEND_DATE: TcxGridDBColumn;
    gridLessonLEC_CODE: TcxGridDBColumn;
    gridLessonCOMPANY_ID: TcxGridDBColumn;
    gridLessonIS_DONE: TcxGridDBColumn;
    gridLessonCNAME: TcxGridDBColumn;
    gridLessonSEX: TcxGridDBColumn;
    gridLessonCTEL: TcxGridDBColumn;
    gridLessonM_KIND: TcxGridDBColumn;
    gridLessonLOCKER_NO: TcxGridDBColumn;
    gridLessonNEW_OR_RENEW: TcxGridDBColumn;
    gridLessonLEC_PRICE: TcxGridDBColumn;
    gridLessonPAY_KIND: TcxGridDBColumn;
    gridLessonLEC_MONTH: TcxGridDBColumn;
    gridLessonOUT_DATE: TcxGridDBColumn;
    gridLessonOUT_PRICE: TcxGridDBColumn;
    gridLessonOUT_KIND: TcxGridDBColumn;
    gridLessonOUT_REASON: TcxGridDBColumn;
    gridLessonUSED_CNT: TcxGridDBColumn;
    gridLessonLEC_DESC: TcxGridDBColumn;
    gridLessonIS_ACTIVE: TcxGridDBColumn;
    gridAttend: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    LESSON_ATTENDANCE_SELDATE: TUniStoredProc;
    d_LESSON_ATTENDANCE_SELDATE: TDataSource;
    LESSON_ATTENDANCE_SELDATEID: TStringField;
    LESSON_ATTENDANCE_SELDATEATT_DATE: TDateField;
    LESSON_ATTENDANCE_SELDATELEC_CODE: TStringField;
    LESSON_ATTENDANCE_SELDATEIN_TIME: TStringField;
    LESSON_ATTENDANCE_SELDATEL_NAME: TStringField;
    LESSON_ATTENDANCE_SELDATECNAME: TStringField;
    LESSON_ATTENDANCE_SELDATEIS_ACTIVE: TIntegerField;
    gridAttendID: TcxGridDBColumn;
    gridAttendATT_DATE: TcxGridDBColumn;
    gridAttendLEC_CODE: TcxGridDBColumn;
    gridAttendIN_TIME: TcxGridDBColumn;
    gridAttendL_NAME: TcxGridDBColumn;
    gridAttendCNAME: TcxGridDBColumn;
    gridAttendIS_ACTIVE: TcxGridDBColumn;
    Panel3: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    PRODUCT_SALE_SEL: TUniStoredProc;
    PRODUCT_SALE_SELID: TStringField;
    PRODUCT_SALE_SELS_DATE: TDateField;
    PRODUCT_SALE_SELITEM_ID: TIntegerField;
    PRODUCT_SALE_SELS_DESC: TStringField;
    PRODUCT_SALE_SELS_QTY: TFloatField;
    PRODUCT_SALE_SELQ_PRICE: TFloatField;
    PRODUCT_SALE_SELT_PRICE: TFloatField;
    PRODUCT_SALE_SELPAY_WAY: TSmallintField;
    PRODUCT_SALE_SELPAYED: TFloatField;
    d_PRODUCT_SALE_SEL: TUniDataSource;
    cxGrid3: TcxGrid;
    gridSale: TcxGridDBTableView;
    gridSaleID: TcxGridDBColumn;
    gridSaleS_DATE: TcxGridDBColumn;
    gridSaleITEM_ID: TcxGridDBColumn;
    gridSaleS_DESC: TcxGridDBColumn;
    gridSaleS_QTY: TcxGridDBColumn;
    gridSaleQ_PRICE: TcxGridDBColumn;
    gridSaleT_PRICE: TcxGridDBColumn;
    gridSalePAYED: TcxGridDBColumn;
    gridSalePAY_WAY: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    CASH_INOUT_SELDATE: TUniStoredProc;
    CASH_INOUT_SELDATEK_CODE: TIntegerField;
    CASH_INOUT_SELDATEC_DESC: TStringField;
    CASH_INOUT_SELDATECASH_IN: TFloatField;
    CASH_INOUT_SELDATECASH_OUT: TFloatField;
    CASH_INOUT_SELDATELESSON_ID: TStringField;
    d_CASH_INOUT_SELDATE: TUniDataSource;
    cxGrid4: TcxGrid;
    gridCash: TcxGridDBTableView;
    gridCashC_DATE: TcxGridDBColumn;
    gridCashK_CODE: TcxGridDBColumn;
    gridCashC_DESC: TcxGridDBColumn;
    gridCashCASH_IN: TcxGridDBColumn;
    gridCashCASH_OUT: TcxGridDBColumn;
    gridCashLESSON_ID: TcxGridDBColumn;
    G3L1: TcxGridLevel;
    CASH_INOUT_SELDATEPRODUCT_SALE_ID: TStringField;
    gridCashPRODUCT_SALE_ID: TcxGridDBColumn;
    icbCenter: TcxImageComboBox;
    PRODUCT_SALE_SELCENTER_ID: TIntegerField;
    gridSaleCENTER_ID: TcxGridDBColumn;
    CASH_INOUT_SELDATEID: TStringField;
    CASH_INOUT_SELDATECENTER_ID: TIntegerField;
    gridCashCENTER_ID: TcxGridDBColumn;
    Q_LessonAttendance: TUniQuery;
    Q_LessonAttendanceID: TStringField;
    Q_LessonAttendanceATT_DATE: TDateField;
    Q_LessonAttendanceLEC_CODE: TStringField;
    Q_LessonAttendanceIN_TIME: TStringField;
    Q_LessonAttendanceL_NAME: TStringField;
    Q_LessonAttendanceCNAME: TStringField;
    Q_LessonAttendanceIS_ACTIVE: TSmallintField;
    Q_LessonCustomer: TUniQuery;
    Q_LessonCustomerID: TStringField;
    Q_LessonCustomerREG_DATE: TDateField;
    Q_LessonCustomerMEMBER_UID: TStringField;
    Q_LessonCustomerSTART_DATE: TDateField;
    Q_LessonCustomerEND_DATE: TDateField;
    Q_LessonCustomerLEC_MONTH: TSmallintField;
    Q_LessonCustomerLEC_CODE: TStringField;
    Q_LessonCustomerCOMPANY_ID: TStringField;
    Q_LessonCustomerIS_DONE: TSmallintField;
    Q_LessonCustomerM_KIND: TSmallintField;
    Q_LessonCustomerLOCKER_NO: TStringField;
    Q_LessonCustomerNEW_OR_RENEW: TSmallintField;
    Q_LessonCustomerLEC_DESC: TStringField;
    Q_LessonCustomerLEC_PRICE: TFloatField;
    Q_LessonCustomerPAY_KIND: TSmallintField;
    Q_LessonCustomerOUT_DATE: TStringField;
    Q_LessonCustomerOUT_PRICE: TFloatField;
    Q_LessonCustomerOUT_KIND: TSmallintField;
    Q_LessonCustomerOUT_REASON: TStringField;
    Q_LessonCustomerUSED_CNT: TSmallintField;
    Q_LessonCustomerBREAK_START: TDateField;
    Q_LessonCustomerBREAK_END: TDateField;
    Q_LessonCustomerCENTER_ID: TSmallintField;
    Q_LessonCustomerCNAME: TStringField;
    Q_LessonCustomerSEX: TStringField;
    Q_LessonCustomerCTEL: TStringField;
    Q_LessonCustomerIS_ACTIVE: TSmallintField;
    Q_LessonCustomerSMS_YESNO: TSmallintField;
    q_ProductSale: TUniQuery;
    q_ProductSaleID: TStringField;
    q_ProductSaleS_DATE: TDateField;
    q_ProductSaleITEM_ID: TIntegerField;
    q_ProductSaleS_DESC: TStringField;
    q_ProductSaleS_QTY: TFloatField;
    q_ProductSaleQ_PRICE: TFloatField;
    q_ProductSaleT_PRICE: TFloatField;
    q_ProductSalePAY_WAY: TSmallintField;
    q_ProductSalePAYED: TFloatField;
    q_ProductSaleCENTER_ID: TIntegerField;
    q_CashInout: TUniQuery;
    q_CashInoutID: TStringField;
    q_CashInoutK_CODE: TIntegerField;
    q_CashInoutC_DESC: TStringField;
    q_CashInoutCASH_IN: TFloatField;
    q_CashInoutCASH_OUT: TFloatField;
    q_CashInoutLESSON_ID: TStringField;
    q_CashInoutPRODUCT_SALE_ID: TStringField;
    q_CashInoutCENTER_ID: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDateEdit1PropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    S_CENTER, E_CENTER : Integer;
  end;

var
  fmToday: TfmToday;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}


procedure TfmToday.btnViewClick(Sender: TObject);
begin
  if icbCenter.EditValue > 0 then begin
    S_CENTER := icbCenter.EditValue;
    E_CENTER := icbCenter.EditValue;
  end else begin
    S_CENTER := 0;
    E_CENTER := 99;
  end;
  Q_LessonCustomer.ParamByName('COMP_ID').Value := LoginUserCompID;
  Q_LessonCustomer.ParamByName('S_DATE').Value := cxDateEdit1.Date;
  Q_LessonCustomer.ParamByName('E_DATE').Value := cxDateEdit1.Date;
  Q_LessonCustomer.Open;
  d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;

  Q_LessonAttendance.ParamByName('COMP_ID').Value := LoginUserCompID;
  Q_LessonAttendance.ParamByName('A_DATE').Value := cxDateEdit1.Date;
  Q_LessonAttendance.Open;
  d_LESSON_ATTENDANCE_SELDATE.DataSet.Refresh;

  q_ProductSale.ParamByName('COMP_ID').Value := LoginUserCompID;
  q_ProductSale.ParamByName('START_DATE').Value := cxDateEdit1.Date;
  q_ProductSale.ParamByName('END_DATE').Value := cxDateEdit1.Date;
  q_ProductSale.Open;
  d_PRODUCT_SALE_SEL.DataSet.Refresh;

  q_CashInout.ParamByName('COMP_ID').Value := LoginUserCompID;
  q_CashInout.ParamByName('c_date').Value := cxDateEdit1.Date;
  q_CashInout.Open;
  d_CASH_INOUT_SELDATE.DataSet.Refresh;
end;

procedure TfmToday.cxDateEdit1PropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmToday.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmToday.FormShow(Sender: TObject);
begin
  cxDateEdit1.Date := Date;
  dmDBCommon.LESSON_SEL_LOOK.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.LESSON_SEL_LOOK.Active := True;
  dmDBCommon.d_LESSON_SEL_LOOK.DataSet.Refresh;

  dmDBCommon.PRODUCTS_SEL_LOOK.Active := True;
  dmDBCommon.d_PRODUCTS_SEL_LOOK.DataSet.Refresh;
  dmDBCommon.CASH_INOUT_KIND_SEL_LOOK.Active := True;
  dmDBCommon.d_CASH_INOUT_KIND_SEL_LOOK.DataSet.Refresh;
  //dmDBCommon.SetCenter(icbCenter);
  //icbCenter.Enabled := LoginUserKIND >= 2;
  btnView.Click;
end;

procedure TfmToday.icbCenterPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

initialization RegisterClasses([TfmToday]);

end.
