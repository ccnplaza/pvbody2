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
  cxContainer, cxGroupBox, cxRadioGroup, dxBarBuiltInMenu, cxPC;

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
    btnAdd: TBitBtn;
    btnDel: TBitBtn;
    q_check_item_tree: TUniQuery;
    q_check_item_treeID: TIntegerField;
    q_check_item_treePARENT_ID: TIntegerField;
    q_check_item_treeIMAGE_ID: TIntegerField;
    q_check_item_treeITEM_NAME: TStringField;
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
    btnEdit: TBitBtn;
    NPRACTICE_DEL: TUniStoredProc;
    NPRACTICE_INS: TUniStoredProc;
    NPRACTICE_UPD: TUniStoredProc;
    gPracticeFOR_PAIN: TcxGridDBColumn;
    gPracticeFOR_BODY: TcxGridDBColumn;
    gRoot: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gRootID: TcxGridDBColumn;
    gRootPARENT_ID: TcxGridDBColumn;
    gRootIMAGE_ID: TcxGridDBColumn;
    gRootITEM_NAME: TcxGridDBColumn;
    gRootBODY_ID: TcxGridDBColumn;
    gRootRESULT_ID: TcxGridDBColumn;
    gRootHOWTO_IMAGE: TcxGridDBColumn;
    gRootVIDEO_ID: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    gSub2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid4: TcxGrid;
    gSub: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    q_check_item_sub: TUniQuery;
    d_check_item_sub: TDataSource;
    q_check_item_sub2: TUniQuery;
    d_check_item_sub2: TDataSource;
    q_check_item_subID: TIntegerField;
    q_check_item_subPARENT_ID: TIntegerField;
    q_check_item_subIMAGE_ID: TIntegerField;
    q_check_item_subITEM_NAME: TStringField;
    q_check_item_sub2ID: TIntegerField;
    q_check_item_sub2PARENT_ID: TIntegerField;
    q_check_item_sub2IMAGE_ID: TIntegerField;
    q_check_item_sub2ITEM_NAME: TStringField;
    btnAdd2: TBitBtn;
    btnEdit2: TBitBtn;
    btnDel2: TBitBtn;
    btnDel3: TBitBtn;
    btnEdit3: TBitBtn;
    btnAdd3: TBitBtn;
    gSubID: TcxGridDBColumn;
    gSubPARENT_ID: TcxGridDBColumn;
    gSubIMAGE_ID: TcxGridDBColumn;
    gSubITEM_NAME: TcxGridDBColumn;
    gSubBODY_ID: TcxGridDBColumn;
    gSubRESULT_ID: TcxGridDBColumn;
    gSubHOWTO_IMAGE: TcxGridDBColumn;
    gSubVIDEO_ID: TcxGridDBColumn;
    gSub2ID: TcxGridDBColumn;
    gSub2PARENT_ID: TcxGridDBColumn;
    gSub2IMAGE_ID: TcxGridDBColumn;
    gSub2ITEM_NAME: TcxGridDBColumn;
    gSub2BODY_ID: TcxGridDBColumn;
    gSub2RESULT_ID: TcxGridDBColumn;
    gSub2HOWTO_IMAGE: TcxGridDBColumn;
    gSub2VIDEO_ID: TcxGridDBColumn;
    q_check_item_sub2HOWTO_IMAGE: TSmallintField;
    q_check_item_sub2VIDEO_ID: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    cxRadioGroup1: TcxRadioGroup;
    cxGrid6: TcxGrid;
    gPracticeAssign2: TcxGridDBTableView;
    gPracticeAssign2ID: TcxGridDBColumn;
    gPracticeAssign2RESULT_ID: TcxGridDBColumn;
    gPracticeAssign2DIRECTION_KIND: TcxGridDBColumn;
    gPracticeAssign2PRACTICE_ID: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    cxGrid7: TcxGrid;
    gPractice2: TcxGridDBTableView;
    gPractice2ID: TcxGridDBColumn;
    gPractice2P_NAME: TcxGridDBColumn;
    gPractice2FOR_BODY: TcxGridDBColumn;
    gPractice2FOR_PAIN: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    q_npractice_assign2: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    SmallintField1: TSmallintField;
    d_npractice_assign2: TDataSource;
    NPRACTICE2_INS: TUniStoredProc;
    NPRACTICE2_UPD: TUniStoredProc;
    NPRACTICE2_DEL: TUniStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnPracticeAddClick(Sender: TObject);
    procedure btnPracticeEditClick(Sender: TObject);
    procedure btnAddPracticeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ItemTreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure btn1Click(Sender: TObject);
    procedure btnPlayVideoClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rgDirectionPropertiesEditValueChanged(Sender: TObject);
    procedure gPracticeAssignDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gPracticeAssignDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure gRootFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gSubFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure btnDel2Click(Sender: TObject);
    procedure btnAdd3Click(Sender: TObject);
    procedure btnEdit3Click(Sender: TObject);
    procedure btnDel3Click(Sender: TObject);
    procedure gSub2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxPageControl1Change(Sender: TObject);
    procedure gPractice2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure RetrieveAssignedItem;
    procedure ShowPracticeMethode(p_id: Integer; p_name: string);
    { Private declarations }
  public
    { Public declarations }
    PRACTICE_KIND : Integer;
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
  cxPageControl1.ActivePageIndex := 0;
  PRACTICE_KIND := cxPageControl1.ActivePageIndex;
  q_CHECK_ITEM_TREE.Active := True;
  d_CHECK_ITEM_TREE.DataSet.Refresh;
  dmDBCommon.d_NPRACTICE.DataSet.Refresh;
  dmDBCommon.d_NPRACTICE2.DataSet.Refresh;
  CHECK_ITEM_TREE_RESULT_SEL.Active := True;
  ds_CHECK_ITEM_TREE_RESULT_SEL.DataSet.Refresh;
