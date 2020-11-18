unit UfmCompareList2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, IniFiles,
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
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, Menus, imageen,
  imageenview, ievect, cxButtons, StdCtrls, ExtCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, ieview, iemview, Uni, MemDS, DBAccess,
  VirtualTable, cxLabel, cxDBLabel, DBClient, Provider, UniProvider,
  InterBaseUniProvider, Registry, dxmdaset, frxClass, frxDBSet, ieopensavedlg,
  ImgList, ActnList, ComCtrls, hyiedefs, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, hyieutils,
  cxTrackBar, dxZoomTrackBar, cxMaskEdit, cxSpinEdit, imageenio, iexActionsMulti,
  UfrmMemberSelect, cxCalendar, UfrmImageEnVect, WebImage, iexHelperFunctions,
  BMDThread, UfrmImages, cxImageComboBox, UfrmImageMultiView, iexDBBitmaps,
  iexBitmaps, iesettings, iexLayers, iexRulers, iexToolbars, cxDropDownEdit,
  cxSplitter, dxBarBuiltInMenu, cxPC, cxDBLookupComboBox, cxCheckBox,
  cxRadioGroup, dxtree, dxdbtree, uShapeProps, uLineProps, uTextProps,
  cxColorComboBox, cxFontNameComboBox, iexActionsLayers, iexActions;

type
  TfmCompareList2 = class(TForm)
    pnlMember: TPanel;
    compareGroupLeftTop: TcxGroupBox;
    gbMember: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    edtName: TEdit;
    btnFindMember: TBitBtn;
    pnlNo: TPanel;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    btnFavorite: TBitBtn;
    btnRefresh: TBitBtn;
    btnLatelySelect: TBitBtn;
    gbPictList: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckP_DATE: TcxGridDBColumn;
    gridCheckCNT: TcxGridDBColumn;
    gridCheckCUST_ID: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    pnlPictureButton: TPanel;
    btnDel: TBitBtn;
    ImageEnView1: TImageEnView;
    Panel1: TPanel;
    PanelButtons: TPanel;
    Label1: TLabel;
    edtTrackBar: TcxSpinEdit;
    btnDelete: TcxButton;
    btnEditImage: TcxButton;
    ImageEnMView1: TImageEnMView;
    PanelMessage: TPanel;
    Label2: TLabel;
    btnAddMulti: TBitBtn;
    OpenImageEnDialog1: TOpenImageEnDialog;
    PanelRight: TPanel;
    btnCompareWin: TcxButton;
    btnCompareLayer: TcxButton;
    btnCapture: TcxButton;
    cxSplitter1: TcxSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Panel2: TPanel;
    btnDeleteLayerAll: TBitBtn;
    btnReport: TBitBtn;
    ImageEnVect1Print: TImageEnVect;
    Panel3: TPanel;
    pgcCompareFrame: TPanel;
    pnlCompareFrameLeft: TPanel;
    cxGroupBox2: TcxGroupBox;
    ImageEnVectComp1: TImageEnVect;
    compareGroupLeftBottom: TcxGroupBox;
    ImageEnVectComp2: TImageEnVect;
    pnlCompareFrameRight: TPanel;
    compareGroupRightTop: TcxGroupBox;
    ImageEnVectComp3: TImageEnVect;
    compareGroupRightBottom: TcxGroupBox;
    ImageEnVectComp4: TImageEnVect;
    BitBtn1: TBitBtn;
    btnStaticCheck: TcxButton;
    cxGroupBox3: TcxGroupBox;
    cxImageList1: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleNormal: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    ImageList1: TImageList;
    ImageListThumbnail: TImageList;
    SaveImageEnDialog1: TSaveImageEnDialog;
    btnLayerList: TcxButton;
    btnWindowList: TcxButton;
    btnDelWin: TcxButton;
    cxButton7: TcxButton;
    btnSaveWin: TcxButton;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    dxMemData: TdxMemData;
    dxMemDataImage1: TBlobField;
    dxMemDataImage2: TBlobField;
    dxMemDataImage3: TBlobField;
    dxMemDataImage4: TBlobField;
    dxMemDataImage1Date: TStringField;
    dxMemDataImage2Date: TStringField;
    dxMemDataImage3Date: TStringField;
    dxMemDataImage4Date: TStringField;
    dxMemDatamember_name: TStringField;
    dxMemDatamember_no: TStringField;
    ImageEnVect3Print: TImageEnVect;
    ImageEnVect2Print: TImageEnVect;
    ImageEnVect4Print: TImageEnVect;
    LayerWindow: TImageEnView;
    btnSaveLayers: TBitBtn;
    btnArrow: TBitBtn;
    btnSelRect: TBitBtn;
    btnSelCopy: TBitBtn;
    cxButton1: TcxButton;
    btnLatlist: TBitBtn;
    btnSave: TcxButton;
    icbDrawingTool: TcxImageComboBox;
    btnBackward: TBitBtn;
    btnForward: TBitBtn;
    ColorBox: TcxColorComboBox;
    speLineThick: TcxSpinEdit;
    FontDialog1: TFontDialog;
    btnFont: TBitBtn;
    btnHelp: TBitBtn;
    btnMatchWidth: TBitBtn;
    btnMatchHeight: TBitBtn;
    ActionList1: TActionList;
    ImageEnViewLayersMatchWidth1: TImageEnViewLayersMatchWidth;
    ImageEnViewLayersMatchHeight1: TImageEnViewLayersMatchHeight;
    btnTrim: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmImageMultiView1ImageEnMView1DblClick(Sender: TObject);
    procedure btnFindMemberClick(Sender: TObject);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnLatelySelectClick(Sender: TObject);
    procedure btnFavoriteClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditImageClick(Sender: TObject);
    procedure ImageEnMView1AfterEvent(Sender: TObject; Event: TIEAfterEvent);
    procedure ImageEnMView1DblClick(Sender: TObject);
    procedure ImageEnMView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ImageEnMView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnMView1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ImageEnMView1ImageSelect(Sender: TObject; idx: Integer);
    procedure ImageEnMView1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnAddMultiClick(Sender: TObject);
    procedure btnCaptureClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCompareLayerClick(Sender: TObject);
    procedure btnCompareWinClick(Sender: TObject);
    procedure ImageEnVect1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ImageEnVect1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp3DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp4DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxPageControl1Resize(Sender: TObject);
    procedure btnStaticCheckClick(Sender: TObject);
    procedure btnLayerListClick(Sender: TObject);
    procedure btnWindowListClick(Sender: TObject);
    procedure btnDelWinClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure btnDeleteLayerAllClick(Sender: TObject);
    procedure btnSaveWinClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtNameExit(Sender: TObject);
    procedure BMDThread1Start(Sender: TObject; Thread: TBMDExecuteThread;
      var Data: Pointer);
    procedure BMDThread1Terminate(Sender: TObject; Thread: TBMDExecuteThread;
      var Data: Pointer);
    procedure LayerWindowDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure LayerWindowDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure btnSaveLayersClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LayerWindowUserInteraction(Sender: TObject;
      Event: TIEUserInteractionEvent; Info: Integer);
    procedure btnArrowClick(Sender: TObject);
    procedure btnSelRectClick(Sender: TObject);
    procedure btnSelCopyClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnLatlistClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtTrackBarPropertiesEditValueChanged(Sender: TObject);
    procedure icbDrawingToolPropertiesCloseUp(Sender: TObject);
    procedure LayerWindowNewLayer(Sender: TObject; LayerIdx: Integer;
      LayerKind: TIELayerKind);
    procedure btnForwardClick(Sender: TObject);
    procedure btnBackwardClick(Sender: TObject);
    procedure speLineThickPropertiesChange(Sender: TObject);
    procedure ColorBoxPropertiesChange(Sender: TObject);
    procedure btnFontClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btnMatchWidthClick(Sender: TObject);
    procedure btnMatchHeightClick(Sender: TObject);
    procedure btnTrimClick(Sender: TObject);
  private
    fShapeProps: TShapeProps;
    fLineProps : TLineProps;
    fTextProps : TTextProps;
    fCurrentImage: TIEBitmap;

    procedure RetrieveMemberInfo;
    procedure RetrieveThumbnailList;
    procedure ResizeCompareWindows;
    procedure RetrieveCompareWindows;
    procedure RetrieveCompareWindowThumbnail;
    procedure RetrieveCompareImage(image_id: string; ImageEnVect: TImageEnVect);
    procedure AssignControlValues;
    procedure RefreshControls;
    { Private declarations }
  public
    { Public declarations }
    fUpdating : Boolean;
    fDragInsertPos : integer;
    IMAGE_IDX : Integer;  //image sequence
    IMAGE_ID : Integer;   //image order index
    CheckOldID : string;
    CheckDataID : Integer;
    PICTURE_LOADED : Boolean;
    LIST_LOADED : Boolean;
    fDBMultiBitmap : TIEDBMultiBitmap;
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    IMAGE_NAME1, IMAGE_NAME2, IMAGE_NAME3, IMAGE_NAME4 : string;
    IMAGE_ID1, IMAGE_ID2, IMAGE_ID3, IMAGE_ID4 : Integer;
    ImageEnVect : array[0..3] of TImageEnVect;
    COMPARE_LAYER_ID : Integer;
    LayersCurrent : Integer;

    procedure RetrieveCompareLayers;
