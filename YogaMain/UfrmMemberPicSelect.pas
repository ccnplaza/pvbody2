unit UfrmMemberPicSelect;

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
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, DAAlerter, UniAlerter,
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, ieview, iemview;

type
  TfrmMemberPicSelect = class(TFrame)
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
    gridCheckCUST_UID: TcxGridDBColumn;
    gridCheckPICTURE_DATE: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    pnlPictureButton: TPanel;
    btnAdd: TBitBtn;
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
    gridCheckID: TcxGridDBColumn;
    gridCheckIMAGE_NAME1: TcxGridDBColumn;
    gridCheckIMAGE_NAME2: TcxGridDBColumn;
    gridCheckIMAGE_NAME3: TcxGridDBColumn;
    gridCheckIMAGE_NAME4: TcxGridDBColumn;
    gridCheckIMAGE_NAME5: TcxGridDBColumn;
    gridCheckIMAGE_NAME6: TcxGridDBColumn;
    gridCheckIMAGE_NAME7: TcxGridDBColumn;
    gridCheckPIC_CNT: TcxGridDBColumn;
    UniAlerter1: TUniAlerter;
    btnLatelySelect: TBitBtn;
    Panel1: TPanel;
    compareGroupLeftTop: TcxGroupBox;
    ImageEnMView1: TImageEnMView;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    procedure btnCustInfoClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnFindMemberClick(Sender: TObject);
    procedure btnFavoriteClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure btnLatelySelectClick(Sender: TObject);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    procedure AddLatestCustomer;
    procedure RetrieveThumbnailList;
    { Private declarations }
  public
    { Public declarations }
    PICTURE_DATA_LOADED : Boolean;
    Constructor Create(AOwener:TComponent); override;
    procedure SelectMember;
    procedure SelectFavorite;
    procedure RetrieveMemberInfo;
    procedure RefreshPictureData;
  end;

implementation

uses GlobalVar, UdmDBCommon, uMemberSelect, uMemberEditView, UfmCustomerHistory,
  UfmDateSelector, uMemberFavorite, UfmCompareList2, UfmMemberLastSelect;

{$R *.dfm}


constructor TfrmMemberPicSelect.Create(AOwener: TComponent);
begin
  inherited;
  PICTURE_DATA_LOADED := False;
  UniAlerter1.Active := True;
end;

procedure TfrmMemberPicSelect.btnAddClick(Sender: TObject);
var
  uid : string;
begin
//  UniAlerter1.Active := False;
//  if CustomerImages.CustID = '' then begin
//    ShowMessage('회원을 선택하세요.');
//    Exit;
//  end;
//  fmDateSelector := TfmDateSelector.Create(Self);
//  try
//    fmDateSelector.MonthCalendar1.Date := Date;
//    fmDateSelector.ShowModal;
//    if fmDateSelector.ModalResult = mrOk then begin
//      //uid := FormatDateTime('yyyymmddhhnnsszzz', now);
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('CHECK_ID').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('CUST_UID').Value := CustomerImages.CustID;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('PICTURE_DATE').Value := fmDateSelector.MonthCalendar1.Date;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('IMAGE_NAME1').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('IMAGE_NAME2').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('IMAGE_NAME3').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('IMAGE_NAME4').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('IMAGE_NAME5').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('IMAGE_NAME6').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('IMAGE_NAME7').Value := '';
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('DRAW_IMAGE1').Clear;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('DRAW_IMAGE2').Clear;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('DRAW_IMAGE3').Clear;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('DRAW_IMAGE4').Clear;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('DRAW_IMAGE5').Clear;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('DRAW_IMAGE6').Clear;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ParamByName('DRAW_IMAGE7').Clear;
//      dmDBCommon.CUSTOMER_IMAGE_INS.ExecProc;
//      dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.Refresh;
//      dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.Last;
//      UniAlerter1.Active := True;
//    end;
//  finally
//    fmDateSelector.Free;
//  end;
end;

procedure TfrmMemberPicSelect.btnCustInfoClick(Sender: TObject);
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

procedure TfrmMemberPicSelect.btnDelClick(Sender: TObject);
begin
//  if MessageDlg('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' + #13#10 +
//    '삭제 할까요?',  mtWarning, [mbYes, mbNo], 0) = mrYes then
//  begin
//    UniAlerter1.Active := False;
//    dmDBCommon.CUSTOMER_IMAGE_DEL.ParamByName('ID').Value := gridCheckID.EditValue;
//    dmDBCommon.CUSTOMER_IMAGE_DEL.ExecProc;
//    dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.Refresh;
//    UniAlerter1.Active := True;
//  end;
end;