end;

procedure TfmStaticCheckItemSet.gPractice2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnPracticeEditClick(Sender);
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

procedure TfmStaticCheckItemSet.gRootFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  q_check_item_sub.ParamByName('p_id').Value := q_check_item_treeID.Value;
  q_check_item_sub.Open;
  d_check_item_sub.DataSet.Refresh
end;

procedure TfmStaticCheckItemSet.gSub2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if gSub2.DataController.RecordCount > 0 then begin
    q_npractice_assign.ParamByName('result_id').AsInteger := q_check_item_sub2ID.Value;
    q_npractice_assign.Open;
    q_npractice_assign2.ParamByName('result_id').AsInteger := q_check_item_sub2ID.Value;
    q_npractice_assign2.Open;
  end else begin
    q_npractice_assign.ParamByName('result_id').AsInteger := -1;
    q_npractice_assign.Open;
    q_npractice_assign2.ParamByName('result_id').AsInteger := -1;
    q_npractice_assign2.Open;
  end;
  d_npractice_assign.DataSet.Refresh;
  d_npractice_assign2.DataSet.Refresh;
end;

procedure TfmStaticCheckItemSet.gSubFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if gSub.DataController.RecordCount > 0 then begin
    q_check_item_sub2.ParamByName('p_id').Value := q_check_item_subID.Value;
    q_check_item_sub2.Open;
  end else begin
    q_check_item_sub2.ParamByName('p_id').Value := -1;
    q_check_item_sub2.Open;
  end;
  d_check_item_sub2.DataSet.Refresh
end;

procedure TfmStaticCheckItemSet.ItemTreeViewChange(Sender: TObject;
  Node: TTreeNode);
begin
  RetrieveAssignedItem;
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
  checkitem_id := q_check_item_sub2ID.AsInteger;
  q_npractice_assign.ParamByName('result_id').AsInteger := checkitem_id;
  q_npractice_assign.Active := True;
  d_npractice_assign.DataSet.Refresh;
end;

procedure TfmStaticCheckItemSet.BitBtn3Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    d_npractice_assign.DataSet.Delete;
  end;
end;

