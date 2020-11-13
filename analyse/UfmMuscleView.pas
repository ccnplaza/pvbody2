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
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni;

type
  TfmMuscleView = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    MUSCLE_IMAGES_SEL_ALL: TUniStoredProc;
    MUSCLE_IMAGES_SEL_ALLID: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_NAME: TStringField;
    MUSCLE_IMAGES_SEL_ALLM_IMAGE: TBlobField;
    MUSCLE_IMAGES_SEL_ALLM_KIND: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_DESC: TMemoField;
    MUSCLE_IMAGES_SEL_ALLM_IDX: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_POINT: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_SEX: TIntegerField;
    ds_MUSCLE_IMAGES_SEL_ALL: TDataSource;
    MUSCLE_IMAGES_UPD_DESC: TUniStoredProc;
    cxGrid2: TcxGrid;
    gridMuscleImage: TcxGridDBTableView;
    gridMuscleImageID: TcxGridDBColumn;
    gridMuscleImageM_IDX: TcxGridDBColumn;
    gridMuscleImageM_KIND: TcxGridDBColumn;
    gridMuscleImageM_NAME: TcxGridDBColumn;
    gridMuscleImageM_POINT: TcxGridDBColumn;
    gridMuscleImageM_SEX: TcxGridDBColumn;
    gridMuscleImageM_IMAGE: TcxGridDBColumn;
    gridMuscleImageM_DESC: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel2: TPanel;
    ImageEnView1: TImageEnView;
    IERichEdit1: TIERichEdit;
    IERichEditToolbar1: TIERichEditToolbar;
    Panel4: TPanel;
    btnSave: TcxButton;
    lcMain: TcxLookupComboBox;
    Label1: TLabel;
    btnView: TcxButton;
    MUSCLE_IMAGES_SEL_ALLM_DRAW: TBlobField;
    btnImageEdit: TcxButton;
    MUSCLE_IMAGES_UPD_DRAW: TUniStoredProc;
    procedure FormShow(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure gridMuscleImageFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure lcMainPropertiesCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSaveClick(Sender: TObject);
    procedure btnImageEditClick(Sender: TObject);
    procedure ImageEnView1DblClick(Sender: TObject);
  private
    procedure RetrieveImage;
    { Private declarations }
  public
    { Public declarations }
    DATA_LOADED : Boolean;
  end;

var
  fmMuscleView: TfmMuscleView;

implementation
uses
  GlobalVar, UdmDBCommon, ufmLayerEditor;
{$R *.dfm}

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
      ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
      ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Locate('ID', id, []);
    end;
  finally
    dStream.Free;
    fmLayerEditor.Free;
  end;
end;

procedure TfmMuscleView.btnSaveClick(Sender: TObject);
begin
  MUSCLE_IMAGES_UPD_DESC.ParamByName('ID').Value := gridMuscleImageID.EditValue;
  MUSCLE_IMAGES_UPD_DESC.ParamByName('M_DESC').Value := IERichEdit1.RTFText;
  MUSCLE_IMAGES_UPD_DESC.ExecProc;
  ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
  ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Locate('ID', gridMuscleImageID.EditValue, []);
end;

procedure TfmMuscleView.btnViewClick(Sender: TObject);
begin
  MUSCLE_IMAGES_SEL_ALL.ParamByName('MPOINT').Value := lcMain.EditValue;
  MUSCLE_IMAGES_SEL_ALL.Open;
  ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
end;

procedure TfmMuscleView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMuscleView.FormShow(Sender: TObject);
begin
  DATA_LOADED := False;
  dmDBCommon.MUSCLE_MAIN_SEL.Open;
  dmDBCommon.ds_MUSCLE_MAIN_SEL.DataSet.Refresh;
  lcMain.EditValue := 1;

  MUSCLE_IMAGES_SEL_ALL.ParamByName('MPOINT').Value := 1;
  MUSCLE_IMAGES_SEL_ALL.Open;
  ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
  RetrieveImage;
  DATA_LOADED := True;
end;

procedure TfmMuscleView.gridMuscleImageFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if DATA_LOADED then begin
    RetrieveImage;
  end;
end;

procedure TfmMuscleView.ImageEnView1DblClick(Sender: TObject);
begin
  btnImageEdit.Click;
end;

procedure TfmMuscleView.lcMainPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmMuscleView.RetrieveImage;
var
  mStream, dStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  dStream := TMemoryStream.Create;
  try
    ImageEnView1.ClearAll;
    MUSCLE_IMAGES_SEL_ALLM_IMAGE.SaveToStream(mStream);
    MUSCLE_IMAGES_SEL_ALLM_DRAW.SaveToStream(dStream);
    mStream.Position := 0;
    dStream.Position := 0;
    ImageEnView1.IO.LoadFromStreamJpeg(mStream);
    ImageEnView1.IO.LoadFromStreamIEN(dStream);
    ImageEnView1.Update;
    IERichEdit1.RTFText := MUSCLE_IMAGES_SEL_ALLM_DESC.Value;
  finally
    mStream.Free;
    dStream.Free;
  end;
end;

end.
