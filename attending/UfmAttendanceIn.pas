unit UfmAttendanceIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, Buttons,
  ExtCtrls, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmAttendanceIn = class(TForm)
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    btnSave: TBitBtn;
    edtAttendTime: TEdit;
    Label8: TLabel;
    Label1: TLabel;
    edtDate: TcxDateEdit;
    btnSearch: TBitBtn;
    lblName: TLabel;
    lblTel: TLabel;
    edtCustomerID: TEdit;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAttendanceIn: TfmAttendanceIn;

implementation

uses uMemberSelect;

{$R *.dfm}

procedure TfmAttendanceIn.btnSearchClick(Sender: TObject);
var
  mid, cname, ctel : string;
begin
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      mid := fmMemberSelect.gridMemberUID.EditValue;
      cname := fmMemberSelect.gridMemberCNAME.EditValue;
      ctel := fmMemberSelect.gridMemberCTEL.EditValue;
      edtCustomerID.Text := mid;
      lblName.Caption := cname;
      lblTel.Caption := ctel;
    end;
  finally
    fmMemberSelect.Free;
  end;
end;

end.
