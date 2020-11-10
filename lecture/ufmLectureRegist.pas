unit ufmLectureRegist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmDialogParent, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxTextEdit, cxDBEdit, ExtCtrls,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxCurrencyEdit, Mask;

type
  TfmLectureRegist = class(TfmDialogParent)
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    edtName: TEdit;
    edtBigo: TEdit;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLectureRegist: TfmLectureRegist;

implementation

uses UfmLecture;


{$R *.dfm}

procedure TfmLectureRegist.BitBtn2Click(Sender: TObject);
begin
  if edtName.Text = '' then begin
    ShowMessage('강좌명을 입력하세요.');
    edtName.SetFocus;
    Exit;
  end;
  ModalResult := mrOk;
end;

end.
