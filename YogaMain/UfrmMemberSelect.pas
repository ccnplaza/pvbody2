unit UfrmMemberSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  cxGroupBox, ExtCtrls, MemDS, DBAccess, Uni, cxCalendar, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, DAAlerter, UniAlerter;

type
  TfrmMemberSelect = class(TFrame)
    cxGroupBox2: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    edtName: TEdit;
    pnlNo: TPanel;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckP_DATE: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    pnlPictureButton: TPanel;
    btnDel: TBitBtn;
    btnFindMember: TBitBtn;
    btnFavorite: TBitBtn;
    UniQuery1: TUniQuery;
    UniQuery1UID: TStringField;
    UniQuery1CNAME: TStringField;
    UniQuery1CTEL: TStringField;
    btnRefresh: TBitBtn;
    DataSource1: TDataSource;
    UniQuery1SEX: TStringField;
    gridCheckCNT: TcxGridDBColumn;
    UniAlerter1: TUniAlerter;
    btnLatelySelect: TBitBtn;
    gridCheckCUST_ID: TcxGridDBColumn;
    procedure btnCustInfoClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnFindMemberClick(Sender: TObject);
    procedure btnFavoriteClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure btnLatelySelectClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    procedure AddLatestCustomer;
    procedure DeleteLocalImages;
    { Private declarations }
  public
    { Public declarations }
    PICTURE_LOADED : Boolean;
    LIST_LOADED : Boolean;
    Constructor Create(AOwener:TComponent); override;
    procedure SelectMember;
    procedure RetrieveMemberInfo;
    procedure RefreshPictureData;
  end;

implementation

uses GlobalVar, UdmDBCommon, uMemberSelect, uMemberEditView, UfmCustomerHistory,
  UfmDateSelector, uMemberFavorite, UfmCompareList2, UfmMemberLastSelect;

{$R *.dfm}


constructor TfrmMemberSelect.Create(AOwener: TComponent);
begin
  inherited;
  PICTURE_LOADED := False;
  LIST_LOADED := False;
  UniAlerter1.Active := True;
end;

procedure TfrmMemberSelect.btnCustInfoClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfrmMemberSelect.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    DeleteLocalImages;
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('CUST_ID').Value := CustomerImages.CustID;
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('P_DATE').Value := gridCheckP_DATE.EditValue;
    dmDBCommon.IMAGES_DEL_DATE.ExecProc;
    dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
  end;
end;

procedure TfrmMemberSelect.DeleteLocalImages;
var
  i, cnt : Integer;
  img_name : string;
begin
//  with dmDBCommon do begin
//    cnt := CUSTOMER_IMAGE2_SEL.RecordCount;
//    CUSTOMER_IMAGE2_SEL.First;
//    for i := 0 to cnt - 1 do begin
//      img_name := CUSTOMER_IMAGE2_SELIMAGE_NAME.AsString;
//      DeleteFile(gsLocalImageFolder + '\' + img_name);
//      CUSTOMER_IMAGE2_SEL.Next;
//    end;
//  end;
end;

procedure TfrmMemberSelect.btnFavoriteClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberFavorite := TfmMemberFavorite.Create(Self);
  try
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberFavorite.Top := pt.Y;
    fmMemberFavorite.Left := pt.X;
    fmMemberFavorite.ShowModal;
    if fmMemberFavorite.ModalResult = mrOk then begin
      PICTURE_LOADED := False;
      RetrieveMemberInfo;
      AddLatestCustomer;
    end;
  finally
    fmMemberFavorite.Free;
  end;
end;

procedure TfrmMemberSelect.btnFindMemberClick(Sender: TObject);
begin
  SelectMember;
end;

procedure TfrmMemberSelect.SelectMember;
var
  search_str : string;
begin
  search_str := '%' + edtName.Text + '%';
  UniQuery1.ParamByName('comp_id').Value := LoginUserCompID;
  UniQuery1.ParamByName('name').Value := search_str;
  UniQuery1.Open;
  UniQuery1.Refresh;
  PICTURE_LOADED := False;
  if UniQuery1.RecordCount = 0 then begin
    ShowMessage('등록된 자료가 없습니다.');
    edtName.SetFocus;
    Exit;
  end else if UniQuery1.RecordCount = 1 then begin
    CustomerImages.CustID := UniQuery1UID.Value;
    CustomerImages.CustName := UniQuery1CNAME.Value;
    CustomerImages.CustTel := UniQuery1CTEL.Value;
    CustomerImages.CustSex := StrToInt(UniQuery1SEX.Value);
    RetrieveMemberInfo;
    AddLatestCustomer;
    if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
  end else begin
    fmMemberSelect := TfmMemberSelect.Create(Self);
    try
      Screen.Cursor := crHourGlass;
      fmMemberSelect.gsSearchStr := search_str;
      fmMemberSelect.ShowModal;
      if fmMemberSelect.ModalResult = mrOk then begin
        RetrieveMemberInfo;
        AddLatestCustomer;
        if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
      end;
    finally
      fmMemberSelect.Free;
      Screen.Cursor := crArrow;
    end;
  end;
end;

procedure TfrmMemberSelect.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  RefreshPictureData;
  dmDBCommon.IMAGES_SEL_BYDATE.Locate('P_DATE', Date, []);
  if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
end;

procedure TfrmMemberSelect.RefreshPictureData;
begin
  dmDBCommon.IMAGES_SEL_BYDATE.ParamByName('C_ID').Value := CustomerImages.CustID;
  dmDBCommon.IMAGES_SEL_BYDATE.Open;
  dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
end;

procedure TfrmMemberSelect.RetrieveMemberInfo;
begin
  edtName.Text := CustomerImages.CustName;
  pnlNo.Caption := CustomerImages.CustTel;
  cxGroupBox2.Refresh;

  dmDBCommon.IMAGES_SEL_BYDATE.ParamByName('C_ID').Value := CustomerImages.CustID;
  dmDBCommon.IMAGES_SEL_BYDATE.Open;
  dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
end;

procedure TfrmMemberSelect.AddLatestCustomer;
begin
  dmDBCommon.InsertLatestCustomer;
end;

procedure TfrmMemberSelect.btnHistoryClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := CustomerImages.CustID;
    fmCustomerHistory.ShowModal;
  finally
    if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
    fmCustomerHistory.Free;
  end;
end;

procedure TfrmMemberSelect.btnLatelySelectClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberLastSelect := TfmMemberLastSelect.Create(Self);
  try
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberLastSelect.Top := pt.Y;
    fmMemberLastSelect.Left := pt.X;
    fmMemberLastSelect.ShowModal;
    if fmMemberLastSelect.ModalResult = mrOk then begin
      CustomerImages.CustID := dmDBCommon.LATEST_CUSTOMER_SELCUST_ID.Value;
      CustomerImages.CustName := dmDBCommon.LATEST_CUSTOMER_SELCUST_NAME.Value;
      CustomerImages.CustTel := dmDBCommon.LATEST_CUSTOMER_SELCUST_TEL.Value;
      RetrieveMemberInfo;
      if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
    end;
  finally
    fmMemberLastSelect.Free;
  end;
end;

procedure TfrmMemberSelect.btnRefreshClick(Sender: TObject);
begin
  RetrieveMemberInfo;
end;

procedure TfrmMemberSelect.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;


end.
