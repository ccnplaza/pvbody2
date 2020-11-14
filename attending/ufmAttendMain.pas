unit ufmAttendMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, Uni, MemDS, UniProvider,
  InterBaseUniProvider, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCalendar, ComCtrls, MMSystem, DAAlerter, UniAlerter, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfmAttendMain = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    btnDelete: TcxButton;
    cxButton11: TcxButton;
    btnCheck: TcxButton;
    lblMessage: TLabel;
    Timer1: TTimer;
    lblDateTime: TLabel;
    pnlNumbers: TPanel;
    Label1: TLabel;
    btnAttending: TcxButton;
    GroupBox1: TGroupBox;
    mmoComment: TMemo;
    LESSON_ATTENDANCE_INS: TUniStoredProc;
    btnViewCalendar: TcxButton;
    LESSON_ATTENDANCE_CHECKUSER: TUniStoredProc;
    LESSON_CUSTOMER_UPD_BYID: TUniStoredProc;
    ds_ATTENDING_TEMP_SEL: TDataSource;
    ATTENDING_TEMP_DEL: TUniStoredProc;
    UniAlerter1: TUniAlerter;
    Label2: TLabel;
    REGISTED_CENTER_SEL: TUniStoredProc;
    ds_REGISTED_CENTER_SEL: TDataSource;
    REGISTED_CENTER_SELID: TIntegerField;
    REGISTED_CENTER_SELC_NAME: TStringField;
    CENTER_ID: TcxLookupComboBox;
    ATTENDING_TEMP_INS: TUniStoredProc;
    ATTENDING_TEMP_SEL: TUniStoredProc;
    ATTENDING_TEMP_SELID: TIntegerField;
    ATTENDING_TEMP_SELCENTER_ID: TIntegerField;
    ATTENDING_TEMP_SELMSG_STR: TStringField;
    ATTENDING_TEMP_SELLECTURE_NAME: TStringField;
    ATTENDING_TEMP_SELSTART_DATE: TStringField;
    ATTENDING_TEMP_SELEND_DATE: TStringField;
    ATTENDING_TEMP_SELLOCKER_NO: TStringField;
    ATTENDING_TEMP_SELC_NAME: TStringField;
    ATTENDING_TEMP_SELC_TEL: TStringField;
    edtLectureCode: TEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnAttendingClick(Sender: TObject);
    procedure btnViewCalendarClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure FormShow(Sender: TObject);
  private
    function CheckUserAttended : Boolean;
    { Private declarations }
  public
    { Public declarations }
    MemberUID : string;
    LectureCode : string;
    LessonID : string;
    OldAttendCount : Integer;
    MemberKind : Integer;
    IsMyAction : Boolean;
  end;

var
  fmAttendMain: TfmAttendMain;

implementation

uses GlobalVar, UdmDBCommon, UfmSelectTelno, UfmAttendCalendar;

{$R *.dfm}

procedure TfmAttendMain.btnDeleteClick(Sender: TObject);
begin
  pnlNumbers.Caption := '';
end;

procedure TfmAttendMain.btnViewCalendarClick(Sender: TObject);
begin
  if Length(MemberUID) <> 17 then begin
    ShowMessage('회원정보가 없습니다. 확인하세요.');
    Exit;
  end;

  fmAttendCalendar := TfmAttendCalendar.Create(Self);
  try
    fmAttendCalendar.MemberUID := MemberUID;
    fmAttendCalendar.ShowModal;
  finally
    fmAttendCalendar.Free;
  end;
end;

procedure TfmAttendMain.btnAttendingClick(Sender: TObject);
var
  attend_id : string;
  m_kind : Integer;