procedure TfrmMemberPicSelect.btnFavoriteClick(Sender: TObject);
begin
  SelectFavorite;
end;

procedure TfrmMemberPicSelect.btnFindMemberClick(Sender: TObject);
begin
  SelectMember;
end;

procedure TfrmMemberPicSelect.SelectFavorite;
begin
  fmMemberFavorite := TfmMemberFavorite.Create(Self);
  try
    fmMemberFavorite.ShowModal;
    if fmMemberFavorite.ModalResult = mrOk then begin
      PICTURE_DATA_LOADED := False;
      RetrieveMemberInfo;
      AddLatestCustomer;
    end;
  finally
    fmMemberFavorite.Free;
  end;
end;

procedure TfrmMemberPicSelect.SelectMember;
var
  search_str : string;
begin
  search_str := '%' + edtName.Text + '%';
  UniQuery1.ParamByName('name').Value := search_str;
  UniQuery1.Open;
  UniQuery1.Refresh;
  PICTURE_DATA_LOADED := False;
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
    RetrieveThumbnailList;
    AddLatestCustomer;
  end else begin
    fmMemberSelect := TfmMemberSelect.Create(Self);
    try
      Screen.Cursor := crHourGlass;
      fmMemberSelect.gsSearchStr := search_str;
      fmMemberSelect.ShowModal;
      if fmMemberSelect.ModalResult = mrOk then begin
        RetrieveMemberInfo;
        RetrieveThumbnailList;
        AddLatestCustomer;
      end;
    finally
      fmMemberSelect.Free;
      Screen.Cursor := crArrow;
    end;
  end;
end;

procedure TfrmMemberPicSelect.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  RefreshPictureData;
end;

procedure TfrmMemberPicSelect.RefreshPictureData;
begin
//  gridCheck.DataController.SaveBookmark;
//  dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.Refresh;
//  gridCheck.DataController.GotoBookmark;
end;

procedure TfrmMemberPicSelect.RetrieveMemberInfo;
begin
//  edtName.Text := CustomerImages.CustName;
//  pnlNo.Caption := CustomerImages.CustTel;
//  cxGroupBox2.Refresh;
//  dmDBCommon.RetrieveMemberPicture(CustomerImages.CustID);
//  PICTURE_DATA_LOADED := True;
end;

procedure TfrmMemberPicSelect.AddLatestCustomer;
begin
  dmDBCommon.InsertLatestCustomer;

end;

procedure TfrmMemberPicSelect.btnHistoryClick(Sender: TObject);
begin
  if GLOVAL_MEMBER_UID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := GLOVAL_MEMBER_UID;
    fmCustomerHistory.ShowModal;
  finally
    fmCustomerHistory.Free;
  end;
end;

procedure TfrmMemberPicSelect.btnLatelySelectClick(Sender: TObject);
begin
  fmMemberLastSelect := TfmMemberLastSelect.Create(Self);
  try
    fmMemberLastSelect.ShowModal;
    if fmMemberLastSelect.ModalResult = mrOk then begin
      CustomerImages.CustID := dmDBCommon.LATEST_CUSTOMER_SELCUST_ID.Value;
      CustomerImages.CustName := dmDBCommon.LATEST_CUSTOMER_SELCUST_NAME.Value;
      CustomerImages.CustTel := dmDBCommon.LATEST_CUSTOMER_SELCUST_TEL.Value;
      RetrieveMemberInfo;
      RetrieveThumbnailList;
    end;
  finally
    fmMemberLastSelect.Free;
  end;
end;

procedure TfrmMemberPicSelect.btnRefreshClick(Sender: TObject);
begin
  RetrieveMemberInfo;
end;

procedure TfrmMemberPicSelect.gridCheckCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RetrieveThumbnailList;
end;

procedure TfrmMemberPicSelect.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfrmMemberPicSelect.RetrieveThumbnailList;
var
  i, thumb_id : integer;
  img_name : string;
  file_list : TStringList;
begin
//  file_list := TStringList.Create;
//  for i := 0 to 6 do begin
//    img_name := dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.FieldByName('IMAGE_NAME' + IntToStr(i+1)).AsString;
//    if Length(img_name) > 10 then begin
//      file_list.Add(gsLocalImageFolder + '\' + img_name);
//      if not FileExists(gsLocalImageFolder + '\' + img_name) then begin
//        dmDBCommon.DownloadImage(img_name);
//      end;
//    end;
//  end;
//  ImageEnMView1.LockPaint;
//  ImageEnMView1.Clear;
//  ImageEnMView1.FillFromList(file_list);
//  ImageEnMView1.UnlockPaint;
//  file_list.Free;
//  ImageEnMView1.SelectedImage := 0;
end;

end.
