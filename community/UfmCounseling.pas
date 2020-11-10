unit UfmCounseling;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters,
  dxSkinVS2010, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, cxButtons, ComCtrls, ExtCtrls, cxCalendar, cxImageComboBox,
  cxContainer, SynEdit, SynMemo, cxGroupBox, SynDBEdit, DateUtils, MemDS,
  DBAccess, Uni;

type
  TfmCounseling = class(TForm)
    pnl1: TPanel;
    lbl3: TLabel;
    lbl2: TLabel;
    dtp_sdate: TDateTimePicker;
    dtp_edate: TDateTimePicker;
    btnView: TcxButton;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    cxButton4: TcxButton;
    btnMemberEdit: TcxButton;
    cxButton6: TcxButton;
    edtSearch: TEdit;
    btnSearch: TcxButton;
    btnSearchCancel: TcxButton;
    gridCounsel: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridPopupMenu1: TcxGridPopupMenu;
    gridCounselID: TcxGridDBColumn;
    gridCounselMEMBER_ID: TcxGridDBColumn;
    gridCounselC_DATE: TcxGridDBColumn;
    gridCounselC_KIND: TcxGridDBColumn;
    gridCounselC_WHO: TcxGridDBColumn;
    gridCounselC_SUBJECT: TcxGridDBColumn;
    gridCounselC_DESC: TcxGridDBColumn;
    pnl2: TPanel;
    cxGroupBox2: TcxGroupBox;
    pnl23: TPanel;
    lbl1: TLabel;
    btnSaveMemo: TcxButton;
    synBigo: TSynEdit;
    MEMBER_COUNSEL_SEL: TUniStoredProc;
    dsMEMBER_COUNSEL_SEL: TDataSource;
    MEMBER_COUNSEL_SELID: TIntegerField;
    MEMBER_COUNSEL_SELCENTER_ID: TIntegerField;
    MEMBER_COUNSEL_SELMEMBER_ID: TStringField;
    MEMBER_COUNSEL_SELC_DATE: TDateField;
    MEMBER_COUNSEL_SELC_KIND: TIntegerField;
    MEMBER_COUNSEL_SELC_WHO: TIntegerField;
    MEMBER_COUNSEL_SELC_SUBJECT: TStringField;
    MEMBER_COUNSEL_SELC_DESC: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridCounselFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridCounselCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSaveMemoClick(Sender: TObject);
    procedure dtp_sdateCloseUp(Sender: TObject);
    procedure dtp_edateCloseUp(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnSearchCancelClick(Sender: TObject);
    procedure btnMemberEditClick(Sender: TObject);
  private
    procedure RetrieveCounseling;
    procedure RetrieveCounselingMemo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCounseling: TfmCounseling;

implementation

uses GlobalVar, UfmCounselEdit, UdmDBCommon, uMemberEdit;

{$R *.dfm}


procedure TfmCounseling.RetrieveCounseling;
begin
  //MEMBER_COUNSEL_MIXSEL(:CENTER_ID, :S_DATE, :E_DATE)
  MEMBER_COUNSEL_SEL.ParamByName('S_DATE').Value := dtp_sdate.Date;
  MEMBER_COUNSEL_SEL.ParamByName('E_DATE').Value := dtp_edate.Date;
  MEMBER_COUNSEL_SEL.Active := True;
  dsMEMBER_COUNSEL_SEL.DataSet.Refresh;
end;

procedure TfmCounseling.RetrieveCounselingMemo;
begin
  synBigo.Text := MEMBER_COUNSEL_SELC_DESC.AsString;
end;

procedure TfmCounseling.btnAddClick(Sender: TObject);
begin
  fmCounselEdit := TfmCounselEdit.Create(Self);
  try
    fmCounselEdit.SAVE_MODE := 'INSERT';
    fmCounselEdit.dtpDate.Date := Date;
    fmCounselEdit.ShowModal;
    if fmCounselEdit.ModalResult = mrOk then begin
      dsMEMBER_COUNSEL_SEL.DataSet.Refresh;
    end;
  finally
    fmCounselEdit.Free;
  end;
end;

procedure TfmCounseling.btnEditClick(Sender: TObject);
var
  rowidx : Integer;
begin
//  fmCounselEdit := TfmCounselEdit.Create(Self);
//  try
//    fmCounselEdit.SAVE_MODE := 'EDIT';
//
//    fmCounselEdit.dtpDate.Date := MEMBER_COUNSEL_SELC_DATE.Value;
//    fmCounselEdit.cbKind.EditValue := MEMBER_COUNSEL_SELC_KIND.Value;
//    fmCounselEdit.cbWho.EditValue := MEMBER_COUNSEL_SELC_WHO.Value;
//    fmCounselEdit.edtName.Text := MEMBER_COUNSEL_SELM_NAME.Value;
//    fmCounselEdit.edtTitle.Text := MEMBER_COUNSEL_SELC_SUBJECT.Value;
//    fmCounselEdit.synBigo.Text := MEMBER_COUNSEL_SELC_DESC.AsString;
//    fmCounselEdit.lblMemberID.Caption := MEMBER_COUNSEL_SELMEMBER_ID.Value;
//
//    fmCounselEdit.ShowModal;
//    if fmCounselEdit.ModalResult = mrOk then begin
//      rowidx := gridCounsel.Controller.FocusedRowIndex;
//      DataModule1.dsMEMBER_COUNSEL_SEL.DataSet.Refresh;
//      gridCounsel.DataController.FocusedRowIndex := rowidx;
//    end;
//  finally
//    fmCounselEdit.Free;
//  end;
end;

procedure TfmCounseling.btnMemberEditClick(Sender: TObject);
begin
//  fmMemberEdit := TfmMemberEdit.Create(Self);
//  try
//    fmMemberEdit.SAVE_MODE := 'EDIT';
//    DataModule1.RetrieveMemberByID(gridCounselMEMBER_ID.EditValue);
//    DataModule1.RetrieveMemberPicture(gridCounselMEMBER_ID.EditValue);
//    fmMemberEdit.ShowModal;
//  finally
//    fmMemberEdit.Free;
//  end;
end;

procedure TfmCounseling.btnSaveMemoClick(Sender: TObject);
var
  rowidx : Integer;
begin
//  rowidx := gridCounsel.Controller.FocusedRowIndex;
//  MEMBER_COUNSEL_UPD_MEMO.ParamByName('ID').Value := gridCounselID.EditValue;
//  MEMBER_COUNSEL_UPD_MEMO.ParamByName('C_DESC').Value := synBigo.Text;
//  MEMBER_COUNSEL_UPD_MEMO.ExecProc;
//  dsMEMBER_COUNSEL_MIXSEL.DataSet.Refresh;
//  ShowMessage('상담내용 저장완료.');
//  gridCounsel.DataController.FocusedRowIndex := rowidx;
end;

procedure TfmCounseling.btnSearchCancelClick(Sender: TObject);
begin
  edtSearch.Text := '';
  MEMBER_COUNSEL_SEL.Filter := '';
  MEMBER_COUNSEL_SEL.Filtered := True;
  edtSearch.SetFocus;
end;

procedure TfmCounseling.btnSearchClick(Sender: TObject);
var
  search_str : string;
begin
  if Length(edtSearch.Text) > 0 then begin
    search_str := 'M_NAME like "%' + edtSearch.Text + '%" or ' +
                  'C_DESC like "%' + edtSearch.Text + '%"';
  end else begin
    search_str := '';
  end;
  MEMBER_COUNSEL_SEL.Filter := search_str;
  MEMBER_COUNSEL_SEL.Filtered := True;
end;

procedure TfmCounseling.btnViewClick(Sender: TObject);
begin
  RetrieveCounseling;
  //RetrieveCounselingMemo;
end;

procedure TfmCounseling.dtp_edateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmCounseling.dtp_sdateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmCounseling.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCounseling.FormShow(Sender: TObject);
begin
  dtp_sdate.Date := StartOfTheYear(Date);
  dtp_edate.Date := Date;
  btnView.Click;
end;

procedure TfmCounseling.gridCounselCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmCounseling.gridCounselFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  RetrieveCounselingMemo;
end;

initialization RegisterClasses([TfmCounseling]);

end.