end;

var
  fmCompareList2: TfmCompareList2;

implementation

uses GlobalVar, uCommonLogic, UfmAnalyseRequestSelect, UdmDBCommon,
  uMemberSelect, UfmMemberLastSelect, uMemberFavorite, uMemberEditView,
  UfmCustomerHistory, UfmPostureEditor2, uCapture,
  UfmDateSelector, UfmCheckCommennts, uPlayer, UfmPracticeMethodSingle,
  ufmStaticResultView, UfmCheckImageViewer, UfmHowToSingle, UfmCompareLayerList,
  UfmCompareComment, UfmCompareWindowList, UfmImportImages, UfmStaticCheck, UfmSearchResults, UfmMuscleView, UfmCustomerRecent, UfmPictureZoom;

{$R *.dfm}

// refresh controls with the layer content
procedure TfmCompareList2.RefreshControls();
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
  with LayerWindow do begin
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
    //if isLineLayer then
    //  with TIELineLayer( CurrentLayer ) do begin
    //    cmbLabel.ItemIndex := ord( LabelPosition );
    //    cmbStartShape.ItemIndex := ord( StartShape );
    //    cmbEndShape.ItemIndex := ord( EndShape );
    //    updShapeSize.Position := ShapeSize;
    //  end;
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

// Apply our control values to the current layer
procedure TfmCompareList2.AssignControlValues();
begin
  if fUpdating then
    exit;
  with LayerWindow do begin
    // SHARED STYLE PROPERTIES
    CurrentLayer.BorderColor := clRed;
    CurrentLayer.BorderWidth := speLineThick.Value;
    CurrentLayer.FillColor   := clYellow;
    // LINE PROPERTIES
    if CurrentLayer is TIELineLayer then
      with TIELineLayer( CurrentLayer ) do begin
        BorderColor := ColorBox.ColorValue;
        BorderWidth := speLineThick.Value;
        LabelPosition := TIELineLabelPos(0); //hide
        StartShape := TIELineEndShape(0); //none
        EndShape := TIELineEndShape(0);   //none
        ShapeSize := 20;
      end;
    // POLYLINE PROPERTIES
    if CurrentLayer is TIEPolylineLayer then
      with TIEPolylineLayer( CurrentLayer ) do begin
        // Don't close polyline until we finish creating it
        // PolylineClosed := chkPolylineClosed.checked;
      end;
    // ANGLE PROPERTIES
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
        //Text := DateToStr(gridCheckP_DATE.EditValue);
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
  end;
  LayerWindow.Update();
end;

procedure TfmCompareList2.BitBtn1Click(Sender: TObject);
var
  mStream1, mStream2, mStream3, mStream4 : TMemoryStream;
begin
  mStream1 := TMemoryStream.Create;
  mStream2 := TMemoryStream.Create;
  mStream3 := TMemoryStream.Create;
  mStream4 := TMemoryStream.Create;
  try
    ImageEnVect1Print.Proc.Clear;
    ImageEnVect1Print.RemoveAllObjects;
    ImageEnVect2Print.Proc.Clear;
    ImageEnVect2Print.RemoveAllObjects;
    ImageEnVect3Print.Proc.Clear;
    ImageEnVect3Print.RemoveAllObjects;
    ImageEnVect4Print.Proc.Clear;
    ImageEnVect4Print.RemoveAllObjects;

    if not ImageEnVectComp1.IsEmpty then begin
      ImageEnVect1Print.IEBitmap.Assign(ImageEnVectComp1.IEBitmap);
      ImageEnVectComp1.CopyAllObjectsTo(ImageEnVect1Print);
      ImageEnVect1Print.CopyObjectsToBack(True);
      ImageEnVect1Print.IO.SaveToStreamJpeg(mStream1);
      mStream1.Position := 0;
    end;
    if not ImageEnVectComp2.IsEmpty then begin
      ImageEnVect2Print.IEBitmap.Assign(ImageEnVectComp2.IEBitmap);
      ImageEnVectComp2.CopyAllObjectsTo(ImageEnVect2Print);
      ImageEnVect2Print.CopyObjectsToBack(True);
      ImageEnVect2Print.IO.SaveToStreamJpeg(mStream2);
      mStream2.Position := 0;
    end;
    if not ImageEnVectComp3.IsEmpty then begin
      ImageEnVect3Print.IEBitmap.Assign(ImageEnVectComp3.IEBitmap);
      ImageEnVectComp3.CopyAllObjectsTo(ImageEnVect3Print);
      ImageEnVect3Print.CopyObjectsToBack(True);
      ImageEnVect3Print.IO.SaveToStreamJpeg(mStream3);
      mStream3.Position := 0;
    end;
    if not ImageEnVectComp4.IsEmpty then begin
      ImageEnVect4Print.IEBitmap.Assign(ImageEnVectComp4.IEBitmap);
      ImageEnVectComp4.CopyAllObjectsTo(ImageEnVect4Print);
      ImageEnVect4Print.CopyObjectsToBack(True);
      ImageEnVect4Print.IO.SaveToStreamJpeg(mStream4);
      mStream4.Position := 0;
    end;
    dxMemData.Close;
    dxMemData.Active := True;
    dxMemData.Append;
    TBlobField(dxMemData.FieldByName('image1')).LoadFromStream(mStream1);
    TBlobField(dxMemData.FieldByName('image2')).LoadFromStream(mStream2);
    TBlobField(dxMemData.FieldByName('image3')).LoadFromStream(mStream3);
    TBlobField(dxMemData.FieldByName('image4')).LoadFromStream(mStream4);
    dxMemDataImage1Date.AsString := IMAGE_DATE1;
    dxMemDataImage2Date.AsString := IMAGE_DATE2;
    dxMemDataImage3Date.AsString := IMAGE_DATE3;
    dxMemDataImage4Date.AsString := IMAGE_DATE4;
    dxMemDatamember_name.AsString := CustomerImages.CustName;
    dxMemDatamember_no.AsString := CustomerImages.CustTel;

    //UpdatePrintTempData;

    dxMemData.Post;
    frxReport.LoadFromFile(gsDefaultFolder + 'ReportCompare.fr3');
    frxReport.ShowReport;
  finally
    mStream1.Free;
    mStream2.Free;
    mStream3.Free;
    mStream4.Free;
  end;
