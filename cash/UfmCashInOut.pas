unit UfmCashInOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxDBLookupComboBox, cxImageComboBox,
  cxGridCustomPopupMenu, cxGridPopupMenu, DAAlerter, UniAlerter, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxSpinEdit, ComCtrls,
  StdCtrls, Buttons, ExtCtrls, MemDS, DBAccess, Uni, DateUtils, cxGridExportLink,
  cxDropDownEdit;

type
  TfmCashInOut = class(TForm)
    Panel8: TPanel;
    Label1: TLabel;
    btnView: TBitBtn;
    btnAddCustLec: TBitBtn;
    btnEditCustLec: TBitBtn;
    btnDelLecMember: TBitBtn;
    s_date: TDateTimePicker;
    e_date: TDateTimePicker;
    btnExcelActive: TBitBtn;
    btnLecture: TBitBtn;
    cxGrid3: TcxGrid;
    gridCash: TcxGridDBTableView;
    G3L1: TcxGridLevel;
    UniAlerter1: TUniAlerter;
    cxGridPopupMenu1: TcxGridPopupMenu;
    gridCashID: TcxGridDBColumn;
    gridCashC_DATE: TcxGridDBColumn;
    gridCashK_CODE: TcxGridDBColumn;
    gridCashC_DESC: TcxGridDBColumn;
    gridCashLESSON_ID: TcxGridDBColumn;
    gridCashCASH_ID: TcxGridDBColumn;
    icbCenter: TcxImageComboBox;
    gridCashCENTER_ID: TcxGridDBColumn;
    gridCashCASH_IN: TcxGridDBColumn;
    gridCashCASH_OUT: TcxGridDBColumn;
    gridCashCASH_REST: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnViewClick(Sender: TObject);
    procedure s_dateChange(Sender: TObject);
    procedure e_dateChange(Sender: TObject);
    procedure btnAddCustLecClick(Sender: TObject);
    procedure btnEditCustLecClick(Sender: TObject);
    procedure btnLectureClick(Sender: TObject);
    procedure btnDelLecMemberClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure btnExcelActiveClick(Sender: TObject);
    procedure gridCashCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridCashDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsMyAction : Boolean;
    S_CENTER, E_CENTER : Integer;
  end;

var
  fmCashInOut: TfmCashInOut;

implementation

uses GlobalVar, UdmDBCommon, UfmCashInOutEdit, UfmCashKindView;

{$R *.dfm}

procedure TfmCashInOut.btnAddCustLecClick(Sender: TObject);
begin
  fmCashInOutEdit := TfmCashInOutEdit.Create(Self);
  try
    fmCashInOutEdit.c_date.Date := Date;
    fmCashInOutEdit.cbCenter.EditValue := 1;
    fmCashInOutEdit.ShowModal;
    if fmCashInOutEdit.ModalResult = mrOk then begin
      IsMyAction := True;
      dmDBCommon.CASH_INOUT_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
      dmDBCommon.CASH_INOUT_INS.ParamByName('C_DATE').Value := fmCashInOutEdit.c_date.Date;
      dmDBCommon.CASH_INOUT_INS.ParamByName('K_CODE').Value := fmCashInOutEdit.k_kind.EditValue;
      dmDBCommon.CASH_INOUT_INS.ParamByName('C_DESC').Value := fmCashInOutEdit.C_DESC.Text;
      dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_IN').Value := fmCashInOutEdit.cash_in.Value;
      dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_OUT').Value := fmCashInOutEdit.cash_out.Value;
      dmDBCommon.CASH_INOUT_INS.ParamByName('LESSON_ID').Value := '';
      dmDBCommon.CASH_INOUT_INS.ParamByName('PRODUCT_SALE_ID').Value := '';
      dmDBCommon.CASH_INOUT_INS.ParamByName('CENTER_ID').Value := fmCashInOutEdit.cbCenter.EditValue;
      dmDBCommon.CASH_INOUT_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
      dmDBCommon.CASH_INOUT_INS.ExecProc;
      btnView.Click;
    end;
  finally
    fmCashInOutEdit.Free;
  end;
end;

procedure TfmCashInOut.btnDelLecMemberClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    IsMyAction := True;
    gridCash.DataController.SaveBookmark;
    dmDBCommon.CASH_INOUT_DEL.ParamByName('ID').Value := gridCashCASH_ID.EditValue;
    dmDBCommon.CASH_INOUT_DEL.ExecProc;
    btnView.Click;
    gridCash.DataController.GotoBookmark;
  end;
end;