procedure TfmStaticCheckItemSet.BitBtn9Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
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
    fmVideoPlayer.Caption := '동영상 운동처방 - ' + p_name;
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
  fmPracticeEdit := TfmPracticeEdit.Create(Self);
  try
    if PRACTICE_KIND = 0 then begin
      gPractice.DataController.GotoLast;
      lastID := gPracticeID.EditValue;
      fmPracticeEdit.speNo.EditValue := lastID + 1;
      fmPracticeEdit.ShowModal;
      if fmPracticeEdit.ModalResult = mrOk then begin
        gPractice.DataController.SaveBookmark;
        NPRACTICE_INS.ParamByName('ID').Value := fmPracticeEdit.speNo.EditValue;
        NPRACTICE_INS.ParamByName('P_NAME').Value := fmPracticeEdit.edtPName.Text;
        NPRACTICE_INS.ParamByName('FOR_PAIN').Value := fmPracticeEdit.edtPain.Text;
        NPRACTICE_INS.ParamByName('FOR_BODY').Value := fmPracticeEdit.edtBody.Text;
        NPRACTICE_INS.ExecProc;
        dmDBCommon.d_NPRACTICE.DataSet.Refresh;
        gPractice.DataController.GotoBookmark;
        gPractice.DataController.DataSet.Locate('ID', lastID + 1, []);
      end;
    end else begin
      gPractice2.DataController.GotoLast;
      lastID := gPractice2ID.EditValue;
      fmPracticeEdit.speNo.EditValue := lastID + 1;
      fmPracticeEdit.ShowModal;
      if fmPracticeEdit.ModalResult = mrOk then begin
        gPractice2.DataController.SaveBookmark;
        NPRACTICE2_INS.ParamByName('ID').Value := fmPracticeEdit.speNo.EditValue;
        NPRACTICE2_INS.ParamByName('P_NAME').Value := fmPracticeEdit.edtPName.Text;
        NPRACTICE2_INS.ParamByName('FOR_PAIN').Value := fmPracticeEdit.edtPain.Text;
        NPRACTICE2_INS.ParamByName('FOR_BODY').Value := fmPracticeEdit.edtBody.Text;
        NPRACTICE2_INS.ExecProc;
        dmDBCommon.d_NPRACTICE2.DataSet.Refresh;
        gPractice2.DataController.GotoBookmark;
        gPractice2.DataController.DataSet.Locate('ID', lastID + 1, []);
      end;
    end;
  finally
    fmPracticeEdit.Free;
  end;
end;

procedure TfmStaticCheckItemSet.btnPracticeEditClick(Sender: TObject);
var
  sValue : string;
  cnt, row : Integer;
begin
  fmPracticeEdit := TfmPracticeEdit.Create(Self);
  try
    if PRACTICE_KIND = 0 then begin
      fmPracticeEdit.speNo.EditValue := gPracticeID.EditValue;
      fmPracticeEdit.edtPName.Text := gPracticeP_NAME.EditValue;
      fmPracticeEdit.edtPain.Text  := VarToStrDef(gPracticeFOR_PAIN.EditValue, '');
      fmPracticeEdit.edtBody.Text  := VarToStrDef(gPracticeFOR_BODY.EditValue, '');
      fmPracticeEdit.ShowModal;
      if fmPracticeEdit.ModalResult = mrOk then begin
        gPractice.DataController.SaveBookmark;
        NPRACTICE_UPD.ParamByName('ID').Value := fmPracticeEdit.speNo.EditValue;
        NPRACTICE_UPD.ParamByName('P_NAME').Value := fmPracticeEdit.edtPName.Text;
        NPRACTICE_UPD.ParamByName('FOR_PAIN').Value := fmPracticeEdit.edtPain.Text;
        NPRACTICE_UPD.ParamByName('FOR_BODY').Value := fmPracticeEdit.edtBody.Text;
        NPRACTICE_UPD.ExecProc;
        row := gPractice.Controller.TopRowIndex;
        dmDBCommon.d_NPRACTICE.DataSet.Refresh;
        gPractice.DataController.GotoBookmark;
        gPractice.Controller.TopRowIndex := row;
      end;
    end else begin
      fmPracticeEdit.speNo.EditValue := gPractice2ID.EditValue;
      fmPracticeEdit.edtPName.Text := gPractice2P_NAME.EditValue;
      fmPracticeEdit.edtPain.Text  := VarToStrDef(gPractice2FOR_PAIN.EditValue, '');
      fmPracticeEdit.edtBody.Text  := VarToStrDef(gPractice2FOR_BODY.EditValue, '');
      fmPracticeEdit.ShowModal;
      if fmPracticeEdit.ModalResult = mrOk then begin
        gPractice2.DataController.SaveBookmark;
        NPRACTICE2_UPD.ParamByName('ID').Value := fmPracticeEdit.speNo.EditValue;
        NPRACTICE2_UPD.ParamByName('P_NAME').Value := fmPracticeEdit.edtPName.Text;
        NPRACTICE2_UPD.ParamByName('FOR_PAIN').Value := fmPracticeEdit.edtPain.Text;
        NPRACTICE2_UPD.ParamByName('FOR_BODY').Value := fmPracticeEdit.edtBody.Text;
        NPRACTICE2_UPD.ExecProc;
        row := gPractice2.Controller.TopRowIndex;
        dmDBCommon.d_NPRACTICE2.DataSet.Refresh;
        gPractice2.DataController.GotoBookmark;
        gPractice2.Controller.TopRowIndex := row;
      end;
    end;
  finally
    fmPracticeEdit.Free;
  end;
end;