begin
  if Length(pnlNumbers.Caption) <> 4 then begin
    ShowMessage('회원님의 전화번호 끝의 4자리를 입력하세요.');
    Exit;
  end;
  if CheckUserAttended = True then begin
    Exit;
  end else begin
    LESSON_ATTENDANCE_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
    LESSON_ATTENDANCE_INS.ParamByName('ATT_DATE').Value := Date;
    LESSON_ATTENDANCE_INS.ParamByName('LEC_CODE').Value := LectureCode;
    LESSON_ATTENDANCE_INS.ParamByName('MEMBER_ID').Value := MemberUID;
    LESSON_ATTENDANCE_INS.ParamByName('IN_TIME').Value := FormatDateTime('hh:nn',Now);
    LESSON_ATTENDANCE_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
    LESSON_ATTENDANCE_INS.ParamByName('LEC_ID').Value := LessonID;
    LESSON_ATTENDANCE_INS.ExecProc;

    if MemberKind = 3 then begin
      LESSON_CUSTOMER_UPD_BYID.ParamByName('ID').Value := LessonID;
      LESSON_CUSTOMER_UPD_BYID.ParamByName('CURRENT_COUNT').Value := OldAttendCount;
      LESSON_CUSTOMER_UPD_BYID.ParamByName('UPDOWN_KIND').Value := 1;
      LESSON_CUSTOMER_UPD_BYID.ExecProc;
    end;

    ShowMessage('출석처리가 완료되었습니다.');
    btnViewCalendar.Enabled := False;
    btnAttending.Enabled := False;
    pnlNumbers.Caption := '';
    mmoComment.Clear;
    MemberUID := '';
    LessonID := '';
    LectureCode := '';
    OldAttendCount := 0;
    MemberKind := 0;
    lblMessage.Caption := '번호를 입력하세요.';
  end;
end;

procedure TfmAttendMain.btnCheckClick(Sender: TObject);
var
  cnt : Integer;
  uid, cname, ctel, lec_code, locker_no, lec_name, attend_id : string;
  s_date, e_date : TDateTime;
