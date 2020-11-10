unit UfmAttendanceMonthly;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxImageComboBox, cxContainer, StdCtrls, Buttons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DateUtils, ImgList,
  DBClient, Provider, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  DAAlerter, UniAlerter, cxDropDownEdit;

type
  TfmAttendanceMonthly = class(TForm)
    d_monthly_attendance: TDataSource;
    cxGrid10: TcxGrid;
    gCalendar: TcxGridDBTableView;
    gCalendarD1: TcxGridDBColumn;
    gCalendarD2: TcxGridDBColumn;
    gCalendarD3: TcxGridDBColumn;
    gCalendarD4: TcxGridDBColumn;
    gCalendarD5: TcxGridDBColumn;
    gCalendarD6: TcxGridDBColumn;
    gCalendarD7: TcxGridDBColumn;
    gCalendarD8: TcxGridDBColumn;
    gCalendarD9: TcxGridDBColumn;
    gCalendarD10: TcxGridDBColumn;
    gCalendarD11: TcxGridDBColumn;
    gCalendarD12: TcxGridDBColumn;
    gCalendarD13: TcxGridDBColumn;
    gCalendarD14: TcxGridDBColumn;
    gCalendarD15: TcxGridDBColumn;
    gCalendarD16: TcxGridDBColumn;
    gCalendarD17: TcxGridDBColumn;
    gCalendarD18: TcxGridDBColumn;
    gCalendarD19: TcxGridDBColumn;
    gCalendarD20: TcxGridDBColumn;
    gCalendarD21: TcxGridDBColumn;
    gCalendarD22: TcxGridDBColumn;
    gCalendarD23: TcxGridDBColumn;
    gCalendarD24: TcxGridDBColumn;
    gCalendarD25: TcxGridDBColumn;
    gCalendarD26: TcxGridDBColumn;
    gCalendarD27: TcxGridDBColumn;
    gCalendarD28: TcxGridDBColumn;
    gCalendarD29: TcxGridDBColumn;
    gCalendarD30: TcxGridDBColumn;
    gCalendarD31: TcxGridDBColumn;
    cxGrid10Level1: TcxGridLevel;
    Panel15: TPanel;
    Label8: TLabel;
    edtAttendYear: TcxSpinEdit;
    edtAttendMonth: TcxSpinEdit;
    btnAttendView: TBitBtn;
    ImageList1: TImageList;
    UniAlerter1: TUniAlerter;
    CUST_ATTENDANCE_MONTHLY: TUniStoredProc;
    icbCenter: TcxImageComboBox;
    btnDayLimitOn: TBitBtn;
    Label1: TLabel;
    speSday: TcxSpinEdit;
    speEday: TcxSpinEdit;
    Label2: TLabel;
    btnDayLimitOff: TBitBtn;
    btnHistory: TBitBtn;
    btnCustInfo: TBitBtn;
    btnSMSSending: TBitBtn;
    CUST_ATTENDANCE_MONTHLYID: TStringField;
    CUST_ATTENDANCE_MONTHLYLEC_CODE: TStringField;
    CUST_ATTENDANCE_MONTHLYMEMBER_UID: TStringField;
    CUST_ATTENDANCE_MONTHLYSTART_DATE: TDateField;
    CUST_ATTENDANCE_MONTHLYEND_DATE: TDateField;
    CUST_ATTENDANCE_MONTHLYM_KIND: TIntegerField;
    CUST_ATTENDANCE_MONTHLYIS_DONE: TSmallintField;
    gCalendarID: TcxGridDBColumn;
    gCalendarLEC_CODE: TcxGridDBColumn;
    gCalendarSTART_DATE: TcxGridDBColumn;
    gCalendarEND_DATE: TcxGridDBColumn;
    gCalendarM_KIND: TcxGridDBColumn;
    gCalendarIS_DONE: TcxGridDBColumn;
    gCalendarMEMBER_UID: TcxGridDBColumn;
    CUST_ATTENDANCE_MONTHLYD1: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD2: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD3: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD4: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD5: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD6: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD7: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD8: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD9: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD10: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD11: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD12: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD13: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD14: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD15: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD16: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD17: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD18: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD19: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD20: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD21: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD22: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD23: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD24: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD25: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD26: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD27: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD28: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD29: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD30: TIntegerField;
    CUST_ATTENDANCE_MONTHLYD31: TIntegerField;
    CREATE_ATTEND_MONTH_TEMP: TUniStoredProc;
    CUST_ATTENDANCE_MONTHLYCNAME: TStringField;
    CUST_ATTENDANCE_MONTHLYCTEL: TStringField;
    CUST_ATTENDANCE_MONTHLYSMS_YESNO: TSmallintField;
    gCalendarCNAME: TcxGridDBColumn;
    gCalendarCTEL: TcxGridDBColumn;
    gCalendarSMS_YESNO: TcxGridDBColumn;
    CUST_ATTENDANCE_MONTHLYIS_ACTIVE: TIntegerField;
    gCalendarIS_ACTIVE: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAttendViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gCalendarD1CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure gCalendarD2CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure gCalendarD3CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure gCalendarD4CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure gCalendarD5CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure gCalendarD6CustomDrawHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure edtAttendMonthPropertiesEditValueChanged(Sender: TObject);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
    procedure btnDayLimitOnClick(Sender: TObject);
    procedure btnDayLimitOffClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure gCalendarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSMSSendingClick(Sender: TObject);
  private
    procedure SetCalendarHeader(var ACanvas: TcxCanvas;
      var AViewInfo: TcxGridColumnHeaderViewInfo);
    { Private declarations }
  public
    { Public declarations }
    IsMyAction : Boolean;
    S_CENTER, E_CENTER : Integer;
  end;

