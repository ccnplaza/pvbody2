unit UfmCompanyRegist;

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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, DB, MemDS, VirtualTable, ExtCtrls, cxImageComboBox;

type
  TfmCompanyRegist = class(TForm)
    Panel1: TPanel;
    vt_company: TVirtualTable;
    vt_companyCOMP_ID: TStringField;
    vt_companyCHIEF_NAME: TStringField;
    vt_companyTEL_NO: TStringField;
    vt_companyFAX_NO: TStringField;
    vt_companyADDR: TStringField;
    vt_companyLOCATION_AREA: TStringField;
    vt_companyBUS_ID: TStringField;
    vt_companyBANK_NAME: TStringField;
    vt_companyBANK_NO: TStringField;
    vt_companyBANK_OWNER: TStringField;
    vt_companyREMARK: TStringField;
    vt_companyCOMP_KIND: TIntegerField;
    vt_companyCOMP_NAME: TStringField;
    vt_companyAPPROVED: TSmallintField;
    vt_companyREG_DATE: TDateField;
    vd_company: TDataSource;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label9: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    Label10: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label11: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label13: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompanyRegist: TfmCompanyRegist;

implementation

uses UdmDBCommon;

{$R *.dfm}

end.
