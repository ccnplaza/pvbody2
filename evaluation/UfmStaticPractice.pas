unit UfmStaticPractice;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls, StdCtrls,
  Buttons, DBClient, Provider, MemDS, DBAccess, Uni, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  TfmStaticPractice = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid3: TcxGrid;
    gridStaticResults: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    q_practice_look: TUniQuery;
    d_practice_look: TDataSource;
    q_practice_lookID: TStringField;
    q_practice_lookPRACTICE_NAME: TStringField;
    gridStaticResultsID: TcxGridDBColumn;
    gridStaticResultsRESULT_ID: TcxGridDBColumn;
    gridStaticResultsPRACTICE_ID: TcxGridDBColumn;
    gridStaticResultsPRIORITY: TcxGridDBColumn;
    gridStaticResultsSTRENGTH: TcxGridDBColumn;
    gridStaticResultsBODY_ID: TcxGridDBColumn;
    gridStaticResultsCHECK_POINT_ID: TcxGridDBColumn;
    Label1: TLabel;
    q_delete_cust_practice: TUniSQL;
    btnViewPractice: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnViewPracticeClick(Sender: TObject);
    procedure gridStaticResultsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStaticPractice: TfmStaticPractice;

implementation

uses GlobalVar, UdmDBCommon, UfmPracticeView;

{$R *.dfm}

procedure TfmStaticPractice.btnViewPracticeClick(Sender: TObject);
begin
  fmPracticeView := TfmPracticeView.Create(Self);
  try
    fmPracticeView.q_PRACTICE_IMAGE.ParamByName('id').AsString := gridStaticResults.DataController.DataSource.DataSet.FieldByName('practice_id').AsString;
    fmPracticeView.q_PRACTICE_IMAGE.Active := True;
    fmPracticeView.d_PRACTICE_IMAGE.DataSet.Refresh;
    fmPracticeView.ShowModal;
  finally
    fmPracticeView.Free;
  end;
end;

procedure TfmStaticPractice.FormCreate(Sender: TObject);
begin
  q_practice_look.Active := True;
  d_practice_look.DataSet.Refresh;
end;

procedure TfmStaticPractice.gridStaticResultsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnViewPractice.Click;
end;

end.