end;

procedure TfmCompareList2.BMDThread1Start(Sender: TObject;
  Thread: TBMDExecuteThread; var Data: Pointer);
begin
  Screen.Cursor := crHourGlass;
end;

procedure TfmCompareList2.BMDThread1Terminate(Sender: TObject;
  Thread: TBMDExecuteThread; var Data: Pointer);
begin
  Screen.Cursor := crArrow;
end;

procedure TfmCompareList2.btnAddMultiClick(Sender: TObject);
var
  i, cnt, dcnt, idx : Integer;
  img_name, org_name : string;
  mStream : TMemoryStream;
begin
  fmImportImages := TfmImportImages.Create(Self);
  try
    fmImportImages.ShowModal;
    if fmImportImages.ModalResult = mrOk then begin
      PanelMessage.Visible := True;
      PanelMessage.Caption := '사진자료 업로드중...';
      PanelMessage.Refresh;
      Screen.Cursor := crHourGlass;
      cnt := fmImportImages.OpenImageEnDialog1.Files.Count;
      dcnt := dmDBCommon.IMAGES_SEL_BYDATECNT.Value + 1;
      for i := 0 to cnt - 1 do begin
        mStream := TMemoryStream.Create;
        org_name := fmImportImages.OpenImageEnDialog1.Files[i];
        if dmDBCommon.IMAGES_SEL_BYDATEP_DATE.Value = fmImportImages.edtSaveDate.Date then begin
          idx := dcnt + i;
        end else begin
          idx := i + 1;
        end;
        mStream.LoadFromFile(org_name);
        mStream.Position := 0;
        dmDBCommon.IMAGES_INS.ParamByName('CUST_ID').Value := CustomerImages.CustID;
        dmDBCommon.IMAGES_INS.ParamByName('P_DATE').Value := fmImportImages.edtSaveDate.Date;
        dmDBCommon.IMAGES_INS.ParamByName('IMAGE_DATA').LoadFromStream(mStream, ftBlob);
        dmDBCommon.IMAGES_INS.ParamByName('DRAW_DATA').Clear;
        dmDBCommon.IMAGES_INS.ParamByName('IDX').Value := idx;
        dmDBCommon.IMAGES_INS.ExecProc;
        mStream.Free;
      end;
      RetrieveMemberInfo;
      //dmDBCommon.IMAGES_SEL.Last;
      //RetrieveThumbnailList;
      //BMDThread1.Start;
      gridCheck.DataController.GotoLast;
      Screen.Cursor := crArrow;
      PanelMessage.Visible := False;
    end;
  finally
    fmImportImages.Free;
  end;
end;

procedure TfmCompareList2.btnArrowClick(Sender: TObject);
begin
  LayerWindow.MouseInteractLayers := [mlMoveLayers, mlResizeLayers, mlRotateLayers, mlEditLayerPoints];
//  LayerWindow.Update();
end;

procedure TfmCompareList2.btnBackwardClick(Sender: TObject);
var
  cnt : Integer;
begin
  if LayerWindow.CurrentLayer.LayerIndex > 1 then
    LayerWindow.CurrentLayer.LayerIndex := LayerWindow.CurrentLayer.LayerIndex - 1;
end;

procedure TfmCompareList2.btnSaveClick(Sender: TObject);
var
  i, id, cnt, idx : Integer;
begin
  cnt := ImageEnMView1.ImageCount;
  for i := 0 to cnt - 1 do begin
    id := ImageEnMView1.ImageTag[i];
    dmDBCommon.IMAGES_UPD_IDX.ParamByName('ID').Value := id;
    dmDBCommon.IMAGES_UPD_IDX.ParamByName('IDX').Value := i + 1;
    dmDBCommon.IMAGES_UPD_IDX.ExecProc;
  end;
  dmDBCommon.ds_IMAGES_SEL.DataSet.Refresh;
end;

procedure TfmCompareList2.btnSaveLayersClick(Sender: TObject);
begin
  if SaveImageEnDialog1.Execute then
    LayerWindow.LayersSaveMergedTo( SaveImageEnDialog1.Filename );
end;

procedure TfmCompareList2.btnCaptureClick(Sender: TObject);
begin
  if CustomerImages.CustID <> '' then begin
    fmCapture := TfmCapture.Create(Self);
    fmCapture.Show;
  end;
end;

procedure TfmCompareList2.btnCompareLayerClick(Sender: TObject);
begin
  if PanelRight.Width > 1 then begin
    if cxPageControl1.ActivePageIndex = 0 then begin
      PanelRight.Width := 1;
    end else begin
      PanelRight.Width := (ClientWidth - pnlMember.Width - 300);
      cxPageControl1.ActivePageIndex := 0;
    end;
  end else begin
    cxPageControl1.ActivePageIndex := 0;
    PanelRight.Width := (ClientWidth - pnlMember.Width - 300);
    dmDBCommon.IMAGE_LAYERS_SEL.ParamByName('M_ID').Value := CustomerImages.CustID;
    dmDBCommon.IMAGE_LAYERS_SEL.Open;
    dmDBCommon.ds_IMAGE_LAYERS_SEL.DataSet.Refresh;
  end;
end;

procedure TfmCompareList2.btnCustInfoClick(Sender: TObject);
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

procedure TfmCompareList2.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('CUST_ID').Value := CustomerImages.CustID;
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('P_DATE').Value := gridCheckP_DATE.EditValue;
    dmDBCommon.IMAGES_DEL_DATE.ExecProc;
    dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
  end;
end;

procedure TfmCompareList2.btnDeleteClick(Sender: TObject);
var
  id, idx : Integer;
  pdate : TDateTime;
begin
  try
    if ImageEnMView1.ImageCount > 0 then begin
      if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
        + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
        IDYES then
      begin
        pdate := dmDBCommon.IMAGES_SEL_BYDATEP_DATE.Value;
        idx := ImageEnMView1.SelectedImage;
        id := ImageEnMView1.ImageTag[idx];
        dmDBCommon.IMAGES_DEL.ParamByName('ID').Value := id;
        dmDBCommon.IMAGES_DEL.ExecProc;
        ImageEnMView1.DeleteSelectedImages;
        dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
        dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Locate('P_DATE', pdate, []);
      end;
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfmCompareList2.btnDeleteLayerAllClick(Sender: TObject);
begin
  LayerWindow.ClearAll;
end;

procedure TfmCompareList2.btnDelWinClick(Sender: TObject);
begin
  ImageEnVectComp1.ClearAll;
  ImageEnVectComp2.ClearAll;
  ImageEnVectComp3.ClearAll;
  ImageEnVectComp4.ClearAll;
end;

procedure TfmCompareList2.btnEditImageClick(Sender: TObject);
var
  mStream, dStream : TMemoryStream;
