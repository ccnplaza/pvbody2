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
  dxdbtree, dxmdaset, cxCheckBox, cxRadioGroup, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers,
  iexRulers, iexToolbars, UfrmMemberSelect, UfrmImageMultiView, cxCalendar,
  cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxColorComboBox, Math, cxImage;

type
  TfmStaticCheck = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pnlProcess: TPanel;
    lblCount: TLabel;
    lblMessage: TLabel;
    q_result_value: TUniQuery;
    d_result_value: TDataSource;
    ImageList1: TImageList;
    q_delete_result_practice: TUniSQL;
    q_result_valueID: TStringField;
    q_result_valueSTATIC_RESULT_ID: TStringField;
    q_result_valueCHECK_POINT_ID: TStringField;
    q_result_valueCHECK_VALUE: TIntegerField;
    q_result_valueCUSTOMER_ID: TStringField;
    q_result_valueCOMPANY_ID: TStringField;
    q_result_valueCHECK_BODY_ID: TStringField;
    q_result_valuePRACTICE_ID: TStringField;
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
    Panel5: TPanel;
    Panel6: TPanel;
    gridResults: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3: TcxGrid;
    gridCheck: TcxGridDBTableView;
    cxL2: TcxGridLevel;
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
    cxImageList1: TcxImageList;
    CHECK_ITEM_TREE_BODY_SEL: TUniStoredProc;
    CHECK_ITEM_TREE_RESULT_SEL: TUniStoredProc;
    d_CHECK_ITEM_TREE_BODY_SEL: TDataSource;
    d_CHECK_ITEM_TREE_RESULT_SEL: TDataSource;
    CHECK_ITEM_TREE_BODY_SELID: TIntegerField;
    CHECK_ITEM_TREE_BODY_SELITEM_NAME: TStringField;
    CHECK_ITEM_TREE_RESULT_SELID: TIntegerField;
    CHECK_ITEM_TREE_RESULT_SELITEM_NAME: TStringField;
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
    NSTATIC_CHECK_RESULTIMG_SEL: TUniStoredProc;
    NSTATIC_CHECK_RESULTIMG_IU: TUniStoredProc;
    NSTATIC_CHECK_RESULTIMG_SELID: TIntegerField;
    NSTATIC_CHECK_RESULTIMG_SELRESULT_IMG: TBlobField;
    q_check_picture: TUniQuery;
    q_check_pictureID: TIntegerField;
    NSTATIC_CHECK_DATA_UPD: TUniStoredProc;
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
    q_update_result: TUniQuery;
    btnChangeLevel: TcxButton;
    btnChangeDate: TcxButton;
    Panel13: TPanel;
    pnlMember: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    Label1: TLabel;
    Panel2: TPanel;
    cxGroupBox2: TcxGroupBox;
    ImageEnView1: TImageEnView;
    gbPictList: TcxGroupBox;
    IMAGES_SEL: TUniStoredProc;
    IMAGES_SELID: TIntegerField;
    IMAGES_SELIMAGE_DATA: TBlobField;
    IMAGES_SELDRAW_DATA: TBlobField;
    IMAGES_SELIDX: TIntegerField;
    ds_IMAGES_SEL: TDataSource;
    LabelPictureDate: TLabel;
    IMAGE_ANALYSE_DEL: TUniStoredProc;
    IMAGE_ANALYSE_IU: TUniStoredProc;
    IMAGE_ANALYSE_SEL: TUniStoredProc;
    ds_IMAGE_ANALYSE_SEL: TDataSource;
    IMAGE_ANALYSE_SELID: TIntegerField;
    IMAGE_ANALYSE_SELDRAW_IMAGE: TBlobField;
    btnSaveResultImage: TcxButton;
    btnMuscle: TBitBtn;
    ImageEnMView1: TImageEnMView;
    cxGroupBox5: TcxGroupBox;
    Panel10: TPanel;
    chkSize: TcxCheckBox;
    FlowPanel1: TFlowPanel;
    btnAngle: TSpeedButton;
    btnArrow: TSpeedButton;
    btnBackward: TBitBtn;
    btnFont: TBitBtn;
    btnForward: TBitBtn;
    btnFreeLine: TSpeedButton;
    btnLine: TSpeedButton;
    btnMultiLine: TSpeedButton;
    btnSaveLayers: TBitBtn;
    btnSelCopy: TBitBtn;
    btnSelRect: TBitBtn;
    btnShape: TSpeedButton;
    btnText: TSpeedButton;
    ColorBox: TcxColorComboBox;
    speLineThick: TcxSpinEdit;
    FontDialog1: TFontDialog;
    IMAGE_RESULTS_INS: TUniStoredProc;
    ImageEnView2: TImageEnView;
    btnShowImage: TcxButton;
    IMAGE_RESULTS_SEL: TUniStoredProc;
    ds_IMAGE_RESULTS_SEL: TDataSource;
    IMAGE_RESULTS_SELID: TIntegerField;
    IMAGE_RESULTS_SELCHECK_ID: TIntegerField;
    IMAGE_RESULTS_SELRESULT_ID: TIntegerField;
    IMAGE_RESULTS_SELRESULT_MAIN: TIntegerField;
    IMAGE_RESULTS_SELRESULT_SUB: TIntegerField;
    IMAGE_RESULTS_SELRESULT_LEVEL: TIntegerField;
    IMAGE_RESULTS_SELRESULT_IMAGE: TBlobField;
    btnHorzLine: TSpeedButton;
    btnVertLine: TSpeedButton;
    speFontSize: TcxSpinEdit;
    FontColor: TcxColorComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    q_check_item_sub: TUniQuery;
    q_check_item_subID: TIntegerField;
    q_check_item_subPARENT_ID: TIntegerField;
    q_check_item_subIMAGE_ID: TIntegerField;
    q_check_item_subITEM_NAME: TStringField;
    q_check_item_subBODY_ID: TIntegerField;
    q_check_item_subRESULT_ID: TIntegerField;
    q_check_item_subHOWTO_IMAGE: TSmallintField;
    q_check_item_subVIDEO_ID: TStringField;
    d_check_item_sub: TDataSource;
    q_check_item_sub2: TUniQuery;
    q_check_item_sub2ID: TIntegerField;
    q_check_item_sub2PARENT_ID: TIntegerField;
    q_check_item_sub2IMAGE_ID: TIntegerField;
    q_check_item_sub2ITEM_NAME: TStringField;
    q_check_item_sub2BODY_ID: TIntegerField;
    q_check_item_sub2RESULT_ID: TIntegerField;
    q_check_item_sub2HOWTO_IMAGE: TSmallintField;
    q_check_item_sub2VIDEO_ID: TStringField;
    d_check_item_sub2: TDataSource;
    GroupBox3: TGroupBox;
    cxImage1: TcxImage;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
    cxButton4: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    btnCheckBody: TcxButton;
    Label2: TLabel;
    btnDelete: TcxButton;
    q_delete_result: TUniQuery;
    q_check_same_data: TUniQuery;
    d_check_same_data: TDataSource;
    q_check_same_dataID: TIntegerField;
    btnViewPos: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ShowProcessMsg(msg, cnt_str: string; onoff: integer);
    procedure gridResultColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnAddDataClick(Sender: TObject);
    procedure ActNormalExecute(Sender: TObject);
    procedure ActSmallExecute(Sender: TObject);
    procedure ActMiddleExecute(Sender: TObject);
    procedure ActBigExecute(Sender: TObject);
    procedure ActResultViewExecute(Sender: TObject);
    procedure ActPracticeListExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSubResultClick(Sender: TObject);
    procedure btnViewPosClick(Sender: TObject);
    procedure btnPlayVideoClick(Sender: TObject);
    procedure gridPracticeCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ItemTreeViewDblClick(Sender: TObject);
    procedure btnSaveResultClick(Sender: TObject);
    procedure gridResultsRESULT_LEVELCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnPracticeMethodClick(Sender: TObject);
    procedure btnCaptureClick(Sender: TObject);
    procedure gridPracticeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridResultsFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSelectClick(Sender: TObject);
    procedure gridResultsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnChangeLevelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnChangeDateClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnSaveResultImageClick(Sender: TObject);
    procedure btnMuscleClick(Sender: TObject);
    procedure ImageEnMView1ImageSelect(Sender: TObject; idx: Integer);
    procedure ImageEnMView1Resize(Sender: TObject);
    procedure chkSizePropertiesEditValueChanged(Sender: TObject);
    procedure btnSaveLayersClick(Sender: TObject);
    procedure btnSelCopyClick(Sender: TObject);
    procedure btnForwardClick(Sender: TObject);
    procedure btnBackwardClick(Sender: TObject);
    procedure ColorBoxPropertiesChange(Sender: TObject);
    procedure speLineThickPropertiesChange(Sender: TObject);
    procedure ImageEnView1NewLayer(Sender: TObject; LayerIdx: Integer;
      LayerKind: TIELayerKind);
    procedure btnFontClick(Sender: TObject);
    procedure btnSelRectClick(Sender: TObject);
    procedure btnShowImageClick(Sender: TObject);
    procedure btnLineClick(Sender: TObject);
    procedure ImageEnView1LayerMoveSize(Sender: TObject; layer: Integer;
      event: TIELayerEvent; var PosX, PosY, Width, Height: Double);
    procedure ImageEnView1LayerNotify(Sender: TObject; layer: Integer;
      event: TIELayerEvent);
    procedure btnArrowClick(Sender: TObject);
    procedure ImageEnView1LayerNotifyEx(Sender: TObject; layer: Integer;
      event: TIELayerEvent);
    procedure gridMainFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnCheckBodyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    function GetImageFilename(image_id: integer): string;
    procedure RetrieveSubitem(tno : Integer);
    procedure RetrieveResultitem;
    procedure SetAnimationProperties(ienMview : TImageEnMView);
    procedure InsertPracticeData;
    procedure SelectMember;
    procedure RetrieveResults;
    procedure RetrieveCheckResult;
    procedure RetrievePicture;
    procedure RetrieveResultImage;
    procedure AssignControlValues;
    function Measure_angle(rect:TRect):string;
    procedure RefreshControls;
    procedure ChangeDirection;
    { Private declarations }
  public
    { Public declarations }
    SelectedMainItem : Integer;
    CheckDataID : Integer;
    ResultValue : Integer;
    PictureDataID : string;
    CURRENT_MEMBER_UID : string;
    imageenview : array[0..6] of TImageEnView;
    IMAGE_IDX : array[0..6] of Integer;
    TabSheet : array[0..6] of TcxTabSheet;
    CheckOldID : string;
    LIST_LOADED : Boolean;
    PICTURE_CNT : Integer;
    PICTURE_DATE : TDate;
    PAGE_IDX : Integer;
    fUpdating : Boolean;
    procedure SaveResultData;
  end;