procedure TfmStaticCheckItemSet.cxPageControl1Change(Sender: TObject);
begin
  PRACTICE_KIND := cxPageControl1.ActivePageIndex;
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
      fmPracticeMethodSingle.Caption := '측정방법 - ' + p_name;
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
    fmVideoPlayer.Caption := '동영상 운동처방 - ' + p_name;
    fmVideoPlayer.VIDEO_ID := video_id;
    fmVideoPlayer.ShowModal;
  finally
    fmVideoPlayer.Free;
  end;
end;

procedure TfmStaticCheckItemSet.btnAdd2Click(Sender: TObject);
var
  itemStr : string;
const
  title = '측정부위';
  quest = '측정부위 입력';
begin
  if InputQuery(title, quest, itemStr) then begin
    q_check_item_sub.Append;
    q_check_item_subPARENT_ID.Value := q_check_item_treeID.Value;
    q_check_item_subITEM_NAME.Value := itemStr;
    q_check_item_sub.Post;
    d_check_item_sub.DataSet.Refresh;
    d_check_item_sub.DataSet.Last;
  end;
end;

procedure TfmStaticCheckItemSet.btnAdd3Click(Sender: TObject);
var
  itemStr : string;
const
  title = '측정항목';
  quest = '측정항목 입력';
begin
  if InputQuery(title, quest, itemStr) then begin
    q_check_item_sub2.Append;
    q_check_item_sub2PARENT_ID.Value := q_check_item_subID.Value;
    q_check_item_sub2ITEM_NAME.Value := itemStr;
    q_check_item_sub2.Post;
    d_check_item_sub2.DataSet.Refresh;
    d_check_item_sub2.DataSet.Last;
  end;
end;

procedure TfmStaticCheckItemSet.btnAddClick(Sender: TObject);
var
  itemStr : string;
const
  title = '측정항목';
  quest = '측정항목 입력';
begin
  if InputQuery(title, quest, itemStr) then begin
    q_check_item_tree.Append;
    q_check_item_treePARENT_ID.Value := 0;
    q_check_item_treeITEM_NAME.Value := itemStr;
    q_check_item_tree.Post;
    d_check_item_tree.DataSet.Refresh;
    d_check_item_tree.DataSet.Last;
  end;
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
      d_npractice_assign.DataSet.FieldByName('result_id').Value := d_check_item_sub2.DataSet.FieldByName('id').Value;
      d_npractice_assign.DataSet.FieldByName('direction_kind').Value := rgDirection.ItemIndex;
      d_npractice_assign.DataSet.FieldByName('practice_id').Value := practice_id;
      d_npractice_assign.DataSet.Post;
    end;
  end;
  d_npractice_assign.DataSet.Refresh;
end;

procedure TfmStaticCheckItemSet.btnDel2Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    q_check_item_sub.Delete;
    d_check_item_sub.DataSet.Refresh;
  end;
end;

procedure TfmStaticCheckItemSet.btnDel3Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    q_check_item_sub2.Delete;
    d_check_item_sub2.DataSet.Refresh;
  end;
end;

procedure TfmStaticCheckItemSet.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    q_check_item_tree.Delete;
    d_check_item_tree.DataSet.Refresh;
  end;
end;

procedure TfmStaticCheckItemSet.btnEdit2Click(Sender: TObject);
var
  itemStr : string;
const
  title = '측정부위';
  quest = '측정부위 입력';
begin
  itemStr := gSubITEM_NAME.EditValue;
  if InputQuery(title, quest, itemStr) then begin
    q_check_item_sub.Edit;
    q_check_item_subITEM_NAME.Value := itemStr;
    q_check_item_sub.Post;
    d_check_item_sub.DataSet.Refresh;
  end;
end;

procedure TfmStaticCheckItemSet.btnEdit3Click(Sender: TObject);
var
  itemStr : string;
const
  title = '측정항목';
  quest = '측정항목 입력';
begin
  itemStr := gSub2ITEM_NAME.EditValue;
  if InputQuery(title, quest, itemStr) then begin
    q_check_item_sub2.Edit;
    q_check_item_sub2ITEM_NAME.Value := itemStr;
    q_check_item_sub2.Post;
    d_check_item_sub2.DataSet.Refresh;
  end;
end;

procedure TfmStaticCheckItemSet.btnEditClick(Sender: TObject);
var
  itemStr : string;
const
  title = '측정항목';
  quest = '측정항목 입력';
begin
  itemStr := gRootITEM_NAME.EditValue;
  if InputQuery(title, quest, itemStr) then begin
    q_check_item_tree.Edit;
    q_check_item_treeITEM_NAME.Value := itemStr;
    q_check_item_tree.Post;
    d_check_item_tree.DataSet.Refresh;
  end;
end;

initialization RegisterClasses([TfmStaticCheckItemSet]);

end.
