unit UfmMemberDetail;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxImage, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, DBClient,
  Provider, MemDS, DBAccess, Uni, ExtCtrls, cxDBLookupComboBox, cxImageComboBox,
  cxGridDBTableView, StdCtrls, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfmMemberDetail = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    q_customer: TUniQuery;
    d_CUSTOMER: TDataSource;
    cxGrid9: TcxGrid;
    cxGrid9Level1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    q_LESSON_CUSTOMER: TUniQuery;
    d_LESSON_CUSTOMER: TDataSource;
    d_LESSON_PAYMENT: TDataSource;
    q_LESSON_PAYMENT: TUniQuery;
    q_LESSON: TUniQuery;
    d_LESSON: TDataSource;
    q_attendance: TUniQuery;
    d_attendance: TDataSource;
    cxGrid8: TcxGrid;
    cxGrid8DBTableView1: TcxGridDBTableView;
    cxGrid8DBTableView1ID: TcxGridDBColumn;
    cxGrid8DBTableView1ATT_DATE: TcxGridDBColumn;
    cxGrid8DBTableView1LEC_CODE: TcxGridDBColumn;
    cxGrid8DBTableView1MEMBER_NO: TcxGridDBColumn;
    cxGrid8DBTableView1MEMBER_ID: TcxGridDBColumn;
    cxGrid8DBTableView1IN_TIME: TcxGridDBColumn;
    cxGrid8DBTableView1OUT_TIME: TcxGridDBColumn;
    cxGrid8DBTableView1BIGO: TcxGridDBColumn;
    cxGrid8Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    gridLectureCust: TcxGridDBTableView;
    gridLectureCustREG_DATE: TcxGridDBColumn;
    gridLectureCustMEMBER_UID: TcxGridDBColumn;
    gridLectureCustSTART_DATE: TcxGridDBColumn;
    gridLectureCustEND_DATE: TcxGridDBColumn;
    gridLectureCustLEC_MONTH: TcxGridDBColumn;
    gridLectureCustLEC_PRICE: TcxGridDBColumn;
    gridLectureCustLEC_DESC: TcxGridDBColumn;
    gridLectureCustLEC_CODE: TcxGridDBColumn;
    gridLectureCustID: TcxGridDBColumn;
    G3L1: TcxGridLevel;
    cxGrid6: TcxGrid;
    gridLecturePayment: TcxGridDBTableView;
    gridLecturePaymentID: TcxGridDBColumn;
    gridLecturePaymentLEC_CODE: TcxGridDBColumn;
    gridLecturePaymentMEMBER_ID: TcxGridDBColumn;
    gridLecturePaymentPAY_DATE: TcxGridDBColumn;
    gridLecturePaymentPAY_YEAR: TcxGridDBColumn;
    gridLecturePaymentPAY_MONTH: TcxGridDBColumn;
    gridLecturePaymentPAY_AMOUNT: TcxGridDBColumn;
    gridLecturePaymentPAY_KIND: TcxGridDBColumn;
    gridLecturePaymentBIGO: TcxGridDBColumn;
    gridLecturePaymentCOMPANY_ID: TcxGridDBColumn;
    G6L1: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    q_customerUID: TStringField;
    q_customerCNAME: TStringField;
    q_customerSEX: TStringField;
    q_customerCHART_NO: TStringField;
    q_customerCOMPANY_ID: TStringField;
    q_LESSONID: TStringField;
    q_LESSONL_NAME: TStringField;
    q_LESSONL_INSTRUCTOR: TStringField;
    q_LESSONL_PRICE: TFloatField;
    q_LESSONL_HOUR: TStringField;
    q_LESSONL_DESC: TStringField;
    q_LESSONCOMPANY_ID: TStringField;
    q_LESSON_CUSTOMERID: TStringField;
    q_LESSON_CUSTOMERREG_DATE: TDateField;
    q_LESSON_CUSTOMERLEC_CODE: TStringField;
    q_LESSON_CUSTOMERMEMBER_UID: TStringField;
    q_LESSON_CUSTOMERSTART_DATE: TDateField;
    q_LESSON_CUSTOMEREND_DATE: TDateField;
    q_LESSON_CUSTOMERLEC_MONTH: TSmallintField;
    q_LESSON_CUSTOMERLEC_PRICE: TFloatField;
    q_LESSON_CUSTOMERLEC_DESC: TStringField;
    q_LESSON_CUSTOMERCOMPANY_ID: TStringField;
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
    q_attendanceID: TStringField;
    q_attendanceATT_DATE: TDateField;
    q_attendanceLEC_CODE: TStringField;
    q_attendanceMEMBER_ID: TStringField;
    q_attendanceIN_TIME: TStringField;
    q_attendanceOUT_TIME: TStringField;
    q_attendanceBIGO: TStringField;
    q_attendanceMEMBER_NO: TStringField;
    q_attendanceCOMPANY_ID: TStringField;
    gridMember: TcxGridDBTableView;
    q_customerCTEL: TStringField;
    gridMemberUID: TcxGridDBColumn;
    gridMemberCNAME: TcxGridDBColumn;
    gridMemberSEX: TcxGridDBColumn;
    gridMemberCHART_NO: TcxGridDBColumn;
    gridMemberCOMPANY_ID: TcxGridDBColumn;
    gridMemberCTEL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCustomer2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LoadData;
    { Private declarations }
  public
    { Public declarations }
    CurrentCustID : string;
  end;

var
  fmMemberDetail: TfmMemberDetail;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}


procedure TfmMemberDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMemberDetail.FormCreate(Sender: TObject);
begin
  q_customer.ParamByName('company_id').AsString := LoginUserCompID;
  q_Customer.Active := True;
  q_LESSON.Params.ParamByName('company_id').AsString := LoginUserCompID;
  q_LESSON.Active := True;
end;

procedure TfmMemberDetail.FormShow(Sender: TObject);
begin
  LoadData;
end;

procedure TfmMemberDetail.gridCustomer2CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  LoadData;
end;

procedure TfmMemberDetail.LoadData;
begin
  q_LESSON_CUSTOMER.DisableControls;
  q_LESSON_PAYMENT.DisableControls;
  try
    CurrentCustID := q_Customer.FieldByName('UID').AsString;
    q_LESSON_CUSTOMER.Params.ParamByName('MEMBER_UID').AsString := CurrentCustID;
    q_LESSON_CUSTOMER.Active := True;
    d_LESSON_CUSTOMER.DataSet.Refresh;
    q_LESSON_PAYMENT.Params.ParamByName('member_id').AsString := CurrentCustID;
    q_LESSON_PAYMENT.Active := True;
    d_LESSON_PAYMENT.DataSet.Refresh;
    q_attendance.Params.ParamByName('member_id').AsString := CurrentCustID;
    q_attendance.Active := True;
    d_attendance.DataSet.Refresh;
  finally
    q_LESSON_CUSTOMER.EnableControls;
    q_LESSON_PAYMENT.EnableControls;
  end;
end;

initialization RegisterClasses([TfmMemberDetail]);

end.
