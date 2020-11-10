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
  if InputQuery('센터등록', '센터명을 입력하세요', strCenter) then begin
    dmDBCommon.t_center.Append;
    dmDBCommon.t_centerC_NAME.Value := strCenter;
    dmDBCommon.t_center.Post;
    dmDBCommon.d_center.DataSet.Refresh;
  end;
end;

procedure TfmCenter.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    dmDBCommon.d_center.DataSet.Delete;
  end;
end;

procedure TfmCenter.btnEditClick(Sender: TObject);
var
  strCenter : string;
begin
  strCenter := gridCenterC_NAME.EditValue;
  if InputQuery('센터수정', '센터명을 입력하세요', strCenter) then begin
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

