unit UfmStaticCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, Uni, MemDS,
  DBAccess, StdCtrls, imageenview, ievect, ExtCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, ieview, iemview, VirtualTable, cxLabel,
  cxDBLabel, DBClient, Provider, UniProvider, InterBaseUniProvider,
  cxImageComboBox, cxDBLookupComboBox, Menus, cxButtons, ImgList, ieopensavedlg,
  ActnList, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxorgchr, dxGDIPlusClasses,
  imageen, cxSplitter, ieanimation, dxBarBuiltInMenu, cxPC, ComCtrls, dxtree,
  dxdbtree, dxmdaset, cxCheckBox, cxRadioGroup;

type
  TfmStaticCheck = class(TForm)
    pnlThumbnail: TPanel;
    ImageEnMView: TImageEnMView;
    pnlMember: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    pnlNo: TPanel;
    Panel14: TPanel;
    ImageEnVect2: TImageEnVect;
    Panel15: TPanel;
    Label4: TLabel;
    chkStaticFit: TCheckBox;
    pnlProcess: TPanel;
    lblCount: TLabel;
    lblMessage: TLabel;
    q_result_value: TUniQuery;
    d_result_value: TDataSource;
    ImageList1: TImageList;
    q_delete_result_practice: TUniSQL;
    chkShowDraw: TCheckBox;
    q_result_valueID: TStringField;
    q_result_valueSTATIC_RESULT_ID: TStringField;
    q_result_valueCHECK_POINT_ID: TStringField;
    q_result_valueCHECK_VALUE: TIntegerField;
    q_result_valueCUSTOMER_ID: TStringField;
    q_result_valueCOMPANY_ID: TStringField;
    q_result_valueCHECK_BODY_ID: TStringField;
    q_result_valuePRACTICE_ID: TStringField;
    PopupThumb: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    ActionThumbnail: TActionList;
    actThumbWindowMax: TAction;
    actThumbWindowMin: TAction;
    actThumbDelete: TAction;
    actThumbSaveAs: TAction;
    ImageListThumbnail: TImageList;
    SaveImageEnDialog1: TSaveImageEnDialog;
    ActionResult: TActionList;
    ActNormal: TAction;
    ActSmall: TAction;
    ActMiddle: TAction;
    ActBig: TAction;
    ActResultView: TAction;
    ActPracticeList: TAction;
    ActResultReport: TAction;
    PopupResult: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    gridResults: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel7: TPanel;
    cxGrid3: TcxGrid;
    gridCheck: TcxGridDBTableView;
    cxL2: TcxGridLevel;
    btnOpenImage: TcxButton;
    btnAddData: TcxButton;
    gridCheckID: TcxGridDBColumn;
    gridCheckCUSTOMER_UID: TcxGridDBColumn;
    gridCheckC_DATE: TcxGridDBColumn;
    gridCheckC_IDX: TcxGridDBColumn;
    gridResultsID: TcxGridDBColumn;
    gridResultsDATA_ID: TcxGridDBColumn;
    gridResultsITEM_MAIN: TcxGridDBColumn;
    gridResultsRESULT_VALUE: TcxGridDBColumn;
    gridResultsPRACTICE_ID: TcxGridDBColumn;
    ItemTreeView: TdxDBTreeView;
    cxImageList1: TcxImageList;
    CHECK_ITEM_TREE_BODY_SEL: TUniStoredProc;
    CHECK_ITEM_TREE_RESULT_SEL: TUniStoredProc;
    d_CHECK_ITEM_TREE_BODY_SEL: TDataSource;
    d_CHECK_ITEM_TREE_RESULT_SEL: TDataSource;
    CHECK_ITEM_TREE_BODY_SELID: TIntegerField;
    CHECK_ITEM_TREE_BODY_SELITEM_NAME: TStringField;
    CHECK_ITEM_TREE_RESULT_SELID: TIntegerField;
    CHECK_ITEM_TREE_RESULT_SELITEM_NAME: TStringField;
    btnViewPos: TBitBtn;
    Panel8: TPanel;
    Panel9: TPanel;
    cxGrid4: TcxGrid;
    gridPractice: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    q_check_item_tree: TUniQuery;
    d_check_item_tree: TDataSource;
    q_check_item_treeID: TIntegerField;
    q_check_item_treePARENT_ID: TIntegerField;
    q_check_item_treeIMAGE_ID: TIntegerField;
    q_check_item_treeITEM_NAME: TStringField;
    q_check_item_treeBODY_ID: TIntegerField;
    q_check_item_treeRESULT_ID: TIntegerField;
    q_check_item_treeHOWTO_IMAGE: TSmallintField;
    ds_NSTATIC_RESULT_PRACTICE_SEL: TDataSource;
    q_check_item_treeVIDEO_ID: TStringField;
    gridResultsRESULT_LEVEL: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleNormal: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    btnSaveResult: TcxButton;
    btnCapture: TcxButton;
    btnViewPicture: TcxButton;
    ImageEnVectCapture: TImageEnVect;
    NSTATIC_CHECK_RESULTIMG_SEL: TUniStoredProc;
    NSTATIC_CHECK_RESULTIMG_IU: TUniStoredProc;
    NSTATIC_CHECK_RESULTIMG_SELID: TIntegerField;
    NSTATIC_CHECK_RESULTIMG_SELRESULT_IMG: TBlobField;
    q_check_picture: TUniQuery;
    q_check_pictureID: TIntegerField;
    btnComments: TcxButton;
    NSTATIC_CHECK_DATA_UPD: TUniStoredProc;
    btnResultSelect: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    btnAdd: TBitBtn;
    btnDeltree: TBitBtn;
    btnLeft: TcxButton;
    btnRight: TcxButton;
    btnBoth: TcxButton;
    gridResultsDIRECTION_KIND: TcxGridDBColumn;
    NSTATIC_CHECK_RESULT_UPD: TUniStoredProc;
    btnSelect: TcxButton;
    btnPracticeMethod: TcxButton;
    btnPlayVideo: TcxButton;
    NSTATIC_RESULT_PRACTICE_SEL: TUniStoredProc;
    NSTATIC_RESULT_PRACTICE_SELID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELRESULT_ID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELPRACTICE_ID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELDATA_ID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELIS_SELECTED: TIntegerField;
    gridPracticeID: TcxGridDBColumn;
    gridPracticeRESULT_ID: TcxGridDBColumn;
    gridPracticePRACTICE_ID: TcxGridDBColumn;
    gridPracticeDATA_ID: TcxGridDBColumn;
    gridPracticeIS_SELECTED: TcxGridDBColumn;
    NSTATIC_RESULT_PRACTICE_INS: TUniStoredProc;
    NPRACTICE_ASSIGN_SEL: TUniStoredProc;
    NSTATIC_RESULT_PRACTICE_DEL: TUniStoredProc;
    NPRACTICE_ASSIGN_SELPRACTICE_ID: TIntegerField;
    rbSelected: TcxRadioButton;
    rbAll: TcxRadioButton;
    NSTATIC_RESULT_PRACTICE_UPD: TUniStoredProc;
    lbl1: TLabel;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    q_update_result: TUniQuery;
    btnChangeLevel: TcxButton;
    btnDelResult: TcxButton;
    btnAnalyse: TBitBtn;
    btnPracticeMake: TBitBtn;
    cxPageControl1: TcxPageControl;
    Panel2: TPanel;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    btnFavorite: TBitBtn;
    btnChangeDate: TcxButton;
    ImageEnVect1: TImageEnVect;
    ImageEnVect3: TImageEnVect;
    ImageEnVect4: TImageEnVect;
    ImageEnVect5: TImageEnVect;
    ImageEnVect6: TImageEnVect;
    ImageEnVect7: TImageEnVect;
    EditName: TEdit;
    btnFindMember: TBitBtn;
    Panel12: TPanel;
    Panel13: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkStaticFitClick(Sender: TObject);
    procedure ShowProcessMsg(msg, cnt_str: string; onoff: integer);
    procedure gridPictureColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gridResultColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnAddDataClick(Sender: TObject);
    procedure btnOpenImageClick(Sender: TObject);
    procedure actThumbWindowMaxExecute(Sender: TObject);
    procedure actThumbWindowMinExecute(Sender: TObject);
    procedure actThumbSaveAsExecute(Sender: TObject);
    procedure pnlThumbnailResize(Sender: TObject);
    procedure ActNormalExecute(Sender: TObject);
    procedure ActSmallExecute(Sender: TObject);
    procedure ActMiddleExecute(Sender: TObject);
    procedure ActBigExecute(Sender: TObject);
    procedure ActResultViewExecute(Sender: TObject);
    procedure ActPracticeListExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ImageEnMView1Click(Sender: TObject);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSubResultClick(Sender: TObject);
    procedure btnViewPosClick(Sender: TObject);
    procedure btnResultSelectClick(Sender: TObject);
    procedure btnPlayVideoClick(Sender: TObject);
    procedure gridPracticeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ItemTreeViewDblClick(Sender: TObject);
    procedure btnSaveResultClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeltreeClick(Sender: TObject);
    procedure gridResultsRESULT_LEVELCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnPracticeMethodClick(Sender: TObject);
    procedure btnCaptureClick(Sender: TObject);
    procedure btnViewPictureClick(Sender: TObject);
    procedure gridPracticeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnCommentsClick(Sender: TObject);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnLeftClick(Sender: TObject);
    procedure btnRightClick(Sender: TObject);
    procedure btnBothClick(Sender: TObject);
    procedure gridResultsFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSelectClick(Sender: TObject);
    procedure gridResultsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnChangeLevelClick(Sender: TObject);
    procedure btnAnalyseClick(Sender: TObject);
    procedure ImageEnVect2DblClick(Sender: TObject);
    procedure btnPracticeMakeClick(Sender: TObject);
    procedure gridPictureCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnChangeDateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetImageFilename(image_id: integer): string;
    procedure RetrieveSubitem(tno : Integer);
    procedure RetrieveResultitem;
    procedure SetAnimationProperties(ienMview : TImageEnMView);
    procedure InsertPracticeData;
    procedure SelectMember;
    procedure ClearPicture;
    procedure RetrievePicture(check_uid: string; img_idx : Integer);
    procedure RetrieveMemberInfo;
    { Private declarations }
  public
    { Public declarations }
    SelectedMainItem : Integer;
    CheckDataID : Integer;
    ResultValue : Integer;
    PictureDataID : string;
    CURRENT_MEMBER_UID : string;
    ImageVect : array[0..6] of TImageEnVect;
    TabSheet : array[0..6] of TcxTabSheet;
  end;