begin
  IsMyAction := True;
  if Length(pnlNumbers.Caption) < 4 then begin
    ShowMessage('검색할 번호 숫자4개를 입력해야 합니다.');
    IsMyAction := False;
    Exit;
  end;
  //ShowMessage(pnlNumbers.Caption);
  dmDBCommon.CUSTOMER_TEL_SEL.ParamByName('TEL_NO').Value := pnlNumbers.Caption;
  dmDBCommon.CUSTOMER_TEL_SEL.Active := True;
  dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.Refresh;
  cnt := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.RecordCount;
  if cnt > 1 then begin
    fmSelectTelno := TfmSelectTelno.Create(Self);
    try
      fmSelectTelno.ShowModal;
      if fmSelectTelno.ModalResult = mrOk then begin
        MemberUID := fmSelectTelno.gridCustMEMBER_UID.EditValue;
        LessonID := fmSelectTelno.gridCustID.EditValue;
        OldAttendCount := fmSelectTelno.gridCustUSED_CNT.EditValue;
        MemberKind := fmSelectTelno.gridCustM_KIND.EditValue;
        LectureCode := fmSelectTelno.gridCustLEC_CODE.EditValue;
        cname := fmSelectTelno.gridCustCNAME.EditValue;
        ctel := fmSelectTelno.gridCustCTEL.EditValue;
        lec_name := fmSelectTelno.gridCustL_NAME.EditValue;
        s_date := fmSelectTelno.gridCustSTART_DATE.EditValue;
        e_date := fmSelectTelno.gridCustEND_DATE.EditValue;
        locker_no := fmSelectTelno.gridCustLOCKER_NO.EditValue;

        btnViewCalendar.Enabled := True;
        btnAttending.Enabled := True;
        lblMessage.Caption := cname + '님 환영합니다!' + #13#10 +
                                  '출석버튼을 눌러 출석처리를 하세요.';
        mmoComment.Clear;
        mmoComment.Lines.Add('수강강좌명: ' + lec_name);
        mmoComment.Lines.Add('수강시작일자: ' + DatetimeToStr(s_date));
        mmoComment.Lines.Add('수강종료일자: ' + DatetimeToStr(e_date));
        mmoComment.Lines.Add('락커번호: ' + locker_no);

        UniAlerter1.Active := False;
        ATTENDING_TEMP_INS.ParamByName('CENTER_ID').Value := CENTER_ID.EditValue;
        ATTENDING_TEMP_INS.ParamByName('MSG_STR').Value := lblMessage.Caption;
        ATTENDING_TEMP_INS.ParamByName('LECTURE_NAME').Value := '수강강좌명: ' + lec_name;
        ATTENDING_TEMP_INS.ParamByName('START_DATE').Value := '수강시작일자: ' + DatetimeToStr(s_date);
        ATTENDING_TEMP_INS.ParamByName('END_DATE').Value := '수강종료일자: ' + DatetimeToStr(e_date);
        ATTENDING_TEMP_INS.ParamByName('LOCKER_NO').Value := '락커번호: ' + locker_no;
        ATTENDING_TEMP_INS.ParamByName('C_NAME').Value := cname;
        ATTENDING_TEMP_INS.ParamByName('C_TEL').Value := ctel;
        ATTENDING_TEMP_INS.ExecProc;
        UniAlerter1.Active := True;
      end;
    finally
      fmSelectTelno.Free;
    end;
  end else if cnt = 1 then begin
    MemberUID := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('MEMBER_UID').AsString;
    LessonID := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('ID').AsString;
    OldAttendCount := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('USED_CNT').AsInteger;
    MemberKind := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('M_KIND').AsInteger;
    LectureCode := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('LEC_CODE').AsString;
    cname := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('CNAME').AsString;
    ctel := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('CTEL').AsString;
    lec_name := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('L_NAME').AsString;
    s_date := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('START_DATE').AsDateTime;
    e_date := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('END_DATE').AsDateTime;
    locker_no := dmDBCommon.d_CUSTOMER_TEL_SEL.DataSet.FieldByName('LOCKER_NO').AsString;

    lblMessage.Caption := cname + '님 환영합니다!' + #13#10 +
                                  '출석버튼을 눌러 출석처리를 하세요.';
    btnViewCalendar.Enabled := True;
    btnAttending.Enabled := True;
    mmoComment.Clear;
    mmoComment.Lines.Add('수강강좌명: ' + lec_name);
    mmoComment.Lines.Add('수강시작일자: ' + DatetimeToStr(s_date));
    mmoComment.Lines.Add('수강종료일자: ' + DatetimeToStr(e_date));
    mmoComment.Lines.Add('락커번호: ' + locker_no);

    UniAlerter1.Active := False;
    ATTENDING_TEMP_INS.ParamByName('CENTER_ID').Value := CENTER_ID.EditValue;
    ATTENDING_TEMP_INS.ParamByName('MSG_STR').Value := lblMessage.Caption;
    ATTENDING_TEMP_INS.ParamByName('LECTURE_NAME').Value := '수강강좌명: ' + lec_name;
    ATTENDING_TEMP_INS.ParamByName('START_DATE').Value := '수강시작일자: ' + DatetimeToStr(s_date);
    ATTENDING_TEMP_INS.ParamByName('END_DATE').Value := '수강종료일자: ' + DatetimeToStr(e_date);
    ATTENDING_TEMP_INS.ParamByName('LOCKER_NO').Value := '락커번호: ' + locker_no;
    ATTENDING_TEMP_INS.ParamByName('C_NAME').Value := cname;
    ATTENDING_TEMP_INS.ParamByName('C_TEL').Value := ctel;
    ATTENDING_TEMP_INS.ExecProc;
    UniAlerter1.Active := True;
  end else begin
    MemberUID := '';
    LessonID := '';
    OldAttendCount := 0;
    MemberKind := 0;
    LectureCode := '';
    btnViewCalendar.Enabled := False;
    btnAttending.Enabled := False;
    lblMessage.Caption := '등록된 번호가 없습니다.' + #13#10 + '다시 입력하세요.';
    pnlNumbers.Caption := '';
    mmoComment.Clear;
    UniAlerter1.Active := False;
    ATTENDING_TEMP_INS.ParamByName('CENTER_ID').Value := CENTER_ID.EditValue;
    ATTENDING_TEMP_INS.ParamByName('MSG_STR').Value := lblMessage.Caption;
    ATTENDING_TEMP_INS.ParamByName('LECTURE_NAME').Value := '';
    ATTENDING_TEMP_INS.ParamByName('START_DATE').Value := '';
    ATTENDING_TEMP_INS.ParamByName('END_DATE').Value := '';
    ATTENDING_TEMP_INS.ParamByName('LOCKER_NO').Value := '';
    ATTENDING_TEMP_INS.ParamByName('C_NAME').Value := '';
    ATTENDING_TEMP_INS.ParamByName('C_TEL').Value := '';
    ATTENDING_TEMP_INS.ExecProc;
    UniAlerter1.Active := True;
  end;
  IsMyAction := False;