var
  fmAttendanceMonthly: TfmAttendanceMonthly;

implementation

uses UdmDBCommon, GlobalVar, UfmCustomerHistory, uMemberEditView, uSendingSMS;

{$R *.dfm}

procedure TfmAttendanceMonthly.FormShow(Sender: TObject);
begin
  IsMyAction := False;
  edtAttendYear.Value := YearOf(Date);
  edtAttendMonth.Value := MonthOf(Date);
  dmDBCommon.SetCenter(icbCenter);
  icbCenter.Enabled := LoginUserKIND >= 2;
  dmDBCommon.CUSTOMER_SEL_LOOK.Active := True;
  btnAttendView.Click;
end;

procedure TfmAttendanceMonthly.SetCalendarHeader(var ACanvas: TcxCanvas; var AViewInfo: TcxGridColumnHeaderViewInfo);
var
  sDate : TDateTime;
  tno, iYear, iMonth : integer;
begin
  iYear := edtAttendYear.Value;
  iMonth := edtAttendMonth.Value;
  tno := AViewInfo.Column.Tag;
  if IsValidDate(iYear, iMonth, tno) then begin
    sDate := EncodeDate(iYear, iMonth, tno);
    if DayOfWeek(sDate) = 1 then
      ACanvas.Font.Color := clRed
    else if DayOfWeek(sDate) = 7 then
      ACanvas.Font.Color := clBlue
    else
      ACanvas.Font.Color := clBlack;
  end;
end;


procedure TfmAttendanceMonthly.UniAlerter1Event(Sender: TDAAlerter;
  const EventName, Message: string);
begin
  if IsMyAction = False then
    btnAttendView.Click
  else
    IsMyAction := False;
end;

procedure TfmAttendanceMonthly.btnCustInfoClick(Sender: TObject);
begin
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmAttendanceMonthly.btnDayLimitOffClick(Sender: TObject);
var
  gCol : array[0..30] of TcxGridDBColumn;
  i, d, t, iYear, iMonth, daycnt, sday, eday : integer;
  sDate : TDateTime;
begin
  for i := 0 to 30 do begin
    gCol[i] := gCalendar.GetColumnByFieldName('D' + IntToStr(i+1));
  end;
  iYear := edtAttendYear.Value;
  iMonth := edtAttendMonth.Value;
  sDate := EncodeDate(iYear, iMonth, 1);
  daycnt := DaysInMonth(sDate);

  sday := speSday.EditValue;
  eday := speEday.EditValue;
  for d := 1 to daycnt do begin
    gCol[d-1].Visible := True
  end;
end;

procedure TfmAttendanceMonthly.btnDayLimitOnClick(Sender: TObject);
var
  gCol : array[0..30] of TcxGridDBColumn;
  i, d, t, iYear, iMonth, daycnt, sday, eday : integer;
  sDate : TDateTime;
begin
  for i := 0 to 30 do begin
    gCol[i] := gCalendar.GetColumnByFieldName('D' + IntToStr(i+1));
  end;
  iYear := edtAttendYear.Value;
  iMonth := edtAttendMonth.Value;
  sDate := EncodeDate(iYear, iMonth, 1);
  daycnt := DaysInMonth(sDate);

  sday := speSday.EditValue;
  eday := speEday.EditValue;
  for d := 1 to daycnt do begin
    if (d >= sday) and (d <= eday) then
      gCol[d-1].Visible := True
    else
      gCol[d-1].Visible := False;
  end;
end;

procedure TfmAttendanceMonthly.btnHistoryClick(Sender: TObject);
begin
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := gCalendarMEMBER_UID.EditValue;
    fmCustomerHistory.ShowModal;
  finally
    fmCustomerHistory.Free;
  end;
end;

procedure TfmAttendanceMonthly.btnSMSSendingClick(Sender: TObject);
var
  cnt, i, sel_id : integer;
  cname, cTel, csex, cjob : string;
  SMS_List : TStringList;
