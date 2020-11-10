unit UfmStaticCheckItems;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, DBAccess, Uni, UniProvider,
  InterBaseUniProvider, DBClient, Provider, MemDS, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, Buttons, ExtCtrls, cxDBLookupComboBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, ImgList, ComCtrls, dxtree, dxdbtree, cxImageComboBox,
  cxContainer, cxGroupBox, cxRadioGroup;

type
  TfmStaticCheckItems = class(TForm)
    Panel7: TPanel;
    Panel9: TPanel;
    Panel19: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    gridPractice: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    cxGrid3: TcxGrid;
    gPracticeAssign: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    gridPracticeID: TcxGridDBColumn;
    gridPracticeP_NAME: TcxGridDBColumn;
    pnl1: TPanel;
    pnl2: TPanel;
    btnViewPos: TBitBtn;
    ItemTreeView: TdxDBTreeView;
    q_check_item_tree: TUniQuery;
    q_check_item_treeID: TIntegerField;
    q_check_item_treePARENT_ID: TIntegerField;
    q_check_item_treeIMAGE_ID: TIntegerField;
    q_check_item_treeITEM_NAME: TStringField;
    q_check_item_treeBODY_ID: TIntegerField;
    q_check_item_treeRESULT_ID: TIntegerField;
    q_check_item_treeHOWTO_IMAGE: TSmallintField;
    q_check_item_treeVIDEO_ID: TStringField;
    d_check_item_tree: TDataSource;
    cxImageList1: TcxImageList;
    il1: TImageList;
    q_npractice_assign: TUniQuery;
    d_npractice_assign: TDataSource;
    q_npractice_assignID: TIntegerField;
    q_npractice_assignRESULT_ID: TIntegerField;
    q_npractice_assignPRACTICE_ID: TIntegerField;
    gPracticeAssignID: TcxGridDBColumn;
    gPracticeAssignRESULT_ID: TcxGridDBColumn;
    gPracticeAssignPRACTICE_ID: TcxGridDBColumn;
    btn1: TBitBtn;
    btnPlayVideo: TBitBtn;
    CHECK_ITEM_TREE_RESULT_SEL: TUniStoredProc;
    CHECK_ITEM_TREE_RESULT_SELID: TIntegerField;
    CHECK_ITEM_TREE_RESULT_SELITEM_NAME: TStringField;
    ds_CHECK_ITEM_TREE_RESULT_SEL: TDataSource;
    btn2: TBitBtn;
    btn3: TBitBtn;
    q_npractice_assignDIRECTION_KIND: TSmallintField;
    gPracticeAssignDIRECTION_KIND: TcxGridDBColumn;
    il2: TImageList;
    pnl3: TPanel;
    gridPracticeFOR_PAIN: TcxGridDBColumn;
    gridPracticeFOR_BODY: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure ItemTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure btn1Click(Sender: TObject);
    procedure btnPlayVideoClick(Sender: TObject);
    procedure btnViewPosClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rgDirectionPropertiesEditValueChanged(Sender: TObject);
    procedure ItemTreeViewDblClick(Sender: TObject);
    procedure gridPracticeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gPracticeAssignCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure RetrieveAssignedItem;
    procedure ShowPracticeMethode(p_id : Integer; p_name : string);
    procedure ShowPracticeVideo(v_id: Integer; v_name: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStaticCheckItems: TfmStaticCheckItems;

implementation

uses GlobalVar, UdmDBCommon, UfmPracticeMethod, uPlayer,
  UfmPracticeMethodSingle, UfmHowToSingle;

{$R *.dfm}

procedure TfmStaticCheckItems.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmStaticCheckItems.FormShow(Sender: TObject);
begin
  q_CHECK_ITEM_TREE.Active := True;
  d_CHECK_ITEM_TREE.DataSet.Refresh;
  dmDBCommon.d_NPRACTICE.DataSet.Refresh;
  CHECK_ITEM_TREE_RESULT_SEL.Active := True;
  ds_CHECK_ITEM_TREE_RESULT_SEL.DataSet.Refresh;
end;

procedure TfmStaticCheckItems.gPracticeAssignCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btn2.Click;
end;

procedure TfmStaticCheckItems.gridPracticeCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btn1.Click;
end;

procedure TfmStaticCheckItems.ItemTreeViewChange(Sender: TObject;
  Node: TTreeNode);
begin
  RetrieveAssignedItem;
end;

procedure TfmStaticCheckItems.ItemTreeViewDblClick(Sender: TObject);
begin
  btnViewPos.Click;
end;

procedure TfmStaticCheckItems.rgDirectionPropertiesEditValueChanged(
  Sender: TObject);
begin
  RetrieveAssignedItem;
end;

procedure TfmStaticCheckItems.RetrieveAssignedItem;
var
  checkitem_id : Integer;
begin
  checkitem_id := q_check_item_treeID.AsInteger;
  q_npractice_assign.ParamByName('result_id').AsInteger := checkitem_id;
  q_npractice_assign.ParamByName('dir_kind').AsInteger := 0;
  q_npractice_assign.Active := True;
  d_npractice_assign.DataSet.Refresh;
end;

procedure TfmStaticCheckItems.btnPlayVideoClick(Sender: TObject);
var
  video_id, row, col_practice : Integer;
  p_name : string;
begin
  video_id := gridPracticeID.EditValue;
  col_practice  := gridPractice.GetColumnByFieldName('ID').Index;
  row := gridPractice.Controller.SelectedRows[0].Index;
  p_name  := gridPractice.DataController.GetDisplayText(row, col_practice);
  ShowPracticeVideo(video_id, p_name);
end;

procedure TfmStaticCheckItems.ShowPracticeVideo(v_id : Integer; v_name : string);
begin
  fmVideoPlayer := TfmVideoPlayer.Create(Self);
  try
    fmVideoPlayer.Caption := '동영상 운동처방 - ' + v_name;
    fmVideoPlayer.VIDEO_ID := v_id;
    fmVideoPlayer.ShowModal;
  finally
    fmVideoPlayer.Free;
  end;
end;

procedure TfmStaticCheckItems.btnViewPosClick(Sender: TObject);
var
  citem : string;
  c_id : Integer;
begin
  citem := q_CHECK_ITEM_TREEITEM_NAME.Value;
  c_id := q_check_item_treeHOWTO_IMAGE.Value;
  if c_id > 0 then begin
    fmHowToSingle := TfmHowToSingle.Create(Self);
    try
      fmHowToSingle.Caption := '측정방법 - ' + citem;
      fmHowToSingle.ImageID := c_id;
      fmHowToSingle.ShowModal;
    finally
      fmHowToSingle.Free;
    end;
  end;
end;

procedure TfmStaticCheckItems.btn1Click(Sender: TObject);
var
  p_name : string;
  video_id, row, col_practice : Integer;
begin
  video_id := gridPracticeID.EditValue;
  col_practice  := gridPractice.GetColumnByFieldName('ID').Index;
  row := gridPractice.Controller.SelectedRows[0].Index;
  p_name  := gridPractice.DataController.GetDisplayText(row, col_practice);
  ShowPracticeMethode(video_id, p_name);
end;

procedure TfmStaticCheckItems.ShowPracticeMethode(p_id : Integer; p_name : string);
begin
  if p_id > 0 then begin
    fmPracticeMethodSingle := TfmPracticeMethodSingle.Create(Self);
    try
      fmPracticeMethodSingle.Caption := '측정방법 - ' + p_name;
      fmPracticeMethodSingle.ImageID := p_id;
      fmPracticeMethodSingle.ShowModal;
    finally
      fmPracticeMethodSingle.Free;
    end;
  end;
end;

procedure TfmStaticCheckItems.btn2Click(Sender: TObject);
var
  p_name : string;
  video_id, row, col_practice : Integer;
begin
  video_id := gPracticeAssignPRACTICE_ID.EditValue;
  col_practice  := gPracticeAssign.GetColumnByFieldName('PRACTICE_ID').Index;
  row := gPracticeAssign.Controller.SelectedRows[0].Index;
  p_name  := gPracticeAssign.DataController.GetDisplayText(row, col_practice);
  ShowPracticeMethode(video_id, p_name);
end;

procedure TfmStaticCheckItems.btn3Click(Sender: TObject);
var
  video_id, row, col_practice : Integer;
  p_name : string;
begin
  video_id := gPracticeAssignPRACTICE_ID.EditValue;
  col_practice  := gPracticeAssign.GetColumnByFieldName('PRACTICE_ID').Index;
  row := gPracticeAssign.Controller.SelectedRows[0].Index;
  p_name  := gPracticeAssign.DataController.GetDisplayText(row, col_practice);
  ShowPracticeVideo(video_id, p_name);
end;

procedure TfmStaticCheckItems.btnAddClick(Sender: TObject);
begin
  if (ItemTreeView.Selected <> Nil) then
    ItemTreeView.Items.AddChild(ItemTreeView.Selected,'하위노드 ' + ItemTreeView.Selected.Text);
end;

initialization RegisterClasses([TfmStaticCheckItems]);

end.
