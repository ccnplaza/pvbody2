unit uMovementGuide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxLabel, cxDBLabel, cxImage, cxDBEdit,
  ExtCtrls, dxSkinMetropolis, dxSkinMetropolisDark;

type
  TfmMovementGuide = class(TForm)
    Panel6: TPanel;
    cxDBImage1: TcxDBImage;
    cxDBImageView: TcxDBImage;
    cxDBLabel1: TcxDBLabel;
    btnPrevImage: TBitBtn;
    btnNextImage: TBitBtn;
    cxDBLabel2: TcxDBLabel;
    procedure btnNextImageClick(Sender: TObject);
    procedure btnPrevImageClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovementGuide: TfmMovementGuide;

implementation



{$R *.dfm}

procedure TfmMovementGuide.btnNextImageClick(Sender: TObject);
var
  fname, nname : string;
begin
  fname := cxDBImageView.DataBinding.DataField;
  if fname = 'P_IMAGE' then
    nname := 'P_IMAGE2'
  else if fname = 'P_IMAGE2' then
    nname := 'P_IMAGE3'
  else if fname = 'P_IMAGE3' then
    nname := 'P_IMAGE4'
  else
    nname := 'P_IMAGE';

  cxDBImageView.DataBinding.DataField := nname;
  cxDBImageView.DataBinding.UpdateDisplayValue;
end;

procedure TfmMovementGuide.btnPrevImageClick(Sender: TObject);
var
  fname, nname : string;
begin
  fname := cxDBImageView.DataBinding.DataField;
  if fname = 'P_IMAGE' then
    nname := 'P_IMAGE4'
  else if fname = 'P_IMAGE2' then
    nname := 'P_IMAGE'
  else if fname = 'P_IMAGE3' then
    nname := 'P_IMAGE2'
  else
    nname := 'P_IMAGE3';

  cxDBImageView.DataBinding.DataField := nname;
  cxDBImageView.DataBinding.UpdateDisplayValue;
end;

procedure TfmMovementGuide.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
