unit ufmLayerEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Menus, iemview, ieview, imageenview,
  ExtCtrls, StdCtrls, ComCtrls, hyiedefs, hyieutils, imageenproc, ieopensavedlg, imageenio, Buttons, iexBitmaps,
  iesettings, iexLayers, iexRulers, iexColorButton, iexLayerMView, iexToolbars, iexDBBitmaps;

type
  TfmLayerEditor = class(TForm)
    Panel1: TPanel;
    pnlMain: TPanel;
    ImageEnView1: TImageEnView;
    dlgSaveImage: TSaveImageEnDialog;
    pnlLeft: TPanel;
    grpMouseAction: TGroupBox;
    chkAddLayer: TCheckBox;
    chkResizeLayers: TCheckBox;
    chkRotateLayers: TCheckBox;
    cmbAddLayer: TComboBox;
    GroupBox2: TGroupBox;
    IELayerMView1: TImageEnLayerMView;
    btnRemove: TButton;
    btnRemoveAll: TButton;
    btnMerge: TButton;
    btnMergeAll: TButton;
    lblSelectedLayer: TLabel;
    lblRectangle: TLabel;
    grpStyle: TGroupBox;
    lblBorderWidth: TLabel;
    lblGradient: TLabel;
    edtBorderWidth: TEdit;
    updBorderWidth: TUpDown;
    chkBorder: TCheckBox;
    chkFill: TCheckBox;
    cmbGradient: TComboBox;
    btnBorderColor: TIEColorButton;
    btnFillColor: TIEColorButton;
    btnFillColor2: TIEColorButton;
    PageControl1: TPageControl;
    tabLine: TTabSheet;
    tabShape: TTabSheet;
    tabImage: TTabSheet;
    lblMagnification: TLabel;
    lblMagnification2: TLabel;
    lblMagnification3: TLabel;
    chkMagnify: TCheckBox;
    trkMagnification: TTrackBar;
    cmbMagnification: TComboBox;
    cmbMagnifySource: TComboBox;
    grpIENOptions: TGroupBox;
    chkStampMode: TCheckBox;
    chkLayerBox: TCheckBox;
    trkZoom: TTrackBar;
    lblZoom: TLabel;
    chkSoftShadow: TCheckBox;
    lblOpacity: TLabel;
    trkOpacity: TTrackBar;
    lblOperation: TLabel;
    cmbOperation: TComboBox;
    lblFeather: TLabel;
    edtEdgeFeather: TEdit;
    updEdgeFeather: TUpDown;
    lblShape: TLabel;
    cmbShape: TComboBox;
    grpGeneral: TGroupBox;
    chkLayerCropped: TCheckBox;
    chkLayerLocked: TCheckBox;
    chkSelectable: TCheckBox;
    chkAspectRatio: TCheckBox;
    chkIsMask: TCheckBox;
    btnCropAlpha: TButton;
    btnRestoreSize: TButton;
    edtShapeSize: TEdit;
    cmbLabelPosition: TComboBox;
    lblLabelPosition: TLabel;
    cmbEndShape: TComboBox;
    lblEndShape: TLabel;
    cmbStartShape: TComboBox;
    lblStartShape: TLabel;
    updShapeSize: TUpDown;
    lblShapeSize: TLabel;
    tabPolyline: TTabSheet;
    chkPolylineClosed: TCheckBox;
    btnSetPolylineTriangle: TButton;
    btnSetPolylineStar: TButton;
    btnClearAllPoints: TButton;
    btnSimplifyPolygon: TButton;
    tabText: TTabSheet;
    lblText: TLabel;
    lblAlignment: TLabel;
    btnSetText: TButton;
    edtText: TEdit;
    cmbAlignment: TComboBox;
    lblTextLayout: TLabel;
    cmbTextLayout: TComboBox;
    chkReadOnly: TCheckBox;
    btnSetFont: TButton;
    btnActivateTextEditor: TButton;
    chkLayerVisible: TCheckBox;
    btnRestoreAR: TButton;
    btnSize: TButton;
    btnCenter: TButton;
    btnConvert: TButton;
    chkAutoSize: TCheckBox;
    lblPreviewQuality: TLabel;
    cmbPreviewQuality: TComboBox;
    ProgressBar1: TProgressBar;
    btnUpdateProps: TButton;
    dlgOpenLayers: TOpenImageEnDialog;
    dlgSaveLayers: TSaveImageEnDialog;
    chkAntiAlias: TCheckBox;
    memProps: TMemo;
    chkLayerCaching: TCheckBox;
    TabSheet1: TTabSheet;
    chkRulerMode: TCheckBox;
    cmbRulerUnits: TComboBox;
    lblTextShape: TLabel;
    cmbTextShape: TComboBox;
    chkWordWrap: TCheckBox;
    lblTextOverflow: TLabel;
    cmbTextOverflow: TComboBox;
    btnSetPolylineHeart: TButton;
    lblModifier: TLabel;
    edtModifier: TEdit;
    updModifier: TUpDown;
    cmbLayerViewStyle: TComboBox;
    lblLayerViewStyle: TLabel;
    Splitter1: TSplitter;
    btnAdd: TButton;
    chkBigButtons: TCheckBox;
    tabAngle: TTabSheet;
    btnSetAngleFont: TButton;
    lblStartAngle: TLabel;
    edtStartAngle: TEdit;
    updStartAngle: TUpDown;
    lblSweepAngle: TLabel;
    edtSweepAngle: TEdit;
    updSweepAngle: TUpDown;
    Button1: TButton;
    btnGroup: TButton;
    btnUnGroup: TButton;

    procedure FormCreate(Sender: TObject);
    procedure btnActivateTextEditorClick(Sender: TObject);
    procedure btnCenterClick(Sender: TObject);
    procedure btnConvertClick(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnClearAllPointsClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure btnMergeClick(Sender: TObject);
    procedure btnCropAlphaClick(Sender: TObject);
    procedure btnMergeAllClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure btnRestoreARClick(Sender: TObject);
    procedure btnRestoreSizeClick(Sender: TObject);
    procedure btnSetFontClick(Sender: TObject);
    procedure btnSetPolylineStarClick(Sender: TObject);
    procedure btnSetPolylineTriangleClick(Sender: TObject);
    procedure btnSetTextClick(Sender: TObject);
    procedure btnSimplifyPolygonClick(Sender: TObject);
    procedure btnSizeClick(Sender: TObject);
    procedure btnUpdatePropsClick(Sender: TObject);
    procedure trkZoomChange(Sender: TObject);
    procedure chkLayerBoxClick(Sender: TObject);
    procedure chkStampModeClick(Sender: TObject);
    procedure chkLayerCachingClick(Sender: TObject);
    procedure Savealllayers1Click(Sender: TObject);
    procedure chkPolylineClosedClick(Sender: TObject);
    procedure MouseActionCtrlClick(Sender: TObject);
    procedure cmbPreviewQualityChange(Sender: TObject);
    procedure cmbShapeDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageEnView1FinishWork(Sender: TObject);
    procedure ImageEnView1NewLayer(Sender: TObject; LayerIdx: Integer; LayerKind: TIELayerKind);
    procedure ImageEnView1Progress(Sender: TObject; per: Integer);
    procedure ZoomItemClick(Sender: TObject);
    procedure LayerControlChange(Sender: TObject);
    procedure StyleControlChange(Sender: TObject);
    procedure chkRulerModeClick(Sender: TObject);
    procedure SavetoSVG1Click(Sender: TObject);
    procedure SaveToPDFClick(Sender: TObject);
    procedure btnSetPolylineHeartClick(Sender: TObject);
    procedure chkBigButtonsClick(Sender: TObject);
    procedure cmbLayerViewStyleChange(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure edtStartAngleChange(Sender: TObject);
    procedure edtSweepAngleChange(Sender: TObject);
    procedure ImageEnView1LayerNotifyEx(Sender: TObject; layer: Integer; event: TIELayerEvent);
    procedure ImageEnView1MouseWheel(Sender: TObject; Shift: TShiftState;
        WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure LayerPropertiesClick(Sender: TObject);
    procedure Undo1Click(Sender: TObject);
    procedure Redo1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
    procedure btnUnGroupClick(Sender: TObject);

  private
    { Private declarations }
    fUpdating : Boolean; // True while controls change programatically. i.e. False if the user has changed a control
    fLastLayerKind: TIELayerKind;

    procedure RefreshControls();
    procedure AssignControlValues(SaveUndo: Boolean = True);
  public
    { Public declarations }
    IMAGE_STREAM, DRAW_STREAM : TMemoryStream;
    IMAGE_FILE : string;
  end;

var
  fmLayerEditor: TfmLayerEditor;

implementation

{$R *.DFM}
{$R ImageEnManifest.res}

uses
  iegdiplus, iexCanvasUtils, Math, iexWindowsFunctions, UdmDBCommon;


procedure TfmLayerEditor.FormCreate(Sender: TObject);
begin
  fUpdating := True;
  IEInitializeComboBox( cmbShape );
  // Enable dragging of thumbnails to rearrange layers and remove layers
  IELayerMView1.LayerOptions := IELayerMView1.LayerOptions + [ lvDragOrdering, lvDragDelete ];
  // Show layer descriptions on hover
  IELayerMView1.ShowThumbnailHint := True;
  IELayerMView1.ReadOnly := False;
  ImageEnView1.Proc.UndoLimit := 30;
  ImageEnView1.LayerOptions := ImageEnView1.LayerOptions + [loAutoUndoChangesByuser, loAutoUndoChangesByCode];
end;

procedure TfmLayerEditor.btnCenterClick(Sender: TObject);
begin
  ImageEnView1.CurrentLayer.PosX := IELayer_Pos_HCenter;
  ImageEnView1.CurrentLayer.PosY := IELayer_Pos_VCenter;
  ImageEnView1.Update();
end;

procedure TfmLayerEditor.btnConvertClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer.Kind = ielkText then
    ImageEnView1.CurrentLayer.ConvertToImageLayer( 1, False )
  else
    ImageEnView1.CurrentLayer.ConvertToImageLayer( 2, False );
  ImageEnView1.Update();
  RefreshControls();
end;

procedure TfmLayerEditor.FormShow(Sender: TObject);
var
  shape: TIEShape;
begin
  cmbShape.Items.Clear;
  cmbTextShape.Items.Clear;
  for shape := Low( TIEShape ) to High( TIEShape ) do
  begin
    // Add index of shape
    cmbShape.Items.Add( IntToStr( ord( shape )));
    cmbTextShape.Items.Add( IntToStr( ord( shape )));
  end;
  cmbShape.ItemIndex := 0;
  cmbTextShape.ItemIndex := 0;
  // Set colors of background
  ImageEnView1.SetChessboardStyle( 16, bsSolid, clWhite, cl3DLight );
  ImageEnView1.SetLayersGripStyle(clBlack,clLime,bsSolid,5,iegsCircle);
  ImageEnView1.LayersResizeAspectRatio := iearLayerDefaultOnCornerGrip;
  ImageEnView1.Center := False;
  ImageEnView1.Blank;
  // Default values
  cmbAddLayer.ItemIndex := ord( ielkShape );
  cmbPreviewQuality.ItemIndex := 1;
  cmbPreviewQualityChange(nil);
  cmbOperation.ItemIndex := ord( ielNormal );
  // Add default text for new text layers
  IEGlobalSettings().DefaultLayerText := 'Double-click to edit text';
  // Avoid selection of the background layer
  ImageEnView1.CurrentLayer.Selectable := False;
  // Allow layers to be double-clicked to edit their properties
  ImageEnView1.LayerOptions := ImageEnView1.LayerOptions + [ loPropsOnDblClick ];
  fUpdating := False;
  ImageEnView1.IO.LoadFromStream(IMAGE_STREAM);
  if Assigned(DRAW_STREAM) then
    ImageEnView1.IO.LoadFromStream(DRAW_STREAM);
  MouseActionCtrlClick(nil);
  RefreshControls();
  fLastLayerKind := TIELayerKind( -1 );
end;


// open...
procedure TfmLayerEditor.Open1Click(Sender: TObject);
begin
//  if ImageEnView1.CurrentLayer.Kind <> ielkImage then
//    ImageEnView1.LayersAdd
//  else
//  if not ImageEnView1.IsEmpty and (MessageDlg('Add a layer?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
//    ImageEnView1.LayersAdd;
//
//  ImageEnView1.IO.Params.PSD_LoadLayers := true;
//  with ImageEnView1.IO do
//    LoadFromFile(ExecuteOpenDialog('', '', false, 1, ''));
//
//  RefreshControls();
end;

// add new layer
procedure TfmLayerEditor.btnAddClick(Sender: TObject);
begin
  ImageEnView1.LayersAdd( TIELayerKind( cmbAddLayer.ItemIndex ));
  if ImageEnView1.CurrentLayer.Kind = ielkImage then
    TIEImageLayer( ImageEnView1.CurrentLayer ).ExecuteOpenDialog();

  ImageEnView1.CurrentLayer.Width := 100;
  ImageEnView1.CurrentLayer.Height := 100;

  RefreshControls();
end;

// remove selected layer
procedure TfmLayerEditor.btnRemoveClick(Sender: TObject);
begin
  ImageEnView1.LayersRemove();
  RefreshControls();
end;

// exit
procedure TfmLayerEditor.Exit1Click(Sender: TObject);
begin
end;

// merge selected layers
procedure TfmLayerEditor.btnMergeClick(Sender: TObject);
begin
  ImageEnView1.LayersMerge();
  RefreshControls();
end;

procedure TfmLayerEditor.btnCropAlphaClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEImageLayer then
    TIEImageLayer( ImageEnView1.CurrentLayer ).CropAlpha();
  ImageEnView1.Update();
end;

procedure TfmLayerEditor.btnGroupClick(Sender: TObject);
begin
  ImageEnView1.LayersGroup(True);
end;

procedure TfmLayerEditor.btnUnGroupClick(Sender: TObject);
begin
  ImageEnView1.LayersUngroup(True);
end;

procedure TfmLayerEditor.btnMergeAllClick(Sender: TObject);
begin
  ImageEnView1.LayersMergeAll( True );
  RefreshControls();
end;

// Remove all layers
procedure TfmLayerEditor.btnRemoveAllClick(Sender: TObject);
begin
  ImageEnView1.LayersClear();
  RefreshControls();
end;

procedure TfmLayerEditor.btnRestoreARClick(Sender: TObject);
begin
  ImageEnView1.CurrentLayer.RestoreAspectRatio( False );
  ImageEnView1.Update();
end;


procedure TfmLayerEditor.btnSizeClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIETextLayer then
    TIETextLayer( ImageEnView1.CurrentLayer ).SizeToText;
  ImageEnView1.Update();
end;


// zoom
procedure TfmLayerEditor.trkZoomChange(Sender: TObject);
begin
  ImageEnView1.Zoom := trkZoom.Position;
end;


procedure TfmLayerEditor.Redo1Click(Sender: TObject);
begin
  ImageEnView1.Proc.Redo(True);
  RefreshControls();
end;

procedure TfmLayerEditor.Undo1Click(Sender: TObject);
begin
  ImageEnView1.Proc.Undo(True);
  RefreshControls();
end;

// Show Layers Box
procedure TfmLayerEditor.chkLayerBoxClick(Sender: TObject);
begin
  ImageEnView1.LayersDrawBox := chkLayerBox.Checked;
end;

// Stamp Mode
procedure TfmLayerEditor.chkStampModeClick(Sender: TObject);
begin
  if chkStampMode.Checked then
    ImageEnView1.LayerOptions := ImageEnView1.LayerOptions + [ loStampMode ]
  else
    ImageEnView1.LayerOptions := ImageEnView1.LayerOptions - [ loStampMode ];
end;

// load all layers
procedure TfmLayerEditor.Savealllayers1Click(Sender: TObject);
begin
end;

// save layers merged
procedure TfmLayerEditor.MouseActionCtrlClick(Sender: TObject);
begin
  if fUpdating then
    exit;

  fUpdating := True;

  ImageEnView1.MouseInteractLayers := [];

  if chkAddLayer.Checked then
    case TIELayerKind( cmbAddLayer.ItemIndex ) of
      ielkImage     : ImageEnView1.MouseInteractLayers := [ mlCreateImageLayers ];
      ielkShape     : ImageEnView1.MouseInteractLayers := [ mlCreateShapeLayers ];
      ielkText      : ImageEnView1.MouseInteractLayers := [ mlCreateTextLayers  ];
      ielkLine      : ImageEnView1.MouseInteractLayers := [ mlCreateLineLayers  ];  // Or click create using mlClickCreateLineLayers
      ielkPolyline  : ImageEnView1.MouseInteractLayers := [ mlCreatePolylineLayers ];  // Or click create using mlClickCreatePolylineLayers
      ielkAngle     : ImageEnView1.MouseInteractLayers := [ mlCreateAngleLayers ];  // Or click create using mlClickCreateAngleLayers
    end;

  if chkResizeLayers.Checked then
    ImageEnView1.MouseInteractLayers := ImageEnView1.MouseInteractLayers + [ mlMoveLayers, mlResizeLayers];

  if chkRotateLayers.Checked then
    ImageEnView1.MouseInteractLayers := ImageEnView1.MouseInteractLayers + [mlRotateLayers];

  fUpdating := False;
end;



// Generic method to set all layer preview settings as either fast (low quality), best (high quality) or best after delay (low quality, that changes to high quality after a moment)
// Note: These settings only affect the preview (onscreen display) of the layer. The quality of images created with layers is not affected (always high quality).
type TIELayersPreviewQuality = ( iepqFast, iepqBestDelayed, iepqBest );
procedure SetLayersPreviewQuality(ImageEnView: TImageEnView; Quality: TIELayersPreviewQuality);
begin
  // Seperate code to make it easier to understand

  if Quality = iepqFast then
  begin
    // FASTEST DISPLAY

    // Zoom filter
    ImageEnView.ZoomFilter := rfNone;
    ImageEnView.DelayZoomFilter := False;

    // Rotation anti-alias
    ImageEnView.LayersRotationFilter := ierBicubic;
    ImageEnView.LayersRotationUseFilterOnPreview := False;

    // Fast drawing
    ImageEnView.LayersFastDrawing := iefFast;
  end
  else
  if Quality = iepqBestDelayed then
  begin
    // DELAYED HIGH QUALITY

    // Zoom filter
    ImageEnView.ZoomFilter := rfLanczos3;
    ImageEnView.DelayZoomFilter := True;

    // Rotation anti-alias
    ImageEnView.LayersRotationFilter := ierBicubic;
    ImageEnView.LayersRotationUseFilterOnPreview := True;

    // Fast drawing
    ImageEnView.LayersFastDrawing := iefDelayed;
  end
  else
  // iepqBest
  begin
    // HIGH QUALITY

    // Zoom filter
    ImageEnView.ZoomFilter := rfLanczos3;
    ImageEnView.DelayZoomFilter := False;

    // Rotation anti-alias
    ImageEnView.LayersRotationFilter := ierBicubic;
    ImageEnView.LayersRotationUseFilterOnPreview := True;

    // Fast drawing
    ImageEnView.LayersFastDrawing := iefNormal;
  end;

  ImageEnView.Update();
end;

// Set preview quality of layers
procedure TfmLayerEditor.cmbPreviewQualityChange(Sender: TObject);
const
 _cmbPreviewQuality_Fast          = 0;
 _cmbPreviewQuality_Delayed_Best  = 1;
 _cmbPreviewQuality_Best          = 2;
begin
  SetLayersPreviewQuality( ImageEnView1, TIELayersPreviewQuality( cmbPreviewQuality.ItemIndex ));
end;


procedure TfmLayerEditor.LayerControlChange(Sender: TObject);
var
  saveUndo: Boolean;
begin
  if fUpdating then
    exit;

  // Center text when change text shape to other than rectangular
  if ( Sender = cmbTextShape ) and
     ( cmbTextShape.ItemIndex >= 0 ) and
     ( not ( TIEShape( StrToIntDef( cmbTextShape.Items[ cmbTextShape.ItemIndex ], 0 )) in [ iesRectangle, iesRoundRect ])) then
  begin
    cmbAlignment.ItemIndex  := ord( iejCenter);
    cmbTextLayout.ItemIndex := ord( ielCenter);
  end;

  // Don't bother saving undo for TEdit controls (linked to TUpDown) which change frequently
  saveUndo := not ( Sender is TEdit);
  AssignControlValues(saveUndo);
  RefreshControls();
end;


procedure TfmLayerEditor.ImageEnView1NewLayer(Sender: TObject; LayerIdx: Integer; LayerKind: TIELayerKind);
begin
  // Assign default properties for new objects
  case LayerKind of
    ielkPolyline : if mlCreatePolylineLayers in ImageEnView1.MouseInteractLayers then // This ensures we don't fill the points when drawing our own polyline using mlClickCreatePolylineLayer
                     TIEPolylineLayer( ImageEnView1.CurrentLayer ).SetPoints( iesExplosion, True );
    ielkText     : TIETextLayer( ImageEnView1.CurrentLayer ).Text := 'Double-click to edit text';
  end;

  // If we are adding the same type of object as selected then inherit
  if fLastLayerKind = LayerKind then
    AssignControlValues(False);
  ImageEnView1.CurrentLayer.Visible := True;          // In case layer we inherited from is hidden
  ImageEnView1.CurrentLayer.Selectable := True;
  ImageEnView1.CurrentLayer.Locked  := LayerIdx <= 0;  // Only lock background layer, by default
end;


procedure TfmLayerEditor.StyleControlChange(Sender: TObject);
var
  borderAvail, fillAvail, gradientAvail: Boolean;
begin
  borderAvail := chkBorder.Enabled and chkBorder.Checked;
  lblBorderWidth.Enabled := borderAvail;
  btnBorderColor.Enabled := borderAvail;
  edtBorderWidth.Enabled := borderAvail;
  updBorderWidth.Enabled := borderAvail;

  fillAvail := chkFill.Enabled and chkFill.Checked;
  btnFillColor.Enabled := fillAvail;

  gradientAvail := fillAvail and ImageEnView1.CurrentLayer.SupportsFeature( ielfGradient );
  lblGradient.Enabled := gradientAvail;
  cmbGradient.Enabled := gradientAvail;

  btnFillColor2.Enabled := gradientAvail and ( cmbGradient.ItemIndex > 0 );

  if not fUpdating then
    AssignControlValues();
end;

procedure TfmLayerEditor.ZoomItemClick(Sender: TObject);
var
  newZoom: Integer;
begin
  newZoom := TMenuItem( Sender ).tag;
  if newZoom > 1 then
    ImageEnView1.Zoom := newZoom
  else
    ImageEnView1.Fit();
end;


procedure TfmLayerEditor.btnActivateTextEditorClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIETextLayer then
    TIETextLayer( ImageEnView1.CurrentLayer ).ActivateEditor()
  else
  if ImageEnView1.CurrentLayer is TIELineLayer then
    TIELineLayer( ImageEnView1.CurrentLayer ).ActivateEditor();
end;

procedure TfmLayerEditor.btnClearAllPointsClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEPolylineLayer then
    TIEPolylineLayer( ImageEnView1.CurrentLayer ).ClearAllPoints();
  ImageEnView1.Update();
end;

procedure TfmLayerEditor.btnRestoreSizeClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEImageLayer then
    TIEImageLayer( ImageEnView1.CurrentLayer ).RestoreSize();
  ImageEnView1.Update();
end;

procedure TfmLayerEditor.btnSetFontClick(Sender: TObject);
var
  dlgFont : TFontDialog;
begin
  dlgFont := TFontDialog.Create( nil );
  With ImageEnView1 do
    case CurrentLayer.Kind of
      ielkText : begin
                   dlgFont.Font.Assign( TIETextLayer( CurrentLayer ).Font );
                   if dlgFont.Execute then
                     TIETextLayer( CurrentLayer ).Font.Assign( dlgFont.Font );
                 end;
      ielkLine : begin
                   dlgFont.Font.Assign( TIELineLayer( CurrentLayer ).LabelFont );
                   if dlgFont.Execute then
                    TIELineLayer( CurrentLayer ).LabelFont.Assign( dlgFont.Font );
                 end;
      ielkAngle: begin
                   dlgFont.Font.Assign( TIEAngleLayer( CurrentLayer ).LabelFont );
                   if dlgFont.Execute then
                    TIEAngleLayer( CurrentLayer ).LabelFont.Assign( dlgFont.Font );
                 end;
    end;
  ImageEnView1.Update();
  dlgFont.Free;
end;

procedure TfmLayerEditor.btnSetPolylineStarClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEPolylineLayer then
    TIEPolylineLayer( ImageEnView1.CurrentLayer ).SetPoints( iesStar5, True );
  ImageEnView1.Update();
end;

procedure TfmLayerEditor.btnSetPolylineTriangleClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEPolylineLayer then
    With TIEPolylineLayer( ImageEnView1.CurrentLayer ) do
    begin
      ClearAllPoints();
      AddPoint( 500, 0 );
      AddPoint( 1000, 1000 );
      AddPoint( 0, 1000 );
      PolylineClosed := True;
    end;
  ImageEnView1.Update();
end;

procedure TfmLayerEditor.btnSetTextClick(Sender: TObject);
begin
  With ImageEnView1 do
    case CurrentLayer.Kind of
      ielkText: TIETextLayer( CurrentLayer ).Text := edtText.Text;
      ielkLine: TIELineLayer( CurrentLayer ).LabelText := edtText.Text;
    end;
  ImageEnView1.Update();
end;

procedure TfmLayerEditor.btnSimplifyPolygonClick(Sender: TObject);
var
  pointCount: Integer;
begin
  if ImageEnView1.CurrentLayer is TIEPolylineLayer then
  begin
    // Halve existing points
    pointCount := Ceil( TIEPolylineLayer( ImageEnView1.CurrentLayer ).PointCount / 2 );
    if pointCount < 3 then
      raise Exception.create( 'Polyline does not have enough points to simplify' );

    TIEPolylineLayer( ImageEnView1.CurrentLayer ).SimplifyPolygon( pointCount );
    ImageEnView1.Update();
    RefreshControls();
  end;
end;


// refresh controls with the layer content
procedure TfmLayerEditor.RefreshControls();
var
  isImageLayer, isShapeLayer, isLineLayer, isPolylineLayer,
  isAngleLayer, isTextLayer: Boolean;
  lyr: TIELayer;
begin
  fUpdating := True;
  lyr := ImageEnView1.CurrentLayer;
  fLastLayerKind := lyr.Kind;
  case lyr.Kind of
    ielkImage     : lblSelectedLayer.Caption := format( 'Layer %d (Image)', [ ImageEnView1.LayersCurrent ]);
    ielkShape     : lblSelectedLayer.Caption := format( 'Layer %d (Shape)', [ ImageEnView1.LayersCurrent ]);
    ielkLine      : lblSelectedLayer.Caption := format( 'Layer %d (Line)', [ ImageEnView1.LayersCurrent ]);
    ielkPolyline  : lblSelectedLayer.Caption := format( 'Layer %d (Polyline)', [ ImageEnView1.LayersCurrent ]);
    ielkAngle     : lblSelectedLayer.Caption := format( 'Layer %d (Angle)', [ ImageEnView1.LayersCurrent ]);
    ielkText      : lblSelectedLayer.Caption := format( 'Layer %d (Text)', [ ImageEnView1.LayersCurrent ]);
    else            lblSelectedLayer.Caption := 'ERROR!';
  end;
  isImageLayer    := lyr is TIEImageLayer;
  isShapeLayer    := lyr is TIEShapeLayer;
  isLineLayer     := lyr is TIELineLayer ;
  isPolylineLayer := lyr is TIEPolylineLayer ;
  isAngleLayer    := lyr is TIEAngleLayer ;
  isTextLayer     := lyr is TIETextLayer;
  // GENERAL PROPERTIES
  chkLayerVisible.Checked   := lyr.Visible;
  chkLayerCropped.Checked   := lyr.Cropped;
  chkLayerLocked.Checked    := lyr.Locked;
  chkSelectable.Checked     := lyr.Selectable;
  chkAspectRatio.Checked    := lyr.AspectRatioLocked;
  with lyr do
    lblRectangle.Caption := 'X: ' + IntToStr(PosX) + ', Y: ' + IntToStr(PosY) + ', W: ' + IntToStr(Width) + ', H: ' + IntToStr(Height);

  // SHARED STYLE PROPERTIES
  chkBorder.Enabled := lyr.SupportsFeature( ielfBorder );
  chkBorder.Checked := ( lyr.BorderColor <> clNone ) and ( lyr.BorderWidth > 0 );
  if chkBorder.Checked then begin
    btnBorderColor.SelectedColor := lyr.BorderColor;
    updBorderWidth.Position := lyr.BorderWidth;
  end else begin
    btnBorderColor.SelectedColor := clBlack;
    updBorderWidth.Position := 1;
  end;

  chkFill.Enabled := lyr.SupportsFeature( ielfFill );
  chkFill.Checked := lyr.FillColor <> clNone;
  if chkFill.Checked then
    btnFillColor.SelectedColor := lyr.FillColor
  else
    btnFillColor.SelectedColor := clRed;
  btnFillColor.Enabled := chkFill.Enabled and chkFill.Checked;

  cmbGradient.Enabled := chkFill.Enabled and chkFill.Checked and lyr.SupportsFeature( ielfGradient );
  if lyr.FillColor2 = clNone then begin
    btnFillColor2.SelectedColor := clBlue;
    cmbGradient.ItemIndex := 0;
  end else begin
    btnFillColor2.SelectedColor := lyr.FillColor2;
    cmbGradient.ItemIndex := 1 + ord( lyr.FillGradient );
  end;
  lblGradient.Enabled := cmbGradient.Enabled;
  btnFillColor2.Enabled := lblGradient.Enabled and ( cmbGradient.ItemIndex > 0 );

  trkOpacity.Position  := trunc(lyr.Opacity * 100);
  chkSoftShadow.Checked := lyr.SoftShadow.Enabled;
  cmbOperation.ItemIndex := max( ord( ielNormal ), ord( lyr.Operation ));
  updEdgeFeather.Position := lyr.AlphaEdgeFeathering;
  chkAntiAlias.Checked :=  lyr.AntiAlias;

  // IMAGE PROPERTIES
  // Magnify properties
  chkMagnify.Enabled        := isImageLayer;
  cmbMagnification.Enabled  := isImageLayer;
  trkMagnification.Enabled  := isImageLayer;
  cmbMagnifySource.Enabled  := isImageLayer;
  lblMagnification .Enabled  := isImageLayer;
  lblMagnification2.Enabled  := isImageLayer;
  lblMagnification3.Enabled  := isImageLayer;

  btnCropAlpha.Enabled      := isImageLayer;
  btnRestoreSize.Enabled    := isImageLayer;

  chkIsMask.Enabled  := isImageLayer;
  if isImageLayer then
    with TIEImageLayer( lyr ) do begin
      chkMagnify.Checked  := Magnify.Enabled;
      cmbMagnification.ItemIndex := integer( Magnify.Style );
      cmbMagnifySource.ItemIndex := integer( Magnify.Source );
      trkMagnification.Position  := trunc( Magnify.Rate * 10 );
      chkIsMask.Checked  := IsMask;
    end;
  // SHAPE PROPERTIES
  cmbShape.Enabled := isShapeLayer;
  lblShape.Enabled := isShapeLayer;
  lblModifier.Enabled := isShapeLayer and ( TIEShapeLayer( lyr ).Shape in Shapes_Supporting_Modifier );
  edtModifier.Enabled := lblModifier.Enabled;
  updModifier.Enabled := lblModifier.Enabled;
  if isShapeLayer then
    with TIEShapeLayer( lyr ) do begin
      cmbShape.ItemIndex := ord( Shape );
      updModifier.Position := ShapeModifier;
    end;

  // LINE PROPERTIES
  lblStartShape .Enabled := isLineLayer;
  cmbStartShape .Enabled := isLineLayer;

  lblEndShape   .Enabled := isLineLayer;
  cmbEndShape   .Enabled := isLineLayer;

  lblShapeSize  .Enabled := isLineLayer;
  edtShapeSize  .Enabled := isLineLayer;
  updShapeSize  .Enabled := isLineLayer;

  lblLabelPosition.Enabled := isLineLayer;
  cmbLabelPosition.Enabled := isLineLayer;

  chkRulerMode  .Enabled := isLineLayer;
  cmbRulerUnits .Enabled := isLineLayer and chkRulerMode.Checked;

  if isLineLayer then
    with TIELineLayer( lyr ) do begin
      cmbStartShape.ItemIndex := ord( StartShape );
      cmbEndShape.ItemIndex := ord( EndShape );
      updShapeSize.Position := ShapeSize;
      cmbLabelPosition.ItemIndex := ord( LabelPosition );

      // Text Label properties
      edtText.Text := LabelText;
      cmbAlignment.ItemIndex := ord( LabelAlignment );
      cmbTextOverflow.ItemIndex := ord( TextOverflow );
      cmbTextShape.ItemIndex := ord( LabelShape );
      chkRulerMode  .checked := IsRuler;
      cmbRulerUnits .ItemIndex := ord( RulerUnits );
      chkReadOnly.checked := ReadOnly;
    end;
  // POLYLINE PROPERTIES
  chkPolylineClosed      .Enabled := isPolylineLayer;
  btnClearAllPoints      .Enabled := isPolylineLayer;
  btnSetPolylineStar     .Enabled := isPolylineLayer;
  btnSetPolylineTriangle .Enabled := isPolylineLayer;
  btnSetPolylineHeart    .Enabled := isPolylineLayer;
  btnSimplifyPolygon     .Enabled := isPolylineLayer;
  if isPolylineLayer then
    with TIEPolylineLayer( lyr ) do begin
      chkPolylineClosed.checked := PolylineClosed;
    end;
  // ANGLE PROPERTIES
  lblStartAngle   .Enabled := isAngleLayer;
  edtStartAngle   .Enabled := isAngleLayer;
  updStartAngle   .Enabled := isAngleLayer;
  lblSweepAngle   .Enabled := isAngleLayer;
  edtSweepAngle   .Enabled := isAngleLayer;
  updSweepAngle   .Enabled := isAngleLayer;
  btnSetAngleFont .Enabled := isAngleLayer;
  if isAngleLayer then begin
    updStartAngle.Position := Round( TIEAngleLayer( lyr ).StartAngle );
    updSweepAngle.Position := Round( TIEAngleLayer( lyr ).SweepAngle );
  end;
  // TEXT PROPERTIES
  cmbTextLayout .Enabled := isTextLayer;
  lblTextLayout .Enabled := isTextLayer;

  if lyr is TIETextLayer then
    with TIETextLayer( lyr ) do begin
      edtText.Text := Text;
      cmbAlignment.ItemIndex := ord( Alignment );
      chkAutoSize.checked := AutoSize;
      chkReadOnly.checked := ReadOnly;
      cmbTextOverflow.ItemIndex := ord( TextOverflow );
      chkWordWrap.checked := WordWrap;
      cmbTextLayout.ItemIndex := ord( Layout );
      cmbTextShape.ItemIndex := ord( BorderShape );
    end;
  // SHARED CONTROLS
  btnCenter.Enabled := ImageEnView1.LayersCurrent > 0;
  chkAutoSize.Enabled := lyr.Kind in [ ielkText ];
  chkReadOnly.Enabled := lyr.Kind in [ ielkText, ielkLine ];
  chkWordWrap  .Enabled := lyr.Kind in [ ielkText ];
  btnActivateTextEditor.Enabled := lyr.Kind in [ ielkText, ielkLine ];
  edtText.Enabled := lyr.Kind in [ ielkText, ielkLine ];
  btnSetText.Enabled   := edtText.Enabled;
  btnSetFont.Enabled   := edtText.Enabled;
  lblText   .Enabled   := edtText.Enabled;
  cmbAlignment.Enabled := edtText.Enabled;
  lblAlignment.Enabled := edtText.Enabled;
  cmbTextOverflow.Enabled   := edtText.Enabled;
  lblTextOverflow.Enabled   := edtText.Enabled;
  cmbTextShape.Enabled := edtText.Enabled;
  lblTextShape.Enabled := edtText.Enabled;
  btnSize.Enabled := lyr.Kind = ielkText;

  case lyr.Kind of
    ielkImage     : PageControl1.ActivePage := tabImage;
    ielkShape     : PageControl1.ActivePage := tabShape;
    ielkLine      : PageControl1.ActivePage := tabLine;
    ielkPolyline  : PageControl1.ActivePage := tabPolyline;
    ielkAngle     : PageControl1.ActivePage := tabAngle;
    ielkText      : PageControl1.ActivePage := tabText;
  end;

  lyr.GetProperties( memProps.Lines );
  fUpdating := False;
end;

// Apply our control values to the current layer
procedure TfmLayerEditor.AssignControlValues(SaveUndo: Boolean = True);
var
  lyr: TIELayer;
begin
  if fUpdating then exit;

  if SaveUndo then
    ImageEnView1.Proc.SaveUndo( 'Update Layer Properties', ieuLayer, True );

  lyr := ImageEnView1.CurrentLayer;

  // GENERAL PROPERTIES
  lyr.AspectRatioLocked := chkAspectRatio.Checked;
  lyr.Visible := chkLayerVisible.checked;
  lyr.Selectable := chkSelectable.Checked;
  lyr.Locked := chkLayerLocked.Checked;
  lyr.Cropped := chkLayerCropped.checked;

  // SHARED STYLE PROPERTIES
  if chkBorder.checked = False then
    lyr.BorderColor := clNone
  else begin
    lyr.BorderColor := btnBorderColor.SelectedColor;
    lyr.BorderWidth := updBorderWidth.Position;
  end;

  if chkFill.checked = False then
    lyr.FillColor := clNone
  else
    lyr.FillColor := btnFillColor.SelectedColor;
  if cmbGradient.ItemIndex = 0 then
    lyr.FillColor2 := clNone
  else begin
    lyr.FillColor2   := btnFillColor2.SelectedColor;
    lyr.FillGradient := TIELayerGradient( cmbGradient.ItemIndex - 1 );
  end;

  lyr.SoftShadow.Enabled := chkSoftShadow.Checked;
  lyr.AlphaEdgeFeathering := updEdgeFeather.Position;
  lyr.Opacity := trkOpacity.Position / 100;
  if cmbOperation.ItemIndex >= 0 then
    lyr.Operation := TIERenderOperation( cmbOperation.ItemIndex );
  lyr.AntiAlias := chkAntiAlias.Checked;

  // IMAGE PROPERTIES
  if ( lyr is TIEImageLayer ) and ( cmbMagnification.ItemIndex > -1 ) then
    with TIEImageLayer( lyr ) do begin
      lyr.IsMask := chkIsMask.Checked;
      Magnify.Enabled := chkMagnify.checked;
      Magnify.Rate := trkMagnification.Position / 10;
      Magnify.Style := TIEMagnifyStyle( cmbMagnification.ItemIndex );
      Magnify.Source := TIEMagnifySource( cmbMagnifySource.ItemIndex );
    end;

  // SHAPE PROPERTIES
  if lyr is TIEShapeLayer then
    with TIEShapeLayer( lyr ) do begin
      Shape := TIEShape( cmbShape.ItemIndex );
      ShapeModifier := updModifier.Position;
    end;

  // LINE PROPERTIES
  if lyr is TIELineLayer then
    with TIELineLayer( lyr ) do begin
      TextOverflow := TIETextOverflow( cmbTextOverflow.ItemIndex );
      LabelAlignment := TIEAlignment( cmbAlignment.ItemIndex );
      StartShape := TIELineEndShape( cmbStartShape.ItemIndex );
      EndShape := TIELineEndShape( cmbEndShape.ItemIndex );
      ShapeSize := updShapeSize.Position;
      if cmbTextShape.ItemIndex >= 0 then
        LabelShape := TIEShape( cmbTextShape.ItemIndex );
      LabelPosition := TIELineLabelPos( cmbLabelPosition.ItemIndex );
      ReadOnly := chkReadOnly.checked;

      IsRuler := chkRulerMode.checked;
      RulerUnits := TIEUnits( cmbRulerUnits .ItemIndex );
    end;

  // POLYLINE PROPERTIES
  // ANGLE PROPERTIES
  // TEXT PROPERTIES

  if lyr is TIETextLayer then
    with TIETextLayer( lyr ) do begin
      TextOverflow := TIETextOverflow( cmbTextOverflow.ItemIndex );
      Alignment := TIEAlignment( cmbAlignment.ItemIndex );
      AutoSize := chkAutoSize.checked;
      ReadOnly := chkReadOnly.checked;
      WordWrap := chkWordWrap.checked;
      Layout := TIELayout( cmbTextLayout.ItemIndex );
      if cmbTextShape.ItemIndex >= 0 then
        BorderShape := TIEShape( cmbTextShape.ItemIndex );
    end;

  ImageEnView1.Update();
end;


procedure TfmLayerEditor.chkPolylineClosedClick(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEPolylineLayer then
    TIEPolylineLayer( ImageEnView1.CurrentLayer ).PolylineClosed := chkPolylineClosed.checked;
  ImageEnView1.Update();
end;


procedure TfmLayerEditor.btnUpdatePropsClick(Sender: TObject);
begin
  ImageEnView1.CurrentLayer.SetProperties( memProps.Lines );
  ImageEnView1.Update();
  RefreshControls();
end;


procedure TfmLayerEditor.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmLayerEditor.SavetoSVG1Click(Sender: TObject);
var
  filename: string;
begin
  ImageEnView1.IO.Params.SVG_ImageCompression := ioJPEG;
  filename := WindowsTempFolder() + 'Export.svg';
  ImageEnView1.IO.SaveToFile( filename );
  if not ImageEnView1.IO.Aborting then
    WindowsLaunchFile( Handle, filename );
end;


procedure TfmLayerEditor.cmbShapeDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  shapeColor: TColor;
begin
  shapeColor := $000909D5;
  if ImageEnView1.CurrentLayer is TIEShapeLayer and ( ImageEnView1.CurrentLayer.FillColor <> clNone ) then
    shapeColor := ImageEnView1.CurrentLayer.FillColor;
  IEDrawShapeToComboListBoxItem( TComboBox( Control ).Canvas, Rect, Control.Enabled, TIEShape( Index ), shapeColor );
end;


procedure TfmLayerEditor.ImageEnView1FinishWork(Sender: TObject);
begin
  ProgressBar1.Visible := False;
end;


procedure TfmLayerEditor.ImageEnView1Progress(Sender: TObject; per: Integer);
begin
  ProgressBar1.Position := per;
  ProgressBar1.Visible := True;
end;

procedure TfmLayerEditor.chkLayerCachingClick(Sender: TObject);
begin
  if chkLayerCaching.Checked then
    ImageEnView1.LayersCaching := -1
  else
    ImageEnView1.LayersCaching := 0;
end;

procedure TfmLayerEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ImageEnView1.LayersEditingLayer > -1 then
    if MessageDlg( 'Save changes to text?', mtConfirmation, [ mbYes,mbNo ], 0 ) = mrYes then
      ImageEnView1.LayersCancelEditor( True );
end;

procedure TfmLayerEditor.chkRulerModeClick(Sender: TObject);
begin
  cmbRulerUnits.Enabled := chkRulerMode.Enabled and chkRulerMode.Checked;
  LayerControlChange(nil);
end;

procedure TfmLayerEditor.btnSetPolylineHeartClick(Sender: TObject);
var
  polyLayer: TIEPolylineLayer;
begin
  // Draw a red heart
  if ImageEnView1.CurrentLayer.Kind <> ielkPolyline then
    exit;

  polyLayer := TIEPolylineLayer( ImageEnView1.CurrentLayer );
  polyLayer.ClearAllPoints();
  polyLayer.AddPoint( 100, 500 );
  polyLayer.AddCurvePoints( -1, Point( 500, 200 ), 20 );
  polyLayer.AddCurvePoints( -1, Point( 900, 500 ), 20 );
  polyLayer.AddPoint( 500, 1000 );
  polyLayer.PolylineClosed := True;
  ImageEnView1.Update();

  RefreshControls();
end;


procedure TfmLayerEditor.chkBigButtonsClick(Sender: TObject);
begin
  IELayerMView1.SetButtonParams( iecpAutomatic, False, 6, 6, 4, not chkBigButtons.checked );
end;


procedure TfmLayerEditor.cmbLayerViewStyleChange(Sender: TObject);
const
  _cmbLayerViewStyle_Thumbnails  = 0;
  _cmbLayerViewStyle_Information = 1;
  _cmbLayerViewStyle_Columns     = 2;
begin
  case cmbLayerViewStyle.ItemIndex of
    _cmbLayerViewStyle_Thumbnails  : IELayerMView1.Style := iemsFlat;
    _cmbLayerViewStyle_Information : IELayerMView1.Style := iemsFlatAndWide;
    _cmbLayerViewStyle_Columns     : IELayerMView1.Style := iemsColumns;
  end;

  // Make more space for column buttons (or you could hide them)
  if ( cmbLayerViewStyle.ItemIndex = _cmbLayerViewStyle_Columns ) and ( pnlLeft.Width < 450 ) then
    pnlLeft.Width := 450;
end;

procedure TfmLayerEditor.Edit1Click(Sender: TObject);
begin
  // Refresh undo/redo captions
  RefreshControls();
end;

procedure TfmLayerEditor.edtStartAngleChange(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEAngleLayer then
    with TIEAngleLayer( ImageEnView1.CurrentLayer ) do
    begin
      StartAngle := updStartAngle.Position;
      updSweepAngle.Position := Round( SweepAngle );
    end;

  AssignControlValues(False);
end;

procedure TfmLayerEditor.edtSweepAngleChange(Sender: TObject);
begin
  if ImageEnView1.CurrentLayer is TIEAngleLayer then
    TIEAngleLayer( ImageEnView1.CurrentLayer ).SweepAngle := updSweepAngle.Position;

  AssignControlValues(False);
end;


// layer change by user action
procedure TfmLayerEditor.ImageEnView1LayerNotifyEx(Sender: TObject; layer: Integer; event: TIELayerEvent);
begin
  // Events that change the way layers look
  if event in [ ielSelected, ielDeselected, ielMoved, ielResized, ielRotated, ielCreated, ielAction, ielEdited, ielRemoved, ielArranged ] then
    RefreshControls();

  if ( event in [ ielSelected, ielMoved, ielCreated, ielCreating, ielResized, ielMoving, ielResizing ]) and ( layer >= 0 ) then
    with ImageEnView1.Layers[layer] do
      lblRectangle.Caption := 'X: ' + IntToStr(PosX) + ', Y: ' + IntToStr(PosY) + ', W: ' + IntToStr(Width) + ', H: ' + IntToStr(Height);

  //LayerProperties.Enabled := ( ImageEnView1.LayersCurrent > 0 ) or not ImageEnView1.IsEmpty;
end;

procedure TfmLayerEditor.ImageEnView1MouseWheel(Sender: TObject; Shift: TShiftState;
    WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  shplyr: TIEShapeLayer;
  txtlyr: TIETextLayer;
begin
  // Navigate shapes of Shape layers using mouse wheel
  if ( ImageEnView1.LayersCurrent > 0 ) and ( ImageEnView1.CurrentLayer.Kind = ielkShape ) then
  begin
    shplyr :=  TIEShapeLayer( ImageEnView1.CurrentLayer );
    if WheelDelta < 0 then
    begin
      if shplyr.Shape = High( TIEShape ) then
        shplyr.Shape := Low( TIEShape )
      else
        shplyr.Shape := TIEShape( ord( shplyr.Shape ) + 1 );
    end
    else
    begin
      if shplyr.Shape = Low( TIEShape ) then
        shplyr.Shape := High( TIEShape )
      else
        shplyr.Shape := TIEShape( ord( shplyr.Shape ) - 1 );
    end;
    ImageEnView1.Update();
    Handled := True;
  end
  else
  // Size font of Text layers using mouse wheel
  if ( ImageEnView1.LayersCurrent > 0 ) and ( ImageEnView1.CurrentLayer.Kind = ielkText ) then
  begin
    txtlyr :=  TIETextLayer( ImageEnView1.CurrentLayer );
    if WheelDelta < 0 then
      txtlyr.Font.Size := txtlyr.Font.Size + 1
    else
      txtlyr.Font.Size := max( 1, txtlyr.Font.Size - 1 );
    ImageEnView1.Update();
    Handled := True;
  end;
end;

procedure TfmLayerEditor.LayerPropertiesClick(Sender: TObject);
begin
  IEGlobalSettings().LayerPropertiesAdvancedTab := True;
  ImageEnView1.LayersShowPropertiesDialog();
  RefreshControls();
end;


procedure TfmLayerEditor.SaveToPDFClick(Sender: TObject);
var
  filename: string;
begin
  ImageEnView1.IO.Params.PDF_PageMargin := 36; // 0.5 inch margins
  filename := WindowsTempFolder() + 'Export' + IntToStr( Random( 1000 )) + '.pdf';
  ImageEnView1.IO.SaveToFile( filename );
  if not ImageEnView1.IO.Aborting then
    WindowsLaunchFile( Handle, filename );
end;

end.







