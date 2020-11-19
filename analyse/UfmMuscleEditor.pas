unit UfmMuscleEditor;

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
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, MemDS,
  DBAccess, Uni, cxImageComboBox, Menus, StdCtrls, cxButtons, hyieutils,
  iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers, iexToolbars, ieview,
  iemview, ToolWin, ComCtrls, iexRichEdit, imageenview, cxContainer,
  dxGDIPlusClasses, cxImage, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox;

type
  TfmMuscleEditor = class(TForm)
    Panel1: TPanel;
    MUSCLE_IMAGES_INS: TUniStoredProc;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    cxButton3: TcxButton;
    Panel2: TPanel;
    ImageEnView1: TImageEnView;
    IERichEdit1: TIERichEdit;
    IERichEditToolbar1: TIERichEditToolbar;
    Panel3: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    MUSCLE_IMAGES_UPD_DESC: TUniStoredProc;
    MUSCLE_IMAGES_UPD: TUniStoredProc;
    cxImage1: TcxImage;
    MUSCLE_IMAGES_DEL: TUniStoredProc;
    btnImageEdit: TcxButton;
    MUSCLE_IMAGES_UPD_DRAW: TUniStoredProc;
    MUSCLE_MAIN_SEL_MIX: TUniStoredProc;
    MUSCLE_MAIN_SEL_MIXM_NAME: TStringField;
    MUSCLE_MAIN_SEL_MIXM_POINT: TIntegerField;
    MUSCLE_MAIN_SEL_MIXM_KIND: TIntegerField;
    ds_MUSCLE_MAIN_SEL_MIX: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridMain: TcxGridDBTableView;
    gridMainM_NAME: TcxGridDBColumn;
    gridMainM_POINT: TcxGridDBColumn;
    gridMainM_KIND: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    MUSCLE_IMAGES_SEL_NOIMG: TUniStoredProc;
    MUSCLE_IMAGES_SEL_NOIMGID: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_NAME: TStringField;
    MUSCLE_IMAGES_SEL_NOIMGM_KIND: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_DESC: TMemoField;
    MUSCLE_IMAGES_SEL_NOIMGM_IDX: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_POINT: TIntegerField;
    MUSCLE_IMAGES_SEL_NOIMGM_SEX: TIntegerField;
    ds_MUSCLE_IMAGES_SEL_NOIMG: TDataSource;
    MUSCLE_IMAGES_SEL_IMG: TUniStoredProc;
    MUSCLE_IMAGES_SEL_IMGM_IMAGE: TBlobField;
    MUSCLE_IMAGES_SEL_IMGM_DRAW: TBlobField;
    ds_MUSCLE_IMAGES_SEL_IMG: TDataSource;
    cxGroupBox2: TcxGroupBox;
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
    PanelLeft: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridMuscleImageCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridMuscleImageFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure btnImageEditClick(Sender: TObject);
    procedure ImageEnView1DblClick(Sender: TObject);
    procedure gridMainCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridMainM_NAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    procedure RetrieveImage;
    procedure RetrieveMainData;
    procedure RetrieveSubData;
    { Private declarations }
  public
    { Public declarations }
    DATA_LOADED : Boolean;
  end;

var
  fmMuscleEditor: TfmMuscleEditor;

implementation
uses
  GlobalVar, UdmDBCommon, uCommonLogic, UfmMuscleInsert, ufmLayerEditor;
{$R *.dfm}

procedure TfmMuscleEditor.btnAddClick(Sender: TObject);
var
  mStream : TMemoryStream;
begin
  fmMuscleInsert := TfmMuscleInsert.Create(Self);
  try
    fmMuscleInsert.edtIDX.EditValue := gridMuscleImage.DataController.RecordCount + 1;
    fmMuscleInsert.ShowModal;
    if fmMuscleInsert.ModalResult = mrOk then begin
      mStream := TMemoryStream.Create;
      fmMuscleInsert.ImageEnView1.IO.SaveToStreamJpeg(mStream);
      mStream.Position := 0;
      MUSCLE_IMAGES_INS.ParamByName('M_NAME').Value := fmMuscleInsert.edtName.Text;
      MUSCLE_IMAGES_INS.ParamByName('M_IMAGE').LoadFromStream(mStream, ftBlob);
      MUSCLE_IMAGES_INS.ParamByName('M_KIND').Value := fmMuscleInsert.icbPosture.EditValue;
      MUSCLE_IMAGES_INS.ParamByName('M_DESC').Value := fmMuscleInsert.edtDesc.RTFText;
      MUSCLE_IMAGES_INS.ParamByName('M_IDX').Value := fmMuscleInsert.edtIDX.EditValue;
      MUSCLE_IMAGES_INS.ParamByName('M_POINT').Value := gridMainM_POINT.EditValue;
      MUSCLE_IMAGES_INS.ParamByName('M_SEX').Value := fmMuscleInsert.icbMuscle.EditValue;
      MUSCLE_IMAGES_INS.ExecProc;
      ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
    end;
  finally
    fmMuscleInsert.Free;
  end;
end;

