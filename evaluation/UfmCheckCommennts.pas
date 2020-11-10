unit UfmCheckCommennts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters,
  dxSkinVS2010, StdCtrls, cxButtons, ExtCtrls;

type
  TfmCheckCommennts = class(TForm)
    pnl1: TPanel;
    mmo1: TMemo;
    btnSave: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCheckCommennts: TfmCheckCommennts;

implementation

{$R *.dfm}

end.