var
  fmStaticCheck: TfmStaticCheck;

implementation

uses GlobalVar, uCommonLogic, ufmStaticResultView, uViewPractice,
  UfmAnalyseRequestSelect, UfmStaticPractice, UdmDBCommon,
  UfmStaticResultReport, UfmHowToSingle, UPlayer,
  UfmPracticeMethodSingle, UfmCheckImageViewer, UfmCheckCommennts,
  UfmMemberPicture, UfmDateSelector, UfmMemberLastSelect, uMemberEditView,
  uMemberFavorite, uMemberSelect, UfmCustomerHistory, ufmLayerEditor, UfmMuscleView, UfmCheckStaticItem;

{$R *.dfm}

// refresh controls with the layer content
procedure TfmStaticCheck.RefreshControls();
var
  borderAvail, fillAvail: Boolean;
  isLineLayer, isPolylineLayer, isAngleLayer: Boolean;

  procedure _EnableGroup(Ctrl: TWinControl; Enable: Boolean);
  var
    I: Integer;
  begin
    Ctrl.Enabled := Enable;
    for I := 0 to Ctrl.ControlCount - 1 do
      Ctrl.Controls[ i ].Enabled := Enable;
  end;

begin
  fUpdating := True;
  with ImageEnView1 do begin
    isLineLayer     := CurrentLayer is TIELineLayer ;
    isPolylineLayer := CurrentLayer is TIEPolylineLayer ;
    isAngleLayer    := CurrentLayer is TIEAngleLayer ;
    // SHARED STYLE PROPERTIES
    borderAvail := ( CurrentLayer.Kind <> ielkImage ) and CurrentLayer.SupportsFeature( ielfBorder );   // In this case the "border" is the line
    //btnBorderColor.Enabled := borderAvail;
    //lblBorder.Enabled := borderAvail;
    //lblBorderWidth.Enabled := borderAvail;
    //edtBorderWidth.Enabled := borderAvail;
    //updBorderWidth.Enabled := borderAvail;
    //if borderAvail then begin
    //  btnBorderColor.SelectedColor := CurrentLayer.BorderColor;
    //  updBorderWidth.Position := CurrentLayer.BorderWidth;
    //end else begin
    //  btnBorderColor.SelectedColor := clBlack;
    //  updBorderWidth.Position := 3;
    //end;
    fillAvail  := CurrentLayer.SupportsFeature( ielfFill );
    //if fillAvail then
    //  btnFillColor.SelectedColor := CurrentLayer.FillColor;
    //btnFillColor.Enabled := fillAvail;
    //lblFill.Enabled := fillAvail;
    // LINE PROPERTIES
    if isLineLayer then
      with TIELineLayer( CurrentLayer ) do begin
        ColorBox.ColorValue := BorderColor;
        speLineThick.Value := LineWidth;
      end;
    // POLYLINE PROPERTIES
    //if isPolylineLayer then
    //  with TIEPolylineLayer( CurrentLayer ) do begin
    //    chkPolylineClosed.checked := PolylineClosed;
    //  end;
    // ANGLE PROPERTIES
    //if isAngleLayer then
    //  with TIEAngleLayer( CurrentLayer ) do begin
    //    cmbAngleMode.ItemIndex := ord( AngleMode );
    //  end;
    //_EnableGroup( grpLine    , isLineLayer );
    //_EnableGroup( grpPolyline, isPolylineLayer );
    //_EnableGroup( grpAngle   , isAngleLayer );
  end;
  //ImageEnView1.CurrentLayer.GetProperties( memProps.Lines );
  fUpdating := False;