var
  fmStaticCheck: TfmStaticCheck;

implementation

uses GlobalVar, uMemberSelect, ufmStaticResultView, uViewPractice,
  UfmAnalyseRequestSelect, UfmStaticPractice, UdmDBCommon,
  UfmStaticResultReport, UfmHowToSingle, UPlayer,
  UfmPracticeMethodSingle, UfmCheckImageViewer, UfmCheckCommennts,
  UfmCustomerHistory, uMemberEditView, UfmMemberPicture, UfmPostureEditor,
  uMemberFavorite, UfmDateSelector;

{$R *.dfm}

procedure TfmStaticCheck.SetAnimationProperties(ienMview : TImageEnMView);
var
  animation: TIEAnimation;
begin
  animation := ienMview.Animation;
  if assigned(animation) then begin
    animation.Depth          := 500;
    animation.AnimDuration   := 800;
    animation.ShowBorder     := True;
    animation.ShadowAlphaMin := 0;
    animation.ShadowAlphaMax := 40;
    animation.ShowScrollbar  := True;
    animation.ShowText       := True;

    if animation is TIEHorizontalFlow then
      with animation as TIEHorizontalFlow do begin
        HorizontalDistance         := 40;//udHorizDistance.Position;
        ImagesHorizontalPercentage := 40;//udImagesHorizPer.Position;
        ImagesVerticalPercentage   := 80;
        RotateAngle                := 0;
        ImagesZoom                 := 60 / 100;
        CurrentImageZoom           := 95 / 100;
      end;
  end;
end;

