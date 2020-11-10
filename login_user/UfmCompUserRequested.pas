unit UfmCompUserRequested;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, StdCtrls, Buttons,
  cxImageComboBox, cxDBLookupComboBox, UniProvider, InterBaseUniProvider,
  DBClient, Provider;

type
  TfmCompUserRequested = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    q_company: TUniQuery;
    q_user: TUniQuery;
    d_company: TDataSource;
    d_user: TDataSource;
    cxGrid1DBTableView1COMP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CHIEF_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TEL_NO: TcxGridDBColumn;
    cxGrid1DBTableView1FAX_NO: TcxGridDBColumn;
    cxGrid1DBTableView1ADDR: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATION_AREA: TcxGridDBColumn;
    cxGrid1DBTableView1BUS_ID: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_NO: TcxGridDBColumn;
    cxGrid1DBTableView1BANK_OWNER: TcxGridDBColumn;
    cxGrid1DBTableView1REMARK: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_KIND: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1APPROVED: TcxGridDBColumn;
    cxGrid1DBTableView1REG_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1CONFIRMED: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1USER_NAME: TcxGridDBColumn;
    cxGridDBTableView1LOGIN_ID: TcxGridDBColumn;
    cxGridDBTableView1LOGIN_PASS: TcxGridDBColumn;
    cxGridDBTableView1LOGIN_PASS2: TcxGridDBColumn;
    cxGridDBTableView1USER_KIND: TcxGridDBColumn;
    cxGridDBTableView1APPROVED: TcxGridDBColumn;
    cxGridDBTableView1REG_DATE: TcxGridDBColumn;
    cxGridDBTableView1COMP_ID: TcxGridDBColumn;
    cxGridDBTableView1REMARK: TcxGridDBColumn;
    cxGridDBTableView1EMAIL: TcxGridDBColumn;
    cxGridDBTableView1CONFIRMED: TcxGridDBColumn;
    btnChangeApproved: TBitBtn;
    btnChangeUser: TBitBtn;
    BitBtn1: TBitBtn;
    pnlLeft: TPanel;
    btnUserConfirm: TButton;
    btnCompConfirm: TButton;
    t_company_lookup: TUniTable;
    d_company_lookup: TDataSource;
    btnReflashComp: TBitBtn;
    btnRefreshUser: TBitBtn;
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
    q_companyCOMP_ID: TStringField;
    q_companyCHIEF_NAME: TStringField;
    q_companyTEL_NO: TStringField;
    q_companyFAX_NO: TStringField;
    q_companyADDR: TStringField;
    q_companyLOCATION_AREA: TStringField;
    q_companyBUS_ID: TStringField;
    q_companyBANK_NAME: TStringField;
    q_companyBANK_NO: TStringField;
    q_companyBANK_OWNER: TStringField;
    q_companyREMARK: TStringField;
    q_companyCOMP_KIND: TIntegerField;
    q_companyCOMP_NAME: TStringField;
    q_companyAPPROVED: TSmallintField;
    q_companyREG_DATE: TDateField;
    q_companyCONFIRMED: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnChangeApprovedClick(Sender: TObject);
    procedure btnChangeUserClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnUserConfirmClick(Sender: TObject);
    procedure btnCompConfirmClick(Sender: TObject);
    procedure btnReflashCompClick(Sender: TObject);
    procedure btnRefreshUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCompUserRequested: TfmCompUserRequested;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmCompUserRequested.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompUserRequested.FormShow(Sender: TObject);
begin
  t_company_lookup.Active := True;
  q_company.Active := True;
  q_user.Active := True;
end;

procedure TfmCompUserRequested.BitBtn1Click(Sender: TObject);
var
  approved : integer;
begin
  approved := q_company.FieldByName('approved').AsInteger;
  if approved = 0 then
    approved := 1
  else
    approved := 0;
  q_company.Edit;
  q_company.FieldByName('approved').AsInteger := approved;
  q_company.Post;
  d_company.DataSet.Refresh;
end;

procedure TfmCompUserRequested.btnChangeApprovedClick(Sender: TObject);
var
  approved : integer;
begin
  approved := q_user.FieldByName('approved').AsInteger;
  if approved = 0 then
    approved := 1
  else
    approved := 0;
  q_user.Edit;
  q_user.FieldByName('approved').AsInteger := approved;
  q_user.Post;
  d_user.DataSet.Refresh;
end;

procedure TfmCompUserRequested.btnChangeUserClick(Sender: TObject);
var
  ukind : integer;
begin
  ukind := q_user.FieldByName('user_kind').AsInteger;
  if ukind = 0 then
    ukind := 1
  else
    ukind := 0;
  q_user.Edit;
  q_user.FieldByName('user_kind').AsInteger := ukind;
  q_user.Post;
  d_user.DataSet.Refresh;
end;

procedure TfmCompUserRequested.btnCompConfirmClick(Sender: TObject);
begin
  q_company.Edit;
  q_company.FieldByName('confirmed').AsInteger := 1;
  q_company.Post;
  d_company.DataSet.Refresh;
end;

procedure TfmCompUserRequested.btnReflashCompClick(Sender: TObject);
begin
  d_company_lookup.DataSet.Refresh;
  d_company.DataSet.Refresh;
end;

procedure TfmCompUserRequested.btnRefreshUserClick(Sender: TObject);
begin
  d_company_lookup.DataSet.Refresh;
  d_user.DataSet.Refresh;
end;

procedure TfmCompUserRequested.btnUserConfirmClick(Sender: TObject);
begin
  q_user.Edit;
  q_user.FieldByName('confirmed').AsInteger := 1;
  q_user.Post;
  d_user.DataSet.Refresh;
end;

initialization RegisterClasses([TfmCompUserRequested]);

end.
