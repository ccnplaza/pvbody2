unit uMemberEditBasic;

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
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  StdCtrls, Buttons, cxTextEdit, ExtCtrls, cxImage, imageenio, DB, cxMemo,
  cxImageComboBox, MemDS, VirtualTable, dxSkinOffice2013White, ieview,
  imageenview, ComCtrls, dxCore, cxDateUtils, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfmMemberEditBasic = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CNAME: TEdit;
    SEX: TcxImageComboBox;
    CTEL: TEdit;
    CEMAIL: TEdit;
    JOBKIND: TEdit;
    CBIGO: TEdit;
    REG_DATE: TcxDateEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    cbCenter: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberEditBasic: TfmMemberEditBasic;

implementation

uses UdmDBCommon;


{$R *.dfm}

procedure TfmMemberEditBasic.FormShow(Sender: TObject);
begin
  cbCenter.ItemIndex := 0;
end;

end.