end;

function TfmAttendMain.CheckUserAttended : Boolean;
var
  attend_id : string;
begin
  LESSON_ATTENDANCE_CHECKUSER.ParamByName('IN_DATE').Value := Date;
  LESSON_ATTENDANCE_CHECKUSER.ParamByName('USER_ID').Value := MemberUID;
  LESSON_ATTENDANCE_CHECKUSER.ExecProc;
  attend_id := VarToStr(LESSON_ATTENDANCE_CHECKUSER.ParamByName('ID').Value);
  if Length(attend_id) = 17 then begin
    ShowMessage('회원님은 이미 오늘 출석을 하셨습니다.');
    btnViewCalendar.Enabled := False;
    btnAttending.Enabled := False;
    pnlNumbers.Caption := '';
    mmoComment.Clear;
    MemberUID := '';
    lblMessage.Caption := '번호를 입력하세요.';
    Result := True;
  end else begin
    Result := False;
  end;
end;
procedure TfmAttendMain.cxButton1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TcxButton).Tag;
  if Length(pnlNumbers.Caption) >= 4 then begin
    pnlNumbers.Caption := '';
    pnlNumbers.Caption := IntToStr(tno);
    pnlNumbers.Refresh;
  end else begin
    pnlNumbers.Caption := pnlNumbers.Caption + IntToStr(tno);
    pnlNumbers.Refresh;
  end;
end;

procedure TfmAttendMain.FormShow(Sender: TObject);
begin
  IsMyAction := False;
  LectureCode := '';
  UniAlerter1.Active := True;
  CENTER_ID.EditValue := LoginUserCenterID;
end;

procedure TfmAttendMain.Timer1Timer(Sender: TObject);
begin
  lblDateTime.Caption := DateTimeToStr(Now);
end;

procedure TfmAttendMain.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
var
  msg : string;
begin
//  if IsMyAction = False then begin
    ATTENDING_TEMP_SEL.ParamByName('C_ID').Value := CENTER_ID.EditValue;
    ATTENDING_TEMP_SEL.Active := True;
    ds_ATTENDING_TEMP_SEL.DataSet.Refresh;

    msg := ATTENDING_TEMP_SELMSG_STR.Value;
    lblMessage.Caption := msg;
    mmoComment.Clear;
    mmoComment.Lines.Add(ATTENDING_TEMP_SELLECTURE_NAME.Value);
    mmoComment.Lines.Add(ATTENDING_TEMP_SELSTART_DATE.Value);
    mmoComment.Lines.Add(ATTENDING_TEMP_SELEND_DATE.Value);
    mmoComment.Lines.Add(ATTENDING_TEMP_SELLOCKER_NO.Value);

    ATTENDING_TEMP_DEL.ParamByName('C_ID').Value := CENTER_ID.EditValue;
    ATTENDING_TEMP_DEL.ExecProc;
//  end;
end;

end.