procedure TfmStaticCheck.FormCreate(Sender: TObject);
begin
  if dmDBCommon.q_NPRACTICE.Active = False then
    dmDBCommon.q_NPRACTICE.Active := True;

  if dmDBCommon.t_NPRACTICE_look.Active = False then
    dmDBCommon.t_NPRACTICE_look.Active := True;

  CHECK_ITEM_TREE_BODY_SEL.Active := True;
  d_CHECK_ITEM_TREE_BODY_SEL.DataSet.Refresh;
  CHECK_ITEM_TREE_RESULT_SEL.Active := True;
  d_CHECK_ITEM_TREE_RESULT_SEL.DataSet.Refresh;

  q_CHECK_ITEM_TREE.Active := True;
  d_CHECK_ITEM_TREE.DataSet.Refresh;

  ImageEnVect2.Blank;
  ImageEnVect2.AutoFit := True;
  ImageEnVect2.AutoStretch := True;
  ImageEnVect2.MouseInteract := [miZoom, miScroll];
end;

procedure TfmStaticCheck.FormShow(Sender: TObject);
begin
  ImageVect[0] := ImageEnVect1;
  ImageVect[1] := ImageEnVect2;
  ImageVect[2] := ImageEnVect3;
  ImageVect[3] := ImageEnVect4;
  ImageVect[4] := ImageEnVect5;
  ImageVect[5] := ImageEnVect6;
  ImageVect[6] := ImageEnVect7;
  TabSheet[0] := cxTabSheet1;
  TabSheet[1] := cxTabSheet2;
  TabSheet[2] := cxTabSheet3;
  TabSheet[3] := cxTabSheet4;
  TabSheet[4] := cxTabSheet5;
  TabSheet[5] := cxTabSheet6;
  TabSheet[6] := cxTabSheet7;
end;

procedure TfmStaticCheck.FormActivate(Sender: TObject);
begin
  if (GLOVAL_MEMBER_UID <> '') then begin
    if GLOVAL_MEMBER_UID = CURRENT_MEMBER_UID then begin
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;
      gridPicture.DataController.GotoFirst;
      PictureDataID := gridPictureUID.EditValue;
      if gridPicture.DataController.RecordCount > 0 then begin
        dmDBCommon.SelectLocalPictureByID(PictureDataID);
        RetrievePicture(PictureDataID, 0);
      end else begin
        PictureDataID := '';
        ClearPicture;
      end;
    end else begin
      CURRENT_MEMBER_UID := GLOVAL_MEMBER_UID;
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;
      gridPicture.DataController.GotoFirst;
      PictureDataID := gridPictureUID.EditValue;
      if gridPicture.DataController.RecordCount > 0 then begin
        dmDBCommon.CreateMemberLocalPicture(GLOVAL_MEMBER_UID);
        dmDBCommon.SelectLocalPictureByID(PictureDataID);
        RetrievePicture(PictureDataID, 0);
      end else begin
        PictureDataID := '';
        ClearPicture;
      end;
      dmDBCommon.q_NSTATIC_CHECK_DATA.ParamByName('customer_uid').Value := GLOVAL_MEMBER_UID;
      dmDBCommon.q_NSTATIC_CHECK_DATA.Active := True;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;

      dmDBCommon.q_NSTATIC_CHECK_RESULT.ParamByName('DATA_ID').Value := dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('id').Value;
      dmDBCommon.q_NSTATIC_CHECK_RESULT.Active := True;
      dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
    end;
  end;
end;

procedure TfmStaticCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmStaticCheck.ShowProcessMsg(msg, cnt_str: string; onoff: integer);
begin
  if onoff = 1 then begin
    lblMessage.Caption := msg;
    lblCount.Caption := cnt_str;
    pnlProcess.Visible := True;
    pnlProcess.Update;
  end else
    pnlProcess.Visible := False;
end;

procedure TfmStaticCheck.ActBigExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 4;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmStaticCheck.ActMiddleExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 3;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmStaticCheck.ActNormalExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 1;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmStaticCheck.ActPracticeListExecute(Sender: TObject);
begin
//  if chkRecalculate.Checked then begin
//    q_delete_result_practice.ParamByName('result_id').AsString := GLOVAL_CHECK_DATA_UID;
//    q_delete_result_practice.Execute;
//  end;
//
//  q_result_practice.ParamByName('result_id').AsString := GLOVAL_CHECK_DATA_UID;
//  q_result_practice.Active := True;
//  d_result_practice.DataSet.Refresh;
//  if q_result_practice.RecordCount < 1 then begin
//    CreateResultPractice;
//  end;
//  fmStaticPractice := TfmStaticPractice.Create(Self);
//  try
//    //fmStaticPractice.GLOVAL_CHECK_DATA_UID := GLOVAL_CHECK_DATA_UID;
//    fmStaticPractice.ShowModal;
//  finally
//    fmStaticPractice.Free;
//  end;
end;

procedure TfmStaticCheck.ActResultViewExecute(Sender: TObject);
begin
  fmStaticResultView := TfmStaticResultView.Create(Self);
  try
    fmStaticResultView.ShowModal;
  finally
    fmStaticResultView.Free;
  end;
end;

procedure TfmStaticCheck.ActSmallExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 2;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmStaticCheck.actThumbSaveAsExecute(Sender: TObject);
var
  fname, img_id : string;
  i : integer;
  memStream : TMemoryStream;
begin
  if SaveImageEnDialog1.Execute then begin
    fname := SaveImageEnDialog1.FileName;
    i := ImageEnMView.SelectedImage;
    img_id := ImageEnMView.ImageFileName[i];
    dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Locate('id', img_id, []);
    memStream := TMemoryStream.Create;
    TBlobField(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('IMAGE_DATA')).SaveToStream(memStream);
    memStream.Position := 0;
    memStream.SaveToFile(fname);
    memStream.Free;
  end;
end;

procedure TfmStaticCheck.actThumbWindowMaxExecute(Sender: TObject);
begin
  pnlThumbnail.Height := 190;
end;

procedure TfmStaticCheck.actThumbWindowMinExecute(Sender: TObject);
begin
  pnlThumbnail.Height := 60;
end;

procedure TfmStaticCheck.btnAddClick(Sender: TObject);
begin
  if (ItemTreeView.Selected <> Nil) then
    ItemTreeView.Items.AddChild(ItemTreeView.Selected,'하위노드 ' + ItemTreeView.Selected.Text);
end;

procedure TfmStaticCheck.btnAddDataClick(Sender: TObject);
var
  last_idx, id : Integer;