procedure TfmCashInOut.btnEditCustLecClick(Sender: TObject);
begin
  fmCashInOutEdit := TfmCashInOutEdit.Create(Self);
  try
    gridCash.DataController.SaveBookmark;
    fmCashInOutEdit.cbCenter.EditValue := gridCashCENTER_ID.EditValue;
    fmCashInOutEdit.c_date.Date := StrToDate(gridCashC_DATE.EditValue);
    fmCashInOutEdit.k_kind.EditValue := gridCashK_CODE.EditValue;
    fmCashInOutEdit.C_DESC.Text := gridCashC_DESC.EditValue;
    fmCashInOutEdit.cash_in.Value := dmDBCommon.d_CASH_INOUT_REST_SEL.DataSet.FieldByName('cash_in').AsFloat;
    fmCashInOutEdit.cash_out.Value := dmDBCommon.d_CASH_INOUT_REST_SEL.DataSet.FieldByName('cash_out').AsFloat;

    fmCashInOutEdit.ShowModal;
    if fmCashInOutEdit.ModalResult = mrOk then begin
      IsMyAction := True;
      dmDBCommon.CASH_INOUT_UPD.ParamByName('ID').Value := gridCashCASH_ID.EditValue;
      dmDBCommon.CASH_INOUT_UPD.ParamByName('C_DATE').Value := fmCashInOutEdit.c_date.Date;
      dmDBCommon.CASH_INOUT_UPD.ParamByName('K_CODE').Value := fmCashInOutEdit.k_kind.EditValue;
      dmDBCommon.CASH_INOUT_UPD.ParamByName('C_DESC').Value := fmCashInOutEdit.C_DESC.Text;
      dmDBCommon.CASH_INOUT_UPD.ParamByName('CASH_IN').Value := fmCashInOutEdit.cash_in.Value;
      dmDBCommon.CASH_INOUT_UPD.ParamByName('CASH_OUT').Value := fmCashInOutEdit.cash_out.Value;
      dmDBCommon.CASH_INOUT_UPD.ParamByName('CENTER_ID').Value := fmCashInOutEdit.cbCenter.EditValue;
      dmDBCommon.CASH_INOUT_UPD.ExecProc;
      btnView.Click;
      gridCash.DataController.GotoBookmark;
    end;
  finally
    fmCashInOutEdit.Free;
  end;
end;

procedure TfmCashInOut.btnExcelActiveClick(Sender: TObject);
var
  filename : string;
  saveDialog : TSaveDialog;
begin
  try
    saveDialog := TSaveDialog.Create(nil);
    if saveDialog.Execute then begin
      filename := saveDialog.FileName;
      ExportGridToExcel(filename, cxGrid3, True, True, False);
      ShowMessage('파일:' + filename + '이(가) 저장되었습니다.');
    end;
  finally
    saveDialog.Free;
  end;
end;

procedure TfmCashInOut.btnLectureClick(Sender: TObject);
begin
  fmCashKindView := TfmCashKindView.Create(Self);
  try
    fmCashKindView.ShowModal;
  finally
    fmCashKindView.Free;
  end;
end;

procedure TfmCashInOut.btnViewClick(Sender: TObject);
begin
  if icbCenter.EditValue > 0 then begin
    S_CENTER := icbCenter.EditValue;
    E_CENTER := icbCenter.EditValue;
  end else begin
    S_CENTER := 0;
    E_CENTER := 99;
  end;
  dmDBCommon.CASH_INOUT_SEL.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.CASH_INOUT_SEL.ParamByName('S_CENTER').Value := S_CENTER;
  dmDBCommon.CASH_INOUT_SEL.ParamByName('E_CENTER').Value := E_CENTER;
  dmDBCommon.CASH_INOUT_SEL.ParamByName('S_DATE').Value := s_date.Date;
  dmDBCommon.CASH_INOUT_SEL.ParamByName('E_DATE').Value := e_date.Date;
  dmDBCommon.CASH_INOUT_SEL.Execute;

  dmDBCommon.CASH_INOUT_REST_SEL.Active := True;
  dmDBCommon.d_CASH_INOUT_REST_SEL.DataSet.Refresh;
end;

procedure TfmCashInOut.e_dateChange(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmCashInOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCashInOut.FormShow(Sender: TObject);
begin
  IsMyAction := False;
  s_date.Date := StrToDate(Format('%.4d-%.2d-01', [YearOf(Date),MonthOf(Date)]));
  e_date.Date := Date;
  dmDBCommon.SetCenter(icbCenter);
  icbCenter.Enabled := LoginUserKIND >= 2;
  dmDBCommon.CASH_INOUT_KIND_SEL_LOOK.Active := True;

  btnView.Click;
end;

procedure TfmCashInOut.gridCashCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditCustLec.Click;
end;

procedure TfmCashInOut.gridCashDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  ASender.FooterSummaryValues[9] := ASender.FooterSummaryValues[7] - ASender.FooterSummaryValues[8];
end;

procedure TfmCashInOut.icbCenterPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmCashInOut.s_dateChange(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmCashInOut.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  if IsMyAction = False then
    btnView.Click
  else
    IsMyAction := False;
end;

initialization RegisterClasses([TfmCashInOut]);
end.
