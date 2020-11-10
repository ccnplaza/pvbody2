unit uPayIn;

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
  dxSkinXmas2008Blue, ComCtrls, dxCore, cxDateUtils, StdCtrls, Buttons, cxMemo,
  cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCalendar, cxTextEdit, ExtCtrls,
  cxCurrencyEdit;

type
  TfmPayIn = class(TForm)
    Panel4: TPanel;
    Label2: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    edtCustName: TcxTextEdit;
    edtCustID: TcxTextEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    edtPayDate: TcxDateEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    edtYear: TcxSpinEdit;
    edtMonth: TcxSpinEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    edtBigo: TcxMemo;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    edtPay: TcxCurrencyEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    edtLectureName: TcxTextEdit;
    edtPayKind: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPayIn: TfmPayIn;

implementation

uses uMemberSelect;

{$R *.dfm}

end.