begin
  if dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.RecordCount > 0 then
    last_idx := dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('c_idx').Value
  else
    last_idx := 0;
  fmDateSelector := TfmDateSelector.Create(Self);
  try
    fmDateSelector.MonthCalendar1.Date := Date;
    fmDateSelector.ShowModal;
    if fmDateSelector.ModalResult = mrOk then begin
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Append;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('CUSTOMER_UID').Value := GLOVAL_MEMBER_UID;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('C_DATE').Value := DateTimeToStr(fmDateSelector.MonthCalendar1.Date);
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('C_IDX').Value := last_idx + 1;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('C_COMMENTS').Value := '';
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Post;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;

      dmDBCommon.q_NSTATIC_CHECK_RESULT.ParamByName('DATA_ID').Value := dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('id').Value;
      dmDBCommon.q_NSTATIC_CHECK_RESULT.Active := True;
      dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
    end;
  finally
    fmDateSelector.Free;
  end;
end;

procedure TfmStaticCheck.btnAnalyseClick(Sender: TObject);
var
  img_id : string;
  IV : TImageEnVect;
begin
  IV := ImageVect[cxPageControl1.ActivePageIndex];
  img_id := IV.Hint;
  fmPostureEditor := TfmPostureEditor.Create(Self);
  try
    fmPostureEditor.IMAGE_ID := img_id;
    fmPostureEditor.SEX_KIND := 1;
    fmPostureEditor.POS_KIND := 1;
    fmPostureEditor.frmImageEditor21.ImageEnVect1.Assign(IV);
    fmPostureEditor.ShowModal;
    if fmPostureEditor.frmImageEditor21.IMAGE_CHANGED = True then begin
      IV.RemoveAllObjects;
      fmPostureEditor.frmImageEditor21.ImageEnVect1.CopyAllObjectsTo(IV);
      IV.Update;
    end;
  finally
    fmPostureEditor.Free;
  end;
end;

procedure TfmStaticCheck.btnLeftClick(Sender: TObject);
var
  t_no, d_no, id : Integer;
begin
  id := gridResultsID.EditValue;
  d_no := gridResultsDIRECTION_KIND.EditValue;
  if (d_no = 1) then
    t_no := 0
  else
    t_no := 1;

  NSTATIC_CHECK_RESULT_UPD.ParamByName('ID').Value := id;
  NSTATIC_CHECK_RESULT_UPD.ParamByName('DIRECTION_KIND').Value := t_no;
  NSTATIC_CHECK_RESULT_UPD.ExecProc;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Locate('id', id, []);
  InsertPracticeData;
end;

procedure TfmStaticCheck.btnRightClick(Sender: TObject);
var
  t_no, d_no, id : Integer;
begin
  id := gridResultsID.EditValue;
  d_no := gridResultsDIRECTION_KIND.EditValue;
  if (d_no = 2) then
    t_no := 0
  else
    t_no := 2;

  NSTATIC_CHECK_RESULT_UPD.ParamByName('ID').Value := id;
  NSTATIC_CHECK_RESULT_UPD.ParamByName('DIRECTION_KIND').Value := t_no;
  NSTATIC_CHECK_RESULT_UPD.ExecProc;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Locate('id', id, []);
  InsertPracticeData;
end;

procedure TfmStaticCheck.btnBothClick(Sender: TObject);
var
  t_no, d_no, id : Integer;
begin
  id := gridResultsID.EditValue;
  d_no := gridResultsDIRECTION_KIND.EditValue;
  if (d_no = 3) then
    t_no := 0
  else
    t_no := 3;

  NSTATIC_CHECK_RESULT_UPD.ParamByName('ID').Value := id;
  NSTATIC_CHECK_RESULT_UPD.ParamByName('DIRECTION_KIND').Value := t_no;
  NSTATIC_CHECK_RESULT_UPD.ExecProc;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Locate('id', id, []);
  InsertPracticeData;
end;

procedure TfmStaticCheck.btnCaptureClick(Sender: TObject);
var
  memImg : TMemoryStream;
begin
  if gridResultsID.EditValue > 0 then begin
    memImg := TMemoryStream.Create;
    try
      if (ImageEnVect2.IEBitmap.IsEmpty = False) then begin
        ImageEnVect2.SelectionBase := iesbClientArea;
        ImageEnVect2.VisibleSelection := False;
        ImageEnVect2.Select(0, 0, ImageEnVect2.Width, ImageEnVect2.Height, iespReplace);
        ImageEnVect2.Proc.SelCopyToClip(True);
        ImageEnVectCapture.Proc.SelPasteFromClip(True);
        ImageEnVect2.DeSelect;
        ImageEnVectCapture.IO.SaveToStreamJpeg(memImg);
        memImg.Position := 0;
        NSTATIC_CHECK_RESULTIMG_IU.ParamByName('ID').Value := q_check_pictureID.Value;
        NSTATIC_CHECK_RESULTIMG_IU.ParamByName('RESULT_ID').Value := gridResultsID.EditValue;
        NSTATIC_CHECK_RESULTIMG_IU.ParamByName('RESULT_IMG').LoadFromStream(memImg, ftBlob);
        NSTATIC_CHECK_RESULTIMG_IU.ExecProc;
        btnViewPicture.Enabled := True;
      end;
    finally
      memImg.Free;
    end;
  end else begin
    ShowMessage('측정결과가 없습니다.');
  end;
end;

procedure TfmStaticCheck.btnChangeDateClick(Sender: TObject);
begin
  fmDateSelector := TfmDateSelector.Create(Self);
  try
    fmDateSelector.MonthCalendar1.Date := StrToDate(gridCheckC_DATE.EditValue);
    fmDateSelector.ShowModal;
    if fmDateSelector.ModalResult = mrOk then begin
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Edit;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('CUSTOMER_UID').Value := GLOVAL_MEMBER_UID;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('C_DATE').Value := DateTimeToStr(fmDateSelector.MonthCalendar1.Date);
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('C_IDX').Value := gridCheckC_IDX.EditValue;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('C_COMMENTS').Value := '';
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Post;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;
    end;
  finally
    fmDateSelector.Free;
  end;
end;

procedure TfmStaticCheck.btnChangeLevelClick(Sender: TObject);
var
  id, r_level : Integer;
begin
  id := gridResultsID.EditValue;
  r_level := gridResultsRESULT_LEVEL.EditValue;
  if r_level > 2 then
    r_level := 1
  else
    Inc(r_level);
  q_update_result.ParamByName('ID').Value := id;
  q_update_result.ParamByName('R_LEVEL').Value := r_level;
  q_update_result.ExecSQL;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Locate('id', id, []);
  InsertPracticeData;