begin
  if ImageEnMView1.ImageCount > 0 then begin
    fmPostureEditor2 := TfmPostureEditor2.Create(Self);
    mStream := TMemoryStream.Create;
    dStream := TMemoryStream.Create;
    try
      dmDBCommon.IMAGES_SEL.Locate('ID', CustomerImages.ImageID, []);
      fmPostureEditor2.SetImageIndex(IMAGE_IDX);
      fmPostureEditor2.frmImageEditor21.ImageEnVect1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(IMAGE_IDX));
      dmDBCommon.IMAGES_SELDRAW_DATA.SaveToStream(dStream);
      if dStream.Size > 10 then begin
        dStream.Position := 0;
        fmPostureEditor2.frmImageEditor21.ImageEnVect1.LoadFromStreamIEV(dStream);
      end;
      fmPostureEditor2.ShowModal;
      if fmPostureEditor2.ModalResult = mrOk then begin
        if fmPostureEditor2.frmImageEditor21.IMAGE_CHANGED = True then begin
          ImageEnMView1.SetIEBitmap(IMAGE_IDX, fmPostureEditor2.frmImageEditor21.ImageEnVect1.IEBitmap);
          ImageEnMView1.Update;
        end;
      end;
    finally
      fmPostureEditor2.Free;
    end;
  end;
end;

procedure TfmCompareList2.btnFavoriteClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberFavorite := TfmMemberFavorite.Create(Self);
  try
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberFavorite.Top := pt.Y;
    fmMemberFavorite.Left := pt.X;
    fmMemberFavorite.ShowModal;
    if fmMemberFavorite.ModalResult = mrOk then begin
      RetrieveMemberInfo;
      if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
    end;
  finally
    fmMemberFavorite.Free;
  end;
end;

procedure TfmCompareList2.btnFindMemberClick(Sender: TObject);
var
  search_str : string;
  found_cnt : Integer;
  pt : TPoint;
begin
  //search_str := '%' + edtName.Text + '%';
  search_str := edtName.Text;
  if edtName.Text = '' then begin
    fmMemberSelect := TfmMemberSelect.Create(Self);
    try
      fmMemberSelect.ShowModal;
      if fmMemberSelect.ModalResult = mrOk then begin
        RetrieveMemberInfo;
        if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
      end;
    finally
      fmMemberSelect.Free;
    end;
  end else begin
    dmDBCommon.SelectMember(search_str);
    found_cnt := dmDBCommon.CUSTOMER_SEARCH.RecordCount;
    LIST_LOADED := False;
    if found_cnt = 0 then begin
      ShowMessage('등록된 자료가 없습니다.');
      edtName.SetFocus;
      Exit;
    end else
    if found_cnt = 1 then begin
      CustomerImages.CustID := dmDBCommon.CUSTOMER_SEARCHUID.Value;
      CustomerImages.CustName := dmDBCommon.CUSTOMER_SEARCHCNAME.Value;
      CustomerImages.CustTel := dmDBCommon.CUSTOMER_SEARCHCTEL.Value;
      CustomerImages.CustSex := StrToInt(dmDBCommon.CUSTOMER_SEARCHSEX.Value);
      RetrieveMemberInfo;
      if gridCheck.DataController.RecordCount > 0 then
        LIST_LOADED := True;
    end;
    if found_cnt > 1 then begin
      fmSearchResults := TfmSearchResults.Create(Self);
      try
        pt.x := 10;
        pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
        pt := Self.ClientToScreen(pt);
        fmSearchResults.Top := pt.Y;
        fmSearchResults.Left := pt.X;
        Screen.Cursor := crHourGlass;
        fmSearchResults.ShowModal;
        if fmSearchResults.ModalResult = mrOk then begin
          CustomerImages.CustID := dmDBCommon.CUSTOMER_SEARCHUID.Value;
          CustomerImages.CustName := dmDBCommon.CUSTOMER_SEARCHCNAME.Value;
          CustomerImages.CustTel := dmDBCommon.CUSTOMER_SEARCHCTEL.Value;
          CustomerImages.CustSex := StrToInt(dmDBCommon.CUSTOMER_SEARCHSEX.Value);
          RetrieveMemberInfo;
          if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
        end;
      finally
        fmSearchResults.Free;
      end;
    end;
  end;
end;

procedure TfmCompareList2.btnFontClick(Sender: TObject);
begin
  if FontDialog1.Execute then
    AssignControlValues;
end;

procedure TfmCompareList2.btnForwardClick(Sender: TObject);
var
  cnt : Integer;
begin
  if LayerWindow.CurrentLayer.LayerIndex < LayerWindow.LayersCount then
    LayerWindow.CurrentLayer.LayerIndex := LayerWindow.CurrentLayer.LayerIndex + 1;
end;

procedure TfmCompareList2.btnHelpClick(Sender: TObject);
var
  msgHelp : string;
begin
  msgHelp := 'Cursor: 선택한 레이어를 이동(쉬프트키를 누르면 빠르게 이동함)' +
    #13#10 + 'Ctrl+Cursor: 레이어의 사이즈변경' +
    #13#10 + 'Del: 선택한 레이어 삭제' +
    #13#10 + 'F2: 선택한 텍스트 수정' +
    #13#10 + 'Ctrl+Tab: 다음 레이어 선택' +
    #13#10 + 'Ctrl+[, Ctrl+] : 레이어 앞뒤로 이동(쉬프트키 사용가능)' +
    #13#10 + 'Ctrl+<, Ctrl+>: 라인두께, 폰트크기 변경' +
    #13#10 + 'Alt+Enter: 속성창 열기' +
    #13#10 + 'Ctrl+A: 모든 레이어 선택' +
    #13#10 + 'Ctrl+D: 텍스트 폰트창열기' +
    #13#10 + 'Ctrl+B: 텍스트 굵게' +
    #13#10 + 'Ctrl+I: 텍스트 이탤릭' +
    #13#10 + 'Ctrl+U: 텍스트 밑줄' +
    #13#10 + 'Ctrl+L/E/R: 텍스트 왼쪽/가운데/우측 정렬' +
    #13#10 + 'Shift+Ctrl+L/M/R: 텍스트 상/중/하 정렬' +
    #13#10 + 'Ctrl+C/X/V: 복사/자르기/붙여넣기' +
    #13#10 + 'Esc: 취소 또는 창닫기' +
    #13#10 + 'Enter: 다중라인 완료' +
    #13#10 + 'Alt+Mouse: 다중라인에서 선택한 포인트 곡선처리' +
    #13#10 + 'Alt+I: 각도 내경/외경 변경';
  ShowMessage(msgHelp);
end;

procedure TfmCompareList2.btnHistoryClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := CustomerImages.CustID;
    fmCustomerHistory.ShowModal;
  finally
    if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
    fmCustomerHistory.Free;
  end;
end;

procedure TfmCompareList2.RetrieveMemberInfo;
begin
  Screen.Cursor := crHourGlass;
  edtName.Text := CustomerImages.CustName;
  pnlNo.Caption := CustomerImages.CustTel;
  gbMember.Refresh;
  dmDBCommon.IMAGES_SEL_BYDATE.ParamByName('C_ID').Value := CustomerImages.CustID;
  dmDBCommon.IMAGES_SEL_BYDATE.Open;
  dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
  dmDBCommon.IMAGES_SEL_BYDATE.Locate('P_DATE', CustomerImages.PDate, []);
  dmDBCommon.RetrievePictureByDate;
  RetrieveThumbnailList;
  dmDBCommon.InsertLatestCustomer;
  Screen.Cursor := crArrow;
end;

procedure TfmCompareList2.RetrieveThumbnailList;
var
  i, cnt, idx, thumb_id : integer;
  img_name, drw_name : string;
  mStream, dStream : TMemoryStream;
