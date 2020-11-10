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
  cxGroupBox, ExtCtrls, MemDS, DBAccess, Uni, cxCalendar;

type
  TfrmMemberSelect = class(TFrame)
    pnlRoot: TPanel;
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
    gridCheckUID: TcxGridDBColumn;
    gridCheckCUST_UID: TcxGridDBColumn;
    gridCheckPICTURE_DATE: TcxGridDBColumn;
    gridCheckPIC_CNT: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    pnlPictureButton: TPanel;
    btnAdd: TBitBtn;
    btnDel: TBitBtn;
    btnEdit: TBitBtn;
    q_UpdatePictureData: TUniQuery;
    procedure edtNameExit(Sender: TObject);
    procedure pnlNoClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    procedure SelectMember(search_str: string);
    { Private declarations }
  public
    { Public declarations }
    procedure CheckMemberSelected;
    procedure ShowPictureButton;
    procedure HidePictureButton;
  end;

implementation

uses GlobalVar, UdmDBCommon, uMemberSelect, uMemberEditView, UfmCustomerHistory,
  UfmDateSelector;

{$R *.dfm}

procedure TfrmMemberSelect.CheckMemberSelected;
begin
  if GLOVAL_MEMBER_UID <> '' then begin
    edtName.Text := GLOVAL_MEMBER_NAME;
    pnlNo.Caption := GLOVAL_MEMBER_TEL;
    cxGroupBox2.Refresh;
  end;
end;

procedure TfrmMemberSelect.btnAddClick(Sender: TObject);
begin
  if GLOVAL_MEMBER_UID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmDateSelector := TfmDateSelector.Create(Self);
  try
    fmDateSelector.MonthCalendar1.Date := Date;
    fmDateSelector.ShowModal;
    if fmDateSelector.ModalResult = mrOk then begin
      dmDBCommon.PICTURE_DATA_INS.ParamByName('UID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
      dmDBCommon.PICTURE_DATA_INS.ParamByName('CUST_UID').Value := GLOVAL_MEMBER_UID;
      dmDBCommon.PICTURE_DATA_INS.ParamByName('PICTURE_DATE').Value := fmDateSelector.MonthCalendar1.Date;
      dmDBCommon.PICTURE_DATA_INS.ParamByName('PIC_CNT').Value := 0;
      dmDBCommon.PICTURE_DATA_INS.ParamByName('CHASU').Value := 0;
      dmDBCommon.PICTURE_DATA_INS.ExecProc;
      dmDBCommon.d_picture_data.DataSet.Refresh;
      dmDBCommon.d_picture_data.DataSet.Last;
      //dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end;
  finally
    fmDateSelector.Free;
  end;
end;

procedure TfrmMemberSelect.btnCustInfoClick(Sender: TObject);
begin
  if GLOVAL_MEMBER_UID = '' then begin
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
  if MessageDlg('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' + #13#10 +
    '삭제 할까요?',  mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    dmDBCommon.PICTURE_DATA_DEL.ParamByName('UID').Value := gridCheckUID.EditValue;
    dmDBCommon.PICTURE_DATA_DEL.ExecProc;
    dmDBCommon.d_picture_data.DataSet.Refresh;
    //dmDBCommon.RetrieveThumbnailList(ImageEnMView);
  end;
end;

procedure TfrmMemberSelect.btnEditClick(Sender: TObject);
var
  trow, crow : Integer;
begin
  fmDateSelector := TfmDateSelector.Create(Self);
  try
    fmDateSelector.MonthCalendar1.Date := gridCheckPICTURE_DATE.EditValue;
    fmDateSelector.ShowModal;
    if fmDateSelector.ModalResult = mrOk then begin
      q_UpdatePictureData.ParamByName('p_date').Value := fmDateSelector.MonthCalendar1.Date;
      q_UpdatePictureData.ParamByName('uid').Value := gridCheckUID.EditValue;
      q_UpdatePictureData.ExecSQL;
      trow := gridCheck.Controller.TopRowIndex;
      crow := gridCheck.Controller.FocusedRowIndex;
      dmDBCommon.d_picture_data.DataSet.Refresh;
      gridCheck.Controller.TopRowIndex := trow;
      gridCheck.DataController.FocusedRowIndex := crow;
    end;
  finally
    fmDateSelector.Free;
  end;
end;

procedure TfrmMemberSelect.btnHistoryClick(Sender: TObject);
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

procedure TfrmMemberSelect.edtNameExit(Sender: TObject);
begin
  if Length(edtName.Text) > 0 then begin
    dmDBCommon.CUSTOMER_SELECT_NAME.ParamByName('cust_name').Value := '%' + edtName.Text + '%';
    dmDBCommon.CUSTOMER_SELECT_NAME.Active := True;
    dmDBCommon.dsCUSTOMER_SELECT_NAME.DataSet.Refresh;
    if dmDBCommon.CUSTOMER_SELECT_NAME.RecordCount = 1 then begin
      Screen.Cursor := crHourGlass;
      GLOVAL_MEMBER_UID := dmDBCommon.CUSTOMER_SELECT_NAME.FieldByName('UID').Value;
      GLOVAL_MEMBER_NAME := dmDBCommon.CUSTOMER_SELECT_NAME.FieldByName('CNAME').Value;
      GLOVAL_MEMBER_TEL := dmDBCommon.CUSTOMER_SELECT_NAME.FieldByName('CTEL').Value;
      edtName.Text := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;

      dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);
      GLOVAL_CHECK_DATA_UID := gridCheckUID.EditValue;
      Screen.Cursor := crArrow;
    end else if dmDBCommon.CUSTOMER_SELECT_NAME.RecordCount > 1 then begin
      SelectMember('%' + edtName.Text + '%');
    end else begin
      ShowMessage('등록된 회원이 없습니다. 다시하세요.');
      edtName.SetFocus;
    end;
  end else begin
    SelectMember('%');
  end;
end;

procedure TfrmMemberSelect.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfrmMemberSelect.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  GLOVAL_CHECK_DATA_UID := gridCheckUID.EditValue;
end;

procedure TfrmMemberSelect.pnlNoClick(Sender: TObject);
begin
  SelectMember('%');
end;

procedure TfrmMemberSelect.SelectMember(search_str : string);
var
  cnt : Integer;
begin
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    fmMemberSelect.gsSearchStr := search_str;
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      edtName.Text := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;

      dmDBCommon.CreateMemberLocalPicture(GLOVAL_MEMBER_UID);
      //cnt := dmDBCommon.vtCustomerImage.RecordCount;
      //ShowMessage(IntToStr(cnt));
      dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);
      GLOVAL_CHECK_DATA_UID := gridCheckUID.EditValue;
    end;
  finally
    fmMemberSelect.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfrmMemberSelect.HidePictureButton;
begin
  pnlPictureButton.Visible := False;
end;

procedure TfrmMemberSelect.ShowPictureButton;
begin
  pnlPictureButton.Visible := True;
end;

end.
