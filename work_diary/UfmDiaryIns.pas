unit UfmDiaryIns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ComCtrls,
  dxCore, cxDateUtils, Menus, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGroupBox;

type
  TfmDiaryIns = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pnl4: TPanel;
    pnl5: TPanel;
    edtWDate: TcxDateEdit;
    edtTime: TEdit;
    pnl10: TPanel;
    pnl11: TPanel;
    cbActionKind: TcxLookupComboBox;
    pnl19: TPanel;
    pnl20: TPanel;
    edtSubject: TMemo;
    pnl31: TPanel;
    pnl32: TPanel;
    cbResult: TcxLookupComboBox;
    pnl33: TPanel;
    pnl34: TPanel;
    edtToName: TEdit;
    pnl7: TPanel;
    pnl8: TPanel;
    edtFromName: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    edtResponse: TMemo;
    Panel3: TPanel;
    Panel4: TPanel;
    edtDDate: TcxDateEdit;
    edtDTime: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    icbUser: TcxLookupComboBox;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDiaryIns: TfmDiaryIns;

implementation

{$R *.dfm}

procedure TfmDiaryIns.btnSaveClick(Sender: TObject);
begin
  if icbUser.EditValue > 0 then
    ModalResult := mrOk
  else
    ShowMessage('담당자선택 필수!!!');
end;

end.
