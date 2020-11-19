unit UfmCustomerRecent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, DB, cxDBData, StdCtrls, Buttons, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxCalendar, ComCtrls;

type
  TfmCustomerRecent = class(TForm)
    cxGrid1: TcxGrid;
    gridMember: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    btnSelect: TBitBtn;
    gridMemberUID: TcxGridDBColumn;
    gridMemberCNAME: TcxGridDBColumn;
    gridMemberSEX: TcxGridDBColumn;
    gridMemberCTEL: TcxGridDBColumn;
    gridMemberREG_DATE: TcxGridDBColumn;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure gridMemberCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    procedure RetrieveData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCustomerRecent: TfmCustomerRecent;

implementation
uses
  GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmCustomerRecent.DateTimePicker1Change(Sender: TObject);
begin
  RetrieveData;
end;

procedure TfmCustomerRecent.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date := Date - 5;
  RetrieveData;
end;

procedure TfmCustomerRecent.RetrieveData;
begin
  dmDBCommon.CUSTOMER_SEL_RECENT_REG.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.CUSTOMER_SEL_RECENT_REG.ParamByName('SUB_DATE').Value := DateTimePicker1.Date;
  dmDBCommon.CUSTOMER_SEL_RECENT_REG.Open;
  dmDBCommon.ds_CUSTOMER_SEL_RECENT_REG.DataSet.Refresh;
end;

procedure TfmCustomerRecent.gridMemberCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

end.