end;

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
  if dmDBCommon.NPRACTICE_SEL.Active = False then
    dmDBCommon.NPRACTICE_SEL.Active := True;

  if dmDBCommon.t_NPRACTICE_look.Active = False then
    dmDBCommon.t_NPRACTICE_look.Active := True;

  CHECK_ITEM_TREE_BODY_SEL.Active := True;
  d_CHECK_ITEM_TREE_BODY_SEL.DataSet.Refresh;
  CHECK_ITEM_TREE_RESULT_SEL.Active := True;
  d_CHECK_ITEM_TREE_RESULT_SEL.DataSet.Refresh;

  q_CHECK_ITEM_TREE.Active := True;
  d_CHECK_ITEM_TREE.DataSet.Refresh;
end;

procedure TfmStaticCheck.FormShow(Sender: TObject);
const cap_str = '정적평가';
var
  i : integer;
begin
  Caption := cap_str + ' - ' + CustomerImages.CustName + '(' + CustomerImages.CustTel + ')';
  LabelPictureDate.Caption := DateToStr(PICTURE_DATE);
  RetrieveResults;
  RetrieveResultImage;
  LIST_LOADED := True;
  ImageEnMView1.SelectedImage := 0;
  ImageEnMView1ImageSelect(Sender, 0);
  speFontSize.Value := FontDialog1.Font.Size;
  FontColor.ColorValue := FontDialog1.Font.Color;
