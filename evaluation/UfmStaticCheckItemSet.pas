unit UfmStaticCheckItemSet;

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
  TfmStaticCheckItemSet = class(TForm)
    Panel7: TPanel;
    Panel9: TPanel;
    Panel19: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    btnAddPractice: TBitBtn;
    gPractice: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    BitBtn3: TBitBtn;
    cxGrid3: TcxGrid;
    gPracticeAssign: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    gPracticeID: TcxGridDBColumn;
    gPracticeP_NAME: TcxGridDBColumn;
    btnPracticeAdd: TBitBtn;
    btnPracticeEdit: TBitBtn;
    BitBtn9: TBitBtn;
    pnl1: TPanel;
    pnl2: TPanel;
    btnViewPos: TBitBtn;
    btnAdd: TBitBtn;
    btnDeltree: TBitBtn;
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
    rgDirection: TcxRadioGroup;
    q_npractice_assignDIRECTION_KIND: TSmallintField;
    gPracticeAssignDIRECTION_KIND: TcxGridDBColumn;
    il2: TImageList;
    pnl3: TPanel;
    btn4: TBitBtn;
    NPRACTICE_DEL: TUniStoredProc;
    NPRACTICE_INS: TUniStoredProc;
    NPRACTICE_UPD: TUniStoredProc;
    gPracticeFOR_PAIN: TcxGridDBColumn;
    gPracticeFOR_BODY: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnPracticeAddClick(Sender: TObject);
    procedure btnPracticeEditClick(Sender: TObject);
    procedure btnAddPracticeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeltreeClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ItemTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure btn1Click(Sender: TObject);
    procedure btnPlayVideoClick(Sender: TObject);
    procedure btnViewPosClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rgDirectionPropertiesEditValueChanged(Sender: TObject);
    procedure gPracticeAssignDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gPracticeAssignDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ItemTreeViewDblClick(Sender: TObject);
  private
    procedure RetrieveAssignedItem;
    procedure ShowPracticeMethode(p_id: Integer; p_name: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmStaticCheckItemSet: TfmStaticCheckItemSet;

implementation

uses GlobalVar, UdmDBCommon, UfmPracticeMethod, uPlayer, UfmHowTo,
  UfmPracticeMethodSingle, UfmPracticeEdit;

{$R *.dfm}

procedure TfmStaticCheckItemSet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmStaticCheckItemSet.FormShow(Sender: TObject);
begin
  q_CHECK_ITEM_TREE.Active := True;
  d_CHECK_ITEM_TREE.DataSet.Refresh;
  dmDBCommon.d_NPRACTICE.DataSet.Refresh;
  CHECK_ITEM_TREE_RESULT_SEL.Active := True;
  ds_CHECK_ITEM_TREE_RESULT_SEL.DataSet.Refresh;
end;

procedure TfmStaticCheckItemSet.gPracticeAssignDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  btnAddPractice.Click;
end;

procedure TfmStaticCheckItemSet.gPracticeAssignDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TcxDragControlObject);
end;

procedure TfmStaticCheckItemSet.ItemTreeViewChange(Sender: TObject;
  Node: TTreeNode);
begin
  RetrieveAssignedItem;
end;

procedure TfmStaticCheckItemSet.ItemTreeViewDblClick(Sender: TObject);
begin
  btnViewPos.Click;
end;

procedure TfmStaticCheckItemSet.rgDirectionPropertiesEditValueChanged(
  Sender: TObject);
begin
  RetrieveAssignedItem;
end;

procedure TfmStaticCheckItemSet.RetrieveAssignedItem;
var
  checkitem_id : Integer;
begin
  checkitem_id := q_check_item_treeID.AsInteger;
  q_npractice_assign.ParamByName('result_id').AsInteger := checkitem_id;
  q_npractice_assign.ParamByName('dir_kind').AsInteger := rgDirection.ItemIndex;
  q_npractice_assign.Active := True;
  d_npractice_assign.DataSet.Refresh;
end;

