unit UfmTextObjectManager;

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
  cxNavigator, DB, cxDBData, hyieutils, iexBitmaps, hyiedefs, iesettings,
  iexLayers, iexRulers, iexToolbars, ieview, imageenview, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, MemDS, DBAccess, Uni, Menus, StdCtrls, cxButtons, cxImageComboBox,
  cxCheckBox, dxColorEdit;

type
  TfmTextObjectManager = class(TForm)
    Panel1: TPanel;
    TEXT_OBJECT_SEL: TUniStoredProc;
    ds_TEXT_OBJECT_SEL: TDataSource;
    TEXT_OBJECT_SELID: TIntegerField;
    TEXT_OBJECT_SELTEXT_STR: TStringField;
    TEXT_OBJECT_SELFONT_SIZE: TIntegerField;
    TEXT_OBJECT_SELFINT_COLOR: TStringField;
    TEXT_OBJECT_SELFONT_STYLE: TIntegerField;
    TEXT_OBJECT_SELFONT_NAME: TStringField;
    TEXT_OBJECT_SELBORDER_WIDTH: TIntegerField;
    TEXT_OBJECT_SELBORDER_COLOR: TStringField;
    TEXT_OBJECT_SELFILL_COLOR: TStringField;
    TEXT_OBJECT_SELTXT_ALIGNMENT: TIntegerField;
    TEXT_OBJECT_SELTXT_LAYOUT: TIntegerField;
    TEXT_OBJECT_SELAUTO_SIZE: TSmallintField;
    gridText: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridTextID: TcxGridDBColumn;
    gridTextTEXT_STR: TcxGridDBColumn;
    gridTextFONT_SIZE: TcxGridDBColumn;
    gridTextFINT_COLOR: TcxGridDBColumn;
    gridTextFONT_STYLE: TcxGridDBColumn;
    gridTextFONT_NAME: TcxGridDBColumn;
    gridTextBORDER_WIDTH: TcxGridDBColumn;
    gridTextBORDER_COLOR: TcxGridDBColumn;
    gridTextFILL_COLOR: TcxGridDBColumn;
    gridTextTXT_ALIGNMENT: TcxGridDBColumn;
    gridTextTXT_LAYOUT: TcxGridDBColumn;
    gridTextAUTO_SIZE: TcxGridDBColumn;
    ImageEnView1: TImageEnView;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    cxButton3: TcxButton;
    TEXT_OBJECT_INS: TUniStoredProc;
    TEXT_OBJECT_UPD: TUniStoredProc;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridTextCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEditClick(Sender: TObject);
    procedure gridTextCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure DisplayTextObject;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTextObjectManager: TfmTextObjectManager;

implementation
uses
  GlobalVar, UdmDBCommon, UfmTextObjectEdit;
{$R *.dfm}

procedure TfmTextObjectManager.btnAddClick(Sender: TObject);
begin
  fmTextObjectEdit := TfmTextObjectEdit.Create(Self);
  try
    fmTextObjectEdit.ShowModal;
    if fmTextObjectEdit.ModalResult = mrOk then begin
      TEXT_OBJECT_INS.ParamByName('TEXT_STR').Value := fmTextObjectEdit.Memo1.Text;
      TEXT_OBJECT_INS.ParamByName('FONT_SIZE').Value := fmTextObjectEdit.FONT_SIZE.Value;
      TEXT_OBJECT_INS.ParamByName('FINT_COLOR').Value := ColorToString(fmTextObjectEdit.FONT_COLOR.ColorValue);
      TEXT_OBJECT_INS.ParamByName('FONT_STYLE').Value := fmTextObjectEdit.FONT_STYLE.EditValue;
      TEXT_OBJECT_INS.ParamByName('FONT_NAME').Value := fmTextObjectEdit.FONT_NAME.Text;
      TEXT_OBJECT_INS.ParamByName('BORDER_WIDTH').Value := fmTextObjectEdit.BORDER_THICK.Value;
      TEXT_OBJECT_INS.ParamByName('BORDER_COLOR').Value := ColorToString(fmTextObjectEdit.BORDER_COLOR.ColorValue);
      TEXT_OBJECT_INS.ParamByName('FILL_COLOR').Value := ColorToString(fmTextObjectEdit.BORDER_FILL.ColorValue);
      TEXT_OBJECT_INS.ParamByName('TXT_ALIGNMENT').Value := fmTextObjectEdit.FONT_ALIGNMENT.EditValue;
      TEXT_OBJECT_INS.ParamByName('TXT_LAYOUT').Value := fmTextObjectEdit.FONT_LAYOUT.EditValue;
      TEXT_OBJECT_INS.ParamByName('AUTO_SIZE').Value := fmTextObjectEdit.AUTO_SIZE.EditValue;
      TEXT_OBJECT_INS.ExecProc;
      ds_TEXT_OBJECT_SEL.DataSet.Refresh;
    end;
  finally
    fmTextObjectEdit.Free;
  end;
end;

procedure TfmTextObjectManager.FormShow(Sender: TObject);
begin
  ImageEnView1.AutoStretch := True;
  ImageEnView1.AutoShrink := True;
  ImageEnView1.AutoFit := True;
  ImageEnView1.Zoom := 100;
  TEXT_OBJECT_SEL.Open;
  ds_TEXT_OBJECT_SEL.DataSet.Refresh;
  if TEXT_OBJECT_SEL.RecordCount > 0 then
    DisplayTextObject;
end;

procedure TfmTextObjectManager.gridTextCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  DisplayTextObject;
end;

procedure TfmTextObjectManager.gridTextCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmTextObjectManager.btnEditClick(Sender: TObject);
var
  id : Integer;