begin
  SMS_List := TStringList.Create;
  if gCalendar.DataController.RecordCount < 1 then begin
    ShowMessage('전송대상 리스트가 없습니다. 명단을 먼저 선택하세요.');
    Exit;
  end;
  fmSendingSMS := TfmSendingSMS.Create(Self);
  try
    fmSendingSMS.mdSMS.Active := False;
    fmSendingSMS.mdSMS.Active := True;
    cnt := gCalendar.Controller.SelectedRecordCount;
    for I := 0 to cnt - 1 do begin
      with gCalendar do begin
        sel_id := Controller.SelectedRecords[i].RecordIndex;
        cname := DataController.DisplayTexts[sel_id, GetColumnByFieldName('MEMBER_ID').Index];
        //cjob := DataController.GetValue(sel_id, GetColumnByFieldName('jobkind').Index);
        //csex := DataController.GetValue(sel_id, GetColumnByFieldName('sex').Index);
        ctel := DataController.GetValue(sel_id, GetColumnByFieldName('ctel').Index);
      end;
      if ctel <> '' then begin
        fmSendingSMS.mdSMS.Append;
        fmSendingSMS.mdSMS.FieldByName('cname').AsString := cname;
        fmSendingSMS.mdSMS.FieldByName('ctel').AsString := ctel;
        fmSendingSMS.mdSMS.FieldByName('sex').AsString := csex;
        fmSendingSMS.mdSMS.FieldByName('job').AsString := cjob;
        fmSendingSMS.mdSMS.FieldByName('check_send').AsBoolean := True;
        fmSendingSMS.mdSMS.Post;
      end;
    end;
    fmSendingSMS.ShowModal;
  finally
    fmSendingSMS.Free;
  end;
end;

procedure TfmAttendanceMonthly.btnAttendViewClick(Sender: TObject);
var
  iYear, iMonth, daycnt : integer;
  sDate, eDate : TDateTime;
begin
  iYear := edtAttendYear.Value;
  iMonth := edtAttendMonth.Value;
  sDate := EncodeDate(iYear, iMonth, 1);
  daycnt := DaysInMonth(sDate);
  eDate := EncodeDate(iYear, iMonth, daycnt);
  speEday.Properties.MaxValue := daycnt;
  speEday.Value := daycnt;
  if daycnt = 30 then
    gCalendarD31.Visible := False
  else if daycnt = 29 then begin
    gCalendarD31.Visible := False;
    gCalendarD30.Visible := False;
  end else if daycnt = 28 then begin
    gCalendarD31.Visible := False;
    gCalendarD30.Visible := False;
    gCalendarD29.Visible := False;
  end else begin
    gCalendarD31.Visible := True;
    gCalendarD30.Visible := True;
    gCalendarD29.Visible := True;
  end;
  CREATE_ATTEND_MONTH_TEMP.ParamByName('IYEAR').Value := iYear;
  CREATE_ATTEND_MONTH_TEMP.ParamByName('IMONTH').Value := iMonth;
  CREATE_ATTEND_MONTH_TEMP.ExecProc;

  if icbCenter.EditValue > 0 then begin
    S_CENTER := icbCenter.EditValue;
    E_CENTER := icbCenter.EditValue;
  end else begin
    S_CENTER := 0;
    E_CENTER := 99;
  end;
  CUST_ATTENDANCE_MONTHLY.ParamByName('S_CENTER').Value := S_CENTER;
  CUST_ATTENDANCE_MONTHLY.ParamByName('E_CENTER').Value := E_CENTER;
  CUST_ATTENDANCE_MONTHLY.ParamByName('S_DATE').Value := sDate;
  CUST_ATTENDANCE_MONTHLY.ParamByName('E_DATE').Value := eDate;
  CUST_ATTENDANCE_MONTHLY.ParamByName('C_STATUS').Value := 0;
  CUST_ATTENDANCE_MONTHLY.Active := True;
  d_monthly_attendance.DataSet.Refresh;
  //SetCalendarHeader(iYear, iMonth);
//  CUSTOMER_ATTENDANCE_SEL.ParamByName('iyear').AsInteger := iYear;
//  CUSTOMER_ATTENDANCE_SEL.ParamByName('imonth').AsInteger := iMonth;
//  CUSTOMER_ATTENDANCE_SEL.Active := True;
//  d_monthly_attendance.DataSet.Refresh;
end;

procedure TfmAttendanceMonthly.edtAttendMonthPropertiesEditValueChanged(
  Sender: TObject);
begin
  btnAttendView.Click;
end;

procedure TfmAttendanceMonthly.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmAttendanceMonthly.gCalendarD1CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  SetCalendarHeader(ACanvas, AViewInfo);
end;

procedure TfmAttendanceMonthly.gCalendarD2CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  SetCalendarHeader(ACanvas, AViewInfo);

end;

procedure TfmAttendanceMonthly.gCalendarD3CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  SetCalendarHeader(ACanvas, AViewInfo);

end;

procedure TfmAttendanceMonthly.gCalendarD4CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  SetCalendarHeader(ACanvas, AViewInfo);

end;

procedure TfmAttendanceMonthly.gCalendarD5CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  SetCalendarHeader(ACanvas, AViewInfo);

end;

procedure TfmAttendanceMonthly.gCalendarD6CustomDrawHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  SetCalendarHeader(ACanvas, AViewInfo);

end;

procedure TfmAttendanceMonthly.gCalendarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  GLOVAL_MEMBER_UID := gCalendarMEMBER_UID.EditValue;
end;

procedure TfmAttendanceMonthly.icbCenterPropertiesCloseUp(Sender: TObject);
begin
  btnAttendView.Click;
end;

initialization RegisterClasses([TfmAttendanceMonthly]);

end.