end;

procedure TfmStaticCheck.btnCommentsClick(Sender: TObject);
var
  comm : string;
begin
  fmCheckCommennts := TfmCheckCommennts.Create(Self);
  try
    comm := dmDBCommon.q_NSTATIC_CHECK_DATAC_COMMENTS.Value;
    fmCheckCommennts.mmo1.Text := comm;
    fmCheckCommennts.ShowModal;
    if fmCheckCommennts.ModalResult = mrOk then begin
      gridCheck.DataController.SaveBookmark;
      NSTATIC_CHECK_DATA_UPD.ParamByName('ID').Value := gridCheckID.EditValue;
      NSTATIC_CHECK_DATA_UPD.ParamByName('C_COMMENTS').Value := fmCheckCommennts.mmo1.Text;
      NSTATIC_CHECK_DATA_UPD.ExecProc;
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;
      gridCheck.DataController.GotoBookmark;
    end;
  finally
    fmCheckCommennts.Free;
  end;
end;

procedure TfmStaticCheck.btnViewPictureClick(Sender: TObject);
var
  memImg : TMemoryStream;
begin
  if gridResultsID.EditValue > 0 then begin
    fmCheckImageViewer := TfmCheckImageViewer.Create(Self);
    memImg := TMemoryStream.Create;
    try
      NSTATIC_CHECK_RESULTIMG_SEL.ParamByName('RESULT_ID').Value := gridResultsID.EditValue;
      NSTATIC_CHECK_RESULTIMG_SEL.Active := True;
      NSTATIC_CHECK_RESULTIMG_SEL.Refresh;
      NSTATIC_CHECK_RESULTIMG_SELRESULT_IMG.SaveToStream(memImg);
      memImg.Position := 0;
      fmCheckImageViewer.ImageEnVect2.IO.LoadFromStreamJpeg(memImg);
      fmCheckImageViewer.ImageEnVect2.Update;
      fmCheckImageViewer.ShowModal;
    finally
      memImg.Free;
      fmCheckImageViewer.Free;
    end;
  end else begin
    ShowMessage('측정결과가 없습니다.');
  end;
end;

procedure TfmStaticCheck.btnDeltreeClick(Sender: TObject);
begin
  if (ItemTreeView.Selected <> Nil) then
    ItemTreeView.Selected.Delete;
end;

procedure TfmStaticCheck.btnOpenImageClick(Sender: TObject);
begin
  dmDBCommon.RetrieveThumbnails(ImageEnMView);
end;

procedure TfmStaticCheck.btnPlayVideoClick(Sender: TObject);
var
  video_id, row, col_practice : Integer;
  p_name : string;
begin
  video_id := gridPracticePRACTICE_ID.EditValue;
  col_practice  := gridPractice.GetColumnByFieldName('PRACTICE_ID').Index;
  row := gridPractice.Controller.SelectedRows[0].Index;
  p_name  := gridPractice.DataController.GetDisplayText(row, col_practice);
  fmVideoPlayer := TfmVideoPlayer.Create(Self);
  try
    fmVideoPlayer.Caption := '동영상 운동처방 - ' + p_name;
    fmVideoPlayer.VIDEO_ID := video_id;
    fmVideoPlayer.ShowModal;
  finally
    fmVideoPlayer.Free;
  end;
end;

procedure TfmStaticCheck.btnPracticeMakeClick(Sender: TObject);
var
  i, cnt, i2, cnt2 : Integer;
begin
  cnt := gridResults.DataController.RecordCount;
  gridResults.DataController.GotoFirst;
  for i := 0 to cnt - 1 do begin
    NPRACTICE_ASSIGN_SEL.ParamByName('RESULT_ID').Value := gridResultsRESULT_VALUE.EditValue;
    NPRACTICE_ASSIGN_SEL.ParamByName('DIRECTION_KIND').Value := gridResultsDIRECTION_KIND.EditValue;
    NPRACTICE_ASSIGN_SEL.Active := True;
    NPRACTICE_ASSIGN_SEL.Refresh;
    cnt2 := NPRACTICE_ASSIGN_SEL.RecordCount;
    NPRACTICE_ASSIGN_SEL.First;
    for i2 := 0 to cnt2 - 1 do begin
      NSTATIC_RESULT_PRACTICE_INS.ParamByName('RESULT_ID').Value := gridResultsID.EditValue;
      NSTATIC_RESULT_PRACTICE_INS.ParamByName('PRACTICE_ID').Value := NPRACTICE_ASSIGN_SELPRACTICE_ID.Value;
      NSTATIC_RESULT_PRACTICE_INS.ParamByName('DATA_ID').Value := gridCheckID.EditValue;
      NSTATIC_RESULT_PRACTICE_INS.ParamByName('IS_SELECTED').Value := 1;
      NSTATIC_RESULT_PRACTICE_INS.ExecProc;

      NPRACTICE_ASSIGN_SEL.Next;
    end;
    gridResults.DataController.GotoNext;
  end;
end;

procedure TfmStaticCheck.btnPracticeMethodClick(Sender: TObject);
var
  p_name : string;
  video_id, row, col_practice : Integer;
begin
  video_id := gridPracticePRACTICE_ID.EditValue;
  col_practice  := gridPractice.GetColumnByFieldName('PRACTICE_ID').Index;
  row := gridPractice.Controller.SelectedRows[0].Index;
  p_name  := gridPractice.DataController.GetDisplayText(row, col_practice);
  if video_id > 0 then begin
    fmPracticeMethodSingle := TfmPracticeMethodSingle.Create(Self);
    try
      fmPracticeMethodSingle.Caption := '측정방법 - ' + p_name;
      fmPracticeMethodSingle.ImageID := video_id;
      fmPracticeMethodSingle.ShowModal;
    finally
      fmPracticeMethodSingle.Free;
    end;
  end;
end;

procedure TfmStaticCheck.btnResultSelectClick(Sender: TObject);
var
  n_level, tagno, i, cnt : Integer;
  tr, pnode : TTreeNode;
  id, pid : Integer;
  p_text, c_text, i_text, video_list : string;
  result_id, body_id : Integer;
