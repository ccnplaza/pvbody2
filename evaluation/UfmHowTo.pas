unit UfmHowTo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven,
  dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010, dxImageSlider,
  dxGDIPlusClasses, cxClasses, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, DBCtrls, StdCtrls, Buttons, dxmdaset, ieopensavedlg,
  cxContainer, cxImage, cxDBEdit, dxSkinSevenClassic, dxSkinSharp,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, MemDS, DBAccess, Uni,
  OleCtrls, SHDocVw, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers,
  iexRulers, iexToolbars;

type
  TfmHowTo = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    gridImage: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    OpenImageEnDialog1: TOpenImageEnDialog;
    btnEdit: TBitBtn;
    CHECK_HOWTO_INS: TUniStoredProc;
    CHECK_HOWTO_SEL: TUniStoredProc;
    ds_CHECK_HOWTO_SEL: TDataSource;
    CHECK_HOWTO_SELID: TIntegerField;
    CHECK_HOWTO_SELIMG_TITLE: TStringField;
    gridImageID: TcxGridDBColumn;
    gridImageIMG_TITLE: TcxGridDBColumn;
    CHECK_HOWTO_SEL_IMAGE: TUniStoredProc;
    ds_CHECK_HOWTO_SEL_IMAGE: TDataSource;
    CHECK_HOWTO_SEL_IMAGEIMG_DATA: TBlobField;
    CHECK_HOWTO_UPD_IMAGE: TUniStoredProc;
    CHECK_HOWTO_UPD_TITLE: TUniStoredProc;
    wb1: TWebBrowser;
    pnl1: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridImageFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHowTo: TfmHowTo;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmHowTo.BitBtn2Click(Sender: TObject);
var
  id : Integer;
begin
  if OpenImageEnDialog1.Execute then begin
    id := gridImageID.EditValue;
    CHECK_HOWTO_UPD_IMAGE.ParamByName('ID').Value := id;
    CHECK_HOWTO_UPD_IMAGE.ParamByName('IMG_TITLE').Value := gridImageIMG_TITLE.EditValue;
    CHECK_HOWTO_UPD_IMAGE.ParamByName('IMG_DATA').LoadFromFile(OpenImageEnDialog1.FileName, ftBlob);
    CHECK_HOWTO_UPD_IMAGE.ExecProc;
    ds_CHECK_HOWTO_SEL.DataSet.Refresh;
    ds_CHECK_HOWTO_SEL.DataSet.Locate('id', id, []);
  end;
end;

procedure TfmHowTo.btnEditClick(Sender: TObject);
var
  id : Integer;
  itemStr : string;
begin
  id := gridImageID.EditValue;
  itemStr := gridImageimg_title.EditValue;
  if InputQuery('항목명 입력', '항목명을 입력하세요', itemStr) = True then begin
    CHECK_HOWTO_UPD_TITLE.ParamByName('ID').Value := id;
    CHECK_HOWTO_UPD_TITLE.ParamByName('IMG_TITLE').Value := itemStr;
    CHECK_HOWTO_UPD_TITLE.ExecProc;
    ds_CHECK_HOWTO_SEL.DataSet.Refresh;
    ds_CHECK_HOWTO_SEL.DataSet.Locate('id', id, []);
  end;
end;

procedure TfmHowTo.FormCreate(Sender: TObject);
begin
  CHECK_HOWTO_SEL.Active := True;
  ds_CHECK_HOWTO_SEL.DataSet.Refresh;
end;

procedure TfmHowTo.gridImageFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  wb1.Navigate('http://bodycheck.co.kr/yogabody/imageplayer.php?id=' + IntToStr(gridImageID.EditValue));

//  CHECK_HOWTO_SEL_IMAGE.ParamByName('ID').Value := gridImageID.EditValue;
//  CHECK_HOWTO_SEL_IMAGE.Active := True;
//  ds_CHECK_HOWTO_SEL_IMAGE.DataSet.Refresh;
end;

end.
