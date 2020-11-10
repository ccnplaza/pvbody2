unit UfmSelectTelno;

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
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfmSelectTelno = class(TForm)
    cxGrid1: TcxGrid;
    gridCust: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    gridCustUID: TcxGridDBColumn;
    gridCustCNAME: TcxGridDBColumn;
    gridCustCTEL: TcxGridDBColumn;
    gridCustSEX: TcxGridDBColumn;
    gridCustID: TcxGridDBColumn;
    gridCustREG_DATE: TcxGridDBColumn;
    gridCustLEC_CODE: TcxGridDBColumn;
    gridCustMEMBER_UID: TcxGridDBColumn;
    gridCustSTART_DATE: TcxGridDBColumn;
    gridCustEND_DATE: TcxGridDBColumn;
    gridCustIS_DONE: TcxGridDBColumn;
    gridCustCOMPANY_ID: TcxGridDBColumn;
    gridCustLOCKER_NO: TcxGridDBColumn;
    gridCustL_NAME: TcxGridDBColumn;
    gridCustM_KIND: TcxGridDBColumn;
    gridCustLEC_MONTH: TcxGridDBColumn;
    gridCustUSED_CNT: TcxGridDBColumn;
    procedure gridCustCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSelectTelno: TfmSelectTelno;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmSelectTelno.gridCustCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ModalResult := mrOk;
end;

end.
