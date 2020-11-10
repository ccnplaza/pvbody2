unit UfrmImageEditor2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ieview, imageenview, ievect, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, StdCtrls,
  ComCtrls, cxTextEdit, cxMaskEdit, cxSpinEdit, iemview, hyieutils, hyiedefs,
  imageenio, imageenproc, DB, dxmdaset, dxSkinscxPCPainter, cxPCdxBarPopupMenu,
  cxPC, cxDropDownEdit, dxColorEdit, cxImageComboBox, ImgList,
  cxGroupBox, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxBarBuiltInMenu, ActnList, iexActions,
  ieopensavedlg, dxGDIPlusClasses, WebImage, iexBitmaps, iesettings, iexLayers,
  iexRulers, iexToolbars;

type
  TfrmImageEditor2 = class(TFrame)
    pnl1: TPanel;
    ImageEnVect1: TImageEnVect;
    pnlTools: TPanel;
    dlgFont1: TFontDialog;
    btnTempOn: TSpeedButton;
    btnTempOff: TSpeedButton;
    ImageEnMView1: TImageEnMView;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    btnAddImage: TSpeedButton;
    btnDelImage: TSpeedButton;
    dxMemThumbnail: TdxMemData;
    dxMemData1i_kind: TIntegerField;
    dxMemData1i_name: TStringField;
    dxMemData1i_image: TBlobField;
    dxMemThumbnailid: TStringField;
    img1: TImage;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label3: TLabel;
    pnl5: TPanel;
    pnl6: TPanel;
    btnSaveDraw: TBitBtn;
    cxTabSheet3: TcxTabSheet;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    ImageListTextAlign: TImageList;
    ImageListLineStyle: TImageList;
    ImageBrushStyle: TImageList;
    ImageListLineEnding: TImageList;
    cxGroupBox1: TcxGroupBox;
    btnRotate: TSpeedButton;
    btnSelectAll: TSpeedButton;
    btnDeselectAll: TSpeedButton;
    btnDelete: TSpeedButton;
    btnHide: TSpeedButton;
    btnLineLabel: TSpeedButton;
    edtLineText: TEdit;
    btnSelect: TSpeedButton;
    Label1: TLabel;
    colorLine: TdxColorEdit;
    cbbPenStyle: TcxImageComboBox;
    Label2: TLabel;
    colorBrush: TdxColorEdit;
    cbbBrushStyle: TcxImageComboBox;
    Label4: TLabel;
    cbbStartShape: TcxImageComboBox;
    cbbEndShape: TcxImageComboBox;
    lbl5: TLabel;
    lbl2: TLabel;
    trkTransfer: TTrackBar;
    Label5: TLabel;
    Label6: TLabel;
    edtMScale: TEdit;
    ud1: TUpDown;
    cxGroupBox2: TcxGroupBox;
    btnSelRect: TSpeedButton;
    btnSelEllipse: TSpeedButton;
    btnSelPoly: TSpeedButton;
    btnSelMagic: TSpeedButton;
    btnImageEffects: TSpeedButton;
    btnFlipV: TSpeedButton;
    btnFlipH: TSpeedButton;
    btnMagnify: TSpeedButton;
    Label7: TLabel;
    Label11: TLabel;
    lbl4: TLabel;
    cbbAngle: TComboBox;
    btnFont: TBitBtn;
    cbbTextAlign: TcxImageComboBox;
    chkTextStretch: TCheckBox;
    btnUndo: TBitBtn;
    btnRedo: TBitBtn;
    btnCopyObjects: TSpeedButton;
    btnPasteObjects: TSpeedButton;
    btnCrop: TSpeedButton;
    btnPaste: TSpeedButton;
    btnBlur: TSpeedButton;
    btnLine: TSpeedButton;
    btnAngle: TSpeedButton;
    btnLength: TSpeedButton;
    btnEllipse: TSpeedButton;
    btnRect: TSpeedButton;
    btnText: TSpeedButton;
    btnPolyline: TSpeedButton;
    edtLineThick: TEdit;
    udLineThick: TUpDown;
    edtMagnify: TEdit;
    udMagnify: TUpDown;
    chkAutoIconSize: TCheckBox;
    cxGroupBox3: TcxGroupBox;
    btnLayerDelete: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btnLayerRotate: TSpeedButton;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    Label9: TLabel;
    TrackBar1: TTrackBar;
    Label10: TLabel;
    cbbLayerMode: TComboBox;
    btnLayerOpen: TBitBtn;
    btnLayerSave: TBitBtn;
    lblTransper: TLabel;
    btnHLines: TSpeedButton;
    btnVLines: TSpeedButton;
    edtHLineCount: TEdit;
    btnLineAng: TSpeedButton;
    chkKeepDraw: TCheckBox;
    ActionList1: TActionList;
    ImageEnViewDoPrintPreviewDialog1: TImageEnViewDoPrintPreviewDialog;
    btnPrint: TBitBtn;
    chkDrawing: TCheckBox;
    ImageEnVect2: TImageEnVect;
    btnExportImage: TSpeedButton;
    Label8: TLabel;
    lblImageSize: TLabel;
    Label12: TLabel;
    speFontSize: TcxSpinEdit;
    efontColor: TdxColorEdit;
    btnImage: TSpeedButton;
    dlgOpenImage: TOpenImageEnDialog;
    Panel1: TPanel;
    ImageEnView1: TImageEnView;
    ImageEnView2: TImageEnView;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    btnImportFile: TSpeedButton;
    chkGrid: TCheckBox;
    cxGroupBox6: TcxGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    spY2: TcxSpinEdit;
    spX2: TcxSpinEdit;
    spY1: TcxSpinEdit;
    spX1: TcxSpinEdit;
    btnSelectCut: TSpeedButton;
    btnCut: TSpeedButton;
    btnFit: TBitBtn;
    Label17: TLabel;
    lblSelSize: TLabel;
    chkGuidLine: TCheckBox;
    procedure ImageEnVect1NewObject(Sender: TObject; hobj: Integer);
    procedure ImageEnVect1SelectObject(Sender: TObject);
    procedure cbbAngleChange(Sender: TObject);
    procedure btnRotateClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnDeselectAllClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnHideClick(Sender: TObject);
    procedure btnFlipHClick(Sender: TObject);
    procedure btnFlipVClick(Sender: TObject);
    procedure btnAddImageClick(Sender: TObject);
    procedure btnDelImageClick(Sender: TObject);
    procedure ImageEnVect1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImageEnVect1DblClick(Sender: TObject);
    procedure btnMagnifyClick(Sender: TObject);
    procedure colorLinePropertiesChange(Sender: TObject);
    procedure edtMScaleChange(Sender: TObject);
    procedure btnFontClick(Sender: TObject);
    procedure btnFontStretchClick(Sender: TObject);
    procedure chkTextStretchClick(Sender: TObject);
    procedure edtLineTextChange(Sender: TObject);
    procedure ImageEnMView1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ImageEnMView1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageEnVect1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVect1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxPageControl1Change(Sender: TObject);
    procedure btnLayerDeleteClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btnLayerRotateClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure cbbLayerModeChange(Sender: TObject);
    procedure btnLayerOpenClick(Sender: TObject);
    procedure btnLayerSaveClick(Sender: TObject);
    procedure btnCopyObjectsClick(Sender: TObject);
    procedure btnPasteObjectsClick(Sender: TObject);
    procedure btnImageEffectsClick(Sender: TObject);
    procedure btnSelRectClick(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
    procedure btnRedoClick(Sender: TObject);
    procedure btnCropClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure btnBlurClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure udMagnifyClick(Sender: TObject; Button: TUDBtnType);
    procedure btnHLinesClick(Sender: TObject);
    procedure btnVLinesClick(Sender: TObject);
    procedure ImageEnVect1ObjectMoveResize(Sender: TObject; hobj, Grip: Integer;
      var OffsetX, OffsetY: Integer);
    procedure edtHLineCountChange(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnExportImageClick(Sender: TObject);
    procedure speFontSizePropertiesEditValueChanged(Sender: TObject);
    procedure efontColorPropertiesEditValueChanged(Sender: TObject);
    procedure ImageEnMView1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure btnImportFileClick(Sender: TObject);
    procedure ImageEnVect1ImageChange(Sender: TObject);
    procedure ImageEnVect1VectorialChanged(Sender: TObject);
    procedure ImageEnVect1FinishWork(Sender: TObject);
    procedure ImageEnVect1Resize(Sender: TObject);
    procedure ImageEnVect1DrawBackBuffer(Sender: TObject);
    procedure chkGridClick(Sender: TObject);
    procedure btnSelectCutClick(Sender: TObject);
    procedure spX1PropertiesEditValueChanged(Sender: TObject);
    procedure btnCutClick(Sender: TObject);
    procedure btnFitClick(Sender: TObject);
    procedure ImageEnVect1SelectionChanging(Sender: TObject);
    procedure chkGuidLineClick(Sender: TObject);
  private
    procedure SetThumbnail;
    procedure SetArrowSelection;
    procedure MoveMultilineHoriz(X: integer);
    procedure MoveMultilineVertical(X: integer);
    procedure WriteObjectText(IEV: TImageEnVect; hobj: Integer);
    procedure WriteObjectAngle(IEV: TImageEnVect; hobj: Integer; ang: Double);
    function Measure_angle(x1, y1, x2, y2: double): double;
    procedure SetFontSize;
    { Private declarations }
  public
    { Public declarations }
    SAVE_STATUS : Boolean;
    IMAGE_ID : string;
    IMAGE_CHANGED : Boolean;
    DRAW_CHANGED : Boolean;
    ctrlch : Boolean;
    mLineRect, mLengthRect : Array[0..8] of TRect;
    mLineDistance : Array[0..8] of Integer;
    constructor Create(AOwener : TComponent) ; override;
    procedure OpenImageFile(FileName : string);
    procedure OpenImageStream(imgStream, drawStream : TMemoryStream); overload;
    procedure OpenImageStream(imgStream : TMemoryStream); overload;
    procedure SaveImageStream(var mStream : TMemoryStream);
    procedure SaveDrawStream(var mStream : TMemoryStream);
    procedure SaveFileAll(file_name : string);
    //procedure LoadFileAll;
    procedure GetImageStream(var mStream, dStream : TMemoryStream);
    procedure OpenImageByID(img_id : string);
  end;
const
  RADIANS=57.29577951;
  BS: array[-1..7] of TBrushStyle = (bsSolid, bsSolid, bsClear, bsBDiagonal, bsFDiagonal, bsCross, bsDiagCross, bsHorizontal, bsVertical);
  PS: array[-1..6] of TPenStyle = (psSolid, psSolid, psDash, psDot, psDashDot, psDashDotDot, psClear, psInsideFrame);
  SH: array[-1..2] of TIEVArrowShape = (iesNONE, iesNONE, iesINARROW, iesOUTARROW);
  TA: array[-1..3] of TIEAlignment = (iejLeft, iejLeft, iejRight, iejCenter, iejJustify);

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

{ TfrmImageEditor2 }

constructor TfrmImageEditor2.Create(AOwener: TComponent);
begin
  inherited;
  SAVE_STATUS := False;
  IMAGE_CHANGED := False;
  DRAW_CHANGED := False;
  ctrlch := False;
  cxPageControl1.ActivePageIndex := 0;
  ImageEnVect1.AutoFit := True;
  ImageEnVect1.AutoStretch := True;
  ImageEnVect1.Fit;
  ImageEnVect1.Clear;
  ImageEnVect1.SelColor1 := clWhite;
  ImageEnVect1.SelColor2 := clRed;
  ImageEnVect1.MeasureTrack := true;
  ImageEnVect1.MUnit := ieuCENTIMETERS;
  ImageEnVect1.ScaleFactor := StrToFloat(edtMScale.text);
  colorLinePropertiesChange(Self);

  ImageEnVect1.UseCentralGrip := false;
  ImageEnVect1.ObjAutoUndo := true;
  ImageEnVect1.ObjAntialias := True;
  ImageEnVect1.PolylineEndingMode := ieemMouseUp;
  ImageEnVect1.MouseInteract := [miZoom, miScroll];
  ImageEnVect1.Update;

  //btnLine.Click;
  dxMemThumbnail.Active := True;
  SetThumbnail;
  btnSelect.Click;
end;

procedure TfrmImageEditor2.SetArrowSelection;
begin
  btnSelect.Click;
end;

procedure TfrmImageEditor2.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then begin
    ImageEnVect1.MouseInteractVt := ImageEnVect1.MouseInteractVt + [miObjectSelect];
  end;
//  if cxPageControl1.ActivePageIndex = 1 then begin
//    ImageEnVect1.MouseInteract := [miZoom, miScroll];
//  end;
  if cxPageControl1.ActivePageIndex = 2 then begin
    ImageEnVect1.SetLayersGripStyle(clBlack,clLime,bsSolid,5,iegsCircle);
    ImageEnVect1.ForceALTkey:=true; // aspect ratio
//    ImageEnVect1.LayersSync := false;
//    ImageEnVect1.MouseInteract := [miMoveLayers, miResizeLayers];
  end;
end;

procedure TfrmImageEditor2.GetImageStream(var mStream, dStream: TMemoryStream);
begin
  if (ImageEnVect1.IEBitmap.IsEmpty = False) then begin
    ImageEnVect1.IO.SaveToStreamJpeg(mStream);
    ImageEnVect1.SaveToStreamIEV(dStream);
    mStream.Position := 0;
    dStream.Position := 0;
  end;
end;

procedure TfrmImageEditor2.SetThumbnail;
var
  i, cnt, idx : Integer;
  mStream : TMemoryStream;
  id, fname : string;
begin
  if FileExists(gsDefaultFolder + 'imagedrawtool.dat') then begin
    dxMemThumbnail.LoadFromBinaryFile(gsDefaultFolder + 'imagedrawtool.dat');
    cnt := dxMemThumbnail.RecordCount;
    dxMemThumbnail.First;
    for i := 0 to cnt - 1 do begin
      mStream := TMemoryStream.Create;
      id := dxMemThumbnail.FieldByName('id').AsString;
      fname := dxMemThumbnail.FieldByName('i_name').AsString;
      TBlobField(dxMemThumbnail.FieldByName('i_image')).SaveToStream(mStream);
      mStream.Position := 0;
      idx := ImageEnMView1.AppendImage;
      ImageEnMView1.ImageFileName[idx] := id;
//      ImageEnMView1.ImageBottomText[idx].Caption := fname;
      ImageEnMView1.SetImageFromStream(idx, mStream);
      ImageEnMView1.Update;
      dxMemThumbnail.Next;
      mStream.Free;
    end;
  end;
end;

procedure TfrmImageEditor2.speFontSizePropertiesEditValueChanged(
  Sender: TObject);
begin
  dlgFont1.Font.Size := speFontSize.Value;
  colorLinePropertiesChange(self);
end;

procedure TfrmImageEditor2.TrackBar1Change(Sender: TObject);
var
  tPosition : Integer;
begin
  tPosition := TrackBar1.Position;
  with ImageEnVect1 do begin
    Layers[LayersCurrent].Transparency := tPosition;
    Update;
    lblTransper.Caption := IntToStr(tPosition);
  end;
end;

procedure TfrmImageEditor2.udMagnifyClick(Sender: TObject; Button: TUDBtnType);
begin
  if ImageEnVect1.LayersCount > 1 then begin
    ImageEnVect1.Layers[1].Magnify.Rate := udMagnify.Position;
    ImageEnVect1.Update;
  end;
end;

procedure TfrmImageEditor2.OpenImageByID(img_id: string);
var
  mStream, dStream : TMemoryStream;
begin
  IMAGE_ID := img_id;
  mStream := TMemoryStream.Create;
  dStream := TMemoryStream.Create;
  try
    ImageEnVect1.Clear;
    ImageEnVect1.RemoveAllObjects;
    if dmDBCommon.vtCustomerImage.Locate('ID', IMAGE_ID, []) = True then begin
      TBlobField(dmDBCommon.vtCustomerImage.FieldByName('IMAGE_DATA')).SaveToStream(mStream);
      TBlobField(dmDBCommon.vtCustomerImage.FieldByName('DRAW_DATA')).SaveToStream(dStream);
      if mStream.Size > 0 then begin
        mStream.Position := 0;
        ImageEnVect1.IO.LoadFromStreamJpeg(mStream);
        SetFontSize;
        lblImageSize.Caption := IntToStr(ImageEnVect1.IEBitmap.Width) + '(W)X' + IntToStr(ImageEnVect1.IEBitmap.Height)+'(H)';
        //lblImageSize.Refresh;
      end;
      if dStream.Size > 0 then begin
        dStream.Position := 0;
        ImageEnVect1.LoadFromStreamIEV(dStream);
      end;
      ImageEnVect1.Update;
    end;
  finally
    mStream.Free;
    dStream.Free;
  end;
end;

procedure TfrmImageEditor2.SetFontSize;
var
  img_height : Integer;
begin
  img_height := ImageEnVect1.IEBitmap.Height;
  dlgFont1.Font.Color := clYellow;
  if img_height < 1000 then
    dlgFont1.Font.Size := 20;
  if (img_height > 1000) and (img_height < 2000) then
    dlgFont1.Font.Size := 40;
  if (img_height > 2000) and (img_height < 3000) then
    dlgFont1.Font.Size := 50;
  if (img_height > 3000) then
    dlgFont1.Font.Size := 60;
  efontColor.ColorValue := dlgFont1.Font.Color;
  speFontSize.Value := dlgFont1.Font.Size;
  colorLinePropertiesChange(self);
end;

procedure TfrmImageEditor2.OpenImageFile(FileName: string);
begin
  ImageEnVect1.RemoveAllObjects;
  ImageEnVect1.Blank;
  ImageEnVect1.IO.LoadFromFileJpeg(FileName);
  ImageEnVect1.Update;
  ImageEnVect1.Refresh;
end;

procedure TfrmImageEditor2.OpenImageStream(imgStream: TMemoryStream);
begin
  ImageEnVect1.RemoveAllObjects;
  ImageEnVect1.Blank;
  ImageEnVect1.IO.LoadFromStreamJpeg(imgStream);
  ImageEnVect1.Update;
  ImageEnVect1.Refresh;
end;

procedure TfrmImageEditor2.OpenImageStream(imgStream, drawStream: TMemoryStream);
var
  idx : Integer;
begin
  if cxPageControl1.ActivePageIndex = 2 then begin
    if not ImageEnVect1.IsEmpty then begin
      idx := ImageEnVect1.LayersAdd;
      ImageEnVect1.IO.LoadFromStreamJpeg(imgStream);
      //ImageEnVect1.LoadFromStreamIEV(drawStream);
      ImageEnVect1.Update;
    end else begin
      ImageEnVect1.RemoveAllObjects;
      ImageEnVect1.Blank;
      ImageEnVect1.IO.LoadFromStreamJpeg(imgStream);
      ImageEnVect1.LoadFromStreamIEV(drawStream);
      ImageEnVect1.Update;
    end;
  end else begin
    ImageEnVect1.RemoveAllObjects;
    ImageEnVect1.Blank;
    ImageEnVect1.IO.LoadFromStreamJpeg(imgStream);
    ImageEnVect1.LoadFromStreamIEV(drawStream);
    ImageEnVect1.Update;
  end;
end;

procedure TfrmImageEditor2.SaveImageStream(var mStream : TMemoryStream);
begin
  if (ImageEnVect1.IEBitmap.IsEmpty = False) then begin
    ImageEnVect1.IO.SaveToStreamJpeg(mStream);
    mStream.Position := 0;
  end;
end;

procedure TfrmImageEditor2.SaveDrawStream(var mStream : TMemoryStream);
begin
  if (ImageEnVect1.IEBitmap.IsEmpty = False) then begin
    ImageEnVect1.SaveToStreamIEV(mStream);
    mStream.Position := 0;
  end;
end;

procedure TfrmImageEditor2.SaveFileAll(file_name : string);
begin
  if (ImageEnVect1.IEBitmap.IsEmpty = False) then
    ImageEnVect1.SaveToFileAll(file_name);
end;

procedure TfrmImageEditor2.btn2Click(Sender: TObject);
begin
  with ImageEnVect1 do
    LayersMove(LayersCurrent, LayersCurrent + 1);
end;

procedure TfrmImageEditor2.btn3Click(Sender: TObject);
begin
  with ImageEnVect1 do
    LayersMove(LayersCurrent, LayersCurrent - 1);
end;

procedure TfrmImageEditor2.btnLayerRotateClick(Sender: TObject);
begin
//  if btnLayerRotate.Down then
//    ImageEnVect1.MouseInteract := [miRotateLayers]
//  else
//    ImageEnVect1.MouseInteract := [miMoveLayers, miResizeLayers];
end;

procedure TfrmImageEditor2.btnLayerSaveClick(Sender: TObject);
begin
  if dlgSave1.Execute then
    ImageEnVect1.LayersSaveToFile(dlgSave1.FileName);
end;

procedure TfrmImageEditor2.btnAddImageClick(Sender: TObject);
var
  openDlg : TOpenDialog;
  fname, id : string;
  idx : Integer;
begin
  openDlg := TOpenDialog.Create(Self);
  if openDlg.Execute then begin
    fname := openDlg.FileName;
    idx := ImageEnMView1.AppendImage;
    id := FormatDateTime('yyyymmddhhnnsszzz', now);

    ImageEnMView1.ImageFileName[idx] := id;
//    ImageEnMView1.ImageBottomText[idx].Caption := ExtractFileName(fname);
    ImageEnMView1.SetImageFromFile(idx, fname);
    ImageEnMView1.Update;

    dxMemThumbnail.Append;
    dxMemThumbnail.FieldByName('id').AsString := id;
    dxMemThumbnail.FieldByName('i_kind').AsInteger := 1;
    dxMemThumbnail.FieldByName('i_name').AsString := ExtractFileName(fname);
    TBlobField(dxMemThumbnail.FieldByName('i_image')).LoadFromFile(fname);
    dxMemThumbnail.Post;
    dxMemThumbnail.SaveToBinaryFile(gsDefaultFolder + 'imagedrawtool.dat');
  end;
end;

procedure TfrmImageEditor2.btnBlurClick(Sender: TObject);
begin
  ImageEnVect1.Proc.Blur(3);
end;

procedure TfrmImageEditor2.btnCopyObjectsClick(Sender: TObject);
begin
  ImageEnVect1.ObjCopyToClipboard;
end;

procedure TfrmImageEditor2.btnCropClick(Sender: TObject);
begin
  if (ImageEnVect1.Selected)
    then ImageEnVect1.Proc.CropSel;
  ImageEnVect1.DeSelect;
end;

procedure TfrmImageEditor2.btnCutClick(Sender: TObject);
begin
  if (ImageEnVect1.Selected)
    then ImageEnVect1.Proc.CropSel;
  ImageEnVect1.DeSelect;
end;

procedure TfrmImageEditor2.btnDeleteClick(Sender: TObject);
var
  i : Integer;
begin
  if ImageEnVect1.SelObjectsCount > 0 then begin
    for i := ImageEnVect1.SelObjectsCount - 1 downto 0 do
      ImageEnVect1.RemoveObject(ImageEnVect1.selobjects[i]);
    ImageEnVect1.Update;
  end;
end;

procedure TfrmImageEditor2.btnDelImageClick(Sender: TObject);
var
  idx, i, cnt : Integer;
  id : string;
begin
  if ImageEnMView1.ImageCount > 0 then begin
    idx := ImageEnMView1.SelectedImage;
    id := ImageEnMView1.ImageFileName[idx];
    ImageEnMView1.DeleteImage(idx);
    ImageEnMView1.Update;
    dxMemThumbnail.Locate('id', id, []);
    dxMemThumbnail.Delete;
    dxMemThumbnail.SaveToBinaryFile(gsDefaultFolder + 'imagedrawtool.dat');
  end;
end;

procedure TfrmImageEditor2.btnDeselectAllClick(Sender: TObject);
begin
  ImageEnVect1.UnSelAllObjects;
end;

procedure TfrmImageEditor2.btnExportImageClick(Sender: TObject);
var
  fname : string;
begin
  with ImageEnVect1.IO do begin
    fname := ExecuteSaveDialog('','',false,1,'');
    if fname <> '' then begin
      SaveToFileJpeg(fname);
      //ImageEnVect1.SaveToFileAll(fname, ioJPEG);
      ShowMessage(fname + '이(가) 저장되었습니다.');
    end;
  end;
end;

procedure TfrmImageEditor2.btnFitClick(Sender: TObject);
begin
  ImageEnVect1.AutoStretch := True;
  ImageEnVect1.AutoShrink := True;
  ImageEnVect1.AutoFit := True;
  ImageEnVect1.Update;
end;

procedure TfrmImageEditor2.btnFlipHClick(Sender: TObject);
begin
  ImageEnVect1.Proc.Flip(fdHorizontal);
end;

procedure TfrmImageEditor2.btnFlipVClick(Sender: TObject);
begin
  ImageEnVect1.Proc.Flip(fdVertical);
end;

procedure TfrmImageEditor2.btnFontClick(Sender: TObject);
begin
  if dlgFont1.Execute then begin
    efontColor.ColorValue := dlgFont1.Font.Color;
    speFontSize.Value := dlgFont1.Font.Size;
    colorLinePropertiesChange(self);
  end;
  chkTextStretch.Checked := False;
end;

procedure TfrmImageEditor2.btnFontStretchClick(Sender: TObject);
begin
  dlgFont1.Font.Height := 0;
  colorLinePropertiesChange(self);
end;

procedure TfrmImageEditor2.btnHideClick(Sender: TObject);
var
  tagno : integer;
begin
  tagno := btnHide.Tag;
  if tagno = 0 then begin
    btnHide.Glyph := btnTempOn.Glyph;
    btnHide.Hint := 'Show All';
    ImageEnVect1.AllObjectsHidden := True;
    btnHide.Tag := 1;
  end else begin
    btnHide.Glyph := btnTempOff.Glyph;
    btnHide.Hint := 'Hide All';
    ImageEnVect1.AllObjectsHidden := False;
    btnhide.Tag := 0;
  end;
end;

procedure TfrmImageEditor2.btnHLinesClick(Sender: TObject);
var
  hobj, gab, tWidth, hlines : integer;
  i: Integer;
begin
  hlines := StrToInt(edtHLineCount.Text) + 1;
  gab := ImageEnVect1.IEBitmap.Height div hlines;
  tWidth := ImageEnVect1.IEBitmap.Width;
  for i := 1 to hlines - 1 do begin
    hobj := ImageEnVect1.AddNewObject;
    ImageEnVect1.ObjKind[hobj] := iekLINE;
    ImageEnVect1.ObjName[hobj] := 'hLine' + inttostr(i);
    ImageEnVect1.ObjPenWidth[hobj] := 1;
    ImageEnVect1.ObjLeft[hobj] := 0;
    ImageEnVect1.ObjTop[hobj] := gab * i;
    ImageEnVect1.ObjWidth[hobj] := tWidth;
    ImageEnVect1.ObjHeight[hobj] := 0;
    ImageEnVect1.ObjPenColor[hobj] := colorLine.ColorValue;
  end;
  with ImageEnVect1 do begin
    btnSelect.Down := True;
    MouseInteractVt := MouseInteractVt + [miObjectSelect];
    if not (miSelect in MouseInteract) and not (miSelectPolygon in Mouseinteract)
      and not (miSelectCircle in MouseInteract) then
      Deselect;
  end;
end;

procedure TfrmImageEditor2.btnVLinesClick(Sender: TObject);
var
  hobj, gab, tHeight, lines : integer;
  i: Integer;
begin
  lines := StrToInt(edtHLineCount.Text) + 1;
  gab := ImageEnVect1.IEBitmap.Width div lines;
  tHeight := ImageEnVect1.IEBitmap.Height;
  for i := 1 to lines - 1 do begin
    hobj := ImageEnVect1.AddNewObject;
    ImageEnVect1.ObjKind[hobj] := iekLINE;
    ImageEnVect1.ObjName[hobj] := 'vLine' + inttostr(i);
    ImageEnVect1.ObjPenWidth[hobj] := 1;
    ImageEnVect1.ObjLeft[hobj] := gab * i;
    ImageEnVect1.ObjTop[hobj] := 0;
    ImageEnVect1.ObjWidth[hobj] := 0;
    ImageEnVect1.ObjHeight[hobj] := tHeight;
    ImageEnVect1.ObjPenColor[hobj] := colorLine.ColorValue;
  end;
  with ImageEnVect1 do begin
    btnSelect.Down := True;
    MouseInteractVt := MouseInteractVt + [miObjectSelect];
    if not (miSelect in MouseInteract) and not (miSelectPolygon in Mouseinteract)
      and not (miSelectCircle in MouseInteract) then
      Deselect;
  end;
end;

procedure TfrmImageEditor2.btnImageEffectsClick(Sender: TObject);
begin
  ImageEnVect1.Proc.PreviewsParams := [prppDefaultLockPreview];
  ImageEnVect1.Proc.DoPreviews([peAll]);
end;

procedure TfrmImageEditor2.btnImportFileClick(Sender: TObject);
begin
  if dlgOpenImage.Execute then begin
    ImageEnVect1.IO.LoadFromFile(dlgOpenImage.FileName);

  end;
end;

procedure TfrmImageEditor2.btnLayerDeleteClick(Sender: TObject);
begin
  with ImageEnVect1 do
    LayersRemove(LayersCurrent);
end;

procedure TfrmImageEditor2.btnLayerOpenClick(Sender: TObject);
begin
  if dlgOpen1.Execute then
    ImageEnVect1.LayersLoadFromFile( dlgOpen1.FileName );

end;

procedure TfrmImageEditor2.btnMagnifyClick(Sender: TObject);
var
  sWidth, sHeight : Integer;
begin
  sWidth := ImageEnVect1.IEBitmap.Width div 2;
  sHeight := ImageEnVect1.IEBitmap.Height div 2;
//  ImageEnVect1.LayersSync := False;
  ImageEnVect1.UnSelAllObjects;
  if btnMagnify.Down then begin
    if ImageEnVect1.LayersCount = 1 then begin
      ImageEnVect1.LayersAdd;
      with ImageEnVect1.Layers[1] do
      begin
        PosX := sWidth - 200;
        PosY := sHeight - 200;
        Width := 400;
        Height := 400;
        Magnify.Enabled := true;
        Magnify.Source:=iemBackgroundLayer;
        Magnify.Rate := udMagnify.Position;
      end;
    end;
    // allows user to move and resize layers
//    ImageEnVect1.MouseInteract := [miMoveLayers, miResizeLayers];
  end else begin
    if ImageEnVect1.LayersCount > 1 then begin
      ImageEnVect1.LayersRemove(1);
    end;
    SetArrowSelection;
  end;
end;

procedure TfrmImageEditor2.btnPasteClick(Sender: TObject);
var
  hobj : Integer;
begin
  if ImageEnVect1.Selected then begin
    hobj := ImageEnVect1.CreateImageFromSelectedArea(0, false);
    ImageEnVect1.DeSelect;
    ImageEnVect1.MouseInteractVT := [miObjectSelect];
    ImageEnVect1.UnSelAllObjects;
    ImageEnVect1.AddSelObject(hobj);
    ImageEnVect1.Update;
  end;
  SetArrowSelection;
end;

procedure TfrmImageEditor2.btnPasteObjectsClick(Sender: TObject);
begin
  if ImageEnVect1.ObjIsClipboardAvailable then
    ImageEnVect1.ObjPasteFromClipboard(0, 0);
end;

procedure TfrmImageEditor2.btnPrintClick(Sender: TObject);
begin
  if chkDrawing.Checked then begin
    ImageEnVect2.IEBitmap.Assign(ImageEnVect1.IEBitmap);
    ImageEnVect1.CopyAllObjectsTo(ImageEnVect2);
    ImageEnVect2.CopyObjectsToBack(False, True);
    ImageEnVect2.Update;
    ImageEnViewDoPrintPreviewDialog1.ImageEnView := ImageEnVect2;
    ImageEnViewDoPrintPreviewDialog1.Execute;
  end else begin
    ImageEnViewDoPrintPreviewDialog1.ImageEnView := ImageEnVect1;
    ImageEnViewDoPrintPreviewDialog1.Execute;
  end;
end;

procedure TfrmImageEditor2.edtHLineCountChange(Sender: TObject);
var
  lcnt : Integer;
begin
  lcnt := StrToInt(edtHLineCount.Text);
  if lcnt > 8 then begin
    ShowMessage('가로/세로 다중라인은 최대 8라인까지입니다.');
    edtHLineCount.Text := '8';
  end;
end;

procedure TfrmImageEditor2.edtLineTextChange(Sender: TObject);
var
  ss: string;
begin
  ss := ' ' + edtLineText.Text + ' ';
  ImageenVect1.ObjText[-1] := ss;
  if ImageenVect1.SelObjectsCount > 0 then begin
    if ImageenVect1.ObjName[ImageenVect1.SelObjects[0]] = 'LineText' then
      ImageenVect1.ObjText[ImageenVect1.SelObjects[0]] := ss;
  end;
end;

procedure TfrmImageEditor2.edtMScaleChange(Sender: TObject);
begin
  ImageEnVect1.ScaleFactor := StrToFloat(edtMScale.text);
end;

procedure TfrmImageEditor2.efontColorPropertiesEditValueChanged(
  Sender: TObject);
begin
  dlgFont1.Font.Color := efontColor.ColorValue;
  colorLinePropertiesChange(self);
end;

procedure TfrmImageEditor2.btnRedoClick(Sender: TObject);
begin
  if ImageEnVect1.Proc.RedoCount > 0 then
    ImageEnVect1.Proc.Redo;
end;

procedure TfrmImageEditor2.btnRotateClick(Sender: TObject);
var
  i, obj : Integer;
begin
  for i := 0 to ImageEnVect1.SelObjectsCount - 1 do begin
    obj := ImageEnVect1.selobjects[i];
    ImageEnVect1.RotateObject(obj, 90, ierObject);
    ImageEnVect1.ObjSaveUndo;
  end;
end;

procedure TfrmImageEditor2.btnSelectAllClick(Sender: TObject);
var
  cnt, i : integer;
begin
  ImageEnVect1.SelAllObjects;
  cnt := ImageEnVect1.ObjectsCount;
  if cnt > 0 then begin
    for i := 0 to cnt - 1 do begin
      ImageEnVect1.AddSelObject(i);
    end;
  end;
end;

procedure TfrmImageEditor2.btnSelectClick(Sender: TObject);
var
  strName : string;
begin
  btnSelRect.Down := False;
  btnSelEllipse.Down := False;
  btnSelPoly.Down := False;
  btnSelMagic.Down := False;

  with ImageEnVect1 do begin
    MouseInteractVt := MouseInteractVt + [miObjectSelect];
    if (Sender = btnSelect) then begin
      btnSelect.Down := True;
      MouseInteractVt := MouseInteractVt + [miObjectSelect];
    end;
    if (Sender = btnLine) then begin
      btnLine.Down := True;
      MouseInteractVt := MouseInteractVt + [miPutLine];
    end;
    if (Sender = btnEllipse) then begin
      btnEllipse.Down := True;
      MouseInteractVt := MouseInteractVt + [miPutEllipse];
    end;
    if (Sender = btnRect) then begin
      btnRect.Down := True;
      MouseInteractVt := MouseInteractVt + [miPutBox];
    end;
    if (Sender = btnText) then begin
      btnText.Down := True;
      MouseInteractVt := MouseInteractVt + [miPutText];
    end;
    if (Sender = btnPolyLine) then begin
      btnPolyLine.Down := True;
      MouseInteractVt := MouseInteractVt + [miPutPolyline];
    end;
    if (Sender = btnLength) then begin
      btnLength.Down := True;
      ObjRulerType[-1] := iertQUOTECENTER;
      ObjRulerUnit[-1] := ieuCENTIMETERS;
      MouseInteractVt := MouseInteractVt + [miPutRuler];
    end;
    if (Sender = btnAngle) then begin
      btnAngle.Down := True;
      ObjName[-1] := 'Angle';
      MouseInteractVt := MouseInteractVt + [miPutAngle];
    end;
    if (Sender = btnLineAng) then begin
      btnLineAng.Down := True;
      ObjName[-1] := 'LineAngle';
      MouseInteractVt := MouseInteractVt + [miPutLineLabel];
    end;
    if (Sender = btnLineLabel) then begin
      btnLineLabel.Down := True;
      ObjName[-1] := 'LineText';
      ObjBeginShape[-1] := iesOUTARROW;
      ObjBrushColor[-1] := colorLine.ColorValue;
      ObjText[-1] := ' ' + edtLineText.Text + ' ';
      MouseInteractVt := MouseInteractVt + [miPutLineLabel];
    end;
    if (Sender = btnImage) then begin
      if dlgOpenImage.Execute then begin
        SetObjBitmapFromFile(IEV_NEXT_INSERTED_OBJECT, dlgOpenImage.FileName);
      end;

      btnImage.Down := True;
      ObjName[-1] := 'Image';
      MouseInteractVt := MouseInteractVt + [miPutBitmap];
    end;
    // Cancel selection
    if not (miSelect in MouseInteract) and not (miSelectPolygon in Mouseinteract)
      and not (miSelectCircle in MouseInteract) then
      Deselect;
  end;
end;

procedure TfrmImageEditor2.btnSelectCutClick(Sender: TObject);
var
  X1, Y1, X2, Y2 : Integer;
begin
  ImageEnVect1.MouseInteract := [miSelect];
  X1 := spX1.EditValue;
  Y1 := spY1.EditValue;
  X2 := ImageEnVect1.IEBitmap.Width - spX2.EditValue;
  Y2 := ImageEnVect1.IEBitmap.Height - spY2.EditValue;
  ImageEnVect1.Select(X1, Y1, X2, Y2, iespReplace);
end;

procedure TfrmImageEditor2.spX1PropertiesEditValueChanged(Sender: TObject);
begin
  btnSelectCut.Click;
end;

procedure TfrmImageEditor2.WriteObjectText(IEV : TImageEnVect; hobj : Integer);
var
  ang, ang1, ang2 : Double;
  rect, nrect : TRect;
  nobj, pobj : Integer;
begin
  IEV.GetObjRect(hobj, rect);
  if IEV.ObjKind[hobj] = iekText then
    IEV.ObjTextAutoSize[hobj] := True;
  if IEV.ObjKind[hobj] = iekMEMO then begin
    IEV.ObjTextAutoSize[hobj] := True;
    IEV.ObjFontName[hobj] := '굴림체';
  end;

  if IEV.ObjKind[hobj] = iekLINELABEL then begin
    if IEV.ObjName[hobj] = 'LineAngle' then begin
      IEV.ObjTextAutoSize[hobj] := True;
      ang := Measure_angle(rect.TopLeft.X, rect.TopLeft.Y, rect.BottomRight.X, rect.BottomRight.Y);
      WriteObjectAngle(IEV, hobj, ang);
    end;
  end;
end;

procedure TfrmImageEditor2.WriteObjectAngle(IEV : TImageEnVect; hobj : Integer; ang: Double);
begin
  if (ang > 315.0) and (ang < 360.0) then begin
    ang := 360.0 - ang;
    IEV.ObjText[hobj] := FormatFloat(' -0.0°', ang);
  end else if (ang > 270.0) and (ang < 315.0) then begin
    ang := 270.0 - ang;
    IEV.ObjText[hobj] := FormatFloat('  0.0°', ang);
  end else if (ang > 225.0) and (ang < 270.0) then begin
    ang := 270.0 - ang;
    IEV.ObjText[hobj] := FormatFloat('  0.0°', ang);
  end else if (ang > 180.0) and (ang < 225.0) then begin
    ang := 180.0 - ang;
    IEV.ObjText[hobj] := FormatFloat('  0.0°', ang);
  end else if (ang > 135.0) and (ang < 180.0) then begin
    ang := 180.0 - ang;
    IEV.ObjText[hobj] := FormatFloat('  0.0°', ang);
  end else if (ang > 90.0) and (ang < 135.0) then begin
    ang := 90.0 - ang;
    IEV.ObjText[hobj] := FormatFloat('  0.0°', ang);
  end else if (ang > 45.0) and (ang < 90.0) then begin
    ang := 90.0 - ang;
    IEV.ObjText[hobj] := FormatFloat('  0.0°', ang);
  end else
    IEV.ObjText[hobj] := FormatFloat('  0.0°', ang);
end;

function TfrmImageEditor2.Measure_angle(x1,y1,x2,y2:double):double;
var
  part1, part2:double;
  angle:double;
begin
  if (x1 = x2) and (y1 = y2) then begin
    result := 0.0;
    exit;
  end;
  part1 := abs(y2 - y1);
  if (part1 = 0) then begin
    part1 := 0.0000001;
    y1 := y1 + 0.0000001;
  end;
  part2 := abs(x2 - x1);
  if (part2 = 0) then begin
    part2 := 0.0000001;
    x1 := x1 + 0.0000001;
  end;
  angle := arctan(part1 / part2) * RADIANS;
  if ((x1 > x2) and (y1 < y2)) then angle := 180 - angle;
  if ((x1 > x2) and (y1 > y2)) then angle := angle + 180;
  if ((x1 < x2) and (y1 > y2)) then angle := 360 - angle;
  //angle := fix_angle(angle);
  result := angle;
end;

procedure TfrmImageEditor2.btnSelRectClick(Sender: TObject);
var
  tno : Integer;
begin
  btnSelect.Down := False;
  tno := (Sender as TSpeedButton).Tag;
  case tno of
    1 : begin
      if btnSelRect.Down then
        ImageEnVect1.MouseInteract := [miSelect]
      else
        SetArrowSelection;
    end;
    2 : begin
      if btnSelEllipse.Down then
        ImageEnVect1.MouseInteract := [miSelectCircle]
      else
        SetArrowSelection;
    end;
    3 : begin
      if btnSelPoly.Down then
        ImageEnVect1.MouseInteract := [miSelectPolygon]
      else
        SetArrowSelection;
    end;
    4 : begin
      if btnSelMagic.Down then
        ImageEnVect1.MouseInteract := [miSelectMagicWand]
      else
        SetArrowSelection;
    end;
  end;
end;

procedure TfrmImageEditor2.btnUndoClick(Sender: TObject);
begin
  if ImageEnVect1.Proc.UndoCount > 0 then
    ImageEnVect1.Proc.Undo(True);
end;

procedure TfrmImageEditor2.cbbLayerModeChange(Sender: TObject);
begin
  with ImageEnVect1 do
  begin
    CurrentLayer.Operation := TIERenderOperation(cbbLayerMode.ItemIndex);
    Update;
  end;
end;

procedure TfrmImageEditor2.cbbAngleChange(Sender: TObject);
var
  angle : Double;
begin
  angle := StrToFloatDef(cbbAngle.Text, 0);
  ImageEnVect1.Proc.Rotate(angle);
  ImageEnVect1.Update;
end;

procedure TfrmImageEditor2.chkGridClick(Sender: TObject);
begin
  ImageEnVect1.Refresh;
end;

procedure TfrmImageEditor2.chkGuidLineClick(Sender: TObject);
begin
  if chkGuidLine.Checked then
    ImageEnVect1.DisplayGridKind := iedgGuideLines
  else
    ImageEnVect1.DisplayGridKind := iedgNone;
end;

procedure TfrmImageEditor2.chkTextStretchClick(Sender: TObject);
begin
  if chkTextStretch.Checked then begin
    dlgFont1.Font.Size := 0;
    colorLinePropertiesChange(self);
  end;
end;

procedure TfrmImageEditor2.colorLinePropertiesChange(Sender: TObject);
var
  q, obj: integer;
  xstyle: TIEVStyle;
begin
  if ctrlch then
    exit;
  obj := IEV_NEXT_INSERTED_OBJECT; // -1 is next object (new object to insert)
  with ImageEnvect1 do
    for q := -1 to SelObjectsCount - 1 do begin
      if q >= 0 then
        obj := SelObjects[q];
      SetObjFont(obj, dlgFont1.Font);
      ObjPenColor[obj] := colorLine.ColorValue;
      ObjBrushColor[obj] := colorBrush.ColorValue;
      ObjBrushStyle[obj] := BS[cbbBrushStyle.itemindex];
      ObjPenStyle[obj] := PS[cbbPenStyle.itemindex];
      ObjBeginShape[obj] := SH[cbbStartShape.ItemIndex];
      ObjEndShape[obj] := SH[cbbEndShape.ItemIndex];
      ObjPenWidth[obj] := udLineThick.Position;
      ObjTransparency[obj] := trkTransfer.Position;
      ObjTextAlign[obj] := TA[cbbTextAlign.itemindex];

      xstyle := [ievsVisible, ievsSelectable, ievsMoveable, ievsSizeable];
      ObjStyle[obj] := xstyle;
      ObjTextAutoSize[obj] := true;
    end;
end;

procedure TfrmImageEditor2.ImageEnMView1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  ImageEnMView1.IEEndDrag;
  ImageEnMView1.MouseInteract := [mmiSelect];
end;

procedure TfrmImageEditor2.ImageEnMView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
  begin
    ImageEnMView1.MouseInteract := [];
    ImageEnMView1.IEBeginDrag(true,-1);
  end;
end;

procedure TfrmImageEditor2.ImageEnMView1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  GDragObject := 1;
end;

procedure TfrmImageEditor2.ImageEnVect1DblClick(Sender: TObject);
begin
  ImageEnVect1.UnSelAllObjects;
end;

procedure TfrmImageEditor2.ImageEnVect1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  new_idx, idx, hobj, sWidth, sHeight : Integer;
  mStream : TMemoryStream;
  id : string;
  imgWidth, imgHeight : Integer;
begin
  if GDragObject = 1 then begin
    mStream := TMemoryStream.Create;
    try
      with ImageEnVect1 do begin
        sWidth := IEBitmap.Width div 2;
        sHeight := IEBitmap.Height div 2;
        idx := ImageEnMView1.SelectedImage;
        id := ImageEnMView1.ImageFileName[idx];
        imgWidth := 100;
        imgHeight := 100;
        dxMemThumbnail.Locate('id', id, []);
        TBlobField(dxMemThumbnail.FieldByName('i_image')).SaveToStream(mStream);
        mStream.Position := 0;
        SetObjBitmapFromStream(-1, mStream);
        ObjKind[IEV_NEXT_INSERTED_OBJECT] := iekBITMAP;
        ObjLeft[IEV_NEXT_INSERTED_OBJECT] := XScr2Bmp(X);
        ObjTop[IEV_NEXT_INSERTED_OBJECT] := YScr2Bmp(Y);
        ObjWidth[IEV_NEXT_INSERTED_OBJECT] := imgWidth;
        ObjHeight[IEV_NEXT_INSERTED_OBJECT] := imgHeight;
        new_idx := AddNewObject;
        SetArrowSelection;
        UnSelAllObjects;
        AddSelObject(new_idx);
      end;
    finally
      mStream.Free;
    end;
  end;
  if GDragObject = 2 then begin
    with ImageEnVect1 do begin
      hobj := AddNewObject;
      ObjKind[hobj] := iekTEXT;
      ObjName[hobj] := 'txt_body';
      ObjText[hobj] := GDragText;
      ObjPenWidth[hobj] := 1;
      ObjLeft[hobj] := XScr2Bmp(X);
      ObjTop[hobj] := YScr2Bmp(Y);
      ObjPenStyle[hobj] := psClear;
      SetObjFont(hobj, dlgFont1.Font);
      ObjTextAutoSize[hobj] := True;
      StretchTextRect(hobj);

      //colorLinePropertiesChange(self);
      SetArrowSelection;
      UnSelAllObjects;
      AddSelObject(hobj);
    end;
  end;

end;

procedure TfrmImageEditor2.ImageEnVect1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnMView then
    Accept := True;
end;

procedure TfrmImageEditor2.ImageEnVect1DrawBackBuffer(Sender: TObject);
var
  ix1: Integer;
  iy1: Integer;
  ix2: Integer;
  iy2: Integer;
  imgWidth, imgHeight : Integer;
  vgab, hgab, i : Integer;
begin
  if chkGrid.Checked then begin
    with ImageEnVect1 do begin
      ix1 := OffsetX;
      iy1 := OffsetY;
      ix2 := ExtentX;
      iy2 := ExtentY;
      imgHeight := iy1 + iy2;
      imgWidth := ix1 + ix2;
      hgab := Trunc(ix2 / 10);
      vgab := Trunc(iy2 / 30);
      for i := 0 to 10 do begin  //vertical lines
        if (i Mod 2 = 0) or (i = 0) then begin
          BackBuffer.Canvas.Pen.Color := clRed;
          BackBuffer.Canvas.Pen.Style := psDot;
        end else begin
          BackBuffer.Canvas.Pen.Color := clWhite;
          BackBuffer.Canvas.Pen.Style := psDot;
        end;
        BackBuffer.Canvas.MoveTo(ix1 + hgab * i, iy1);
        BackBuffer.Canvas.LineTo(ix1 + hgab * i, imgHeight);
      end;
      for i := 0 to 30 do begin  //horizontal lines
        if (i Mod 2 = 0) or (i = 0) then begin
          BackBuffer.Canvas.Pen.Color := clRed;
          BackBuffer.Canvas.Pen.Style := psDot;
        end else begin
          BackBuffer.Canvas.Pen.Color := clWhite;
          BackBuffer.Canvas.Pen.Style := psDot;
        end;
        BackBuffer.Canvas.MoveTo(ix1, iy1 + vgab * i);
        BackBuffer.Canvas.LineTo(ix1 + ix2, iy1 + vgab * i);
      end;
    end;
  end;
end;

procedure TfrmImageEditor2.ImageEnVect1FinishWork(Sender: TObject);
begin
  lblImageSize.Caption := IntToStr(ImageEnVect1.IEBitmap.Width) + ' * ' + IntToStr(ImageEnVect1.IEBitmap.Height)
end;

procedure TfrmImageEditor2.ImageEnVect1ImageChange(Sender: TObject);
begin
  IMAGE_CHANGED := True;
end;

procedure TfrmImageEditor2.ImageEnVect1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  q, obj : Integer;
  rect : TRect;
begin
{
  if ImageEnVect1.Focused = False then Exit;
  if Key in [VK_DELETE] then begin
    btnDelete.Click;
  end;
  obj := -1; // -1 is next object (new object to insert)
  with ImageEnvect1 do
    for q := -1 to SelObjectsCount - 1 do
    begin
      if q >= 0 then begin
        obj := SelObjects[q];
        GetObjRect(obj, rect);
      end;
      //Ctrl key
      If (ssCtrl in Shift) And (Key In [VK_LEFT]) Then begin
        Dec(rect.TopLeft.X);
        SetObjRect(obj, rect);
      end;
      If (ssCtrl in Shift) And (Key In [VK_RIGHT]) Then begin
        Inc(rect.TopLeft.X);
        SetObjRect(obj, rect);
      end;
      If (ssCtrl in Shift) And (Key In [VK_UP]) Then begin
        Dec(rect.TopLeft.Y);
        SetObjRect(obj, rect);
      end;
      If (ssCtrl in Shift) And (Key In [VK_DOWN]) Then begin
        Inc(rect.TopLeft.Y);
        SetObjRect(obj, rect);
      end;
      //Alt Key
      If (ssAlt in Shift) And (Key In [VK_LEFT]) Then begin
        Dec(rect.BottomRight.X);
        SetObjRect(obj, rect);
      end;
      If (ssAlt in Shift) And (Key In [VK_RIGHT]) Then begin
        Inc(rect.BottomRight.X);
        SetObjRect(obj, rect);
      end;
      If (ssAlt in Shift) And (Key In [VK_UP]) Then begin
        Dec(rect.BottomRight.Y);
        SetObjRect(obj, rect);
      end;
      If (ssAlt in Shift) And (Key In [VK_DOWN]) Then begin
        Inc(rect.BottomRight.Y);
        SetObjRect(obj, rect);
      end;
      //Shift Key
      If (ssShift in Shift) And (Key In [VK_LEFT]) Then begin
        ObjLeft[obj] := ObjLeft[obj] - 1;
      end;
      If (ssShift in Shift) And (Key In [VK_RIGHT]) Then begin
        ObjLeft[obj] := ObjLeft[obj] + 1;
      end;
      If (ssShift in Shift) And (Key In [VK_UP]) Then begin
        ObjTop[obj] := ObjTop[obj] - 1;
      end;
      If (ssShift in Shift) And (Key In [VK_DOWN]) Then begin
        ObjTop[obj] := ObjTop[obj] + 1;
      end;
      //WriteObjectText(ImageEnVect1, obj);
    end;
}
end;

procedure TfrmImageEditor2.ImageEnVect1NewObject(Sender: TObject; hobj: Integer);
begin
  if ImageEnVect1.ObjName[hobj] = 'LineAngle' then begin
    WriteObjectText(ImageEnVect1, hobj);
  end;
  if chkKeepDraw.Checked = False then
    btnSelect.Click;
end;

procedure TfrmImageEditor2.ImageEnVect1ObjectMoveResize(Sender: TObject; hobj,
  Grip: Integer; var OffsetX, OffsetY: Integer);
var
  rect : TRect;
  oName : string;
begin
  if ImageEnVect1.ObjName[hobj] = 'LineAngle' then
    WriteObjectText(ImageEnVect1, hobj);
  oName := ImageEnVect1.ObjName[hobj];
  if Copy(oName, 1, 2) = 'vL' then begin
    //baseline의 경우 좌,우로만 이동하도록 조정
    ImageEnVect1.GetObjRect(hobj, rect);
    rect.Top := 0;
    rect.Bottom := ImageEnVect1.IEBitmap.Height;
    ImageEnVect1.SetObjRect(hobj, rect);
    MoveMultilineHoriz(rect.Left);
  end;
  if Copy(oName, 1, 2) = 'hL' then begin
    ImageEnVect1.GetObjRect(hobj, rect);
    rect.Left := 0;
    rect.Right := ImageEnVect1.IEBitmap.Width;
    ImageEnVect1.SetObjRect(hobj, rect);
    MoveMultilineVertical(rect.Top);
  end;
//  ImageEnVect1.Update;
end;

procedure TfrmImageEditor2.ImageEnVect1Resize(Sender: TObject);
begin
  lblImageSize.Caption := IntToStr(ImageEnVect1.IEBitmap.Width) + ' * ' + IntToStr(ImageEnVect1.IEBitmap.Height)
end;

procedure TfrmImageEditor2.ImageEnVect1SelectionChanging(Sender: TObject);
var
  sRect : TIERectangle;
begin
  sRect := ImageEnVect1.SelectedRect;
  lblSelSize.Caption := IntToStr(sRect.width) + '*' + IntToStr(sRect.height);
end;

procedure TfrmImageEditor2.ImageEnVect1SelectObject(Sender: TObject);
var
  q, obj: integer;
begin
  ctrlch := true;
  obj := IEV_NEXT_INSERTED_OBJECT; // -1 is next object (new object to insert)
  with ImageEnVect1 do
    for q := -1 to SelObjectsCount - 1 do begin
      if q >= 0 then
        obj := SelObjects[q];
      colorLine.ColorValue := ObjPenColor[obj];
      colorBrush.ColorValue := ObjBrushColor[obj];
      udLineThick.Position := ObjPenWidth[obj];
      cbbBrushStyle.itemindex := ord(ObjBrushStyle[obj]);
      cbbPenStyle.itemindex := ord(ObjPenStyle[obj]);
      cbbStartShape.ItemIndex := ord(ObjBeginShape[obj]);
      cbbEndShape.ItemIndex := ord(ObjEndShape[obj]);
      trkTransfer.Position := ObjTransparency[obj];

      cbbTextAlign.itemindex := ord(ObjTextAlign[obj]);
    end;
  ctrlch := false;
end;

procedure TfrmImageEditor2.ImageEnVect1VectorialChanged(Sender: TObject);
begin
  DRAW_CHANGED := True;
end;

procedure TfrmImageEditor2.MoveMultilineHoriz(X : integer);
var
  obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8 : integer;
  rect1, rect2, rect3, rect4, rect5, rect6, rect7, rect8 : TRect;
begin
  obj1 := ImageEnVect1.GetObjFromName('line1');
  if obj1 > -1 then begin
    rect1.left := X + mLineDistance[0];
    rect1.Right := rect1.left + (mLineRect[0].Right - mLineRect[0].Left);
    rect1.Top := mLineRect[0].Top;
    rect1.Bottom := mLineRect[0].Bottom;
    ImageEnVect1.SetObjRect(obj1, rect1);
  end;
  obj2 := ImageEnVect1.GetObjFromName('line2');
  if obj2 > -1 then begin
    rect2.left := X + mLineDistance[1];
    rect2.Right := rect2.left + (mLineRect[1].Right - mLineRect[1].Left);
    rect2.Top := mLineRect[1].Top;
    rect2.Bottom := mLineRect[1].Bottom;
    ImageEnVect1.SetObjRect(obj2, rect2);
  end;
  obj3 := ImageEnVect1.GetObjFromName('line3');
  if obj3 > -1 then begin
    rect3.left := X + mLineDistance[2];
    rect3.Right := rect3.left + (mLineRect[2].Right - mLineRect[2].Left);
    rect3.Top := mLineRect[2].Top;
    rect3.Bottom := mLineRect[2].Bottom;
    ImageEnVect1.SetObjRect(obj3, rect3);
  end;
  obj4 := ImageEnVect1.GetObjFromName('line4');
  if obj4 > -1 then begin
    rect4.left := X + mLineDistance[3];
    rect4.Right := rect4.left + (mLineRect[3].Right - mLineRect[3].Left);
    rect4.Top := mLineRect[3].Top;
    rect4.Bottom := mLineRect[3].Bottom;
    ImageEnVect1.SetObjRect(obj4, rect4);
  end;
  obj5 := ImageEnVect1.GetObjFromName('line5');
  if obj5 > -1 then begin
    rect5.left := X + mLineDistance[4];
    rect5.Right := rect5.left + (mLineRect[4].Right - mLineRect[4].Left);
    rect5.Top := mLineRect[4].Top;
    rect5.Bottom := mLineRect[4].Bottom;
    ImageEnVect1.SetObjRect(obj5, rect5);
  end;
  obj6 := ImageEnVect1.GetObjFromName('line6');
  if obj6 > -1 then begin
    rect6.left := X + mLineDistance[5];
    rect6.Right := rect6.left + (mLineRect[5].Right - mLineRect[5].Left);
    rect6.Top := mLineRect[5].Top;
    rect6.Bottom := mLineRect[5].Bottom;
    ImageEnVect1.SetObjRect(obj6, rect6);
  end;
  obj7 := ImageEnVect1.GetObjFromName('line7');
  if obj7 > -1 then begin
    rect7.left := X + mLineDistance[6];
    rect7.Right := rect7.left + (mLineRect[6].Right - mLineRect[6].Left);
    rect7.Top := mLineRect[6].Top;
    rect7.Bottom := mLineRect[6].Bottom;
    ImageEnVect1.SetObjRect(obj7, rect7);
  end;
  obj8 := ImageEnVect1.GetObjFromName('line8');
  if obj8 > -1 then begin
    rect8.left := X + mLineDistance[7];
    rect8.Right := rect8.left + (mLineRect[7].Right - mLineRect[7].Left);
    rect8.Top := mLineRect[7].Top;
    rect8.Bottom := mLineRect[7].Bottom;
    ImageEnVect1.SetObjRect(obj8, rect8);
  end;
  //CalcVerticalLines;
end;

procedure TfrmImageEditor2.MoveMultilineVertical(X : integer);
var
  obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8 : integer;
  rect1, rect2, rect3, rect4, rect5, rect6, rect7, rect8 : TRect;
begin
  obj1 := ImageEnVect1.GetObjFromName('line1');
  if obj1 > -1 then begin
    rect1.Top := X + mLineDistance[0];
    rect1.Bottom := rect1.Top + (mLineRect[0].Bottom - mLineRect[0].Top);
    rect1.Left := mLineRect[0].Left;
    rect1.Right := mLineRect[0].Right;
    ImageEnVect1.SetObjRect(obj1, rect1);
  end;
  obj2 := ImageEnVect1.GetObjFromName('line2');
  if obj2 > -1 then begin
    rect2.Top := X + mLineDistance[1];
    rect2.Bottom := rect2.Top + (mLineRect[1].Bottom - mLineRect[1].Top);
    rect2.Left := mLineRect[1].Left;
    rect2.Right := mLineRect[1].Right;
    ImageEnVect1.SetObjRect(obj2, rect2);
  end;
  obj3 := ImageEnVect1.GetObjFromName('line3');
  if obj3 > -1 then begin
    rect3.Top := X + mLineDistance[2];
    rect3.Bottom := rect3.Top + (mLineRect[2].Bottom - mLineRect[2].Top);
    rect3.Left := mLineRect[2].Left;
    rect3.Right := mLineRect[2].Right;
    ImageEnVect1.SetObjRect(obj3, rect3);
  end;
  obj4 := ImageEnVect1.GetObjFromName('line4');
  if obj4 > -1 then begin
    rect4.Top := X + mLineDistance[3];
    rect4.Bottom := rect4.Top + (mLineRect[3].Bottom - mLineRect[3].Top);
    rect4.Left := mLineRect[3].Left;
    rect4.Right := mLineRect[3].Right;
    ImageEnVect1.SetObjRect(obj4, rect4);
  end;
  obj5 := ImageEnVect1.GetObjFromName('line5');
  if obj5 > -1 then begin
    rect5.Top := X + mLineDistance[4];
    rect5.Bottom := rect5.Top + (mLineRect[4].Bottom - mLineRect[4].Top);
    rect5.Left := mLineRect[4].Left;
    rect5.Right := mLineRect[4].Right;
    ImageEnVect1.SetObjRect(obj5, rect5);
  end;
  obj6 := ImageEnVect1.GetObjFromName('line6');
  if obj6 > -1 then begin
    rect6.Top := X + mLineDistance[5];
    rect6.Bottom := rect6.Top + (mLineRect[5].Bottom - mLineRect[5].Top);
    rect6.Left := mLineRect[5].Left;
    rect6.Right := mLineRect[5].Right;
    ImageEnVect1.SetObjRect(obj6, rect6);
  end;
  obj7 := ImageEnVect1.GetObjFromName('line7');
  if obj7 > -1 then begin
    rect7.Top := X + mLineDistance[6];
    rect7.Bottom := rect7.Top + (mLineRect[6].Bottom - mLineRect[6].Top);
    rect7.Left := mLineRect[6].Left;
    rect7.Right := mLineRect[6].Right;
    ImageEnVect1.SetObjRect(obj7, rect7);
  end;
  obj8 := ImageEnVect1.GetObjFromName('line8');
  if obj8 > -1 then begin
    rect8.Top := X + mLineDistance[7];
    rect8.Bottom := rect8.Top + (mLineRect[7].Bottom - mLineRect[7].Top);
    rect8.Left := mLineRect[7].Left;
    rect8.Right := mLineRect[7].Right;
    ImageEnVect1.SetObjRect(obj8, rect8);
  end;
  //CalcHorizontalLines;
end;


end.