end;

procedure TfmStaticCheck.RetrievePicture;
begin
end;

procedure TfmStaticCheck.RetrieveResults;
begin
  dmDBCommon.q_NSTATIC_CHECK_DATA.ParamByName('customer_uid').Value := CustomerImages.CustID;
  dmDBCommon.q_NSTATIC_CHECK_DATA.Active := True;
  dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;

  dmDBCommon.q_NSTATIC_CHECK_RESULT.ParamByName('DATA_ID').Value := dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('id').Value;
  dmDBCommon.q_NSTATIC_CHECK_RESULT.Active := True;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
end;

procedure TfmStaticCheck.RetrieveResultImage;
var
  mStream : TMemoryStream;
  img_id, r_id : Integer;
begin
  img_id := IMAGE_IDX[PAGE_IDX];
  IMAGE_ANALYSE_SEL.ParamByName('RESULT_ID').Value := gridCheckID.EditValue;
  IMAGE_ANALYSE_SEL.ParamByName('IMAGE_ID').Value := img_id;
  IMAGE_ANALYSE_SEL.Open;
  ds_IMAGE_ANALYSE_SEL.DataSet.Refresh;
  if IMAGE_ANALYSE_SELID.Value > 0 then begin
    mStream := TMemoryStream.Create;
    try
      IMAGE_ANALYSE_SELDRAW_IMAGE.SaveToStream(mStream);
      mStream.Position := 0;
      imageenview[PAGE_IDX].LayersClear(False);
      imageenview[PAGE_IDX].LayersLoadFromStream(mStream, False, nil); //IO.LoadFromStreamIEN(mStream);
      imageenview[PAGE_IDX].Update;
    finally
      mStream.Free;
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

procedure TfmStaticCheck.speLineThickPropertiesChange(Sender: TObject);
begin
  AssignControlValues;
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
      dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('CUSTOMER_UID').Value := CustomerImages.CustID;
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

procedure TfmStaticCheck.btnArrowClick(Sender: TObject);
begin
  ImageEnView1.MouseInteractLayers := [mlMoveLayers, mlResizeLayers, mlRotateLayers, mlEditLayerPoints];
end;

procedure TfmStaticCheck.btnLineClick(Sender: TObject);
var
  lHeight, lWidth : Integer;
begin
  lHeight := ImageEnView1.IEBitmap.Height;
  lWidth := ImageEnView1.IEBitmap.Width;
  if btnLine.Down then
    ImageEnView1.MouseInteractLayers := [mlCreateLineLayers];
  if btnMultiLine.Down then
    ImageEnView1.MouseInteractLayers := [mlClickCreatePolylineLayers];
  if btnFreeLine.Down then
    ImageEnView1.MouseInteractLayers := [mlDrawCreatePolylineLayers];
  if btnAngle.Down then
    ImageEnView1.MouseInteractLayers := [mlClickCreateAngleLayers];
  if btnShape.down then
    ImageEnView1.MouseInteractLayers := [mlCreateShapeLayers];
  if btnText.Down then
    ImageEnView1.MouseInteractLayers := [mlCreateTextLayers];
  if btnHorzLine.Down then begin
    ImageEnView1.LayersAdd( ielkLine );
    TIELineLayer(ImageEnView1.CurrentLayer).Name := 'HorizLine';
    TIELineLayer(ImageEnView1.CurrentLayer).SetPoints(0, lHeight div 2, lHeight div 2, lWidth);
    TIELineLayer(ImageEnView1.CurrentLayer).Height := 0;
  end;
  if btnVertLine.Down then begin
    ImageEnView1.LayersAdd( ielkLine );
    TIELineLayer(ImageEnView1.CurrentLayer).Name := 'VertLine';
    //TIELineLayer(ImageEnView1.CurrentLayer).VisibleBox := False;
    TIELineLayer(ImageEnView1.CurrentLayer).SetPoints(lWidth div 2, 0, lWidth div 2, lHeight);
    TIELineLayer(ImageEnView1.CurrentLayer).Width := 0;
  end;
end;

procedure TfmStaticCheck.btnMuscleClick(Sender: TObject);
begin
  fmMuscleView := TfmMuscleView.Create(Self);
  try
    fmMuscleView.ShowModal;
  finally
    fmMuscleView.Free;
  end;
end;

procedure TfmStaticCheck.ChangeDirection;
var
  t_no, d_no, id : Integer;
begin
  id := gridResultsID.EditValue;
  d_no := gridResultsDIRECTION_KIND.EditValue;

  if d_no < 3 then t_no := d_no + 1 else t_no := 0;

  NSTATIC_CHECK_RESULT_UPD.ParamByName('ID').Value := id;
  NSTATIC_CHECK_RESULT_UPD.ParamByName('DIRECTION_KIND').Value := t_no;
  NSTATIC_CHECK_RESULT_UPD.ExecProc;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Locate('id', id, []);
  InsertPracticeData;
