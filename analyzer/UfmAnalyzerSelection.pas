unit UfmAnalyzerSelection;

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
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, DBClient, Provider,
  StdCtrls, Buttons, cxDBLookupComboBox;

type
  TfmAnalyzerSelection = class(TForm)
    Panel1: TPanel;
    gridAnalyzer: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_analyzer: TUniQuery;
    dp_analyzer: TDataSetProvider;
    cds_analyzer: TClientDataSet;
    d_analyzer: TDataSource;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    cds_analyzerID: TStringField;
    cds_analyzerUSER_NAME: TStringField;
    cds_analyzerLOGIN_ID: TStringField;
    cds_analyzerLOGIN_PASS: TStringField;
    cds_analyzerLOGIN_PASS2: TStringField;
    cds_analyzerUSER_KIND: TIntegerField;
    cds_analyzerAPPROVED: TIntegerField;
    cds_analyzerREG_DATE: TDateField;
    cds_analyzerCOMP_ID: TStringField;
    cds_analyzerREMARK: TStringField;
    cds_analyzerEMAIL: TStringField;
    cds_analyzerCONFIRMED: TSmallintField;
    cds_analyzerIS_ANALYZER: TSmallintField;
    gridAnalyzerID: TcxGridDBColumn;
    gridAnalyzerUSER_NAME: TcxGridDBColumn;
    gridAnalyzerLOGIN_ID: TcxGridDBColumn;
    gridAnalyzerLOGIN_PASS: TcxGridDBColumn;
    gridAnalyzerLOGIN_PASS2: TcxGridDBColumn;
    gridAnalyzerUSER_KIND: TcxGridDBColumn;
    gridAnalyzerAPPROVED: TcxGridDBColumn;
    gridAnalyzerREG_DATE: TcxGridDBColumn;
    gridAnalyzerCOMP_ID: TcxGridDBColumn;
    gridAnalyzerREMARK: TcxGridDBColumn;
    gridAnalyzerEMAIL: TcxGridDBColumn;
    gridAnalyzerCONFIRMED: TcxGridDBColumn;
    gridAnalyzerIS_ANALYZER: TcxGridDBColumn;
    q_company_look: TUniQuery;
    dp_company_look: TDataSetProvider;
    cds_company_look: TClientDataSet;
    d_company_look: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAnalyzerSelection: TfmAnalyzerSelection;

implementation

uses uCapture, UdmDBCommon;

{$R *.dfm}

procedure TfmAnalyzerSelection.FormCreate(Sender: TObject);
begin
  cds_company_look.Active := True;
  cds_analyzer.Active := True;
end;

end.
