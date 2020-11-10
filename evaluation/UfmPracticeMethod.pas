unit UfmPracticeMethod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxContainer, ieopensavedlg, dxmdaset, cxImage, cxDBEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, Buttons, ExtCtrls, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, Menus, cxButtons, MemDS, DBAccess, Uni, OleCtrls,
  SHDocVw, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmPracticeMethod = class(TForm)
    pnl1: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    cxGrid1: TcxGrid;
    gridImage: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    OpenImageEnDialog1: TOpenImageEnDialog;
    btnEdit: TBitBtn;
    btnPlay: TcxButton;
    NPRACTICE_METHOD_INS: TUniStoredProc;
    NPRACTICE_METHOD_SEL: TUniStoredProc;
    ds_NPRACTICE_METHOD_SEL: TDataSource;
    NPRACTICE_METHOD_SELID: TIntegerField;
    NPRACTICE_METHOD_SELIMG_TITLE: TStringField;
    gridImageID: TcxGridDBColumn;
    gridImageIMG_TITLE: TcxGridDBColumn;
    NPRACTICE_METHOD_SEL_IMAGE: TUniStoredProc;
    ds_NPRACTICE_METHOD_SEL_IMAGE: TDataSource;
    NPRACTICE_METHOD_SEL_IMAGEIMG_DATA: TBlobField;
    NPRACTICE_METHOD_UPD_TITLE: TUniStoredProc;
    NPRACTICE_METHOD_UPD_IMAGE: TUniStoredProc;
    pnl2: TPanel;
    wb1: TWebBrowser;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure gridImageFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPracticeMethod: TfmPracticeMethod;

implementation

uses GlobalVar, uPlayer, UdmDBCommon;

{$R *.dfm}

procedure TfmPracticeMethod.btn1Click(Sender: TObject);
var
  pname : string;
  cnt : Integer;
begin
//  cnt := dxImage.RecordCount;
//  if InputQuery('운동처방등록', '운동처방명을 입력하세요.', pname) then begin
//    NPRACTICE_METHOD_INS.ParamByName('ID').Value :=
//    NPRACTICE_METHOD_INS.ParamByName('IMG_TITLE').Value := pname;
//    NPRACTICE_METHOD_INS.ParamByName('IMG_DATA').Value :=
//  end;
end;

procedure TfmPracticeMethod.btn2Click(Sender: TObject);
var
  id : Integer;
begin
  id := gridImageID.EditValue;
  if OpenImageEnDialog1.Execute then begin
    NPRACTICE_METHOD_UPD_IMAGE.ParamByName('ID').Value := id;
    NPRACTICE_METHOD_UPD_IMAGE.ParamByName('IMG_TITLE').Value := gridImageIMG_TITLE.EditValue;
    NPRACTICE_METHOD_UPD_IMAGE.ParamByName('IMG_DATA').LoadFromFile(OpenImageEnDialog1.FileName, ftBlob);
    NPRACTICE_METHOD_UPD_IMAGE.ExecProc;
    ds_NPRACTICE_METHOD_SEL.DataSet.Refresh;
    ds_NPRACTICE_METHOD_SEL.DataSet.Locate('id', id, []);
  end;
end;

procedure TfmPracticeMethod.btnEditClick(Sender: TObject);
var
  pname : string;
  id : Integer;
begin
  id := gridImageID.EditValue;
  pname := gridImageIMG_TITLE.EditValue;
  if InputQuery('운동처방등록', '운동처방명을 입력하세요.', pname) then begin
    NPRACTICE_METHOD_UPD_TITLE.ParamByName('ID').Value := id;
    NPRACTICE_METHOD_UPD_TITLE.ParamByName('IMG_TITLE').Value := pname;
    NPRACTICE_METHOD_UPD_TITLE.ExecProc;
    ds_NPRACTICE_METHOD_SEL.DataSet.Refresh;
    ds_NPRACTICE_METHOD_SEL.DataSet.Locate('id', id, []);
  end;
end;

procedure TfmPracticeMethod.btnPlayClick(Sender: TObject);
var
  video_id : Integer;
  video_file, p_name : string;
begin
  video_id := gridImageid.EditValue;
  p_name := gridImageimg_title.EditValue;
  fmVideoPlayer := TfmVideoPlayer.Create(Self);
  try
    fmVideoPlayer.Caption := '동영상 운동처방 - ' + p_name;
    fmVideoPlayer.VIDEO_ID := video_id;
    fmVideoPlayer.ShowModal;
  finally
    fmVideoPlayer.Free;
  end;
end;

procedure TfmPracticeMethod.FormCreate(Sender: TObject);
begin
  NPRACTICE_METHOD_SEL.Active := True;
  ds_NPRACTICE_METHOD_SEL.DataSet.Refresh;
end;

procedure TfmPracticeMethod.gridImageFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  wb1.Navigate('http://210.122.36.244/yoga/imageplayer2.php?id=' + IntToStr(gridImageID.EditValue));

//  NPRACTICE_METHOD_SEL_IMAGE.ParamByName('ID').Value := gridImageID.EditValue;
//  NPRACTICE_METHOD_SEL_IMAGE.Active := True;
//  ds_NPRACTICE_METHOD_SEL_IMAGE.DataSet.Refresh;
end;

end.
