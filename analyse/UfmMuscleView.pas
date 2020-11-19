unit UfmMuscleView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxImageComboBox, hyieutils, iexBitmaps, hyiedefs,
  iesettings, iexLayers, iexRulers, iexToolbars, Menus, cxContainer, StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, ToolWin, ComCtrls, iexRichEdit, ieview,
  imageenview, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni,
  cxGroupBox, cxColorComboBox, cxSpinEdit;

type
  TfmMuscleView = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    ds_MUSCLE_IMAGES_SEL_NOIMG: TDataSource;
    MUSCLE_IMAGES_UPD_DESC: TUniStoredProc;
    cxGrid2: TcxGrid;
    gridMuscleImage: TcxGridDBTableView;
    gridMuscleImageID: TcxGridDBColumn;
    gridMuscleImageM_IDX: TcxGridDBColumn;
    gridMuscleImageM_KIND: TcxGridDBColumn;
    gridMuscleImageM_NAME: TcxGridDBColumn;
    gridMuscleImageM_POINT: TcxGridDBColumn;
    gridMuscleImageM_SEX: TcxGridDBColumn;
    gridMuscleImageM_DESC: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel2: TPanel;
    ImageEnView1: TImageEnView;
    IERichEdit1: TIERichEdit;
    IERichEditToolbar1: TIERichEditToolbar;
    Panel4: TPanel;
    btnSave: TcxButton;
    btnImageEdit: TcxButton;
    MUSCLE_IMAGES_UPD_DRAW: TUniStoredProc;
    MUSCLE_MAIN_SEL_MIX: TUniStoredProc;
    ds_MUSCLE_MAIN_SEL_MIX: TDataSource;
    MUSCLE_MAIN_SEL_MIXM_NAME: TStringField;
    MUSCLE_MAIN_SEL_MIXM_POINT: TIntegerField;
    MUSCLE_MAIN_SEL_MIXM_KIND: TIntegerField;
    cxGroupBox1: TcxGroupBox;
    gridMain: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridMainM_NAME: TcxGridDBColumn;
    gridMainM_POINT: TcxGridDBColumn;
    gridMainM_KIND: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    btnPen: TcxButton;
    ColorBox: TcxColorComboBox;
    speLineThick: TcxSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnClear: TcxButton;
    MUSCLE_IMAGES_SEL_NOIMG: TUniStoredProc;
    MUSCLE_IMAGES_SEL_IMG: TUniStoredProc;
    ds_MUSCLE_IMAGES_SEL_IMG: TDataSource;
    MUSCLE_IMAGES_SEL_IMGM_IMAGE: TBlobField;
    MUSCLE_IMAGES_SEL_IMGM_DRAW: TBlobField;
    MUSCLE_IMAGES_SEL_NOIMGID: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_NAME: TStringField;
    MUSCLE_IMAGES_SEL_NOIMGM_KIND: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_DESC: TMemoField;
    MUSCLE_IMAGES_SEL_NOIMGM_IDX: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_POINT: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_SEX: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure gridMuscleImageFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure btnImageEditClick(Sender: TObject);
    procedure ImageEnView1DblClick(Sender: TObject);
    procedure gridMainM_NAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnPenClick(Sender: TObject);
    procedure ColorBoxPropertiesEditValueChanged(Sender: TObject);
    procedure speLineThickPropertiesEditValueChanged(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure gridMainCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure RetrieveImage;
    procedure RetrieveMainData;
    procedure RetrieveSubData;
    { Private declarations }
  public
    { Public declarations }
    DATA_LOADED : Boolean;
    DATA_LOADED_SUB : Boolean;
  end;

var
  fmMuscleView: TfmMuscleView;

implementation
uses
  GlobalVar, UdmDBCommon, ufmLayerEditor;
{$R *.dfm}

procedure TfmMuscleView.btnClearClick(Sender: TObject);
begin
  RetrieveImage;
end;

procedure TfmMuscleView.btnImageEditClick(Sender: TObject);
var
  dStream : TMemoryStream;
  id : Integer;
begin
  fmLayerEditor := TfmLayerEditor.Create(Self);
  try
    fmLayerEditor.IMAGE_STREAM := TMemoryStream.Create;
    fmLayerEditor.DRAW_STREAM := TMemoryStream.Create;
    ImageEnView1.IO.SaveToStreamJpeg(fmLayerEditor.IMAGE_STREAM);
    ImageEnView1.IO.SaveToStreamIEN(fmLayerEditor.DRAW_STREAM);
    fmLayerEditor.IMAGE_STREAM.Position := 0;
    fmLayerEditor.DRAW_STREAM.Position := 0;
    fmLayerEditor.ShowModal;
    if fmLayerEditor.ModalResult = mrOk then begin
      dStream := TMemoryStream.Create;
      fmLayerEditor.ImageEnView1.IO.SaveToStreamIEN(dStream);
      dStream.Position := 0;
      ImageEnView1.IO.LoadFromStreamIEN(dStream);
      ImageEnView1.Update;
      id := gridMuscleImageID.EditValue;
      MUSCLE_IMAGES_UPD_DRAW.ParamByName('ID').Value := id;
      MUSCLE_IMAGES_UPD_DRAW.ParamByName('M_DRAW').LoadFromStream(dStream, ftBlob);
      MUSCLE_IMAGES_UPD_DRAW.ExecProc;
      ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
      ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Locate('ID', id, []);
    end;
  finally
    dStream.Free;
    fmLayerEditor.Free;
  end;
end;

procedure TfmMuscleView.btnPenClick(Sender: TObject);
begin
  if btnPen.Down then begin
    ImageEnView1.BrushTool.BrushSize := speLineThick.Value;
    ImageEnView1.BrushTool.BrushColor := ColorBox.ColorValue;
    ImageEnView1.MouseInteractGeneral := [ miBrushTool ];
  end else begin
    ImageEnView1.MouseInteractGeneral := [miZoom,miScroll];
  end;
end;

procedure TfmMuscleView.btnSaveClick(Sender: TObject);
begin
  MUSCLE_IMAGES_UPD_DESC.ParamByName('ID').Value := gridMuscleImageID.EditValue;
  MUSCLE_IMAGES_UPD_DESC.ParamByName('M_DESC').Value := IERichEdit1.RTFText;
  MUSCLE_IMAGES_UPD_DESC.ExecProc;
  ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
  ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Locate('ID', gridMuscleImageID.EditValue, []);
end;

procedure TfmMuscleView.ColorBoxPropertiesEditValueChanged(Sender: TObject);
begin
  ImageEnView1.BrushTool.BrushColor := ColorBox.ColorValue;
end;

procedure TfmMuscleView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMuscleView.FormShow(Sender: TObject);
begin
  DATA_LOADED := False;
  RetrieveMainData;
  RetrieveSubData;
  RetrieveImage;
  DATA_LOADED := True;
end;

procedure TfmMuscleView.RetrieveMainData;
begin
  MUSCLE_MAIN_SEL_MIX.Open;
  ds_MUSCLE_MAIN_SEL_MIX.DataSet.Refresh;
end;

procedure TfmMuscleView.RetrieveSubData;
begin
  MUSCLE_IMAGES_SEL_NOIMG.ParamByName('MPOINT').Value := MUSCLE_MAIN_SEL_MIXM_POINT.Value;
  MUSCLE_IMAGES_SEL_NOIMG.ParamByName('MKIND').Value := MUSCLE_MAIN_SEL_MIXM_KIND.Value;
  MUSCLE_IMAGES_SEL_NOIMG.Open;
  ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
end;

procedure TfmMuscleView.speLineThickPropertiesEditValueChanged(Sender: TObject);
begin
  ImageEnView1.BrushTool.BrushSize := speLineThick.Value;
end;

procedure TfmMuscleView.gridMainCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  DATA_LOADED := False;
  RetrieveSubData;
  RetrieveImage;
  DATA_LOADED := True;
end;

procedure TfmMuscleView.gridMainM_NAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := clYellow
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;
end;

procedure TfmMuscleView.gridMuscleImageFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if DATA_LOADED then
    RetrieveImage;
end;

procedure TfmMuscleView.ImageEnView1DblClick(Sender: TObject);
begin
  btnImageEdit.Click;
end;

procedure TfmMuscleView.RetrieveImage;
var
  mStream, dStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  dStream := TMemoryStream.Create;
  try
    ImageEnView1.ClearAll;
    MUSCLE_IMAGES_SEL_IMG.ParamByName('ID').Value := gridMuscleImageID.EditValue;
    MUSCLE_IMAGES_SEL_IMG.Open;
    ds_MUSCLE_IMAGES_SEL_IMG.DataSet.Refresh;
    MUSCLE_IMAGES_SEL_IMGM_IMAGE.SaveToStream(mStream);
    MUSCLE_IMAGES_SEL_IMGM_DRAW.SaveToStream(dStream);
    mStream.Position := 0;
    dStream.Position := 0;
    ImageEnView1.IO.LoadFromStreamJpeg(mStream);
    ImageEnView1.IO.LoadFromStreamIEN(dStream);
    ImageEnView1.Update;
    IERichEdit1.RTFText := MUSCLE_IMAGES_SEL_NOIMGM_DESC.Value;
  finally
    mStream.Free;
    dStream.Free;
  end;
end;

end.