begin
  if gridCheck.DataController.RecordCount < 1 then begin
    ShowMessage('측정데이터가 없습니다. 측정데이터를 먼저 만드세요.');
    Exit;
  end;
  tagno := (Sender as TcxButton).Tag;
  id := q_CHECK_ITEM_TREEID.Value;
  body_id := q_CHECK_ITEM_TREEBODY_ID.Value;
  tr := ItemTreeView.DBTreeNodes.GetTreeNode(id);
  if tr <> Nil then begin
    if tr.HasChildren = False then begin
      if id > 0 then begin
        //dmDBCommon.q_NSTATIC_CHECK_RESULT.DisableControls;
        dmDBCommon.q_NSTATIC_CHECK_RESULT.Append;
        dmDBCommon.q_NSTATIC_CHECK_RESULTDATA_ID.Value := dmDBCommon.q_NSTATIC_CHECK_DATAID.Value;
        dmDBCommon.q_NSTATIC_CHECK_RESULTRESULT_VALUE.Value := id;
        dmDBCommon.q_NSTATIC_CHECK_RESULTITEM_MAIN.Value := body_id;
        dmDBCommon.q_NSTATIC_CHECK_RESULTPRACTICE_ID.Value := '';
        dmDBCommon.q_NSTATIC_CHECK_RESULTRESULT_LEVEL.Value := tagno;
        dmDBCommon.q_NSTATIC_CHECK_RESULTDIRECTION_KIND.Value := 0;
        dmDBCommon.q_NSTATIC_CHECK_RESULT.Post;
        dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
        dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Last;
        InsertPracticeData;
        //dmDBCommon.q_NSTATIC_CHECK_RESULT.EnableControls;
      end;
    end;
  end;
end;

procedure TfmStaticCheck.InsertPracticeData;
var
  i, cnt : Integer;
begin
  NSTATIC_RESULT_PRACTICE_DEL.ParamByName('RESULT_ID').Value := gridResultsID.EditValue;
  NSTATIC_RESULT_PRACTICE_DEL.ExecProc;

  NPRACTICE_ASSIGN_SEL.ParamByName('RESULT_ID').Value := gridResultsRESULT_VALUE.EditValue;
  NPRACTICE_ASSIGN_SEL.ParamByName('DIRECTION_KIND').Value := gridResultsDIRECTION_KIND.EditValue;
  NPRACTICE_ASSIGN_SEL.Active := True;
  NPRACTICE_ASSIGN_SEL.Refresh;
  cnt := NPRACTICE_ASSIGN_SEL.RecordCount;
  NPRACTICE_ASSIGN_SEL.First;
  for i := 0 to cnt - 1 do begin
    NSTATIC_RESULT_PRACTICE_INS.ParamByName('RESULT_ID').Value := gridResultsID.EditValue;
    NSTATIC_RESULT_PRACTICE_INS.ParamByName('PRACTICE_ID').Value := NPRACTICE_ASSIGN_SELPRACTICE_ID.Value;
    NSTATIC_RESULT_PRACTICE_INS.ParamByName('DATA_ID').Value := gridCheckID.EditValue;
    NSTATIC_RESULT_PRACTICE_INS.ParamByName('IS_SELECTED').Value := 1;
    NSTATIC_RESULT_PRACTICE_INS.ExecProc;

    NPRACTICE_ASSIGN_SEL.Next;
  end;
  NSTATIC_RESULT_PRACTICE_SEL.ParamByName('R_ID').Value := gridResultsID.EditValue;
  NSTATIC_RESULT_PRACTICE_SEL.Active := True;
  ds_NSTATIC_RESULT_PRACTICE_SEL.DataSet.Refresh;
end;

procedure TfmStaticCheck.btnSaveResultClick(Sender: TObject);
var
  i, t, cnt, cnt2, id, recno, recno2, practice_id, rkind, dir_kind, is_selected : Integer;
  body_point, check_item, practice_name, check_level, check_dir, comm : string;
begin
  fmStaticResultView := TfmStaticResultView.Create(Self);
  try
    comm := dmDBCommon.q_NSTATIC_CHECK_DATAC_COMMENTS.Value;
    fmStaticResultView.cxMemo1.Text := comm;
    fmStaticResultView.CustomerName := EditName.Text;
    fmStaticResultView.CustomerTel := pnlNo.Caption;
    fmStaticResultView.CheckDate := VarToDateTime(gridCheckC_DATE.EditValue);
    fmStaticResultView.CheckChasoo := gridCheckC_IDX.EditValue;
    fmStaticResultView.dxMemResult.Close;
    fmStaticResultView.dxMemResult.Open;
    cnt := gridResults.DataController.RecordCount;
    gridResults.DataController.GotoFirst;
    for i := 0 to cnt - 1 do begin
      id := i + 1;
      recno := gridResults.DataController.GetFocusedRecordIndex;
      body_point := gridResults.DataController.GetDisplayText(recno, 2);
      dir_kind := gridResults.DataController.GetValue(recno, 3);
      check_item := gridResults.DataController.GetDisplayText(recno, 4);
      rkind := gridResults.DataController.GetValue(recno, 6);
      case rkind of
        1: check_level := '경미';
        2: check_level := '중등';
        3: check_level := '심각';
      end;
      case dir_kind of
        0: check_dir := '';
        1: check_dir := '좌측';
        2: check_dir := '우측';
        3: check_dir := '양측';
      end;
      cnt2 := gridPractice.DataController.RecordCount;
      if cnt2 > 0 then begin
        gridPractice.DataController.GotoFirst;
        for t := 0 to cnt2 - 1 do begin
          recno2 := gridPractice.DataController.GetFocusedRecordIndex;
          is_selected := gridPractice.DataController.GetValue(recno2, 2);
          practice_id := gridPractice.DataController.GetValue(recno2, 3);
          practice_name := gridPractice.DataController.GetDisplayText(recno2, 3);
          if rbSelected.Checked then begin
            if is_selected = 1 then begin
              fmStaticResultView.dxMemResult.Append;
              fmStaticResultView.dxMemResultid.Value := id;
              fmStaticResultView.dxMemResultbody_point.Value := body_point;
              fmStaticResultView.dxMemResultcheck_item.Value := check_item;
              fmStaticResultView.dxMemResultpractice_name.Value := practice_name;
              fmStaticResultView.dxMemResultpractice_id.Value := practice_id;
              fmStaticResultView.dxMemResultcheck_level_no.Value := rkind;
              fmStaticResultView.dxMemResultcheck_level.Value := check_level;
              fmStaticResultView.dxMemResultdirection_kind.Value := check_dir;
              fmStaticResultView.dxMemResult.Post;
            end;
          end else begin
            fmStaticResultView.dxMemResult.Append;
            fmStaticResultView.dxMemResultid.Value := id;
            fmStaticResultView.dxMemResultbody_point.Value := body_point;
            fmStaticResultView.dxMemResultcheck_item.Value := check_item;
            fmStaticResultView.dxMemResultpractice_name.Value := practice_name;
            fmStaticResultView.dxMemResultpractice_id.Value := practice_id;
            fmStaticResultView.dxMemResultcheck_level_no.Value := rkind;
            fmStaticResultView.dxMemResultcheck_level.Value := check_level;
            fmStaticResultView.dxMemResultdirection_kind.Value := check_dir;
            fmStaticResultView.dxMemResult.Post;
          end;
          gridPractice.DataController.GotoNext;
        end;
      end else begin
        fmStaticResultView.dxMemResult.Append;
        fmStaticResultView.dxMemResultid.Value := id;
        fmStaticResultView.dxMemResultbody_point.Value := body_point;
        fmStaticResultView.dxMemResultcheck_item.Value := check_item;
        fmStaticResultView.dxMemResultpractice_name.Value := '';
        fmStaticResultView.dxMemResultpractice_id.Value := 0;
        fmStaticResultView.dxMemResultcheck_level_no.Value := rkind;
        fmStaticResultView.dxMemResultcheck_level.Value := check_level;
        fmStaticResultView.dxMemResultdirection_kind.Value := check_dir;
        fmStaticResultView.dxMemResult.Post;
      end;
      gridResults.DataController.GotoNext;
    end;
    fmStaticResultView.d_MemResult.DataSet.Refresh;
    fmStaticResultView.ShowModal;
  finally
    fmStaticResultView.Free;
  end;
