unit ufmAnalyzerManager;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, StdCtrls, Buttons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient, Provider,
  MemDS, DBAccess, Uni, UniProvider, InterBaseUniProvider, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, cxImageComboBox,
  cxDBLookupComboBox;

type
  TfmAnalyzerManager = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_analyzer: TUniQuery;
    d_analyzer: TDataSource;
    chkFilter: TCheckBox;
    chkGroup: TCheckBox;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1LOGIN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1LOGIN_PASS: TcxGridDBColumn;
    cxGrid1DBTableView1LOGIN_PASS2: TcxGridDBColumn;
    cxGrid1DBTableView1USER_KIND: TcxGridDBColumn;
    cxGrid1DBTableView1APPROVED: TcxGridDBColumn;
    cxGrid1DBTableView1REG_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1CONFIRMED: TcxGridDBColumn;
    cxGrid1DBTableView1IS_ANALYZER: TcxGridDBColumn;
    q_company_look: TUniQuery;
    d_company_look: TDataSource;
    q_company_lookCOMP_ID: TStringField;
    q_company_lookCHIEF_NAME: TStringField;
    q_company_lookTEL_NO: TStringField;
    q_company_lookFAX_NO: TStringField;
    q_company_lookADDR: TStringField;
    q_company_lookLOCATION_AREA: TStringField;
    q_company_lookBUS_ID: TStringField;
    q_company_lookBANK_NAME: TStringField;
    q_company_lookBANK_NO: TStringField;
    q_company_lookBANK_OWNER: TStringField;
    q_company_lookREMARK: TStringField;
    q_company_lookCOMP_KIND: TIntegerField;
    q_company_lookCOMP_NAME: TStringField;
    q_company_lookAPPROVED: TSmallintField;
    q_company_lookREG_DATE: TDateField;
    q_company_lookCONFIRMED: TSmallintField;
    q_analyzerID: TStringField;
    q_analyzerUSER_NAME: TStringField;
    q_analyzerLOGIN_ID: TStringField;
    q_analyzerLOGIN_PASS: TStringField;
    q_analyzerLOGIN_PASS2: TStringField;
    q_analyzerUSER_KIND: TIntegerField;
    q_analyzerAPPROVED: TIntegerField;
    q_analyzerREG_DATE: TDateField;
    q_analyzerCOMP_ID: TStringField;
    q_analyzerREMARK: TStringField;
    q_analyzerEMAIL: TStringField;
    q_analyzerCONFIRMED: TSmallintField;
    q_analyzerIS_ANALYZER: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAnalyzerManager: TfmAnalyzerManager;

implementation

uses GlobalVar, UfmAnalyzerEdit, UdmDBCommon;

{$R *.dfm}

function CreateUniqTimeString : string;
begin
  result := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure TfmAnalyzerManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmAnalyzerManager.FormCreate(Sender: TObject);
begin
  q_company_look.Active := True;
  q_analyzer.Active := True;
end;

initialization RegisterClasses([TfmAnalyzerManager]);

end.