end;

procedure TfmStaticCheck.btnBackwardClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer.LayerIndex > 1 then
    ImageEnView1.CurrentLayer.LayerIndex := ImageEnView1.CurrentLayer.LayerIndex - 1;
end;

procedure TfmStaticCheck.btnCaptureClick(Sender: TObject);
var
  memImg : TMemoryStream;
  result_str : string;
  result_val : Integer;
  result_color, label_color : TColor;
  ImageView : TImageEnView;
begin
  if gridResultsID.EditValue > 0 then begin
    memImg := TMemoryStream.Create;
    try
      result_val := gridResultsRESULT_LEVEL.EditValue;
      case result_val of
        1: begin
          result_color := clYellow;
          label_color := clBlack;
        end;
        2: begin
          result_color := clGreen;
          label_color := clWhite;
        end;
        3: begin
          result_color := clRed;
          label_color := clWhite;
        end;
      end;
      result_str := gridResults.DataController.GetDisplayText(
                    gridResults.DataController.FocusedRecordIndex,
                    gridResultsRESULT_VALUE.Index);
      ImageEnView1.LayersAdd( ielkLine );
      TIELineLayer(ImageEnView1.CurrentLayer).SizeToFit;
      TIELineLayer(ImageEnView1.CurrentLayer).StartShape := ieesArrow;
      TIELineLayer(ImageEnView1.CurrentLayer).EndShape := ieesNone;
      TIELineLayer(ImageEnView1.CurrentLayer).FillColor := result_color;
      TIELineLayer(ImageEnView1.CurrentLayer).LabelText := result_str;
      TIELineLayer(ImageEnView1.CurrentLayer).LabelPosition := ielpAtEnd;
      TIELineLayer(ImageEnView1.CurrentLayer).LabelFont.Size := 50;
      TIELineLayer(ImageEnView1.CurrentLayer).LabelFont.Style := [fsBold];
      TIELineLayer(ImageEnView1.CurrentLayer).LabelFont.Color := label_color;
      TIELineLayer(ImageEnView1.CurrentLayer).LabelBorderColor := clBlue;
      TIELineLayer(ImageEnView1.CurrentLayer).LineLength := 30;
      TIELineLayer(ImageEnView1.CurrentLayer).LineWidth := 10;
      TIELineLayer(ImageEnView1.CurrentLayer).LineColor := clBlue;
      TIELineLayer(ImageEnView1.CurrentLayer).ShapeSize := 50;
      TIELineLayer(ImageEnView1.CurrentLayer ).SetPoints( 100, 100, 500, 300 );
      TIELineLayer(ImageEnView1.CurrentLayer).PosX := IELayer_Pos_HCenter;
      TIELineLayer(ImageEnView1.CurrentLayer).PosY := IELayer_Pos_VCenter;
      TIELineLayer(ImageEnView1.CurrentLayer ).LabelHorzMargin := 0.10;
      TIELineLayer(ImageEnView1.CurrentLayer ).LabelVertMargin := 0.10;

      ImageEnView1.MouseInteractLayers := [ mlMoveLayers, mlResizeLayers, mlRotateLayers ];
      ImageEnView1.Update();
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

procedure TfmStaticCheck.btnCustInfoClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmStaticCheck.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.' +
    #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    q_delete_result.ParamByName('c_id').Value := gridResultsID.EditValue;
    q_delete_result.Execute;
    dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
  end;
end;

procedure TfmStaticCheck.btnFontClick(Sender: TObject);
begin
  if FontDialog1.Execute then
    AssignControlValues;
end;

procedure TfmStaticCheck.btnForwardClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer.LayerIndex < ImageEnView1.LayersCount then
    ImageEnView1.CurrentLayer.LayerIndex := ImageEnView1.CurrentLayer.LayerIndex + 1;
end;

function TfmStaticCheck.Measure_angle(rect:TRect):string;
var
  part1, part2, x1, x2, y1, y2:double;
  angle, angle2 :double;
  P1, P2: TPoint;
begin
  //angle := AngleOfLine(rect.TopLeft, rect.BottomRight);
  P1 := rect.TopLeft;
  P2 := rect.BottomRight;
  angle := RadToDeg(ArcTan2((P2.Y - P1.Y),(P2.X - P1.X)));
//  fix_angle(angle);
  if angle < 0 then
    angle := angle + 360;
  if angle > 45 then
    angle := 90 - angle;
  Result := FormatFloat('  0.0°', angle);
end;