begin
  ImageEnMView1.LockPaint;
  ImageEnMView1.Clear;
  ImageEnMView1.TextTruncSide := iemtsLeft;
  with dmDBCommon do begin
    cnt := IMAGES_SEL.RecordCount;
    IMAGES_SEL.First;
    for i := 0 to cnt - 1 do begin
      mStream := TMemoryStream.Create;
      IMAGES_SELIMAGE_DATA.SaveToStream(mStream);
      if mStream.Size > 10 then begin
        mStream.Position := 0;
        idx := ImageEnMView1.AppendImage;
        ImageEnMView1.SetImageFromStream(idx, mStream);
        ImageEnMView1.ImageTag[idx] := IMAGES_SELID.Value;
        ImageEnMView1.ImageTopText[idx] := IntToStr(IMAGES_SELID.Value);
        ImageEnMView1.ImageFileName[idx] := Format('%2d', [IMAGES_SELIDX.Value]);
      end;
      mStream.Free;
      IMAGES_SEL.Next;
    end;
  end;
  ImageEnMView1.Sort(iesbFilename);
  ImageEnMView1.UnlockPaint;
  ImageEnMView1.SelectedImage := 0;
end;

procedure TfmCompareList2.speLineThickPropertiesChange(Sender: TObject);
begin
  AssignControlValues;
end;

procedure TfmCompareList2.btnLatelySelectClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberLastSelect := TfmMemberLastSelect.Create(Self);
  try
    LIST_LOADED := False;
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberLastSelect.Top := pt.Y;
    fmMemberLastSelect.Left := pt.X;
    fmMemberLastSelect.ShowModal;
    if fmMemberLastSelect.ModalResult = mrOk then begin
      CustomerImages.CustID := dmDBCommon.LATEST_CUSTOMER_SELCUST_ID.Value;
      CustomerImages.CustName := dmDBCommon.LATEST_CUSTOMER_SELCUST_NAME.Value;
      CustomerImages.CustTel := dmDBCommon.LATEST_CUSTOMER_SELCUST_TEL.Value;
      CustomerImages.CustSex := dmDBCommon.LATEST_CUSTOMER_SELCUST_SEX.Value;
      RetrieveMemberInfo;
      if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
    end;
  finally
    fmMemberLastSelect.Free;
  end;
end;

procedure TfmCompareList2.btnLatlistClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmCustomerRecent := TfmCustomerRecent.Create(Self);
  try
    LIST_LOADED := False;
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmCustomerRecent.Top := pt.Y;
    fmCustomerRecent.Left := pt.X;
    fmCustomerRecent.ShowModal;
    if fmCustomerRecent.ModalResult = mrOk then begin
      CustomerImages.CustID := dmDBCommon.CUSTOMER_SEL_RECENT_REGUID.Value;
      CustomerImages.CustName := dmDBCommon.CUSTOMER_SEL_RECENT_REGCNAME.Value;
      CustomerImages.CustTel := dmDBCommon.CUSTOMER_SEL_RECENT_REGCTEL.Value;
      CustomerImages.CustSex := StrToIntDef(dmDBCommon.CUSTOMER_SEL_RECENT_REGSEX.Value, 0);
      RetrieveMemberInfo;
    end;
  finally
    fmCustomerRecent.Free;
  end;
end;

procedure TfmCompareList2.btnLayerListClick(Sender: TObject);
begin
  fmCompareLayerList := TfmCompareLayerList.Create(Self);
  try
    fmCompareLayerList.ShowModal;
    if fmCompareLayerList.ModalResult = mrOk then begin
      COMPARE_LAYER_ID := fmCompareLayerList.gridCompareWinID.EditValue;
      RetrieveCompareLayers;
    end;
  finally
    fmCompareLayerList.Free;
  end;
end;

procedure TfmCompareList2.btnMatchHeightClick(Sender: TObject);
var
  i, cnt, l_width, l_posX : Integer;
  l_lect : TRect;
begin
  cnt := LayerWindow.LayersCount;
  l_posX := 0;
  l_width := LayerWindow.Layers[1].Width;
  for i := 0 to cnt - 1 do begin
    if i > 0 then begin
      LayerWindow.Layers[i].PosX := l_posX;
      LayerWindow.Layers[i].PosY := 0;
      l_posX := l_posX + l_width;
    end;
  end;
  LayerWindow.Update;
end;

procedure TfmCompareList2.btnMatchWidthClick(Sender: TObject);
begin
  LayerWindow.LayersAlign(ilaMatchWidth, -2);
  LayerWindow.LayersAlign(ilaMatchHeight, -2);
end;

procedure TfmCompareList2.RetrieveCompareLayers;
var
  compare_id : string;
  mStream : TMemoryStream;
begin
  Screen.Cursor := crHourGlass;
  mStream := TMemoryStream.Create;
  try
    LayerWindow.LockUpdate;
    LayerWindow.ClearAll;
    dmDBCommon.IMAGE_LAYERS_SEL_IMAGE.ParamByName('ID').Value := COMPARE_LAYER_ID;
    dmDBCommon.IMAGE_LAYERS_SEL_IMAGE.Open;
    dmDBCommon.ds_IMAGE_LAYERS_SEL_IMAGE.DataSet.Refresh;
    dmDBCommon.IMAGE_LAYERS_SEL_IMAGEC_IMAGE.SaveToStream(mStream);
    mStream.Position := 0;
    LayerWindow.IO.LoadFromStreamIEN(mStream);
    LayerWindow.UnlockUpdate;
    LayerWindow.Update;
    LayerWindow.MouseInteractLayers := [mlMoveLayers, mlResizeLayers, mlRotateLayers];
    LayerWindow.FitToHeight;
  finally
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmCompareList2.btnRefreshClick(Sender: TObject);
begin
  RetrieveMemberInfo;
  if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
end;

procedure TfmCompareList2.btnReportClick(Sender: TObject);
begin
//  ImageEnVect1Print.ClearAll;
//  ImageEnVect1Print.CopyAllLayersFrom(LayerWindow, True, True);
//  ImageEnVect1Print.Update;
  //ImageEnVect1Print.CopyObjectsToBack(False);
  LayerWindow.IO.DoPrintPreviewDialog(iedtDialog, 'Layer Analyser', True, '', True);
end;

procedure TfmCompareList2.btnSaveWinClick(Sender: TObject);
begin
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('MEMBER_ID').Value := CustomerImages.CustID;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('MAKE_DATE').Value := Date;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('COMPARE_NAME').Value := 'Noname...';
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE1_ID').Value := IMAGE_ID1;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE2_ID').Value := IMAGE_ID2;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE3_ID').Value := IMAGE_ID3;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE4_ID').Value := IMAGE_ID4;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE1').Value := IMAGE_DATE1;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE2').Value := IMAGE_DATE2;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE3').Value := IMAGE_DATE3;
  dmDBCommon.CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE4').Value := IMAGE_DATE4;
  dmDBCommon.CUST_COMPARE_WIN_INS.ExecProc;
  dmDBCommon.ds_CUST_COMPARE_WIN_SEL.DataSet.Refresh;

end;

procedure TfmCompareList2.btnSelCopyClick(Sender: TObject);
begin
  LayerWindow.LayersCreateFromSelection();
  LayerWindow.MouseInteractLayers := [ mlMoveLayers, mlResizeLayers, mlRotateLayers ];
  LayerWindow.Update();
end;

procedure TfmCompareList2.btnSelRectClick(Sender: TObject);
var
  lyr_sel : Integer;
