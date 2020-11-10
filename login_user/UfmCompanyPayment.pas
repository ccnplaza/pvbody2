unit UfmCompanyPayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, MemDS, DBAccess, Uni;

type
  TfmCompanyPayment = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    paySDate: TcxDateEdit;
    payEDate: TcxDateEdit;
    btnPaymentView: TBitBtn;
    q_company_payment: TUniQuery;
    d_company_payment: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnPayAdd: TBitBtn;
    q_company_paymentID: TStringField;
    q_company_paymentCOMP_ID: TStringField;
    q_company_paymentCOMP_NAME: TStringField;
    q_company_paymentUSER_NAME: TStringField;
    q_company_paymentLOGIN_ID: TStringField;
    q_company_paymentREG_DATE: TDateField;
    q_company_paymentPAY_WAY: TSmallintField;
    q_company_paymentID1: TStringField;
    q_company_paymentPAY_DATE: TDateField;
    q_company_paymentPAY_AMOUNT: TFloatField;
    q_company_paymentPAY_MONTH: TStringField;
    q_company_paymentBIGO: TStringField;
    q_company_paymentEMAIL: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1LOGIN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1REG_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_WAY: TcxGridDBColumn;
    cxGrid1DBTableView1ID1: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1PAY_MONTH: TcxGridDBColumn;
    cxGrid1DBTableView1BIGO: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPaymentViewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompanyPayment: TfmCompanyPayment;

implementation

uses UdmDBCommon, UfmCompanyPaymentInsert;

{$R *.dfm}


procedure TfmCompanyPayment.btnPaymentViewClick(Sender: TObject);
var
  sdate, edate : TDateTime;
begin
  sdate := paySDate.Date;
  edate := payEDate.Date;
  q_company_payment.ParamByName('start_date').AsDateTime := sdate;
  q_company_payment.ParamByName('end_date').AsDateTime := edate;
  q_company_payment.Active := True;
  d_company_payment.DataSet.Refresh;
end;

procedure TfmCompanyPayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompanyPayment.FormShow(Sender: TObject);
begin
  paySDate.Date := Date;
  payEDate.Date := Date;
  q_company_payment.ParamByName('start_date').AsDateTime := paySDate.Date;
  q_company_payment.ParamByName('end_date').AsDateTime := payEDate.Date;
  q_company_payment.Active := True;
  d_company_payment.DataSet.Refresh;
end;

initialization RegisterClasses([TfmCompanyPayment]);

end.
