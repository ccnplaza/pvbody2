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
  dxGDIPlusClasses, cxImage;

type
  TfmMuscleEditor = class(TForm)
    Panel1: TPanel;
    MUSCLE_IMAGES_INS: TUniStoredProc;
    gridMuscleMain: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridMuscleMainID: TcxGridDBColumn;
    gridMuscleMainM_NAME: TcxGridDBColumn;
    gridMuscleImage: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gridMuscleImageID: TcxGridDBColumn;
    gridMuscleImageM_NAME: TcxGridDBColumn;
    gridMuscleImageM_KIND: TcxGridDBColumn;
    gridMuscleImageM_IDX: TcxGridDBColumn;
    gridMuscleImageM_POINT: TcxGridDBColumn;
    gridMuscleImageM_SEX: TcxGridDBColumn;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    cxButton3: TcxButton;
    MUSCLE_IMAGES_SEL_ALL: TUniStoredProc;
    ds_MUSCLE_IMAGES_SEL_ALL: TDataSource;
    MUSCLE_IMAGES_SEL_ALLID: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_NAME: TStringField;
    MUSCLE_IMAGES_SEL_ALLM_IMAGE: TBlobField;
    MUSCLE_IMAGES_SEL_ALLM_KIND: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_DESC: TMemoField;
    MUSCLE_IMAGES_SEL_ALLM_IDX: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_POINT: TIntegerField;
    MUSCLE_IMAGES_SEL_ALLM_SEX: TIntegerField;
    Panel2: TPanel;
    ImageEnView1: TImageEnView;
    IERichEdit1: TIERichEdit;
    IERichEditToolbar1: TIERichEditToolbar;
    Panel3: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    MUSCLE_IMAGES_UPD_DESC: TUniStoredProc;
    gridMuscleImageM_IMAGE: TcxGridDBColumn;
    gridMuscleImageM_DESC: TcxGridDBColumn;
    MUSCLE_IMAGES_UPD: TUniStoredProc;
    cxImage1: TcxImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridMuscleImageCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridMuscleMainFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridMuscleImageCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMuscleEditor: TfmMuscleEditor;

implementation
uses
  GlobalVar, UdmDBCommon, uCommonLogic, UfmMuscleInsert;
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
      MUSCLE_IMAGES_INS.ParamByName('M_POINT').Value := gridMuscleMainID.EditValue;
      MUSCLE_IMAGES_INS.ParamByName('M_SEX').Value := fmMuscleInsert.icbMuscle.EditValue;
      MUSCLE_IMAGES_INS.ExecProc;
      ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
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
  ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
  ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Locate('ID', gridMuscleImageID.EditValue, []);
end;

procedure TfmMuscleEditor.btnEditClick(Sender: TObject);
var
  mStream : TMemoryStream;
begin
  fmMuscleInsert := TfmMuscleInsert.Create(Self);
  try
    fmMuscleInsert.edtName.Text := gridMuscleImageM_NAME.EditValue;
    fmMuscleInsert.icbPosture.EditValue := gridMuscleImageM_KIND.EditValue;
    fmMuscleInsert.edtIDX.EditValue := gridMuscleImageM_IDX.EditValue;
    fmMuscleInsert.edtDesc.RTFText := VarToStrDef(gridMuscleImageM_DESC.EditValue, '');
    fmMuscleInsert.icbMuscle.EditValue := gridMuscleImageM_SEX.EditValue;
    mStream := TMemoryStream.Create;
    MUSCLE_IMAGES_SEL_ALLM_IMAGE.SaveToStream(mStream);
    mStream.Position := 0 ;
    fmMuscleInsert.ImageEnView1.IO.LoadFromStreamJpeg(mStream);
    fmMuscleInsert.ImageEnView1.Update;
    fmMuscleInsert.ShowModal;
    if fmMuscleInsert.ModalResult = mrOk then begin
      mStream := TMemoryStream.Create;
      fmMuscleInsert.ImageEnView1.IO.SaveToStreamJpeg(mStream);
      mStream.Position := 0;
      //MUSCLE_IMAGES_UPD(:ID, :M_NAME, :M_IMAGE, :M_KIND, :M_DESC, :M_IDX, :M_POINT, :M_SEX)
      MUSCLE_IMAGES_UPD.ParamByName('ID').Value := fmMuscleInsert.edtName.Text;
      MUSCLE_IMAGES_UPD.ParamByName('M_NAME').Value := fmMuscleInsert.edtName.Text;
      MUSCLE_IMAGES_UPD.ParamByName('M_IMAGE').LoadFromStream(mStream, ftBlob);
      MUSCLE_IMAGES_UPD.ParamByName('M_KIND').Value := fmMuscleInsert.icbPosture.EditValue;
      MUSCLE_IMAGES_UPD.ParamByName('M_DESC').Value := fmMuscleInsert.edtDesc.RTFText;
      MUSCLE_IMAGES_UPD.ParamByName('M_IDX').Value := fmMuscleInsert.edtIDX.EditValue;
      MUSCLE_IMAGES_UPD.ParamByName('M_POINT').Value := gridMuscleMainID.EditValue;
      MUSCLE_IMAGES_UPD.ParamByName('M_SEX').Value := fmMuscleInsert.icbMuscle.EditValue;
      MUSCLE_IMAGES_UPD.ExecProc;
      ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
      ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Locate('ID', gridMuscleImageID.EditValue, []);
    end;
  finally
    mStream.Free;
    fmMuscleInsert.Free;
  end;
end;

procedure TfmMuscleEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMuscleEditor.FormShow(Sender: TObject);
begin
  dmDBCommon.MUSCLE_MAIN_SEL.Open;
  dmDBCommon.ds_MUSCLE_MAIN_SEL.DataSet.Refresh;
end;

procedure TfmMuscleEditor.gridMuscleImageCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  mStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  MUSCLE_IMAGES_SEL_ALLM_IMAGE.SaveToStream(mStream);
  mStream.Position := 0;
  ImageEnView1.IO.LoadFromStreamJpeg(mStream);
  ImageEnView1.Update;
  IERichEdit1.RTFText := MUSCLE_IMAGES_SEL_ALLM_DESC.Value;
  mStream.Free;
end;

procedure TfmMuscleEditor.gridMuscleImageCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmMuscleEditor.gridMuscleMainFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  MUSCLE_IMAGES_SEL_ALL.ParamByName('MPOINT').Value := gridMuscleMainID.EditValue;
  MUSCLE_IMAGES_SEL_ALL.Open;
  ds_MUSCLE_IMAGES_SEL_ALL.DataSet.Refresh;
end;

initialization RegisterClasses([TfmMuscleEditor]);

end.