end;

procedure TfmStaticCheck.btnSelectClick(Sender: TObject);
var
  id, is_selected : Integer;
begin
  id := gridPracticeID.EditValue;
  is_selected := gridPracticeIS_SELECTED.EditValue;
  if is_selected = 0 then
    is_selected := 1
  else
    is_selected := 0;
  NSTATIC_RESULT_PRACTICE_UPD.ParamByName('ID').Value := id;
  NSTATIC_RESULT_PRACTICE_UPD.ParamByName('IS_SELECTED').Value := is_selected;
  NSTATIC_RESULT_PRACTICE_UPD.ExecProc;
  ds_NSTATIC_RESULT_PRACTICE_SEL.DataSet.Refresh;
  ds_NSTATIC_RESULT_PRACTICE_SEL.DataSet.Locate('id', id, []);
end;

procedure TfmStaticCheck.btnSubResultClick(Sender: TObject);
begin
  ResultValue := StrToIntDef((Sender as TcxButton).Hint, 0);
end;

procedure TfmStaticCheck.btnViewPosClick(Sender: TObject);
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

procedure TfmStaticCheck.SelectMember;
begin
  Screen.Cursor := crHourGlass;
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      ShowProcessMsg('자료 추출중...', '', 1);
      RetrieveMemberInfo;
    end;
  finally
    fmMemberSelect.Free;
    ShowProcessMsg('', '', 0);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmStaticCheck.RetrieveMemberInfo;
begin
  cxPageControl1.ActivePageIndex := 0;
  EditName.Text := CustomerImages.CustName;
  pnlNo.Caption := CustomerImages.CustTel;
  dmDBCommon.RetrieveMemberPicture(CustomerImages.CustID);
  gridPicture.DataController.GotoFirst;
  CustomerImages.CheckID := gridPictureUID.EditValue;

  if gridPicture.DataController.RecordCount > 0 then begin
//    dmDBCommon.CreateMemberLocalPicture(GLOVAL_MEMBER_UID);
//    dmDBCommon.SelectLocalPictureByID(PictureDataID);
    RetrievePicture(CustomerImages.CheckID, 0);
  end else begin
    CustomerImages.CheckID := '';
    ClearPicture;
  end;

  dmDBCommon.q_NSTATIC_CHECK_DATA.ParamByName('customer_uid').Value := CustomerImages.CustID;
  dmDBCommon.q_NSTATIC_CHECK_DATA.Active := True;
  dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;

  dmDBCommon.q_NSTATIC_CHECK_RESULT.ParamByName('DATA_ID').Value := dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('id').Value;
  dmDBCommon.q_NSTATIC_CHECK_RESULT.Active := True;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
end;

procedure TfmStaticCheck.RetrievePicture(check_uid : string; img_idx : Integer);
var
  img_id, i, r, cnt : integer;
  img_name, img_vect, url : string;
  mem_stream, drw_stream : TMemoryStream;
  ImageEnVect : TImageEnVect;
  Item : TControl;
  img_left, img_h, img_w : Integer;
begin
  pnlProcess.Visible := True;
  pnlProcess.Refresh;
  dmDBCommon.CUSTOMER_IMAGE4_SEL.ParamByName('chk_id').AsString := check_uid;
  dmDBCommon.CUSTOMER_IMAGE4_SEL.Active := True;
  dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.Refresh;
  cnt := dmDBCommon.CUSTOMER_IMAGE4_SEL.RecordCount;
  for i := 1 to 6 do begin
    TabSheet[i].TabVisible := False;
  end;
  try
    dmDBCommon.CUSTOMER_IMAGE4_SEL.First;
    for i := 0 to cnt - 1 do begin
      TabSheet[i].TabVisible := True;
      ImageVect[i].Clear;
      ImageVect[i].RemoveAllObjects;
      drw_stream := TMemoryStream.Create;
      img_id := dmDBCommon.CUSTOMER_IMAGE4_SELID.Value;
      img_name := dmDBCommon.CUSTOMER_IMAGE4_SELIMAGE_NAME.Value;
      dmDBCommon.CUSTOMER_IMAGE4_SELDRAW_IMAGE.SaveToStream(drw_stream);
      ImageVect[i].IO.LoadFromURL(gsImageFolder + '/' + img_name);
      img_w := ImageVect[i].IEBitmap.Width;
      img_h := ImageVect[i].IEBitmap.Height;
      if img_w > img_h then
        ImageVect[i].Proc.Rotate(-90);
      drw_stream.Position := 0;
      ImageVect[i].LoadFromStreamIEV(drw_stream);
      ImageVect[i].Hint := IntToStr(img_id);
      ImageVect[i].Update;
      drw_stream.Free;
      dmDBCommon.CUSTOMER_IMAGE4_SEL.Next;
    end;
    cxPageControl1.ActivePageIndex := 0;
  finally
    pnlProcess.Visible := False;
  end;