begin
//  LayerWindow.LayersCurrent := LayerWindow.CurrentLayer.LayerIndex;
  LayerWindow.LayersMergeAll(false);
  LayerWindow.MouseInteractGeneral := [miCropTool];
end;

procedure TfmCompareList2.btnStaticCheckClick(Sender: TObject);
begin
  fmStaticCheck := TfmStaticCheck.Create(Self);
  fmStaticCheck.PICTURE_DATE := gridCheckP_DATE.EditValue;
  fmStaticCheck.Show;
end;

procedure TfmCompareList2.btnTrimClick(Sender: TObject);
var
  mStream, dStream : TMemoryStream;
begin
  if ImageEnMView1.ImageCount > 0 then begin
    fmPictureZoom := TfmPictureZoom.Create(Self);
    try
      fmPictureZoom.Height := ClientHeight;
      mStream := TMemoryStream.Create;
      dmDBCommon.IMAGES_SEL.Locate('ID', CustomerImages.ImageID, []);
      fmPictureZoom.ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(IMAGE_IDX));
      fmPictureZoom.ImageEnView1.Update;
      fmPictureZoom.ShowModal;
      if fmPictureZoom.ModalResult = mrOk then begin
        ImageEnMView1.SetIEBitmap(IMAGE_IDX, fmPictureZoom.ImageEnView1.IEBitmap);
        ImageEnMView1.Update;
        dStream := TMemoryStream.Create;
        fmPictureZoom.ImageEnView1.IO.SaveToStreamJpeg(dStream);
        dStream.Position := 0;
        dmDBCommon.IMAGES_UPD.ParamByName('ID').Value := CustomerImages.ImageID;
        dmDBCommon.IMAGES_UPD.ParamByName('IMAGE_DATA').LoadFromStream(dStream, ftBlob);
        dmDBCommon.IMAGES_UPD.ParamByName('DRAW_DATA').Clear;
        dmDBCommon.IMAGES_UPD.ExecProc;
        dmDBCommon.ds_IMAGES_SEL.DataSet.Refresh;
      end;
    finally
      mStream.Free;
      dStream.Free;
      fmPictureZoom.Free;
    end;
  end;
end;

procedure TfmCompareList2.btnWindowListClick(Sender: TObject);
begin
  fmCompareWindowList := TfmCompareWindowList.Create(Self);
  try
    fmCompareWindowList.ShowModal;
    if fmCompareWindowList.ModalResult = mrOk then begin

      RetrieveCompareWindowThumbnail;
    end;
  finally
    fmCompareWindowList.Free;
  end;
end;

procedure TfmCompareList2.ColorBoxPropertiesChange(Sender: TObject);
begin
  AssignControlValues;
end;

procedure TfmCompareList2.RetrieveCompareWindowThumbnail;
begin
  IMAGE_ID1 := fmCompareWindowList.gridCompareWinIMAGE1_ID.EditValue;
  IMAGE_ID2 := fmCompareWindowList.gridCompareWinIMAGE2_ID.EditValue;
  IMAGE_ID3 := fmCompareWindowList.gridCompareWinIMAGE3_ID.EditValue;
  IMAGE_ID4 := fmCompareWindowList.gridCompareWinIMAGE4_ID.EditValue;
  if IMAGE_ID1 > 0 then begin
    IMAGE_DATE1 := fmCompareWindowList.gridCompareWinIMAGE_DATE1.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID1), ImageEnVectComp1);
  end;
  if IMAGE_ID2 > 0 then begin
    IMAGE_DATE2 := fmCompareWindowList.gridCompareWinIMAGE_DATE2.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID2), ImageEnVectComp2);
  end;
  if IMAGE_ID3 > 0 then begin
    IMAGE_DATE3 := fmCompareWindowList.gridCompareWinIMAGE_DATE3.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID3), ImageEnVectComp3);
  end;
  if IMAGE_ID4 > 0 then begin
    IMAGE_DATE4 := fmCompareWindowList.gridCompareWinIMAGE_DATE4.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID4), ImageEnVectComp4);
  end;
end;

procedure TfmCompareList2.RetrieveCompareImage(image_id : string; ImageEnVect : TImageEnVect);
var
  i : Integer;
  imgStream : TMemoryStream;
begin
  imgStream := TMemoryStream.Create;
  try
    dmDBCommon.IMAGES_SEL_ID.ParamByName('RID').Value := StrToInt(image_id);
    dmDBCommon.IMAGES_SEL_ID.Open;
    dmDBCommon.ds_IMAGES_SEL_ID.DataSet.Refresh;
    dmDBCommon.IMAGES_SEL_IDIMAGE_DATA.SaveToStream(imgStream);
    imgStream.Position := 0;
    ImageEnVect.IO.LoadFromStreamJpeg(imgStream);
    case ImageEnVect.Tag of
      1: compareGroupLeftTop.Caption := '비교화면1 - ' + IMAGE_DATE1;
      2: compareGroupLeftBottom.Caption := '비교화면2 - ' + IMAGE_DATE2;
      3: compareGroupRightTop.Caption := '비교화면3 - ' + IMAGE_DATE3;
      4: compareGroupRightBottom.Caption := '비교화면4 - ' + IMAGE_DATE4;
    end;
  finally
    imgStream.Free;
  end;
end;

procedure TfmCompareList2.btnCompareWinClick(Sender: TObject);
begin
  if PanelRight.Width > 1 then begin
    if cxPageControl1.ActivePageIndex = 1 then begin
      PanelRight.Width := 1;
    end else begin
      PanelRight.Width := (ClientWidth - pnlMember.Width) div 2;
      cxPageControl1.ActivePageIndex := 1;
    end;
  end else begin
    cxPageControl1.ActivePageIndex := 1;
    PanelRight.Width := (ClientWidth - pnlMember.Width) div 2;
    RetrieveCompareWindows;
  end;
end;

procedure TfmCompareList2.RetrieveCompareWindows;
begin
  ImageEnVectComp1.ClearAll;
  ImageEnVectComp2.ClearAll;
  ImageEnVectComp3.ClearAll;
  ImageEnVectComp4.ClearAll;
  dmDBCommon.CUST_COMPARE_WIN_SEL.ParamByName('CUST_ID').Value := CustomerImages.CustID;
  dmDBCommon.CUST_COMPARE_WIN_SEL.Open;
  dmDBCommon.ds_CUST_COMPARE_WIN_SEL.DataSet.Refresh;

end;

procedure TfmCompareList2.cxButton1Click(Sender: TObject);
begin
  fmMuscleView := TfmMuscleView.Create(self);
  fmMuscleView.Show;
end;

procedure TfmCompareList2.cxButton7Click(Sender: TObject);
var
  sVal : string;
  compare_id : string;
  mStream : TMemoryStream;
begin
  fmCompareComment := TfmCompareComment.Create(self);
  mStream := TMemoryStream.Create;
  try
    fmCompareComment.ShowModal;
    if fmCompareComment.ModalResult = mrOk then begin
      Screen.Cursor := crHourGlass;
      LayerWindow.IO.SaveToStreamIEN(mStream);
      mStream.Position := 0;
      dmDBCommon.IMAGE_LAYERS_INS.ParamByName('MEMBER_ID').Value := CustomerImages.CustID;
      dmDBCommon.IMAGE_LAYERS_INS.ParamByName('P_DATE').Value := Date;
      dmDBCommon.IMAGE_LAYERS_INS.ParamByName('C_NAME').Value := fmCompareComment.Edit1.Text;
      dmDBCommon.IMAGE_LAYERS_INS.ParamByName('C_COMMENT').Value := fmCompareComment.Memo1.Text;
      dmDBCommon.IMAGE_LAYERS_INS.ParamByName('C_IMAGE').LoadFromStream(mStream, ftBlob);
      dmDBCommon.IMAGE_LAYERS_INS.ExecProc;
      dmDBCommon.ds_IMAGE_LAYERS_SEL.DataSet.Refresh;
    end;
  finally
    mStream.Free;
    fmCompareComment.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmCompareList2.cxPageControl1Resize(Sender: TObject);
