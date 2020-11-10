unit UfmCustomerKind;

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
  TfmCustomerKind = class(TForm)
    Panel1: TPanel;
    gridCustKind: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    gridCustKindID: TcxGridDBColumn;
    gridCustKindK_NAME: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCustomerKind: TfmCustomerKind;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmCustomerKind.btnAddClick(Sender: TObject);
var
  strCenter : string;
begin
  if InputQuery('ȸ�����е��', 'ȸ�������� �Է��ϼ���', strCenter) then begin
    dmDBCommon.t_customer_kind.Append;
    dmDBCommon.t_customer_kindK_NAME.Value := strCenter;
    dmDBCommon.t_customer_kind.Post;
    dmDBCommon.d_customer_kind.DataSet.Refresh;
  end;
end;

procedure TfmCustomerKind.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('������ �ڷḦ �����մϴ�. ' + #13#10 + '������ �ڷ�� �ǻ츱 �� �����ϴ�.'
    + #13#10 + '�������� �ݵ�� Ȯ���ϼ���.', '�ڷ����', MB_OKCANCEL) = IDOK then
  begin
    dmDBCommon.d_customer_kind.DataSet.Delete;
  end;
end;

procedure TfmCustomerKind.btnEditClick(Sender: TObject);
var
  strCenter : string;
begin
  strCenter := gridCustKindK_NAME.EditValue;
  if InputQuery('ȸ�����м���', 'ȸ�������� �Է��ϼ���', strCenter) then begin
    dmDBCommon.t_customer_kind.Edit;
    dmDBCommon.t_customer_kindK_NAME.Value := strCenter;
    dmDBCommon.t_customer_kind.Post;
    dmDBCommon.d_customer_kind.DataSet.Refresh;
  end;
end;

end.

