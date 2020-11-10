unit uMemberSelect;

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
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxDBLookupComboBox;

type
  TfmMemberSelect = class(TForm)
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
    Label1: TLabel;
    edtSearch: TEdit;
    btnFilter: TBitBtn;
    CUSTOMER_BASIC_INS: TUniStoredProc;
    btnAddNew: TBitBtn;
    gridMemberIS_ACTIVE: TcxGridDBColumn;
    procedure gridMemberCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFilterClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddNewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    gsSearchStr : string;
  end;

var
  fmMemberSelect: TfmMemberSelect;

implementation

uses UdmDBCommon, GlobalVar, uMemberEditBasic;


{$R *.dfm}

procedure TfmMemberSelect.FormShow(Sender: TObject);
var
  sName : string;
begin
  if gsSearchStr = '' then
    sName := '%'
  else
    sName := '%' + gsSearchStr + '%';
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('cust_name').Value := sName;
  dmDBCommon.CUSTOMER_SELECT_NAME.Active := True;
  dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Refresh;
end;

procedure TfmMemberSelect.btnAddNewClick(Sender: TObject);
var
  UID : string;
begin
  fmMemberEditBasic := TfmMemberEditBasic.Create(Self);
  try
    fmMemberEditBasic.ShowModal;
    if fmMemberEditBasic.ModalResult = mrOk then begin
      UID := FormatDateTime('yyyymmddhhnnsszzz', now);
      CUSTOMER_BASIC_INS.ParamByName('UID').Value := UID;
      CUSTOMER_BASIC_INS.ParamByName('CNAME').Value := fmMemberEditBasic.CNAME.Text;
      CUSTOMER_BASIC_INS.ParamByName('SEX').Value := fmMemberEditBasic.SEX.EditValue;
      CUSTOMER_BASIC_INS.ParamByName('CTEL').Value := fmMemberEditBasic.CTEL.Text;
      CUSTOMER_BASIC_INS.ParamByName('CEMAIL').Value := fmMemberEditBasic.CEMAIL.Text;
      CUSTOMER_BASIC_INS.ParamByName('CBIGO').Value := fmMemberEditBasic.CBIGO.Text;
      CUSTOMER_BASIC_INS.ParamByName('REG_DATE').Value := fmMemberEditBasic.REG_DATE.EditValue;
      CUSTOMER_BASIC_INS.ParamByName('JOBKIND').Value := fmMemberEditBasic.JOBKIND.Text;
      CUSTOMER_BASIC_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
      CUSTOMER_BASIC_INS.ParamByName('IS_ACTIVE').Value := fmMemberEditBasic.cbCenter.EditValue;

      CUSTOMER_BASIC_INS.ExecProc;
      dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Refresh;
      dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Locate('UID', UID, []);
    end;
  finally
    fmMemberEditBasic.Free;
  end;
end;

procedure TfmMemberSelect.btnFilterClick(Sender: TObject);
var
  search_str : string;
begin
  if edtSearch.Text <> '' then begin
    search_str := '%' + Trim(edtSearch.Text) + '%';
    dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('cust_name').Value := search_str;
    dmDBCommon.CUSTOMER_SELECT_NAME.Active := True;
    dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Refresh;
    if dmDBCommon.CUSTOMER_SELECT_NAME.RecordCount = 1 then begin
      btnSelect.Click;
    end else begin
      cxGrid1.SetFocus;
      btnSelect.Default := True;
    end;
  end else begin
    dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('cust_name').Value := '%';
    dmDBCommon.CUSTOMER_SELECT_NAME.Active := True;
    dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Refresh;
    if dmDBCommon.CUSTOMER_SELECT_NAME.RecordCount = 1 then begin
      cxGrid1.SetFocus;
      btnSelect.Default := True;
    end;
  end;
end;

procedure TfmMemberSelect.btnSelectClick(Sender: TObject);
begin
  GLOVAL_MEMBER_UID := gridMemberUID.EditValue;
  GLOVAL_MEMBER_NAME := gridMemberCNAME.EditValue;
  GLOVAL_MEMBER_TEL := gridMemberCTEL.EditValue;
  ModalResult := mrOk;
end;

procedure TfmMemberSelect.gridMemberCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

end.