procedure TfmStaticCheck.AssignControlValues();
begin
  try
    if fUpdating then
      exit;
    with ImageEnView1 do begin
      CurrentLayer.BorderColor := clRed;
      CurrentLayer.BorderWidth := speLineThick.Value;
      CurrentLayer.FillColor   := clYellow;
      if CurrentLayer is TIELineLayer then
        with TIELineLayer( CurrentLayer ) do begin
          BorderColor := ColorBox.ColorValue;
          BorderWidth := speLineThick.Value;
          if Name = 'HorizLine' then begin
            PosX := 0;
            Width := ImageEnView1.IEBitmap.Width;
          end else if Name = 'VertLine' then begin
            PosY := 0;
            Height := ImageEnView1.IEBitmap.Height;
          end else begin
            StartShape := TIELineEndShape(0); //none
            EndShape := TIELineEndShape(0);   //none
            ShapeSize := 20;
          end;
        end;
      if CurrentLayer is TIEPolylineLayer then
        with TIEPolylineLayer( CurrentLayer ) do begin
          // Don't close polyline until we finish creating it
          // PolylineClosed := chkPolylineClosed.checked;
          BorderColor := ColorBox.ColorValue;
          BorderWidth := speLineThick.Value;
        end;
      if CurrentLayer is TIEAngleLayer then
        with TIEAngleLayer( CurrentLayer ) do begin
          AngleMode := TIEAngleMode(0); //normal mode
          LabelFont.Size := FontDialog1.Font.Size;
          BorderColor := ColorBox.ColorValue;
          BorderWidth := speLineThick.Value;
        end;
      if CurrentLayer is TIEImageLayer then
        with TIEImageLayer( CurrentLayer ) do begin
          BorderColor := clNone;
          BorderWidth := 0;
        end;
      if CurrentLayer is TIETextLayer then
        with TIETextLayer( CurrentLayer ) do begin
          Text := '여기에 내용입력...';
          Font.Size := FontDialog1.Font.Size;
          Font.Style := FontDialog1.Font.Style;
          Font.Color := FontDialog1.Font.Color;
          Font.Name := FontDialog1.Font.Name;
          BorderColor := clBlack;
          BorderWidth := 2;
          FillColor := clYellow;
          Alignment := iejCenter;
          Layout := ielCenter;
          AutoSize := True;
        end;
      if CurrentLayer is TIEShapeLayer then
        with TIEShapeLayer(CurrentLayer) do begin
          Shape := iesEllipse;
          FillColor := clYellow;
          BorderColor := ColorBox.ColorValue;
          BorderWidth := speLineThick.Value;
          VisibleBox := True;
          Selectable := True;
        end;
    end;
    ImageEnView1.Update();
  except on E: Exception do
  end;
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

procedure TfmStaticCheck.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
var
  dStream : TMemoryStream;
begin
  ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(idx));
  dStream := TMemoryStream.Create;
  dmDBCommon.IMAGES_SEL.Locate('ID', ImageEnMView1.ImageTag[idx], []);
  dmDBCommon.IMAGES_SELDRAW_DATA.SaveToStream(dStream);
  if dStream.Size > 100 then begin
    dStream.Position := 0;
    ImageEnView1.IO.LoadFromStream(dStream);
  end;
  ImageEnView1.Update;
  dStream.Free;
end;

procedure TfmStaticCheck.ImageEnMView1Resize(Sender: TObject);
var
  w: integer;
begin
  w := ImageEnMView1.ClientWidth;
  if ImageEnMView1.CurrentScrollBars in [ ssVertical, ssBoth ] then
    dec( w, IEGlobalSettings().VScrollWidth );
  if chkSize.Checked then
    ImageEnMView1.SetThumbnailSize(w - 8, MulDiv(w, 16,9))
  else
    ImageEnMView1.SetThumbnailSize((w div 2) - 6, MulDiv(w div 2, 16,9))
end;

procedure TfmStaticCheck.ImageEnView1LayerMoveSize(Sender: TObject;
  layer: Integer; event: TIELayerEvent; var PosX, PosY, Width, Height: Double);
begin
  try
    if ImageEnView1.Layers[layer].Name = 'HorizLine' then begin
      PosX := 0;
      Width := ImageEnView1.IEBitmap.Width;
      Height := 0;
    end else
    if ImageEnView1.Layers[layer].Name = 'VertLine' then begin
      PosY := 0;
      Height := ImageEnView1.IEBitmap.Height;
      Width := 0;
    end;
    AssignControlValues;
  except on E: Exception do
  end;
end;

procedure TfmStaticCheck.ImageEnView1LayerNotify(Sender: TObject;
  layer: Integer; event: TIELayerEvent);
begin
  if event = ielCreated then begin
    btnArrow.Down := True;
    btnArrow.Click;
  end;
end;

procedure TfmStaticCheck.ImageEnView1LayerNotifyEx(Sender: TObject;
  layer: Integer; event: TIELayerEvent);
begin
  if event in [ ielSelected, ielDeselected, ielMoved, ielResized, ielRotated, ielCreated, ielAction, ielEdited, ielRemoved, ielArranged ] then
    RefreshControls();

end;

procedure TfmStaticCheck.ImageEnView1NewLayer(Sender: TObject;
  LayerIdx: Integer; LayerKind: TIELayerKind);
begin
  AssignControlValues();
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

procedure TfmStaticCheck.btnSaveLayersClick(Sender: TObject);
begin
  if SaveImageEnDialog1.Execute then
    ImageEnView1.LayersSaveMergedTo( SaveImageEnDialog1.Filename );
end;

procedure TfmStaticCheck.btnSaveResultClick(Sender: TObject);
var
  i, t, cnt, cnt2, id, recno, recno2, practice_id, rkind, dir_kind, is_selected : Integer;
  body_point, check_item, practice_name, check_level, check_dir, comm : string;
