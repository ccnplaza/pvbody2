unit UfmCompanySelect;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, Buttons, ExtCtrls,
  cxImageComboBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfmCompanySelect = class(TForm)
    Panel1: TPanel;
    btnSave: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    d_company: TDataSource;
    q_company: TUniQuery;
    q_companyCOMP_ID: TStringField;
    q_companyCHIEF_NAME: TStringField;
    q_companyTEL_NO: TStringField;
    q_companyFAX_NO: TStringField;
    q_companyADDR: TStringField;
    q_companyLOCATION_AREA: TStringField;
    q_companyBUS_ID: TStringField;
    q_companyBANK_NAME: TStringField;
    q_companyBANK_NO: TStringField;
    q_companyBANK_OWNER: TStringField;
    q_companyREMARK: TStringField;
    q_companyCOMP_KIND: TIntegerField;
    q_companyCOMP_NAME: TStringField;
    q_companyAPPROVED: TSmallintField;
    q_companyREG_DATE: TDateField;
    cxGrid1DBTableView1COMP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CHIEF_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TEL_NO: TcxGridDBColumn;
    cxGrid1DBTableView1FAX_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ADDR: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATION_AREA: TcxGridDBColumn;
    cxGrid1DBTableView1BUS_ID: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_NO: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_OWNER: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_KIND: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1APPROVED: TcxGridDBColumn;
    cxGrid1DBTableView1REG_DATE: TcxGridDBColumn;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompanySelect: TfmCompanySelect;

implementation

uses uLogin;

{$R *.dfm}

procedure TfmCompanySelect.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSave.Click;
end;

end.
