unit UfmPaymentManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxImageComboBox, cxContainer, ComCtrls, dxCore, cxDateUtils, MemDS, DBAccess,
  Uni, StdCtrls, Buttons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, DBClient, Provider,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfmPaymentManager = class(TForm)
    Panel10: TPanel;
    cxGrid7: TcxGrid;
    cxGrid7DBTableView1: TcxGridDBTableView;
    cxGrid7DBTableView1ID: TcxGridDBColumn;
    cxGrid7DBTableView1PAY_DATE: TcxGridDBColumn;
    cxGrid7DBTableView1MEMBER_ID: TcxGridDBColumn;
    cxGrid7DBTableView1LEC_CODE: TcxGridDBColumn;
    cxGrid7DBTableView1PAY_YEAR: TcxGridDBColumn;
    cxGrid7DBTableView1PAY_MONTH: TcxGridDBColumn;
    cxGrid7DBTableView1PAY_KIND: TcxGridDBColumn;
    cxGrid7DBTableView1PAY_AMOUNT: TcxGridDBColumn;
    cxGrid7DBTableView1BIGO: TcxGridDBColumn;
    cxGrid7Level1: TcxGridLevel;
    Panel5: TPanel;
    Label5: TLabel;
    paySDate: TcxDateEdit;
    payEDate: TcxDateEdit;
    btnPaymentView: TBitBtn;
    q_customer: TUniQuery;
    d_CUSTOMER: TDataSource;
    q_LESSON: TUniQuery;
    d_LESSON: TDataSource;
    q_LESSON_PAYMENT: TUniQuery;
    d_LESSON_PAYMENT: TDataSource;
    q_customerUID: TStringField;
    q_customerCNAME: TStringField;
    q_customerCOMPANY_ID: TStringField;
    q_LESSONID: TStringField;
    q_LESSONL_NAME: TStringField;
    q_LESSONL_INSTRUCTOR: TStringField;
    q_LESSONL_PRICE: TFloatField;
    q_LESSONL_HOUR: TStringField;
    q_LESSONL_DESC: TStringField;
    q_LESSONCOMPANY_ID: TStringField;
    q_LESSON_PAYMENTID: TStringField;
    q_LESSON_PAYMENTLEC_CODE: TStringField;
    q_LESSON_PAYMENTMEMBER_ID: TStringField;
    q_LESSON_PAYMENTPAY_DATE: TDateField;
    q_LESSON_PAYMENTPAY_YEAR: TIntegerField;
    q_LESSON_PAYMENTPAY_MONTH: TIntegerField;
    q_LESSON_PAYMENTPAY_KIND: TIntegerField;
    q_LESSON_PAYMENTBIGO: TStringField;
    q_LESSON_PAYMENTCOMPANY_ID: TStringField;
    q_LESSON_PAYMENTPAY_AMOUNT: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPaymentViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPaymentManager: TfmPaymentManager;

implementation

uses GlobalVar;

{$R *.dfm}

procedure TfmPaymentManager.btnPaymentViewClick(Sender: TObject);
var
  sdate, edate : TDateTime;
begin
  sdate := paySDate.Date;
  edate := payEDate.Date;
  q_LESSON_PAYMENT.ParamByName('sdate').AsDateTime := sdate;
  q_LESSON_PAYMENT.ParamByName('edate').AsDateTime := edate;
  q_LESSON_PAYMENT.ParamByName('company_id').AsString := LoginUserCompID;
  q_LESSON_PAYMENT.Active := True;
  d_LESSON_PAYMENT.DataSet.Refresh;
end;

procedure TfmPaymentManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPaymentManager.FormShow(Sender: TObject);
begin
  paySDate.Date := Date;
  payEDate.Date := Date;
  q_customer.ParamByName('company_id').AsString := LoginUserCompID;
  q_LESSON.ParamByName('company_id').AsString := LoginUserCompID;
  q_customer.Active := True;
  q_LESSON.Active := True;
end;

initialization RegisterClasses([TfmPaymentManager]);

end.
