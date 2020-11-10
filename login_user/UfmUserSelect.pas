unit UfmUserSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Uni, DBClient,
  Provider, MemDS, DBAccess, ExtCtrls, StdCtrls, Buttons;

type
  TfmUserSelect = class(TForm)
    Panel1: TPanel;
    q_user: TUniQuery;
    d_user: TDataSource;
    d_company_lookup: TDataSource;
    t_company_lookup: TUniTable;
    cxGrid2: TcxGrid;
    gridUser: TcxGridDBTableView;
    gridUserID: TcxGridDBColumn;
    gridUserREG_DATE: TcxGridDBColumn;
    gridUserCOMP_ID: TcxGridDBColumn;
    gridUserUSER_NAME: TcxGridDBColumn;
    gridUserLOGIN_ID: TcxGridDBColumn;
    gridUserLOGIN_PASS: TcxGridDBColumn;
    gridUserLOGIN_PASS2: TcxGridDBColumn;
    gridUserUSER_KIND: TcxGridDBColumn;
    gridUserAPPROVED: TcxGridDBColumn;
    gridUserREMARK: TcxGridDBColumn;
    gridUserCONFIRMED: TcxGridDBColumn;
    gridUserEMAIL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    q_userID: TStringField;
    q_userUSER_NAME: TStringField;
    q_userLOGIN_ID: TStringField;
    q_userLOGIN_PASS: TStringField;
    q_userLOGIN_PASS2: TStringField;
    q_userUSER_KIND: TIntegerField;
    q_userAPPROVED: TIntegerField;
    q_userREG_DATE: TDateField;
    q_userCOMP_ID: TStringField;
    q_userREMARK: TStringField;
    q_userEMAIL: TStringField;
    q_userCONFIRMED: TSmallintField;
    q_userIS_ANALYZER: TSmallintField;
    t_company_lookupCOMP_ID: TStringField;
    t_company_lookupCHIEF_NAME: TStringField;
    t_company_lookupTEL_NO: TStringField;
    t_company_lookupFAX_NO: TStringField;
    t_company_lookupADDR: TStringField;
    t_company_lookupLOCATION_AREA: TStringField;
    t_company_lookupBUS_ID: TStringField;
    t_company_lookupBANK_NAME: TStringField;
    t_company_lookupBANK_NO: TStringField;
    t_company_lookupBANK_OWNER: TStringField;
    t_company_lookupREMARK: TStringField;
    t_company_lookupCOMP_KIND: TIntegerField;
    t_company_lookupCOMP_NAME: TStringField;
    t_company_lookupAPPROVED: TSmallintField;
    t_company_lookupREG_DATE: TDateField;
    t_company_lookupCONFIRMED: TSmallintField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUserSelect: TfmUserSelect;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmUserSelect.FormCreate(Sender: TObject);
begin
  t_company_lookup.Active := True;
  q_user.Active := True;
end;

end.
