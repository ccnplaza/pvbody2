unit UfmCenter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, StdCtrls,
  Buttons, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ExtCtrls, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmCenter = class(TForm)
    Panel1: TPanel;
    gridCenter: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridCenterID: TcxGridDBColumn;
    gridCenterC_NAME: TcxGridDBColumn;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnSelect: TBitBtn;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure gridCenterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure gridCenterIDGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCenter: TfmCenter;

implementation

uses UdmDBCommon, GlobalVar;

{$R *.dfm}

procedure TfmCenter.btnAddClick(Sender: TObject);
var
  strCenter : string;
begin
  if InputQuery('���͵��', '���͸��� �Է��ϼ���', strCenter) then begin
    dmDBCommon.REGISTED_CENTER_INS.ParamByName('C_NAME').Value := strCenter;
    dmDBCommon.REGISTED_CENTER_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
    dmDBCommon.REGISTED_CENTER_INS.ExecProc;
    dmDBCommon.ds_REGISTED_CENTER_SEL.DataSet.Refresh;
    dmDBCommon.ds_REGISTED_CENTER_LOOK.DataSet.Refresh;
  end;
end;

procedure TfmCenter.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('������ �ڷḦ �����մϴ�. ' + #13#10 + '������ �ڷ�� �ǻ츱 �� �����ϴ�.'
    + #13#10 + '�������� �ݵ�� Ȯ���ϼ���.', '�ڷ����', MB_OKCANCEL) = IDOK then
  begin
    dmDBCommon.REGISTED_CENTER_DEL.ParamByName('ID').Value := gridCenterID.EditValue;
    dmDBCommon.REGISTED_CENTER_DEL.ExecProc;
    dmDBCommon.ds_REGISTED_CENTER_SEL.DataSet.Refresh;
    dmDBCommon.ds_REGISTED_CENTER_LOOK.DataSet.Refresh;
  end;
end;

procedure TfmCenter.btnEditClick(Sender: TObject);
var
  strCenter : string;
begin
  strCenter := gridCenterC_NAME.EditValue;
  if InputQuery('���ͼ���', '���͸��� �Է��ϼ���', strCenter) then begin
    dmDBCommon.REGISTED_CENTER_UPD.ParamByName('ID').Value := gridCenterID.EditValue;
    dmDBCommon.REGISTED_CENTER_UPD.ParamByName('C_NAME').Value := strCenter;
    dmDBCommon.REGISTED_CENTER_UPD.ExecProc;
    dmDBCommon.ds_REGISTED_CENTER_SEL.DataSet.Refresh;
    dmDBCommon.ds_REGISTED_CENTER_LOOK.DataSet.Refresh;
  end;
end;

procedure TfmCenter.FormShow(Sender: TObject);
begin
  dmDBCommon.REGISTED_CENTER_SEL.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.REGISTED_CENTER_SEL.Open;
  dmDBCommon.ds_REGISTED_CENTER_SEL.DataSet.Refresh;
end;

procedure TfmCenter.gridCenterCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

procedure TfmCenter.gridCenterIDGetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
var
  AIndex: Integer;
begin
  AIndex := TcxGridTableView(Sender.GridView).DataController.GetRowIndexByRecordIndex(ARecordIndex, False);
  AText := IntToStr(AIndex + 1);
end;

end.