procedure TfmStaticCheckItemSet.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('������ �ڷḦ �����մϴ�.' + #13#10 + '������ �ڷ�� �ǻ츱 �� �����ϴ�.' +
    #13#10 + '���� �ұ��?', '�ڷ����', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    d_npractice_assign.DataSet.Delete;
  end;
end;

procedure TfmStaticCheckItemSet.BitBtn9Click(Sender: TObject);
begin
  if Application.MessageBox('������ �ڷḦ �����մϴ�.' + #13#10 + '������ �ڷ�� �ǻ츱 �� �����ϴ�.' +
    #13#10 + '���� �ұ��?', '�ڷ����', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    gPractice.DataController.SaveBookmark;
    NPRACTICE_DEL.ParamByName('ID').Value := gPracticeID.EditValue;
    NPRACTICE_DEL.ExecProc;
    dmDBCommon.d_NPRACTICE.DataSet.Refresh;
    if gPractice.DataController.IsBookmarkAvailable then
      gPractice.DataController.GotoBookmark
    else
      gPractice.DataController.GotoLast;
  end;
end;

procedure TfmStaticCheckItemSet.btnPlayVideoClick(Sender: TObject);
var
  video_id : Integer;
  video_file, p_name : string;
begin
  video_id := gPracticeID.EditValue;
  p_name := gPracticeP_NAME.EditValue;
  fmVideoPlayer := TfmVideoPlayer.Create(Self);
  try
    fmVideoPlayer.Caption := '������ �ó�� - ' + p_name;
    fmVideoPlayer.VIDEO_ID := video_id;
    fmVideoPlayer.ShowModal;
  finally
    fmVideoPlayer.Free;
  end;
end;

procedure TfmStaticCheckItemSet.btnPracticeAddClick(Sender: TObject);
var
  sValue : string;
  lastID : Integer;
begin
  gPractice.DataController.GotoLast;
  lastID := gPracticeID.EditValue;
  fmPracticeEdit := TfmPracticeEdit.Create(Self);
  try
    fmPracticeEdit.ShowModal;
    if fmPracticeEdit.ModalResult = mrOk then begin
      gPractice.DataController.SaveBookmark;
      NPRACTICE_INS.ParamByName('ID').Value := lastID + 1;
      NPRACTICE_INS.ParamByName('P_NAME').Value := fmPracticeEdit.edtPName.Text;
      NPRACTICE_INS.ParamByName('FOR_PAIN').Value := fmPracticeEdit.edtPain.Text;
      NPRACTICE_INS.ParamByName('FOR_BODY').Value := fmPracticeEdit.edtBody.Text;
      NPRACTICE_INS.ExecProc;
      dmDBCommon.d_NPRACTICE.DataSet.Refresh;
      gPractice.DataController.GotoBookmark;
      gPractice.DataController.DataSet.Locate('ID', lastID + 1, []);
    end;
  finally
    fmPracticeEdit.Free;
  end;
end;

procedure TfmStaticCheckItemSet.btnPracticeEditClick(Sender: TObject);
var
  sValue : string;
  cnt : Integer;
begin
  fmPracticeEdit := TfmPracticeEdit.Create(Self);
  try
    fmPracticeEdit.edtPName.Text := gPracticeP_NAME.EditValue;
    fmPracticeEdit.edtPain.Text  := VarToStrDef(gPracticeFOR_PAIN.EditValue, '');
    fmPracticeEdit.edtBody.Text  := VarToStrDef(gPracticeFOR_BODY.EditValue, '');
    fmPracticeEdit.ShowModal;
    if fmPracticeEdit.ModalResult = mrOk then begin
      gPractice.DataController.SaveBookmark;
      NPRACTICE_UPD.ParamByName('ID').Value := gPracticeID.EditValue;
      NPRACTICE_UPD.ParamByName('P_NAME').Value := fmPracticeEdit.edtPName.Text;
      NPRACTICE_UPD.ParamByName('FOR_PAIN').Value := fmPracticeEdit.edtPain.Text;
      NPRACTICE_UPD.ParamByName('FOR_BODY').Value := fmPracticeEdit.edtBody.Text;
      NPRACTICE_UPD.ExecProc;
      dmDBCommon.d_NPRACTICE.DataSet.Refresh;
      gPractice.DataController.GotoBookmark;
    end;
  finally
    fmPracticeEdit.Free;
  end;
end;

procedure TfmStaticCheckItemSet.btnViewPosClick(Sender: TObject);
var
  citem : string;
  c_id : Integer;
begin
  citem := q_CHECK_ITEM_TREEITEM_NAME.Value;
  c_id := q_check_item_treeHOWTO_IMAGE.Value;
  if c_id > 0 then begin
    fmHowTo := TfmHowTo.Create(Self);
    try
      fmHowTo.Caption := '������� - ' + citem;
      fmHowTo.ds_CHECK_HOWTO_SEL.DataSet.Locate('id', c_id, []);
      fmHowTo.ShowModal;
    finally
      fmHowTo.Free;
    end;
  end;
end;

procedure TfmStaticCheckItemSet.btn1Click(Sender: TObject);
var
  p_name : string;
  video_id, row, col_practice : Integer;
begin
  video_id := gPracticeID.EditValue;
  col_practice := gPractice.GetColumnByFieldName('ID').Index;
  row := gPractice.Controller.SelectedRows[0].Index;
  p_name := gPractice.DataController.GetDisplayText(row, col_practice);
  ShowPracticeMethode(video_id, p_name);
end;

procedure TfmStaticCheckItemSet.ShowPracticeMethode(p_id : Integer; p_name : string);
begin
  if p_id > 0 then begin
    fmPracticeMethodSingle := TfmPracticeMethodSingle.Create(Self);
    try
      fmPracticeMethodSingle.Caption := '������� - ' + p_name;
      fmPracticeMethodSingle.ImageID := p_id;
      fmPracticeMethodSingle.Show;
    finally
//      fmPracticeMethodSingle.Free;
    end;
  end;
end;

procedure TfmStaticCheckItemSet.btn2Click(Sender: TObject);
var
  p_name : string;
  video_id, row, col_practice : Integer;
begin
  video_id := gPracticeAssignPRACTICE_ID.EditValue;
  col_practice := gPracticeAssign.GetColumnByFieldName('ID').Index;
  row := gPracticeAssign.Controller.SelectedRows[0].Index;
  p_name := gPracticeAssign.DataController.GetDisplayText(row, col_practice);
  ShowPracticeMethode(video_id, p_name);
end;

procedure TfmStaticCheckItemSet.btn3Click(Sender: TObject);
var
  video_id : Integer;
  video_file, p_name : string;
begin
  video_id := gPracticeAssignPRACTICE_ID.EditValue;
  p_name := '';
  fmVideoPlayer := TfmVideoPlayer.Create(Self);
  try
    fmVideoPlayer.Caption := '������ �ó�� - ' + p_name;
    fmVideoPlayer.VIDEO_ID := video_id;
    fmVideoPlayer.ShowModal;
  finally
    fmVideoPlayer.Free;
  end;
end;

procedure TfmStaticCheckItemSet.btnAddClick(Sender: TObject);
begin
  if (ItemTreeView.Selected <> Nil) then
    ItemTreeView.Items.AddChild(ItemTreeView.Selected,'������� ' + ItemTreeView.Selected.Text);
end;

procedure TfmStaticCheckItemSet.btnAddPracticeClick(Sender: TObject);
var
  i, cnt, col, row, practice_id : Integer;
begin
  with gPractice do begin
    cnt := Controller.SelectedRecordCount;
    for i := 0 to cnt - 1 do begin
      row := Controller.SelectedRecords[i].Index;
      practice_id := DataController.GetValue(row, GetColumnByFieldName('ID').Index);
      d_npractice_assign.DataSet.Append;
      d_npractice_assign.DataSet.FieldByName('result_id').Value := d_check_item_tree.DataSet.FieldByName('id').Value;
      d_npractice_assign.DataSet.FieldByName('direction_kind').Value := rgDirection.ItemIndex;
      d_npractice_assign.DataSet.FieldByName('practice_id').Value := practice_id;
      d_npractice_assign.DataSet.Post;
    end;
  end;
  d_npractice_assign.DataSet.Refresh;
end;

procedure TfmStaticCheckItemSet.btnDeltreeClick(Sender: TObject);
begin
  if (ItemTreeView.Selected <> Nil) then
    ItemTreeView.Selected.Delete;
end;

initialization RegisterClasses([TfmStaticCheckItemSet]);

end.