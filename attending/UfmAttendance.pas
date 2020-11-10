unit UfmAttendance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxImage, cxDBLookupComboBox,
  Uni, MemDS, DBAccess, cxGridDBTableView, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, Buttons, ExtCtrls, DBClient, Provider, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, DateUtils, DAAlerter, UniAlerter, cxImageComboBox;

type
  TfmAttendance = class(TForm)
    Panel12: TPanel;
    Panel13: TPanel;
    Label6: TLabel;
    edtInDate: TcxDateEdit;
    edtOutDate: TcxDateEdit;
    btnRetrieve: TBitBtn;
    btnAttendOut: TBitBtn;
    cxGrid8: TcxGrid;
    gridAttendance: TcxGridDBTableView;
    cxGrid8Level1: TcxGridLevel;
    gridAttendanceID: TcxGridDBColumn;
    gridAttendanceATT_DATE: TcxGridDBColumn;
    gridAttendanceLEC_CODE: TcxGridDBColumn;
    gridAttendanceMEMBER_ID: TcxGridDBColumn;
    gridAttendanceIN_TIME: TcxGridDBColumn;
    gridAttendanceCOMPANY_ID: TcxGridDBColumn;
    gridAttendanceL_NAME: TcxGridDBColumn;
    gridAttendanceCNAME: TcxGridDBColumn;
    gridAttendanceSEX: TcxGridDBColumn;
    gridAttendanceCTEL: TcxGridDBColumn;
    gridAttendanceJOBKIND: TcxGridDBColumn;
    LESSON_ATTENDANCE_DEL: TUniStoredProc;
    UniAlerter1: TUniAlerter;
    gridAttendanceIS_ACTIVE: TcxGridDBColumn;
    icbCenter: TcxImageComboBox;
    btnAdd: TBitBtn;
    LESSON_ATTENDANCE_INS: TUniStoredProc;
    btnHistory: TBitBtn;
    btnCustInfo: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure edtInDatePropertiesEditValueChanged(Sender: TObject);
    procedure edtOutDatePropertiesEditValueChanged(Sender: TObject);
    procedure btnAttendOutClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure gridAttendanceFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    IsMyAction : Boolean;
    S_CENTER, E_CENTER : Integer;
  end;

var
  fmAttendance: TfmAttendance;

implementation

uses UdmDBCommon, GlobalVar, UfmAttendanceIn, UfmCustomerHistory,
  uMemberEditView;

{$R *.dfm}

function CreateUniqTimeString : string;
begin
  result := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure TfmAttendance.FormShow(Sender: TObject);
begin
  IsMyAction := False;
  edtInDate.Date := Date;
  edtOutDate.Date := Date;
  dmDBCommon.SetCenter(icbCenter);
  icbCenter.Enabled := LoginUserKIND >= 2;
  btnRetrieve.Click;
end;

procedure TfmAttendance.gridAttendanceFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  GLOVAL_MEMBER_UID := gridAttendanceMEMBER_ID.EditValue;
end;

procedure TfmAttendance.icbCenterPropertiesCloseUp(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmAttendance.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  if IsMyAction = False then
    btnRetrieve.Click
  else
    IsMyAction := False;
end;

procedure TfmAttendance.btnAddClick(Sender: TObject);
begin
  fmAttendanceIn := TfmAttendanceIn.Create(Self);
  try
    fmAttendanceIn.edtDate.Date := Date;
    fmAttendanceIn.edtAttendTime.Text := FormatDateTime('hh:nn',Now);
    fmAttendanceIn.ShowModal;
    if fmAttendanceIn.ModalResult = mrOk then begin
      LESSON_ATTENDANCE_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
      LESSON_ATTENDANCE_INS.ParamByName('ATT_DATE').Value := fmAttendanceIn.edtDate.Date;
      LESSON_ATTENDANCE_INS.ParamByName('LEC_CODE').Value := '';
      LESSON_ATTENDANCE_INS.ParamByName('MEMBER_ID').Value := fmAttendanceIn.edtCustomerID.Text;
      LESSON_ATTENDANCE_INS.ParamByName('IN_TIME').Value := fmAttendanceIn.edtAttendTime.Text;
      LESSON_ATTENDANCE_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
      LESSON_ATTENDANCE_INS.ExecProc;
      dmDBCommon.d_LESSON_ATTENDANCE_SEL.DataSet.Refresh;
    end;
  finally
    fmAttendanceIn.Free;
  end;
end;

procedure TfmAttendance.btnAttendOutClick(Sender: TObject);
begin
  if MessageBox(Handle, '자료를 삭제합니다. 삭제한 후에는 되돌릴 수 없습니다.' + #13#10 +
    '그래도 삭제할까요?', '자료삭제', MB_YESNO) = IDYES then
  begin
    IsMyAction := True;
    gridAttendance.DataController.SaveBookmark;
    LESSON_ATTENDANCE_DEL.ParamByName('ID').Value := gridAttendanceID.EditValue;
    LESSON_ATTENDANCE_DEL.ExecProc;
    dmDBCommon.d_LESSON_ATTENDANCE_SEL.DataSet.Refresh;
    gridAttendance.DataController.GotoBookmark;
  end;
end;

procedure TfmAttendance.btnCustInfoClick(Sender: TObject);
begin
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmAttendance.btnHistoryClick(Sender: TObject);
begin
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := gridAttendanceMEMBER_ID.EditValue;
    fmCustomerHistory.ShowModal;
  finally
    fmCustomerHistory.Free;
  end;
end;

procedure TfmAttendance.btnRetrieveClick(Sender: TObject);
begin
  if icbCenter.EditValue > 0 then begin
    S_CENTER := icbCenter.EditValue;
    E_CENTER := icbCenter.EditValue;
  end else begin
    S_CENTER := 0;
    E_CENTER := 99;
  end;

  dmDBCommon.LESSON_ATTENDANCE_SEL.ParamByName('S_CENTER').Value := S_CENTER;
  dmDBCommon.LESSON_ATTENDANCE_SEL.ParamByName('E_CENTER').Value := E_CENTER;
  dmDBCommon.LESSON_ATTENDANCE_SEL.ParamByName('S_DATE').Value := edtInDate.Date;
  dmDBCommon.LESSON_ATTENDANCE_SEL.ParamByName('E_DATE').Value := edtOutDate.Date;
  dmDBCommon.LESSON_ATTENDANCE_SEL.Active := True;
  dmDBCommon.d_LESSON_ATTENDANCE_SEL.DataSet.Refresh;
end;

procedure TfmAttendance.edtInDatePropertiesEditValueChanged(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmAttendance.edtOutDatePropertiesEditValueChanged(Sender: TObject);
begin
  btnRetrieve.Click;
end;

procedure TfmAttendance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmAttendance]);

end.
