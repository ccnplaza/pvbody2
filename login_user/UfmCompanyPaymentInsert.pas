unit UfmCompanyPaymentInsert;

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
  dxSkinXmas2008Blue, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, Uni, StdCtrls, Buttons, cxDBEdit, cxCalc, cxTextEdit,
  cxMaskEdit, cxCalendar, MemDS, DBAccess, ComCtrls, dxCore, cxDateUtils;

type
  TfmCompanyPaymentInsert = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edtPayDate: TcxDateEdit;
    Label1: TLabel;
    edtPayMonth: TcxMaskEdit;
    Label3: TLabel;
    edtPayAmount: TcxTextEdit;
    procedure t_company_paymentNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompanyPaymentInsert: TfmCompanyPaymentInsert;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmCompanyPaymentInsert.t_company_paymentNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('id').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

end.