begin
  ResizeCompareWindows;
end;

procedure TfmCompareList2.edtNameExit(Sender: TObject);
begin
  btnFindMember.Click;
end;

procedure TfmCompareList2.edtTrackBarPropertiesEditValueChanged(
  Sender: TObject);
begin
  ImageEnMView1.Zoom := edtTrackBar.Value;
end;

procedure TfmCompareList2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompareList2.FormCreate(Sender: TObject);
begin
  //compare window init...
  ImageEnMView1.EnableAdjustOrientation := True;
  ImageEnMView1.WicFastLoading := True;
  ImageEnMView1.Zoom := edtTrackBar.EditValue;
  ImageEnVect[0] := ImageEnVectComp1;
  ImageEnVect[1] := ImageEnVectComp2;
  ImageEnVect[2] := ImageEnVectComp3;
  ImageEnVect[3] := ImageEnVectComp4;
  ImageEnVectComp1.Blank;
  ImageEnVectComp1.AutoFit := True;
  ImageEnVectComp1.AutoStretch := True;
  ImageEnVectComp2.Blank;
  ImageEnVectComp2.AutoFit := True;
  ImageEnVectComp2.AutoStretch := True;
  ImageEnVectComp3.Blank;
  ImageEnVectComp3.AutoFit := True;
  ImageEnVectComp3.AutoStretch := True;
  ImageEnVectComp4.Blank;
  ImageEnVectComp4.AutoFit := True;
  ImageEnVectComp4.AutoStretch := True;

  CompareFile1 := '';
  CompareFile2 := '';
  CompareFile3 := '';
  CompareFile4 := '';

  fShapeProps   := nil;
  fLineProps    := nil;
  fTextProps    := nil;
  fCurrentImage := nil;
  if dmDBCommon.NPRACTICE_SEL.Active = False then
    dmDBCommon.NPRACTICE_SEL.Active := True;

  if dmDBCommon.t_NPRACTICE_look.Active = False then
    dmDBCommon.t_NPRACTICE_look.Active := True;

  dmDBCommon.CHECK_ITEM_TREE_BODY_SEL.Active := True;
  dmDBCommon.d_CHECK_ITEM_TREE_BODY_SEL.DataSet.Refresh;
  dmDBCommon.CHECK_ITEM_TREE_RESULT_SEL.Active := True;
  dmDBCommon.d_CHECK_ITEM_TREE_RESULT_SEL.DataSet.Refresh;

  dmDBCommon.q_CHECK_ITEM_TREE.Active := True;
  dmDBCommon.d_CHECK_ITEM_TREE.DataSet.Refresh;

  cxPageControl1.Properties.HideTabs := True;
  cxPageControl1.ActivePageIndex := 0;
  PanelRight.Width := 1;
end;

procedure TfmCompareList2.FormDestroy(Sender: TObject);
begin
  FreeAndNil( fShapeProps   );
  FreeAndNil( fLineProps    );
  FreeAndNil( fTextProps    );
  FreeAndNil( fCurrentImage );
end;

procedure TfmCompareList2.FormResize(Sender: TObject);
begin
  PanelMessage.Top := (Panel1.Height div 2) - (PanelMessage.Height div 2);
  PanelMessage.Left := (Panel1.Width div 2) - (PanelMessage.Width div 2);
  //compare window size...
  ResizeCompareWindows;
  LayerWindow.IEBitmap.Allocate(LayerWindow.Width * 4, LayerWindow.Height);
end;

procedure TfmCompareList2.ResizeCompareWindows;
begin
  pnlCompareFrameLeft.Width := pgcCompareFrame.width div 2;
  compareGroupLeftBottom.height := pgcCompareFrame.Height div 2;
  compareGroupRightBottom.height := pgcCompareFrame.Height div 2;
end;

procedure TfmCompareList2.FormShow(Sender: TObject);
begin
  IEGlobalSettings().MsgLanguage := msKorean;

  PanelRight.Width := 1;
  if Length(CustomerImages.CustID) > 10 then begin
    RetrieveMemberInfo;
    LIST_LOADED := True;
  end;
end;

procedure TfmCompareList2.frmImageMultiView1ImageEnMView1DblClick(
  Sender: TObject);
begin
  btnEditImage.Click;
end;

procedure TfmCompareList2.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCompareList2.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if LIST_LOADED then begin
    dmDBCommon.RetrievePictureByDate;
    RetrieveThumbnailList;
    //BMDThread1.Start;
  end;
end;

procedure TfmCompareList2.icbDrawingToolPropertiesCloseUp(Sender: TObject);
begin
  if fUpdating then
    exit;
  fUpdating := True;
  case icbDrawingTool.EditValue of
    1: LayerWindow.MouseInteractLayers := [mlClickCreateLineLayers];
    2: LayerWindow.MouseInteractLayers := [mlClickCreatePolylineLayers];
    3: LayerWindow.MouseInteractLayers := [mlDrawCreatePolylineLayers];
    4: LayerWindow.MouseInteractLayers := [mlClickCreateAngleLayers];
    5: LayerWindow.LayersAdd(TIELayerKind(1));
    6: LayerWindow.LayersAdd(TIELayerKind(4));
    7: LayerWindow.MouseInteractLayers := [mlCreateImageLayers];
  end;
  LayerWindow.MouseInteractLayers := LayerWindow.MouseInteractLayers + [mlEditLayerPoints];
//  memPolyEditNote.Enabled := ( rdbClickCreatePolylineLayers.Checked or rdbDrawCreatePolylineLayers.Checked ) and
//                               chkAllowPointEditing.Checked;
  fUpdating := False;
end;

procedure TfmCompareList2.ImageEnMView1AfterEvent(Sender: TObject;
  Event: TIEAfterEvent);
var
  imgX, imgY :integer;
begin
  if (Event = ieaePaint) and ImageEnMView1.Dragging and (fDragInsertPos > -1) then begin
    if fDragInsertPos >= ImageEnMView1.ImageCount then begin
      // Position at end of last thumbnail
      imgX := ImageEnMView1.ImageX[ImageEnMView1.ImageCount - 1] - ImageEnMView1.ViewX;
      imgY := ImageEnMView1.ImageY[ImageEnMView1.ImageCount - 1] - ImageEnMView1.ViewY + ImageEnMView1.ThumbHeight - 2;
    end else begin
      // Position before current thumbnail
      imgX := ImageEnMView1.ImageX[fDragInsertPos] - ImageEnMView1.ViewX;
      imgY := ImageEnMView1.ImageY[fDragInsertPos] - ImageEnMView1.ViewY + 1;
    end;
    with ImageEnMView1.GetCanvas do begin
      Pen.Color := clRed;
      Pen.Width := 5;
      MoveTo(ImgX + 10, ImgY);
      LineTo(ImgX + ImageEnMView1.ThumbWidth - 10, ImgY);
    end;
  end;
end;

procedure TfmCompareList2.ImageEnMView1DblClick(Sender: TObject);
begin
  btnEditImage.Click;
