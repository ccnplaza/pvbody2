unit uStaticCheckInsert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox;

type
  TfmStaticCheckInsert = class(TForm)
    cxGroupBox6: TcxGroupBox;
    cxGrid5: TcxGrid;
    gPoint: TcxGridDBTableView;
    gPointID: TcxGridDBColumn;
    gPointBODY_ID: TcxGridDBColumn;
    gPointPOINT_NAME: TcxGridDBColumn;
    cxG5L1: TcxGridLevel;
    cxGrid8: TcxGrid;
    gBody: TcxGridDBTableView;
    gBodyID: TcxGridDBColumn;
    gBodyBODY_POINT: TcxGridDBColumn;
    cxGL1: TcxGridLevel;
    Panel13: TPanel;
    pnlResultMid: TPanel;
    lblMid: TLabel;
    pnlResultSmall: TPanel;
    Label5: TLabel;
    pnlResultOK: TPanel;
    lblOK: TLabel;
    pnlResultNone: TPanel;
    Label3: TLabel;
    pnlResultBig: TPanel;
    lblBig: TLabel;
    cxGroupBox4: TcxGroupBox;
    chgStaticResults: TRadioGroup;
    btnSaveResults: TBitBtn;
    btnRetrieveResults: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStaticCheckInsert: TfmStaticCheckInsert;

implementation

uses UfmStaticCheck;

{$R *.dfm}

end.
