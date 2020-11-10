unit UfmCompareWindowList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, cxGroupBox;

type
  TfmCompareWindowList = class(TForm)
    cxGroupBox2: TcxGroupBox;
    Panel2: TPanel;
    btnAdd: TBitBtn;
    btnSave: TBitBtn;
    btnDel: TBitBtn;
    cxGrid3: TcxGrid;
    gridCompareWin: TcxGridDBTableView;
    gridCompareWinID: TcxGridDBColumn;
    gridCompareWinMEMBER_ID: TcxGridDBColumn;
    gridCompareWinMAKE_DATE: TcxGridDBColumn;
    gridCompareWinCOMPARE_NAME: TcxGridDBColumn;
    gridCompareWinCOMPANY_ID: TcxGridDBColumn;
    gridCompareWinIMAGE1_ID: TcxGridDBColumn;
    gridCompareWinIMAGE2_ID: TcxGridDBColumn;
    gridCompareWinIMAGE3_ID: TcxGridDBColumn;
    gridCompareWinIMAGE4_ID: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE1: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE2: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE3: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE4: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure gridCompareWinCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    IMAGE_NAME1, IMAGE_NAME2, IMAGE_NAME3, IMAGE_NAME4 : string;
    IMAGE_ID1, IMAGE_ID2, IMAGE_ID3, IMAGE_ID4 : Integer;
  end;

var
  fmCompareWindowList: TfmCompareWindowList;

implementation
uses
  GlobalVar, UdmDBCommon, UfmCompareList2;

{$R *.dfm}

procedure TfmCompareWindowList.btnAddClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmCompareWindowList.FormShow(Sender: TObject);
begin
  dmDBCommon.CUST_COMPARE_WIN_SEL.ParamByName('CUST_ID').Value := CustomerImages.CustID;
  dmDBCommon.CUST_COMPARE_WIN_SEL.Open;
  dmDBCommon.ds_CUST_COMPARE_WIN_SEL.DataSet.Refresh;
end;

procedure TfmCompareWindowList.gridCompareWinCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAdd.Click;
end;

end.
