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
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ExtCtrls;

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
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCenter: TfmCenter;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmCenter.btnAddClick(Sender: TObject);
var
  strCenter : string;
begin
  if InputQuery('���͵��', '���͸��� �Է��ϼ���', strCenter) then begin
    dmDBCommon.t_center.Append;
    dmDBCommon.t_centerC_NAME.Value := strCenter;
    dmDBCommon.t_center.Post;
    dmDBCommon.d_center.DataSet.Refresh;
  end;
end;

procedure TfmCenter.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('������ �ڷḦ �����մϴ�. ' + #13#10 + '������ �ڷ�� �ǻ츱 �� �����ϴ�.'
    + #13#10 + '�������� �ݵ�� Ȯ���ϼ���.', '�ڷ����', MB_OKCANCEL) = IDOK then
  begin
    dmDBCommon.d_center.DataSet.Delete;
  end;
end;

procedure TfmCenter.btnEditClick(Sender: TObject);
var
  strCenter : string;
begin
  strCenter := gridCenterC_NAME.EditValue;
  if InputQuery('���ͼ���', '���͸��� �Է��ϼ���', strCenter) then begin
    dmDBCommon.t_center.Edit;
    dmDBCommon.t_centerC_NAME.Value := strCenter;
    dmDBCommon.t_center.Post;
    dmDBCommon.d_center.DataSet.Refresh;
  end;
end;

procedure TfmCenter.FormCreate(Sender: TObject);
begin
  dmDBCommon.d_center.DataSet.Refresh;
end;

end.
