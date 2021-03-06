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
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxDBLookupComboBox,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox;

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
    btnAddFavorite: TBitBtn;
    btnMember: TBitBtn;
    icbCenter: TcxImageComboBox;
    Label2: TLabel;
    procedure gridMemberCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFilterClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddNewClick(Sender: TObject);
    procedure btnAddFavoriteClick(Sender: TObject);
    procedure btnMemberClick(Sender: TObject);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    gsSearchStr : string;
    S_CENTER, E_CENTER : Integer;
  end;

var
  fmMemberSelect: TfmMemberSelect;

implementation

uses UdmDBCommon, GlobalVar, uMemberEditBasic, uMemberEditView;


{$R *.dfm}

procedure TfmMemberSelect.FormShow(Sender: TObject);
var
  sName : string;
begin
  dmDBCommon.SetCenter(icbCenter);
  icbCenter.EditValue := 0;
  icbCenter.Enabled := LoginUserKIND >= 2;
  if icbCenter.EditValue > 0 then begin
    S_CENTER := icbCenter.EditValue;
    E_CENTER := icbCenter.EditValue;
  end else begin
    S_CENTER := 0;
    E_CENTER := 99;
  end;
  if gsSearchStr = '' then
    sName := '%'
  else
    sName := '%' + gsSearchStr + '%';
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('S_CENTER').Value := S_CENTER;
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('E_CENTER').Value := E_CENTER;
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('cust_name').Value := sName;
  dmDBCommon.CUSTOMER_SELECT_NAME.Active := True;
  dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Refresh;
end;

procedure TfmMemberSelect.btnAddFavoriteClick(Sender: TObject);
begin
  dmDBCommon.AddCustomerFavorite(gridMemberUID.EditValue);
  ShowMessage('회원 즐겨찾기에 추가하였습니다.');
end;

procedure TfmMemberSelect.btnAddNewClick(Sender: TObject);
var
  UID : string;
begin
  fmMemberEditBasic := TfmMemberEditBasic.Create(Self);
  try
    fmMemberEditBasic.EDIT_MODE := 0;
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
      CUSTOMER_BASIC_INS.ParamByName('SMS_YESNO').Value := 0;

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

procedure TfmMemberSelect.btnMemberClick(Sender: TObject);
begin
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    CustomerImages.CustID := gridMemberUID.EditValue;
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmMemberSelect.btnSelectClick(Sender: TObject);
begin
  CustomerImages.CustID := gridMemberUID.EditValue;
  CustomerImages.CustName := gridMemberCNAME.EditValue;
  CustomerImages.CustTel := gridMemberCTEL.EditValue;
  CustomerImages.CustSex := StrToInt(gridMemberSEX.EditValue);
  ModalResult := mrOk;
end;

procedure TfmMemberSelect.gridMemberCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

procedure TfmMemberSelect.icbCenterPropertiesCloseUp(Sender: TObject);
var
  sName : string;
begin
  if icbCenter.EditValue > 0 then begin
    S_CENTER := icbCenter.EditValue;
    E_CENTER := icbCenter.EditValue;
  end else begin
    S_CENTER := 0;
    E_CENTER := 99;
  end;

  if gsSearchStr = '' then
    sName := '%'
  else
    sName := '%' + gsSearchStr + '%';
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('S_CENTER').Value := S_CENTER;
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('E_CENTER').Value := E_CENTER;
  dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('cust_name').Value := sName;
  dmDBCommon.CUSTOMER_SELECT_NAME.Active := True;
  dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Refresh;
end;

end.
