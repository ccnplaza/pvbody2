unit UfmPracticeMethodSingle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, DB, MemDS, DBAccess, Uni, cxImage,
  cxDBEdit, OleCtrls, SHDocVw, ExtCtrls;

type
  TfmPracticeMethodSingle = class(TForm)
    pnl2: TPanel;
    wb1: TWebBrowser;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ImageID : Integer;
  end;

var
  fmPracticeMethodSingle: TfmPracticeMethodSingle;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmPracticeMethodSingle.FormShow(Sender: TObject);
begin
  wb1.Navigate('http://bodycheck.co.kr/yogabody/imageplayer2.php?id=' + IntToStr(ImageID));
end;

end.
