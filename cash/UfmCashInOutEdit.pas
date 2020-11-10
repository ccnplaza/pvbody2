unit UfmCashInOutEdit;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, StdCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxCalendar, Buttons, Mask, ExtCtrls,
  cxCurrencyEdit;

type
  TfmCashInOutEdit = class(TForm)
    Panel1: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel9: TPanel;
    c_date: TcxDateEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    k_kind: TcxLookupComboBox;
    Panel16: TPanel;
    Panel18: TPanel;
    C_DESC: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Panel4: TPanel;
    Panel14: TPanel;
    cbCenter: TcxLookupComboBox;
    cash_in: TcxCurrencyEdit;
    cash_out: TcxCurrencyEdit;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCashInOutEdit: TfmCashInOutEdit;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmCashInOutEdit.BitBtn1Click(Sender: TObject);
begin
  if not (Length(k_kind.EditValue) > 0) then begin
    ShowMessage('계정과목을 선택하세요.');
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure TfmCashInOutEdit.FormActivate(Sender: TObject);
begin
  dmDBCommon.CASH_INOUT_KIND_SEL_LOOK.Active := True;
  dmDBCommon.d_CASH_INOUT_KIND_SEL_LOOK.DataSet.Refresh;
end;

end.
