unit UfmComparePlayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters,
  dxSkinVS2010, cxControls, cxContainer, cxEdit, ExtCtrls, ieview, imageenview,
  cxTextEdit, cxMaskEdit, cxSpinEdit, StdCtrls, cxButtons, iemview;

type
  TfmComparePlayer = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    btnPlay: TcxButton;
    btnStopPlay: TcxButton;
    speTime: TcxSpinEdit;
    ImageEnView1: TImageEnView;
    Timer1: TTimer;
    ImageEnMView1: TImageEnMView;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnStopPlayClick(Sender: TObject);
    procedure speTimePropertiesEditValueChanged(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IMAGE_CNT, PLAY_IDX : Integer;
  end;

var
  fmComparePlayer: TfmComparePlayer;

implementation

{$R *.dfm}

procedure TfmComparePlayer.btnPlayClick(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TfmComparePlayer.btnStopPlayClick(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TfmComparePlayer.cxButton1Click(Sender: TObject);
begin
  Timer1.Enabled := False;
  if PLAY_IDX > 0 then
    Dec(PLAY_IDX)
  else
    PLAY_IDX := IMAGE_CNT - 1;
  ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(PLAY_IDX));
  ImageEnView1.Update;
end;

procedure TfmComparePlayer.cxButton2Click(Sender: TObject);
begin
  Timer1.Enabled := False;
  if PLAY_IDX < IMAGE_CNT - 1 then
    Inc(PLAY_IDX)
  else
    PLAY_IDX := 0;
  ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(PLAY_IDX));
  ImageEnView1.Update;
end;

procedure TfmComparePlayer.FormCreate(Sender: TObject);
begin
  PLAY_IDX := 0;
end;

procedure TfmComparePlayer.FormShow(Sender: TObject);
begin
  IMAGE_CNT := ImageEnMView1.ImageCount;
  Timer1.Enabled := True;
end;

procedure TfmComparePlayer.speTimePropertiesEditValueChanged(Sender: TObject);
begin
  Timer1.Interval := speTime.Value * 100;
end;

procedure TfmComparePlayer.Timer1Timer(Sender: TObject);
begin
  ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(PLAY_IDX));
  ImageEnView1.Update;
  if PLAY_IDX < IMAGE_CNT - 1 then
    Inc(PLAY_IDX)
  else
    PLAY_IDX := 0;

end;

end.
