unit UfmAnalyseRequestSelect;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBClient, Provider, MemDS, DBAccess, Uni,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, ExtCtrls,
  cxDBLookupComboBox, cxImageComboBox;

type
  TfmAnalyseRequestSelect = class(TForm)
    Panel1: TPanel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    gridReuest: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    q_AnalyseRequest: TUniQuery;
    d_AnalyseRequest: TDataSource;
    Label1: TLabel;
    edtSearch: TEdit;
    btnFilter: TBitBtn;
    gridReuestID: TcxGridDBColumn;
    gridReuestR_DATE: TcxGridDBColumn;
    gridReuestCUSTOMER_ID: TcxGridDBColumn;
    gridReuestREQ_COMP_ID: TcxGridDBColumn;
    gridReuestANALYZER_ID: TcxGridDBColumn;
    gridReuestREQ_KIND: TcxGridDBColumn;
    gridReuestREQ_STATE: TcxGridDBColumn;
    gridReuestANALYSE_DATE: TcxGridDBColumn;
    gridReuestCNAME: TcxGridDBColumn;
    gridReuestCHART_NO: TcxGridDBColumn;
    gridReuestCOMP_NAME: TcxGridDBColumn;
    q_AnalyseRequestID: TStringField;
    q_AnalyseRequestR_DATE: TDateField;
    q_AnalyseRequestREQ_KIND: TIntegerField;
    q_AnalyseRequestREQ_STATE: TIntegerField;
    q_AnalyseRequestANALYSE_DATE: TDateField;
    q_AnalyseRequestCNAME: TStringField;
    q_AnalyseRequestUSER_NAME: TStringField;
    q_AnalyseRequestCUSTOMER_ID: TStringField;
    q_AnalyseRequestREQ_COMP_ID: TStringField;
    q_AnalyseRequestANALYZER_ID: TStringField;
    q_AnalyseRequestCOMP_NAME: TStringField;
    q_AnalyseRequestCHART_NO: TStringField;
    procedure gridReuestCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAnalyseRequestSelect: TfmAnalyseRequestSelect;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmAnalyseRequestSelect.btnFilterClick(Sender: TObject);
var
  search_str : string;
begin
  if edtSearch.Text <> '' then begin
    search_str := '%' + Trim(edtSearch.Text) + '%';
    q_AnalyseRequest.Filter := 'cname like "' + search_str + '"';
    q_AnalyseRequest.Filtered := True;
  end else begin
    q_AnalyseRequest.Filter := '';
    q_AnalyseRequest.Filtered := False;
  end;
end;

procedure TfmAnalyseRequestSelect.gridReuestCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

end.