end;

procedure TfmStaticCheck.ClearPicture;
var
  i : Integer;
begin
  ImageEnVect2.Clear;
  ImageEnVect2.RemoveAllObjects;
  ImageEnVect2.Update;
end;

procedure TfmStaticCheck.chkStaticFitClick(Sender: TObject);
begin
  ImageEnVect2.AutoFit := chkStaticFit.Checked;
  ImageEnVect2.AutoStretch := chkStaticFit.Checked;
  ImageEnVect2.Update;
end;

procedure TfmStaticCheck.gridCheckCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  CheckDataID := dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('id').Value;
  dmDBCommon.q_NSTATIC_CHECK_RESULT.ParamByName('DATA_ID').Value := CheckDataID;
  dmDBCommon.q_NSTATIC_CHECK_RESULT.Active := True;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
end;

procedure TfmStaticCheck.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if gridCheck.DataController.RecordCount > 0 then begin
    btnComments.Enabled := True;
  end else begin
    btnComments.Enabled := False;
  end;
end;

procedure TfmStaticCheck.gridPictureCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if cxPageControl1.ActivePageIndex <> 0 then
    cxPageControl1.ActivePageIndex := 0;

  CustomerImages.CheckID := gridPictureUID.EditValue;
  dmDBCommon.RetrieveCustomerImage4;
  RetrievePicture(CustomerImages.CheckID, cxPageControl1.ActivePageIndex);
end;

procedure TfmStaticCheck.gridPictureColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmStaticCheck.gridPracticeCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

procedure TfmStaticCheck.gridPracticeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if gridPractice.DataController.RecordCount > 0 then begin
    btnPracticeMethod.Enabled := True;
    btnPlayVideo.Enabled := True;
    btnSelect.Enabled := True;
  end else begin
    btnPracticeMethod.Enabled := False;
    btnPlayVideo.Enabled := False;
    btnSelect.Enabled := False;
  end;
end;

procedure TfmStaticCheck.gridResultColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmStaticCheck.gridResultsCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnChangeLevel.Click;
end;

procedure TfmStaticCheck.gridResultsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (gridResults.DataController.RecordCount > 0) and (gridResultsRESULT_VALUE.EditValue > 0) and
    (gridResultsID.EditValue > 0) then begin
    NSTATIC_RESULT_PRACTICE_SEL.ParamByName('r_id').AsInteger := gridResultsID.EditValue;
    NSTATIC_RESULT_PRACTICE_SEL.Active := True;
    ds_NSTATIC_RESULT_PRACTICE_SEL.DataSet.Refresh;

    q_check_picture.ParamByName('result_id').Value := gridResultsID.EditValue;
    q_check_picture.Active := True;
    q_check_picture.Refresh;
    if q_check_pictureID.Value > 0 then
      btnViewPicture.Enabled := True
    else
      btnViewPicture.Enabled := False;
    btnSaveResult.Enabled := True;
    btnCapture.Enabled := True;
    btnLeft.Enabled := True;
    btnRight.Enabled := True;
    btnBoth.Enabled := True;
  end else begin
    NSTATIC_RESULT_PRACTICE_SEL.ParamByName('r_id').AsInteger := 0;
    NSTATIC_RESULT_PRACTICE_SEL.Active := True;
    ds_NSTATIC_RESULT_PRACTICE_SEL.DataSet.Refresh;
    btnSaveResult.Enabled := False;
    btnCapture.Enabled := False;
    btnLeft.Enabled := False;
    btnRight.Enabled := False;
    btnBoth.Enabled := False;
  end;
end;

procedure TfmStaticCheck.gridResultsRESULT_LEVELCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  col_kind : Integer;
begin
  if gridResultsRESULT_LEVEL.EditValue > 0 then begin
    col_kind := AViewInfo.GridRecord.Values[gridResults.GetColumnByFieldName('RESULT_LEVEL').Index];
    case col_kind of
      1: begin
        ACanvas.Brush.Color := clYellow;
        ACanvas.Font.Color := clBlack;
      end;
      2 : begin
        ACanvas.Brush.Color := clGreen;
        ACanvas.Font.Color := clWhite;
      end;
      3: begin
        ACanvas.Brush.Color := clRed; //연한그린색
        ACanvas.Font.Color := clWhite;
      end;
    end;
  end;
end;

procedure TfmStaticCheck.cxButton1Click(Sender: TObject);
var
  tno : Integer;
begin
//  tno := (Sender as TcxButton).Tag;
//  SelectedMainItem := tno;
//  RetrieveSubitem(tno);
//  RetrieveResultitem;
end;

procedure TfmStaticCheck.ImageEnMView1Click(Sender: TObject);
begin
  RetrieveResultitem;
end;

procedure TfmStaticCheck.ImageEnVect2DblClick(Sender: TObject);
begin
  btnAnalyse.Click;
end;

procedure TfmStaticCheck.RetrieveSubitem(tno : Integer);
begin
end;

procedure TfmStaticCheck.RetrieveResultitem;
begin
end;

procedure TfmStaticCheck.ItemTreeViewDblClick(Sender: TObject);
begin
  btnViewPos.Click;
end;

procedure TfmStaticCheck.pnlThumbnailResize(Sender: TObject);
begin
  ImageEnMView.ThumbHeight := pnlThumbnail.height - 24;
  ImageEnMView.ThumbWidth := ImageEnMView.ThumbHeight div 3;
end;

function TfmStaticCheck.GetImageFilename(image_id : integer) : string;
var
  Qry : TUniQuery;
begin
  Qry := TUniQuery.Create(nil);
  Qry.Connection := dmDBCommon.UniDBConnection;
  with Qry do begin
    SQL.Clear;
    SQL.Add('select image_name from CUSTOMER_IMAGE2 ');
    SQL.Add('where id = :image_id ;');
    ParamByName('image_id').AsInteger := image_id;
    Active := True;
  end;
  Result := Qry.FieldByName('image_name').AsString;
end;


initialization RegisterClasses([TfmStaticCheck]);

end.
