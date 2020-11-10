unit UfmProductSaleEdit;

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
  dxCore, cxDateUtils, StdCtrls, Buttons, Mask,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, cxImageComboBox, cxCurrencyEdit;

type
  TfmProductSaleEdit = class(TForm)
    Panel1: TPanel;
    Panel12: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel16: TPanel;
    Panel13: TPanel;
    product_name: TcxLookupComboBox;
    Panel9: TPanel;
    c_date: TcxDateEdit;
    Panel11: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel18: TPanel;
    BIGO: TEdit;
    BitBtn4: TBitBtn;
    btnSave: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    PAY_KIND: TcxImageComboBox;
    BitBtn2: TBitBtn;
    Panel17: TPanel;
    Panel19: TPanel;
    cbCenter: TcxLookupComboBox;
    QTY: TcxCurrencyEdit;
    UPRICE: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    PAYED: TcxCurrencyEdit;
    TPRICE: TcxCurrencyEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure UPRICEChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProductSaleEdit: TfmProductSaleEdit;

implementation

uses GlobalVar, UfmProductsIN, UdmDBCommon;

{$R *.dfm}

procedure TfmProductSaleEdit.BitBtn2Click(Sender: TObject);
begin
  fmProductsIN := TfmProductsIN.Create(Self);
  try
    fmProductsIN.ShowModal;
    if fmProductsIN.ModalResult = mrOk then begin
      dmDBCommon.PRODUCTS_INS.ParamByName('COMPANY_ID').AsString := LoginUserCompID;
      dmDBCommon.PRODUCTS_INS.ParamByName('PRODUCT_NAME').AsString := fmProductsIN.edtProductName.Text;
      dmDBCommon.PRODUCTS_INS.ParamByName('PRODUCTS_BIGO').AsString := fmProductsIN.edtProductBigo.Text;
      dmDBCommon.PRODUCTS_INS.ExecProc;

      dmDBCommon.d_PRODUCTS_SEL_LOOK.DataSet.Refresh;
    end;
  finally
    fmProductsIN.Free;
  end;
end;

procedure TfmProductSaleEdit.btnSaveClick(Sender: TObject);
begin
  if not (product_name.EditValue > 0) then begin
    ShowMessage('상품명을 선택하세요.');
    product_name.SetFocus;
    Exit;
  end;
  if not (QTY.Value > 0) then begin
    ShowMessage('수량을 입력하세요.');
    QTY.SetFocus;
    Exit;
  end;
  if not (UPRICE.Value > 0) then begin
    ShowMessage('수량을 입력하세요.');
    UPRICE.SetFocus;
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure TfmProductSaleEdit.FormShow(Sender: TObject);
begin
  dmDBCommon.PRODUCTS_SEL_LOOK.Active := True;
  dmDBCommon.d_PRODUCTS_SEL_LOOK.DataSet.Refresh;
end;

procedure TfmProductSaleEdit.UPRICEChange(Sender: TObject);
begin
  TPRICE.Value := QTY.Value * UPRICE.Value;
  PAYED.Value := QTY.Value * UPRICE.Value;
end;

end.
