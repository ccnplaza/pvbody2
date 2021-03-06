unit UfmActionKind;

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
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  Menus, StdCtrls, cxButtons;

type
  TfmActionKind = class(TForm)
    Panel1: TPanel;
    gridKind: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridKindID: TcxGridDBColumn;
    gridKindACTION_NAME: TcxGridDBColumn;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmActionKind: TfmActionKind;

implementation
uses
  UdmDBCommon;
{$R *.dfm}

procedure TfmActionKind.btnAddClick(Sender: TObject);
var
  strVal : string;
begin
  if InputQuery('Action Kind', 'Insert Action Kind', strVal) then begin
    DataModule1.ACTION_TABLE_INS.ParamByName('ACTION_NAME').Value := strVal;
    DataModule1.ACTION_TABLE_INS.ExecProc;
    DataModule1.ds_ACTION_TABLE_SEL.DataSet.Refresh;
  end;
end;

procedure TfmActionKind.btnEditClick(Sender: TObject);
var
  strVal : string;
begin
  strVal := gridKindACTION_NAME.EditValue;
  if InputQuery('Action Kind', 'Insert Action Kind', strVal) then begin
    DataModule1.ACTION_TABLE_UPD.ParamByName('ID').Value := gridKindID.EditValue;
    DataModule1.ACTION_TABLE_UPD.ParamByName('ACTION_NAME').Value := strVal;
    DataModule1.ACTION_TABLE_UPD.ExecProc;
    DataModule1.ds_ACTION_TABLE_SEL.DataSet.Refresh;
  end;
end;

end.