end;

procedure TfmCompareList2.ImageEnMView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  im:integer;
begin
  im := ImageEnMView1.InsertingPoint(X, Y);
  ImageEnMView1.MoveSelectedImagesTo( im );
end;

procedure TfmCompareList2.ImageEnMView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  fDragInsertPos := -1;
  if Source = ImageEnMView1 then
  begin
    Accept := True;
    fDragInsertPos := ImageEnMView1.InsertingPoint(X, Y);
  end;
  ImageEnMView1.Paint;
end;

procedure TfmCompareList2.ImageEnMView1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  ImageEnMView1.IEEndDrag;
  ImageEnMView1.MouseInteract := [mmiSelect];
  ImageEnMView1.Paint;
end;

procedure TfmCompareList2.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
begin
  IMAGE_IDX := idx;
  CustomerImages.ImageID := ImageEnMView1.ImageTag[idx];
end;

procedure TfmCompareList2.ImageEnMView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (ssLeft in Shift) then
  begin
    ImageEnMView1.MouseInteract := [];
    ImageEnMView1.IEBeginDrag(true, -1);
  end;
end;

procedure TfmCompareList2.ImageEnVect1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  new_idx, idx, hobj, sWidth, sHeight : Integer;
  mStream : TMemoryStream;
  imgWidth, imgHeight, nWidth, iStart : Integer;
  i, cnt : Integer;
begin
  mStream := TMemoryStream.Create;
  try
    idx := ImageEnMView1.SelectedImage;
    sWidth := LayerWindow.IEBitmap.Width; // div 2;
    sHeight := LayerWindow.IEBitmap.Height; // div 2;
    imgWidth := ImageEnMView1.ImageWidth[idx];
    imgHeight := ImageEnMView1.ImageHeight[idx];
    if imgHeight > LayerWindow.IEBitmap.Height then
      LayerWindow.IEBitmap.Allocate(imgWidth * 5, imgHeight);

    ImageEnMView1.GetImageToStream(idx, mStream, ioJPEG);
    mStream.Position := 0;

    LayerWindow.LayersAdd;
    LayerWindow.IO.LoadFromStreamJpeg(mStream);
    //MouseInteractVt := MouseInteractVt + [miObjectSelect];
    LayerWindow.FitToHeight;
  finally
    mStream.Free;
  end;
end;

procedure TfmCompareList2.ImageEnVect1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareList2.ImageEnVectComp1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  idx : integer;
  image_stream, draw_stream : TMemoryStream;
  img_date, img_id : string;
begin
  img_date := DateTimeToStr(gridCheckP_DATE.EditValue);
  idx := ImageEnMView1.SelectedImage;
  with (Sender as TImageEnVect) do begin
    Proc.Clear;
    RemoveAllObjects;
    Fit;
    Assign(ImageEnMView1.IEBitmap);
    Update;
  end;
  case (Sender as TImageEnVect).Tag of
    1: begin
      compareGroupLeftTop.Caption := '비교화면1 - ' + img_date;
      IMAGE_DATE1 := img_date;
      IMAGE_NAME1 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID1 := ImageEnMView1.ImageTag[idx];
    end;
    2: begin
      compareGroupLeftBottom.Caption := '비교화면2 - ' + img_date;
      IMAGE_DATE1 := img_date;
      IMAGE_NAME2 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID2 := ImageEnMView1.ImageTag[idx];
    end;
    3: begin
      compareGroupRightTop.Caption := '비교화면3 - ' + img_date;
      IMAGE_DATE2 := img_date;
      IMAGE_NAME3 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID3 := ImageEnMView1.ImageTag[idx];
    end;
    4: begin
      compareGroupRightBottom.Caption := '비교화면4 - ' + img_date;
      IMAGE_DATE4 := img_date;
      IMAGE_NAME4 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID4 := ImageEnMView1.ImageTag[idx];
    end;
  end;
end;

procedure TfmCompareList2.ImageEnVectComp1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareList2.ImageEnVectComp2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareList2.ImageEnVectComp3DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareList2.ImageEnVectComp4DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareList2.LayerWindowDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  new_idx, idx, hobj, sWidth, sHeight : Integer;
  mStream : TMemoryStream;
  imgWidth, imgHeight, nWidth, iStart : Integer;
  i, cnt, l_idx, pos_x : Integer;
  l_rect : TRect;
begin
  mStream := TMemoryStream.Create;
  try
    l_idx := LayerWindow.LayersCount;
    idx := ImageEnMView1.SelectedImage;
    ImageEnMView1.GetImageToStream(idx, mStream, ioJPEG);
    mStream.Position := 0;
    imgWidth := ImageEnMView1.ImageWidth[idx];
    imgHeight := ImageEnMView1.ImageHeight[idx];
    if l_idx = 1 then
      LayerWindow.IEBitmap.Allocate(imgWidth * 5, imgHeight);

    LayerWindow.LayersAdd(ielkImage);
    if l_idx > 1 then begin
      l_rect := LayerWindow.Layers[l_idx-1].LayerRect;
      pos_x := l_rect.BottomRight.X;
    end else begin
      pos_x := 0;
    end;

    LayerWindow.CurrentLayer.PosX := pos_x;
    LayerWindow.CurrentLayer.PosY := 0;
    LayerWindow.CurrentLayer.Width := imgWidth; //l_rect.Right;
    LayerWindow.CurrentLayer.Height := imgHeight; //l_rect.Bottom;
    LayerWindow.IO.LoadFromStreamJpeg(mStream);
    LayerWindow.Update;
    LayerWindow.MouseInteractLayers := [mlMoveLayers, mlResizeLayers, mlRotateLayers];
    LayerWindow.FitToHeight;
  finally
    mStream.Free;
  end;
end;

procedure TfmCompareList2.LayerWindowDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnMView then
    Accept := True;
end;

procedure TfmCompareList2.LayerWindowNewLayer(Sender: TObject;
  LayerIdx: Integer; LayerKind: TIELayerKind);
begin
  if LayerKind = ielkText then begin
    TIETextLayer(LayerWindow.CurrentLayer).Text := DateToStr(gridCheckP_DATE.EditValue);
    TIETextLayer(LayerWindow.CurrentLayer).Font.Size := FontDialog1.Font.Size;
    TIETextLayer(LayerWindow.CurrentLayer).Font.Style := FontDialog1.Font.Style;
    TIETextLayer(LayerWindow.CurrentLayer).Font.Color := FontDialog1.Font.Color;
    TIETextLayer(LayerWindow.CurrentLayer).Font.Name := FontDialog1.Font.Name;
    TIETextLayer(LayerWindow.CurrentLayer).BorderColor := clBlack;
    TIETextLayer(LayerWindow.CurrentLayer).BorderWidth := 2;
    TIETextLayer(LayerWindow.CurrentLayer).FillColor := clYellow;
    TIETextLayer(LayerWindow.CurrentLayer).Alignment := iejCenter;
    TIETextLayer(LayerWindow.CurrentLayer).Layout := ielCenter;
    TIETextLayer(LayerWindow.CurrentLayer).AutoSize := True;
  end;
  AssignControlValues();
end;

procedure TfmCompareList2.LayerWindowUserInteraction(Sender: TObject;
  Event: TIEUserInteractionEvent; Info: Integer);
begin
  if Event = ieiLayerCreateEnacted then
  begin
    // Hovering over image - show color in our panel
    ShowMessage('event...');
  end;

end;

initialization RegisterClasses([TfmCompareList2]);

end.
