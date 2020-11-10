unit UfmLoginUsers;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, MemDS, DBAccess, Uni, StdCtrls, Buttons, cxImageComboBox;

type
  TfmLoginUsers = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    t_login_user: TUniTable;
    d_login_user: TDataSource;
    t_login_userID: TStringField;
    t_login_userUSER_ID: TStringField;
    t_login_userUSER_NAME: TStringField;
    t_login_userLOGIN_ID: TStringField;
    t_login_userUSER_KIND: TIntegerField;
    t_login_userEMAIL: TStringField;
    t_login_userIS_ANALYZER: TSmallintField;
    t_login_userCOMP_NAME: TStringField;
    t_login_userLOCATION_AREA: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1USER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1USER_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1LOGIN_ID: TcxGridDBColumn;
    cxGrid1DBTableView1USER_KIND: TcxGridDBColumn;
    cxGrid1DBTableView1EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1IS_ANALYZER: TcxGridDBColumn;
    cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATION_AREA: TcxGridDBColumn;
    btnRefresh: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLoginUsers: TfmLoginUsers;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}



procedure TfmLoginUsers.btnRefreshClick(Sender: TObject);
begin
  d_login_user.DataSet.Refresh;
end;

procedure TfmLoginUsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLoginUsers.FormCreate(Sender: TObject);
begin
  t_login_user.Active := True;
  d_login_user.DataSet.Refresh;
end;

initialization RegisterClasses([TfmLoginUsers]);

end.