begin
  fmStaticResultView := TfmStaticResultView.Create(Self);
  try
    comm := dmDBCommon.q_NSTATIC_CHECK_DATAC_COMMENTS.Value;
    fmStaticResultView.CheckDataID := gridCheckID.EditValue;
    fmStaticResultView.Memo1.Text := comm;
    fmStaticResultView.CustomerName := CustomerImages.CustName;
    fmStaticResultView.CustomerTel := CustomerImages.CustTel;
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

procedure TfmStaticCheck.btnSaveResultImageClick(Sender: TObject);
var
  mStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  ImageEnView1.LayersSaveToStream(mStream, -1, False, True, False, True, nil); // .IO.SaveToStreamIEN(mStream);
  mStream.Position := 0;
  IMAGE_ANALYSE_IU.ParamByName('RESULT_ID').Value := gridCheckID.EditValue;
  IMAGE_ANALYSE_IU.ParamByName('IMAGE_ID').Value := IMAGE_IDX[ImageEnMView1.SelectedImage];
  IMAGE_ANALYSE_IU.ParamByName('DRAW_IMAGE').LoadFromStream(mStream, ftBlob);
  IMAGE_ANALYSE_IU.ExecProc;
end;

procedure TfmStaticCheck.btnSelCopyClick(Sender: TObject);
var
  mStream, dStream : TMemoryStream;
  rc: TRect;
  destFile: string;
begin
  if (ImageEnView1.Selected) and (gridResults.DataController.RecordCount > 0) then begin
    mStream := TMemoryStream.Create;
    dStream := TMemoryStream.Create;
    ImageEnView1.Proc.SelCopyToClip(True);
    ImageEnView2.Proc.SelPasteFromClip(True);
    ImageEnView2.Update;
    ImageEnView2.IO.SaveToStreamJpeg(dStream);
    dStream.Position := 0;
    IMAGE_RESULTS_INS.ParamByName('CHECK_ID').Value := gridCheckID.EditValue;
    IMAGE_RESULTS_INS.ParamByName('RESULT_ID').Value := gridResultsID.EditValue;
    IMAGE_RESULTS_INS.ParamByName('RESULT_MAIN').Value := gridResultsITEM_MAIN.EditValue;
    IMAGE_RESULTS_INS.ParamByName('RESULT_SUB').Value := gridResultsRESULT_VALUE.EditValue;
    IMAGE_RESULTS_INS.ParamByName('RESULT_LEVEL').Value := gridResultsRESULT_LEVEL.EditValue;
    IMAGE_RESULTS_INS.ParamByName('RESULT_IMAGE').LoadFromStream(dStream, ftBlob);
    IMAGE_RESULTS_INS.ExecProc;
    ShowMessage('결과이미지가 저장되었습니다.');
  end else begin
    ShowMessage('결과이미지는 선택한 영역만을 저장합니다.' + #13#10 +
      '이미지의 영역과 평가결과를 선택한 후 다시하세요.'
    );
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

procedure TfmStaticCheck.btnSelRectClick(Sender: TObject);
begin
  ImageEnView1.MouseInteractGeneral := [miSelect];
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
//  Screen.Cursor := crHourGlass;
//  fmMemberSelect := TfmMemberSelect.Create(Self);
//  try
//    fmMemberSelect.ShowModal;
//    if fmMemberSelect.ModalResult = mrOk then begin
//      ShowProcessMsg('자료 추출중...', '', 1);
//      RetrieveMemberInfo;
//    end;
//  finally
//    fmMemberSelect.Free;
//    ShowProcessMsg('', '', 0);
//    Screen.Cursor := crDefault;
//  end;
end;

procedure TfmStaticCheck.RetrieveCheckResult;
begin
  dmDBCommon.q_NSTATIC_CHECK_DATA.ParamByName('customer_uid').Value := CustomerImages.CustID;
  dmDBCommon.q_NSTATIC_CHECK_DATA.Active := True;
  dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;

  dmDBCommon.q_NSTATIC_CHECK_RESULT.ParamByName('DATA_ID').Value := dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.FieldByName('id').Value;
  dmDBCommon.q_NSTATIC_CHECK_RESULT.Active := True;
  dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
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

procedure TfmStaticCheck.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmStaticCheck.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if LIST_LOADED then
    RetrieveResultImage;
end;

procedure TfmStaticCheck.gridMainFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  q_check_item_sub.ParamByName('p_id').Value := q_check_item_treeID.Value;
  q_check_item_sub.Open;
  d_check_item_sub.DataSet.Refresh;
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
var
  field_name : string;
begin
  field_name := TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName;
  if field_name = UpperCase('RESULT_LEVEL') then begin
    btnChangeLevel.Click;
  end else if field_name = UpperCase('DIRECTION_KIND') then begin
    ChangeDirection;
  end else begin
    btnShowImage.Click;
  end;
end;