begin
  fmTextObjectEdit := TfmTextObjectEdit.Create(Self);
  try
    id := gridTextID.EditValue;
    fmTextObjectEdit.IS_INSERTING := False;
    fmTextObjectEdit.Memo1.Text                := gridTextTEXT_STR.EditValue;
    fmTextObjectEdit.FONT_SIZE.Value           := gridTextFONT_SIZE.EditValue;
    fmTextObjectEdit.FONT_COLOR.ColorValue     := StringToColor(gridTextFINT_COLOR.EditValue);
    fmTextObjectEdit.FONT_STYLE.EditValue      := gridTextFONT_STYLE.EditValue;
    fmTextObjectEdit.FONT_NAME.Text            := gridTextFONT_NAME.EditValue;
    fmTextObjectEdit.BORDER_THICK.Value        := gridTextBORDER_WIDTH.EditValue;
    fmTextObjectEdit.BORDER_COLOR.ColorValue   := StringToColor(gridTextBORDER_COLOR.EditValue);
    fmTextObjectEdit.BORDER_FILL.ColorValue   := StringToColor(gridTextFILL_COLOR.EditValue);
    fmTextObjectEdit.FONT_ALIGNMENT.EditValue  := gridTextTXT_ALIGNMENT.EditValue;
    fmTextObjectEdit.FONT_LAYOUT.EditValue     := gridTextTXT_LAYOUT.EditValue;
    fmTextObjectEdit.AUTO_SIZE.EditValue       := gridTextAUTO_SIZE.EditValue;
    fmTextObjectEdit.ShowModal;
    if fmTextObjectEdit.ModalResult = mrOk then begin
      TEXT_OBJECT_UPD.ParamByName('ID').Value := id;
      TEXT_OBJECT_UPD.ParamByName('TEXT_STR').Value := fmTextObjectEdit.Memo1.Text;
      TEXT_OBJECT_UPD.ParamByName('FONT_SIZE').Value := fmTextObjectEdit.FONT_SIZE.Value;
      TEXT_OBJECT_UPD.ParamByName('FINT_COLOR').Value := ColorToString(fmTextObjectEdit.FONT_COLOR.ColorValue);
      TEXT_OBJECT_UPD.ParamByName('FONT_STYLE').Value := fmTextObjectEdit.FONT_STYLE.EditValue;
      TEXT_OBJECT_UPD.ParamByName('FONT_NAME').Value := fmTextObjectEdit.FONT_NAME.Text;
      TEXT_OBJECT_UPD.ParamByName('BORDER_WIDTH').Value := fmTextObjectEdit.BORDER_THICK.Value;
      TEXT_OBJECT_UPD.ParamByName('BORDER_COLOR').Value := ColorToString(fmTextObjectEdit.BORDER_COLOR.ColorValue);
      TEXT_OBJECT_UPD.ParamByName('FILL_COLOR').Value := ColorToString(fmTextObjectEdit.BORDER_FILL.ColorValue);
      TEXT_OBJECT_UPD.ParamByName('TXT_ALIGNMENT').Value := fmTextObjectEdit.FONT_ALIGNMENT.EditValue;
      TEXT_OBJECT_UPD.ParamByName('TXT_LAYOUT').Value := fmTextObjectEdit.FONT_LAYOUT.EditValue;
      TEXT_OBJECT_UPD.ParamByName('AUTO_SIZE').Value := fmTextObjectEdit.AUTO_SIZE.EditValue;
      TEXT_OBJECT_UPD.ExecProc;
      ds_TEXT_OBJECT_SEL.DataSet.Refresh;
      ds_TEXT_OBJECT_SEL.DataSet.Locate('ID', id, []);
    end;
  finally
    fmTextObjectEdit.Free;
  end;
end;

procedure TfmTextObjectManager.DisplayTextObject;
begin
  ImageEnView1.ClearAll;
  ImageEnView1.AutoFit := True;
  ImageEnView1.LayersAdd( ielkText );
  ImageEnView1.CurrentLayer.PosX := 10;
  ImageEnView1.CurrentLayer.PosY := 10;
  case gridTextFONT_STYLE.EditValue of
    0: TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsBold];
    1: TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsItalic];
    2: TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsUnderline];
    3: TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsStrikeOut];
  end;
  TIETextLayer(ImageEnView1.CurrentLayer).Text := Trim(gridTextTEXT_STR.EditValue);
  TIETextLayer(ImageEnView1.CurrentLayer).Font.Size := gridTextFONT_SIZE.EditValue;
  //TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := f_style;
  TIETextLayer(ImageEnView1.CurrentLayer).Font.Color := StringToColor(gridTextFINT_COLOR.EditValue);
  TIETextLayer(ImageEnView1.CurrentLayer).Font.Name := gridTextFONT_NAME.EditValue;
  TIETextLayer(ImageEnView1.CurrentLayer).BorderColor := StringToColor(gridTextBORDER_COLOR.EditValue);
  TIETextLayer(ImageEnView1.CurrentLayer).BorderWidth := gridTextBORDER_WIDTH.EditValue;
  TIETextLayer(ImageEnView1.CurrentLayer).FillColor := StringToColor(gridTextFILL_COLOR.EditValue);
  TIETextLayer(ImageEnView1.CurrentLayer).Alignment := gridTextTXT_ALIGNMENT.EditValue;
  TIETextLayer(ImageEnView1.CurrentLayer).Layout := gridTextTXT_LAYOUT.EditValue;
  TIETextLayer(ImageEnView1.CurrentLayer).AutoSize := gridTextAUTO_SIZE.EditValue;
end;

end.
