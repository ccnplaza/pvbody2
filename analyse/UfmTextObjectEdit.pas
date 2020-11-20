unit UfmTextObjectEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, StdCtrls, ieview, imageenview, cxGroupBox, Menus, cxCheckBox,
  cxButtons, cxImageComboBox, cxDropDownEdit, cxColorComboBox, cxTextEdit,
  cxMaskEdit, cxSpinEdit;

type
  TfmTextObjectEdit = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    ImageEnView1: TImageEnView;
    FontDialog1: TFontDialog;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    FONT_NAME: TEdit;
    FONT_SIZE: TcxSpinEdit;
    Label6: TLabel;
    FONT_COLOR: TcxColorComboBox;
    FONT_STYLE: TcxImageComboBox;
    Label7: TLabel;
    Label8: TLabel;
    cxButton1: TcxButton;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    Label3: TLabel;
    FONT_ALIGNMENT: TcxImageComboBox;
    FONT_LAYOUT: TcxImageComboBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    BORDER_THICK: TcxSpinEdit;
    Label5: TLabel;
    BORDER_COLOR: TcxColorComboBox;
    Label9: TLabel;
    BORDER_FILL: TcxColorComboBox;
    AUTO_SIZE: TcxCheckBox;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure FONT_NAMEChange(Sender: TObject);
    procedure FONT_COLORPropertiesChange(Sender: TObject);
    procedure AUTO_SIZEPropertiesChange(Sender: TObject);
    procedure FONT_SIZEPropertiesChange(Sender: TObject);
    procedure BORDER_THICKPropertiesChange(Sender: TObject);
    procedure BORDER_COLORPropertiesChange(Sender: TObject);
    procedure BORDER_FILLPropertiesChange(Sender: TObject);
    procedure FONT_LAYOUTPropertiesChange(Sender: TObject);
    procedure FONT_ALIGNMENTPropertiesChange(Sender: TObject);
    procedure FONT_STYLEPropertiesChange(Sender: TObject);
  private
    procedure AssignControlsValue;
    { Private declarations }
  public
    { Public declarations }
    IS_INSERTING : Boolean;
  end;

var
  fmTextObjectEdit: TfmTextObjectEdit;

implementation

{$R *.dfm}

procedure TfmTextObjectEdit.AUTO_SIZEPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.BORDER_COLORPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.BORDER_FILLPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.BORDER_THICKPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.FONT_ALIGNMENTPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.FONT_COLORPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then begin
    FontDialog1.Font.Color := FONT_COLOR.ColorValue;
    AssignControlsValue;
  end;
end;

procedure TfmTextObjectEdit.FONT_LAYOUTPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.FONT_NAMEChange(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.FONT_SIZEPropertiesChange(Sender: TObject);
begin
  if IS_INSERTING then
    FontDialog1.Font.Size := FONT_SIZE.Value;
    AssignControlsValue;

end;

procedure TfmTextObjectEdit.FONT_STYLEPropertiesChange(Sender: TObject);
begin
//  case FONT_STYLE.EditValue of
//    0 : FontDialog1.Font.Style := [fsBold];
//    1 : FontDialog1.Font.Style := [fsItalic];
//    2 : FontDialog1.Font.Style := [fsUnderline];
//    3 : FontDialog1.Font.Style := [fsStrikeOut];
//  end;
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.FormShow(Sender: TObject);
begin
  IS_INSERTING := False;
  ImageEnView1.LayersAdd( ielkText );
  AssignControlsValue;
  IS_INSERTING := True;
end;

procedure TfmTextObjectEdit.Memo1Change(Sender: TObject);
begin
  if IS_INSERTING then
    AssignControlsValue;
end;

procedure TfmTextObjectEdit.AssignControlsValue;
begin
  case FONT_STYLE.EditValue of
    0 : TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsBold];
    1 : TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsItalic];
    2 : TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsUnderline];
    3 : TIETextLayer(ImageEnView1.CurrentLayer).Font.Style := [fsStrikeOut];
  end;
  TIETextLayer(ImageEnView1.CurrentLayer).Text := Trim(Memo1.Text);
  TIETextLayer(ImageEnView1.CurrentLayer).Font.Size := FONT_SIZE.Value;
  TIETextLayer(ImageEnView1.CurrentLayer).Font.Color := FONT_COLOR.ColorValue;
  TIETextLayer(ImageEnView1.CurrentLayer).Font.Name := FONT_NAME.Text;
  TIETextLayer(ImageEnView1.CurrentLayer).BorderColor := BORDER_COLOR.ColorValue;
  TIETextLayer(ImageEnView1.CurrentLayer).BorderWidth := BORDER_THICK.Value;
  TIETextLayer(ImageEnView1.CurrentLayer).FillColor := BORDER_FILL.ColorValue;
  TIETextLayer(ImageEnView1.CurrentLayer).Alignment := FONT_ALIGNMENT.EditValue;
  TIETextLayer(ImageEnView1.CurrentLayer).Layout := FONT_LAYOUT.EditValue;
  TIETextLayer(ImageEnView1.CurrentLayer).AutoSize := AUTO_SIZE.Checked;
  ImageEnView1.Update;
end;

end.