procedure TfmStaticCheck.gridResultsFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if (gridResults.DataController.RecordCount > 0) and (gridResultsRESULT_VALUE.EditValue > 0) then begin
    NSTATIC_RESULT_PRACTICE_SEL.ParamByName('r_id').AsInteger := gridResultsID.EditValue;
    NSTATIC_RESULT_PRACTICE_SEL.Active := True;
    ds_NSTATIC_RESULT_PRACTICE_SEL.DataSet.Refresh;
  end else begin
    NSTATIC_RESULT_PRACTICE_SEL.ParamByName('r_id').AsInteger := 0;
    NSTATIC_RESULT_PRACTICE_SEL.Active := True;
    ds_NSTATIC_RESULT_PRACTICE_SEL.DataSet.Refresh;
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

procedure TfmStaticCheck.chkSizePropertiesEditValueChanged(Sender: TObject);
begin
  if chkSize.Checked then begin
    ImageEnMView1.GridWidth := 1;
    ImageEnMView1.ThumbHeight := -1;
    ImageEnMView1.ThumbWidth := -1;
  end else begin
    ImageEnMView1.GridWidth := 2;
    ImageEnMView1.ThumbHeight := 140;
    ImageEnMView1.ThumbWidth := -1;
  end;
  ImageEnMView1Resize(Sender);
end;

procedure TfmStaticCheck.ColorBoxPropertiesChange(Sender: TObject);
begin
  AssignControlValues;
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

procedure TfmStaticCheck.btnCheckBodyClick(Sender: TObject);
const
  wTitle = '측정부위';
begin
  fmCheckStaticItem := TfmCheckStaticItem.Create(Self);
  try
    fmCheckStaticItem.BODY_ID := (Sender as TcxButton).Tag;
    fmCheckStaticItem.gbCheckItem.Caption := wTitle + ' - [' + (Sender as TcxButton).Caption + ']';
    fmCheckStaticItem.ShowModal;
  finally
    fmCheckStaticItem.Free;
  end;
end;

procedure TfmStaticCheck.SaveResultData;
const
  msg = '에러!, 중복데이터입니다.';
var
  cid : Integer;
begin
  q_check_same_data.ParamByName('d_id').Value := dmDBCommon.q_NSTATIC_CHECK_DATAID.Value;
  q_check_same_data.ParamByName('m_id').Value := fmCheckStaticItem.ITEM_ID;
  q_check_same_data.ParamByName('r_id').Value := fmCheckStaticItem.RESULT_ID;
  q_check_same_data.Open;
  d_check_same_data.DataSet.Refresh;
  cid := q_check_same_dataID.Value;
  if cid > 0 then begin
    ShowMessage(IntToStr(cid) + ' : ' + msg);
    Exit;
  end else begin
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('DATA_ID').Value := dmDBCommon.q_NSTATIC_CHECK_DATAID.Value;
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('ITEM_MAIN').Value := fmCheckStaticItem.ITEM_ID;
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('ITEM_SUBITEM').Value := 0;
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('RESULT_VALUE').Value := fmCheckStaticItem.RESULT_ID;
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('PRACTICE_ID').Value := '';
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('RESULT_LEVEL').Value := fmCheckStaticItem.RESULT_LEVEL;
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('DIRECTION_KIND').Value := fmCheckStaticItem.DIRECTION;
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('IMAGE_ID').Value := IMAGE_IDX[ImageEnMView1.SelectedImage];
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ParamByName('R_GUID').Value := GetUniqInt64;
    dmDBCommon.NSTATIC_CHECK_RESULT_INS.ExecProc;
    dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Refresh;
    dmDBCommon.d_NSTATIC_CHECK_RESULT.DataSet.Last;
    InsertPracticeData;
    ShowMessage('자료가 저장되었습니다.');
  end;
end;

procedure TfmStaticCheck.btnShowImageClick(Sender: TObject);
var
  mStream : TMemoryStream;
  focus_row : Integer;
begin
  fmCheckImageViewer := TfmCheckImageViewer.Create(Self);
  mStream := TMemoryStream.Create;
  try
    focus_row := gridResults.DataController.GetFocusedRecordIndex;
    fmCheckImageViewer.RESULT_LEVEL := gridResultsRESULT_LEVEL.EditValue;
    fmCheckImageViewer.PanelMsg.Caption := 
        gridResults.DataController.GetDisplayText(focus_row, gridResultsITEM_MAIN.Index) + ' - ' +
        gridResults.DataController.GetDisplayText(focus_row, gridResultsRESULT_VALUE.Index) + '(' +
        gridResults.DataController.GetDisplayText(focus_row, gridResultsRESULT_LEVEL.Index) + ')';
    IMAGE_RESULTS_SEL.ParamByName('RESULTID').Value := gridResultsID.EditValue;
    IMAGE_RESULTS_SEL.Open;
    ds_IMAGE_RESULTS_SEL.DataSet.Refresh;
    if IMAGE_RESULTS_SEL.RecordCount > 0 then begin
      IMAGE_RESULTS_SELRESULT_IMAGE.SaveToStream(mStream);
      mStream.Position := 0;
      fmCheckImageViewer.ImageEnView1.IO.LoadFromStreamJpeg(mStream);
      fmCheckImageViewer.ShowModal;
    end else begin
      ShowMessage('저장된 결과 이미지가 없습니다.');
    end;
  finally
    fmCheckImageViewer.Free;
  end;
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

end.
