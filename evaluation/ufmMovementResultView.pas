unit ufmMovementResultView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmDialogParent, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, TeEngine, Series, TeeProcs,
  Chart, Math, cxGridChartView, cxGridDBChartView, cxDBLookupComboBox,
  cxImageComboBox, dxSkinMetropolis, dxSkinMetropolisDark;

type
  TfmMovementResultView = class(TfmDialogParent)
    d_result_value: TDataSource;
    Panel2: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    pnlResult1: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel4: TPanel;
    pnlResult2: TPanel;
    Panel5: TPanel;
    pnlResult3: TPanel;
    Panel6: TPanel;
    pnlResult4: TPanel;
    cxGrid4: TcxGrid;
    gridLevel4: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    db4_check_value: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid3: TcxGrid;
    gridLevel3: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    db3_check_value: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridLevel2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    db2_check_value: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridLevel1: TcxGridDBTableView;
    gridLevel1ID: TcxGridDBColumn;
    gridLevel1MOVEMENT_RESULT_ID: TcxGridDBColumn;
    gridLevel1CHECK_ITEM_ID: TcxGridDBColumn;
    gridLevel1CHECK_POINT_ID: TcxGridDBColumn;
    gridLevel1CUSTOMER_ID: TcxGridDBColumn;
    gridLevel1COMPANY_ID: TcxGridDBColumn;
    db1_check_value: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ResultData_ID : string;
    { Public declarations }
  end;

var
  fmMovementResultView: TfmMovementResultView;

implementation


{$R *.dfm}

procedure TfmMovementResultView.FormShow(Sender: TObject);
var
  i, cnt, cval : integer;
  rval : array[0..3] of integer;
begin
  d_result_value.DataSet.DisableControls;
  cnt := d_result_value.DataSet.RecordCount;
  rval[0] := 0;
  rval[1] := 0;
  rval[2] := 0;
  rval[3] := 0;
  d_result_value.DataSet.First;
  for i := 0 to cnt - 1 do begin
    cval := d_result_value.DataSet.FieldByName('check_value').AsInteger;
    case cval of
      1: rval[0] := rval[0] + 1;
      2: rval[1] := rval[1] + 1;
      3: rval[2] := rval[2] + 1;
      4: rval[3] := rval[3] + 1;
    end;
    d_result_value.DataSet.Next;
  end;
  pnlResult1.Caption := IntToStr(rval[0]) + '/' + IntToStr(cnt);
  pnlResult2.Caption := IntToStr(rval[1]) + '/' + IntToStr(cnt);
  pnlResult3.Caption := IntToStr(rval[2]) + '/' + IntToStr(cnt);
  pnlResult4.Caption := IntToStr(rval[3]) + '/' + IntToStr(cnt);

  with gridLevel1.DataController.Filter do begin
    Root.Clear;
    Root.AddItem(db1_check_value, foEqual, 1, '정상');
    Active := True;
  end;
  with gridLevel2.DataController.Filter do begin
    Root.Clear;
    Root.AddItem(db2_check_value, foEqual, 2, '경미');
    Active := True;
  end;
  with gridLevel3.DataController.Filter do begin
    Root.Clear;
    Root.AddItem(db3_check_value, foEqual, 3, '중등');
    Active := True;
  end;
  with gridLevel4.DataController.Filter do begin
    Root.Clear;
    Root.AddItem(db4_check_value, foEqual, 4, '심각');
    Active := True;
  end;
  d_result_value.DataSet.EnableControls;
end;

end.
