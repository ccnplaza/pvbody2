unit UfmImportImages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, ieopensavedlg, StdCtrls, cxButtons, LMDControl, LMDShList,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfmImportImages = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtSaveDate: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    OpenImageEnDialog1: TOpenImageEnDialog;
    Memo1: TMemo;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmImportImages: TfmImportImages;

implementation

{$R *.dfm}

procedure TfmImportImages.cxButton1Click(Sender: TObject);
var
  i, cnt : Integer;
begin
  if OpenImageEnDialog1.Execute then begin
    cnt := OpenImageEnDialog1.Files.Count;
    for i := 0 to cnt - 1 do begin
      Memo1.Lines.Add(OpenImageEnDialog1.Files[i]);
    end;
  end;
end;

procedure TfmImportImages.FormShow(Sender: TObject);
begin
  edtSaveDate.Date := Date;
end;

end.
