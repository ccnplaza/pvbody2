unit uMemberFavorite;

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
  cxGrid, ExtCtrls, StdCtrls, Buttons, MemDS, DBAccess, Uni, DBClient, Provider,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxDBLookupComboBox,
  cxImageComboBox;

type
  TfmMemberFavorite = class(TForm)
    Panel1: TPanel;
    gridMember: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    gridMemberUID: TcxGridDBColumn;
    gridMemberCNAME: TcxGridDBColumn;
    gridMemberSEX: TcxGridDBColumn;
    gridMemberJOBKIND: TcxGridDBColumn;
    gridMemberCTEL: TcxGridDBColumn;
    gridMemberREG_DATE: TcxGridDBColumn;
    CUSTOMER_BASIC_INS: TUniStoredProc;
    btnAddNew: TBitBtn;
    gridMemberIS_ACTIVE: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    procedure gridMemberCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    gsSearchStr : string;
  end;

var
  fmMemberFavorite: TfmMemberFavorite;

implementation

uses UdmDBCommon, GlobalVar, uMemberEditBasic, uMemberSelect;


{$R *.dfm}

procedure TfmMemberFavorite.FormShow(Sender: TObject);
begin
  dmDBCommon.CUSTOMER_FAVORITE_SELECT.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.CUSTOMER_FAVORITE_SELECT.Active := True;
  dmDBCommon.d_CUSTOMER_FAVORITE_SELECT.DataSet.Refresh;
end;

procedure TfmMemberFavorite.BitBtn1Click(Sender: TObject);
begin
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    dmDBCommon.d_CUSTOMER_FAVORITE_SELECT.DataSet.Refresh;
  finally
    fmMemberSelect.Free;
  end;
end;

procedure TfmMemberFavorite.btnAddNewClick(Sender: TObject);
begin
  dmDBCommon.DeleteCustomerFavorite(gridMemberUID.EditValue);
  dmDBCommon.d_CUSTOMER_FAVORITE_SELECT.DataSet.Refresh;
end;

procedure TfmMemberFavorite.btnSelectClick(Sender: TObject);
begin
  CustomerImages.CustID := gridMemberUID.EditValue;
  CustomerImages.CustName := gridMemberCNAME.EditValue;
  CustomerImages.CustTel := gridMemberCTEL.EditValue;
  CustomerImages.CustSex := StrToInt(gridMemberSEX.EditValue);
  ModalResult := mrOk;
end;

procedure TfmMemberFavorite.gridMemberCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

end.
