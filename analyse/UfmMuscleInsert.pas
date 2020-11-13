unit UfmMuscleInsert;

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
  iexToolbars, Menus, StdCtrls, cxButtons, ToolWin, ComCtrls, iexRichEdit,
  ExtCtrls, ieview, imageenview, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxGroupBox, ieopensavedlg;

type
  TfmMuscleInsert = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    edtName: TEdit;
    Label2: TLabel;
    icbPosture: TcxImageComboBox;
    icbMuscle: TcxImageComboBox;
    edtIDX: TcxSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    ImageEnView1: TImageEnView;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Panel1: TPanel;
    edtDesc: TIERichEdit;
    IERichEditToolbar1: TIERichEditToolbar;
    Panel2: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    Label5: TLabel;
    edtImage: TEdit;
    cxButton3: TcxButton;
    OpenImageEnDialog1: TOpenImageEnDialog;
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IMAGE_CHANGED : Boolean;
  end;

var
  fmMuscleInsert: TfmMuscleInsert;

implementation

{$R *.dfm}

procedure TfmMuscleInsert.cxButton3Click(Sender: TObject);
begin
  if OpenImageEnDialog1.Execute then begin
    edtImage.Text := OpenImageEnDialog1.FileName;
    ImageEnView1.IO.LoadFromFileJpeg(OpenImageEnDialog1.FileName);
    IMAGE_CHANGED := True;
  end;
end;

procedure TfmMuscleInsert.FormShow(Sender: TObject);
begin
  IMAGE_CHANGED := False;
end;

end.