procedure TfmMuscleEditor.btnSaveClick(Sender: TObject);
begin
  MUSCLE_IMAGES_UPD_DESC.ParamByName('ID').Value := gridMuscleImageID.EditValue;
  MUSCLE_IMAGES_UPD_DESC.ParamByName('M_DESC').Value := IERichEdit1.RTFText;
  MUSCLE_IMAGES_UPD_DESC.ExecProc;
  ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
  ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Locate('ID', gridMuscleImageID.EditValue, []);
end;

procedure TfmMuscleEditor.cxButton3Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    MUSCLE_IMAGES_DEL.ParamByName('ID').Value := gridMuscleImageID.EditValue;
    MUSCLE_IMAGES_DEL.ExecProc;
    ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
  end;
end;

procedure TfmMuscleEditor.btnEditClick(Sender: TObject);
var
  mStream : TMemoryStream;
  record_id : Integer;
begin
  fmMuscleInsert := TfmMuscleInsert.Create(Self);
  try
    record_id := gridMuscleImageID.EditValue;
    fmMuscleInsert.edtName.Text := gridMuscleImageM_NAME.EditValue;
    fmMuscleInsert.icbPosture.EditValue := gridMuscleImageM_KIND.EditValue;
    fmMuscleInsert.edtIDX.EditValue := gridMuscleImageM_IDX.EditValue;
    fmMuscleInsert.edtDesc.RTFText := VarToStrDef(gridMuscleImageM_DESC.EditValue, '');
    fmMuscleInsert.icbMuscle.EditValue := gridMuscleImageM_SEX.EditValue;
    mStream := TMemoryStream.Create;
    MUSCLE_IMAGES_SEL_IMGM_IMAGE.SaveToStream(mStream);
    mStream.Position := 0 ;
    fmMuscleInsert.ImageEnView1.IO.LoadFromStreamJpeg(mStream);
    fmMuscleInsert.ImageEnView1.Update;
    fmMuscleInsert.ShowModal;
    if fmMuscleInsert.ModalResult = mrOk then begin
      if fmMuscleInsert.IMAGE_CHANGED then begin
        mStream := TMemoryStream.Create;
        fmMuscleInsert.ImageEnView1.IO.SaveToStreamJpeg(mStream);
        mStream.Position := 0;
      end;
      //MUSCLE_IMAGES_UPD(:ID, :M_NAME, :M_IMAGE, :M_KIND, :M_DESC, :M_IDX, :M_POINT, :M_SEX)
      MUSCLE_IMAGES_UPD.ParamByName('ID').Value := record_id;
      MUSCLE_IMAGES_UPD.ParamByName('M_NAME').Value := fmMuscleInsert.edtName.Text;
      MUSCLE_IMAGES_UPD.ParamByName('M_IMAGE').LoadFromStream(mStream, ftBlob);
      MUSCLE_IMAGES_UPD.ParamByName('M_KIND').Value := fmMuscleInsert.icbPosture.EditValue;
      MUSCLE_IMAGES_UPD.ParamByName('M_DESC').Value := fmMuscleInsert.edtDesc.RTFText;
      MUSCLE_IMAGES_UPD.ParamByName('M_IDX').Value := fmMuscleInsert.edtIDX.EditValue;
      MUSCLE_IMAGES_UPD.ParamByName('M_POINT').Value := gridMainM_POINT.EditValue;
      MUSCLE_IMAGES_UPD.ParamByName('M_SEX').Value := fmMuscleInsert.icbMuscle.EditValue;
      MUSCLE_IMAGES_UPD.ExecProc;
      ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
      ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Locate('ID', record_id, []);
    end;
  finally
    mStream.Free;
    fmMuscleInsert.Free;
  end;
end;

procedure TfmMuscleEditor.btnImageEditClick(Sender: TObject);
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

procedure TfmMuscleEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMuscleEditor.FormShow(Sender: TObject);
begin
  DATA_LOADED := False;
  RetrieveMainData;
  RetrieveSubData;
  RetrieveImage;
  DATA_LOADED := True;
end;

procedure TfmMuscleEditor.RetrieveMainData;
begin
  MUSCLE_MAIN_SEL_MIX.Open;
  ds_MUSCLE_MAIN_SEL_MIX.DataSet.Refresh;
end;

procedure TfmMuscleEditor.RetrieveSubData;
begin
  MUSCLE_IMAGES_SEL_NOIMG.ParamByName('MPOINT').Value := MUSCLE_MAIN_SEL_MIXM_POINT.Value;
  MUSCLE_IMAGES_SEL_NOIMG.ParamByName('MKIND').Value := MUSCLE_MAIN_SEL_MIXM_KIND.Value;
  MUSCLE_IMAGES_SEL_NOIMG.Open;
  ds_MUSCLE_IMAGES_SEL_NOIMG.DataSet.Refresh;
end;

procedure TfmMuscleEditor.RetrieveImage;
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

procedure TfmMuscleEditor.gridMainCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  DATA_LOADED := False;
  RetrieveSubData;
  RetrieveImage;
  DATA_LOADED := True;
end;

procedure TfmMuscleEditor.gridMainM_NAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
  end;
end;

procedure TfmMuscleEditor.gridMuscleImageCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmMuscleEditor.gridMuscleImageFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if DATA_LOADED then
    RetrieveImage;
end;

procedure TfmMuscleEditor.ImageEnView1DblClick(Sender: TObject);
begin
  btnImageEdit.Click;
end;

initialization RegisterClasses([TfmMuscleEditor]);

end.
