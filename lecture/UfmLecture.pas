unit UfmLecture;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxImageComboBox, cxContainer, MemDS, DBAccess, Uni, cxTextEdit, cxMaskEdit,
  cxSpinEdit, StdCtrls, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls, DateUtils, DBClient, Provider, dxSkinMetropolis, cxVariants,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, ComCtrls, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridExportLink, DAAlerter, UniAlerter, cxCurrencyEdit, cxDropDownEdit,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, cxCalendar, cxGroupBox, Menus,
  cxButtons;

type
  TfmLecture = class(TForm)
    Panel3: TPanel;
    Panel6: TPanel;
    cxGrid3: TcxGrid;
    gridLectureCust: TcxGridDBTableView;
    G3L1: TcxGridLevel;
    Panel8: TPanel;
    Label1: TLabel;
    btnView: TBitBtn;
    btnAddCustLec: TBitBtn;
    btnEditCustLec: TBitBtn;
    btnDelLecMember: TBitBtn;
    gridLectureCustID: TcxGridDBColumn;
    gridLectureCustREG_DATE: TcxGridDBColumn;
    gridLectureCustMEMBER_UID: TcxGridDBColumn;
    gridLectureCustSTART_DATE: TcxGridDBColumn;
    gridLectureCustEND_DATE: TcxGridDBColumn;
    gridLectureCustCOMPANY_ID: TcxGridDBColumn;
    gridLectureCustIS_DONE: TcxGridDBColumn;
    gridLectureCustCNAME: TcxGridDBColumn;
    gridLectureCustCTEL: TcxGridDBColumn;
    s_date: TDateTimePicker;
    e_date: TDateTimePicker;
    LESSON_CUSTOMER_INS: TUniStoredProc;
    LESSON_CUSTOMER_UPD: TUniStoredProc;
    LESSON_CUSTOMER_DEL: TUniStoredProc;
    cxGridPopupMenu1: TcxGridPopupMenu;
    LESSON_CUSTOMER_END_UPD: TUniStoredProc;
    Label3: TLabel;
    seLimit: TcxSpinEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleRed: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleDefault: TcxStyle;
    cxStyleGreen: TcxStyle;
    cxStyleGreenRed: TcxStyle;
    cxStyleGreenBlue: TcxStyle;
    cxStyleYellow: TcxStyle;
    cxStyleYellowRed: TcxStyle;
    cxStyleYellowBlue: TcxStyle;
    gridLectureCustLEC_CODE: TcxGridDBColumn;
    btnExcelActive: TBitBtn;
    UniAlerter1: TUniAlerter;
    gridLectureCustM_KIND: TcxGridDBColumn;
    gridLectureCustLOCKER_NO: TcxGridDBColumn;
    gridLectureCustNEW_OR_RENEW: TcxGridDBColumn;
    btnLecture: TBitBtn;
    gridLectureCustLEC_PRICE: TcxGridDBColumn;
    gridLectureCustPAY_KIND: TcxGridDBColumn;
    gridLectureCustLEC_MONTH: TcxGridDBColumn;
    GET_CASH_INOUT_LESSONID: TUniStoredProc;
    d_GET_CASH_INOUT_LESSONID: TUniDataSource;
    GET_CASH_INOUT_LESSONIDCASH_INOUT_ID: TStringField;
    LOCKER_DATA_UPD_BYUSER: TUniStoredProc;
    gridLectureCustLEC_DESC: TcxGridDBColumn;
    btnOut: TBitBtn;
    CUSTOMER_UPD: TUniStoredProc;
    gridLectureCustOUT_DATE: TcxGridDBColumn;
    gridLectureCustOUT_PRICE: TcxGridDBColumn;
    gridLectureCustOUT_KIND: TcxGridDBColumn;
    gridLectureCustOUT_REASON: TcxGridDBColumn;
    LESSON_CUSTOMER_UPD_CANCEL: TUniStoredProc;
    btnDelCancel: TBitBtn;
    CASH_INOUT_DEL_BY_LESSON_DATE: TUniStoredProc;
    gridLectureCustUSED_CNT: TcxGridDBColumn;
    btnCountDown: TBitBtn;
    btnCountUp: TBitBtn;
    LESSON_CUSTOMER_UPD_BYID: TUniStoredProc;
    gridLectureCustIS_ACTIVE: TcxGridDBColumn;
    btnCustInfo: TBitBtn;
    btnFindEnder: TBitBtn;
    btnReport: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btnEndUpdate: TBitBtn;
    btnSMSSending: TBitBtn;
    gridLectureCustSMS_YESNO: TcxGridDBColumn;
    btnNoSMS: TBitBtn;
    gridLectureCustBREAK_START: TcxGridDBColumn;
    gridLectureCustBREAK_END: TcxGridDBColumn;
    btnBreak: TBitBtn;
    LESSON_CUSTOMER_UPD_BREAK: TUniStoredProc;
    LESSON_CUSTOMER_BREAKDONE: TUniStoredProc;
    gridLectureCustCENTER_ID: TcxGridDBColumn;
    LESSON_CUSTOMER_END_UPD2: TUniStoredProc;
    LESSON_CUSTOMER_UPD_ENDSTATUS: TUniStoredProc;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    Panel2: TPanel;
    Memo1: TMemo;
    cxGroupBox2: TcxGroupBox;
    gridBreak: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    LESSON_CUSTOMER_BREAK_SEL: TUniStoredProc;
    d_LESSON_CUSTOMER_BREAK_SEL: TDataSource;
    LESSON_CUSTOMER_BREAK_SELID: TIntegerField;
    LESSON_CUSTOMER_BREAK_SELLECTURE_ID: TStringField;
    LESSON_CUSTOMER_BREAK_SELSTART_DATE: TDateField;
    LESSON_CUSTOMER_BREAK_SELEND_DATE: TDateField;
    LESSON_CUSTOMER_BREAK_SELREASONS: TStringField;
    LESSON_CUSTOMER_BREAK_SELBREAK_STATUS: TIntegerField;
    gridBreakID: TcxGridDBColumn;
    gridBreakLECTURE_ID: TcxGridDBColumn;
    gridBreakSTART_DATE: TcxGridDBColumn;
    gridBreakEND_DATE: TcxGridDBColumn;
    gridBreakREASONS: TcxGridDBColumn;
    gridBreakBREAK_STATUS: TcxGridDBColumn;
    LESSON_CUSTOMER_SEL_BYUSER: TUniStoredProc;
    LESSON_CUSTOMER_SEL_BYUSERID: TStringField;
    LESSON_CUSTOMER_SEL_BYUSERREG_DATE: TDateField;
    LESSON_CUSTOMER_SEL_BYUSERLEC_CODE: TStringField;
    LESSON_CUSTOMER_SEL_BYUSERMEMBER_UID: TStringField;
    LESSON_CUSTOMER_SEL_BYUSERSTART_DATE: TDateField;
    LESSON_CUSTOMER_SEL_BYUSEREND_DATE: TDateField;
    LESSON_CUSTOMER_SEL_BYUSERLEC_MONTH: TSmallintField;
    LESSON_CUSTOMER_SEL_BYUSERLEC_PRICE: TFloatField;
    LESSON_CUSTOMER_SEL_BYUSERLEC_DESC: TStringField;
    LESSON_CUSTOMER_SEL_BYUSERCOMPANY_ID: TStringField;
    LESSON_CUSTOMER_SEL_BYUSERIS_DONE: TSmallintField;
    LESSON_CUSTOMER_SEL_BYUSERM_KIND: TSmallintField;
    LESSON_CUSTOMER_SEL_BYUSERLOCKER_NO: TStringField;
    LESSON_CUSTOMER_SEL_BYUSERNEW_OR_RENEW: TSmallintField;
    LESSON_CUSTOMER_SEL_BYUSERPAY_KIND: TSmallintField;
    d_LESSON_CUSTOMER_SEL_BYUSER: TDataSource;
    cxGroupBox3: TcxGroupBox;
    cxGrid4: TcxGrid;
    gridCLRegist: TcxGridDBTableView;
    gridCLRegistID: TcxGridDBColumn;
    gridCLRegistREG_DATE: TcxGridDBColumn;
    gridCLRegistLEC_CODE: TcxGridDBColumn;
    gridCLRegistMEMBER_UID: TcxGridDBColumn;
    gridCLRegistSTART_DATE: TcxGridDBColumn;
    gridCLRegistEND_DATE: TcxGridDBColumn;
    gridCLRegistLEC_MONTH: TcxGridDBColumn;
    gridCLRegistLEC_PRICE: TcxGridDBColumn;
    gridCLRegistLEC_DESC: TcxGridDBColumn;
    gridCLRegistCOMPANY_ID: TcxGridDBColumn;
    gridCLRegistIS_DONE: TcxGridDBColumn;
    gridCLRegistM_KIND: TcxGridDBColumn;
    gridCLRegistLOCKER_NO: TcxGridDBColumn;
    gridCLRegistNEW_OR_RENEW: TcxGridDBColumn;
    gridCLRegistPAY_KIND: TcxGridDBColumn;
    G4L1: TcxGridLevel;
    btnSaveChange: TButton;
    UniQuery1: TUniQuery;
    cxGroupBox4: TcxGroupBox;
    CUSTOMER_HISTORY_SEL: TUniStoredProc;
    CUSTOMER_HISTORY_SELID: TIntegerField;
    CUSTOMER_HISTORY_SELR_DATE: TDateField;
    CUSTOMER_HISTORY_SELBIGO: TStringField;
    dsCUSTOMER_HISTORY_SEL: TDataSource;
    CUSTOMER_HISTORY_INS: TUniStoredProc;
    CUSTOMER_HISTORY_UPD: TUniStoredProc;
    CUSTOMER_HISTORY_DEL: TUniStoredProc;
    Panel5: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    cxGrid2: TcxGrid;
    gridHistory: TcxGridDBTableView;
    gridHistoryID: TcxGridDBColumn;
    gridHistoryR_DATE: TcxGridDBColumn;
    gridHistoryBIGO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel4: TPanel;
    LESSON_ATTENDANCE_SEL_LEC: TUniStoredProc;
    LESSON_ATTENDANCE_SEL_LECID: TStringField;
    LESSON_ATTENDANCE_SEL_LECATT_DATE: TDateField;
    LESSON_ATTENDANCE_SEL_LECLEC_CODE: TStringField;
    LESSON_ATTENDANCE_SEL_LECIN_TIME: TStringField;
    d_LESSON_ATTENDANCE_SEL_LEC: TDataSource;
    cxGroupBox5: TcxGroupBox;
    cxGrid5: TcxGrid;
    gridAttend: TcxGridDBTableView;
    gridAttendID: TcxGridDBColumn;
    gridAttendATT_DATE: TcxGridDBColumn;
    gridAttendIN_TIME: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Label2: TLabel;
    edtFind: TEdit;
    btnFilter: TcxButton;
    btnFilterClear: TcxButton;
    cxGridPopupMenu2: TcxGridPopupMenu;
    icbCenter: TcxImageComboBox;
    icbQryKind: TcxImageComboBox;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddCustLecClick(Sender: TObject);
    procedure btnEditCustLecClick(Sender: TObject);
    procedure btnDelLecMemberClick(Sender: TObject);
    procedure gridLectureCustCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnViewClick(Sender: TObject);
    procedure gridLectureCustStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure btnLectureClick(Sender: TObject);
    procedure btnExcelActiveClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure btnOutClick(Sender: TObject);
    procedure btnDelCancelClick(Sender: TObject);
    procedure btnCountUpClick(Sender: TObject);
    procedure btnCountDownClick(Sender: TObject);
    procedure gridLectureCustM_KINDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnSMSSendingClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure btnFindEnderClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure btnEndUpdateClick(Sender: TObject);
    procedure s_dateChange(Sender: TObject);
    procedure e_dateChange(Sender: TObject);
    procedure btnNoSMSClick(Sender: TObject);
    procedure btnBreakClick(Sender: TObject);
    procedure gridLectureCustIS_DONECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridLectureCustFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSaveChangeClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnFilterClearClick(Sender: TObject);
    procedure gridLectureCustCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
    procedure icbQryKindPropertiesCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure ShowMemberData;
    { Private declarations }
  public
    { Public declarations }
    CurrentMemberID, CurrentLectureID : string;
    OldCustID : string;
    LessonID : string;
    IsMyAction : Boolean;
    S_CENTER, E_CENTER : Integer;
  end;

var
  fmLecture: TfmLecture;

implementation

uses GlobalVar, uCommonLogic, UdmDBCommon, ufmLectureCustomerRegist, ufmLectureRegist, uPayIn,
  UfmViewLecture, uMemberEdit, UfmLessonOut, uSendingSMS, UfmCustomerHistory,
  uMemberEditView, UfmYearMonth, UfmLectureBreakList, UfmHistoryEdit;


{$R *.dfm}

function CreateUniqTimeString : string;
begin
  result := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure TfmLecture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmLecture.FormShow(Sender: TObject);
begin
  IsMyAction := False;
  Screen.Cursor := crHourGlass;
  s_date.Date := StrToDate(Format('%.4d-%.2d-01', [YearOf(Date),MonthOf(Date)]));
  e_date.Date := Date;
  btnEndUpdate.Click;

  dmDBCommon.SetCenter(icbCenter);
  icbCenter.Enabled := LoginUserKIND >= 2;
  dmDBCommon.LESSON_SEL_LOOK.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.LESSON_SEL_LOOK.Active := True;
  dmDBCommon.d_LESSON_SEL_LOOK.DataSet.Refresh;

  btnView.Click;
  Screen.Cursor := crDefault;
end;

procedure TfmLecture.btnAddClick(Sender: TObject);
begin
  fmHistoryEdit := TfmHistoryEdit.Create(Self);
  try
    fmHistoryEdit.edtDate.Date := Date;
    fmHistoryEdit.ShowModal;
    if fmHistoryEdit.ModalResult = mrOk then begin
      CUSTOMER_HISTORY_INS.ParamByName('CUSTOMER_ID').Value := CurrentMemberID;
      CUSTOMER_HISTORY_INS.ParamByName('R_DATE').Value := fmHistoryEdit.edtDate.Date;
      CUSTOMER_HISTORY_INS.ParamByName('BIGO').Value := fmHistoryEdit.mmoBigo.Text;
      CUSTOMER_HISTORY_INS.ExecProc;
      dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
    end;
  finally
    fmHistoryEdit.Free;
  end;
end;

procedure TfmLecture.btnAddCustLecClick(Sender: TObject);
var
  UID, CustName : string;
begin
  fmLectureCustomerRegist := TfmLectureCustomerRegist.Create(Self);
  try
    fmLectureCustomerRegist.IsEditMode := False;   //입력모드로 세팅
    fmLectureCustomerRegist.REG_DATE.Date := Date;
    fmLectureCustomerRegist.s_date.Date := Date;
    fmLectureCustomerRegist.e_date.Clear;
    fmLectureCustomerRegist.LEC_PRICE.Value := 0;
    fmLectureCustomerRegist.ShowModal;
    if fmLectureCustomerRegist.ModalResult = mrOk then begin
      IsMyAction := True;
      CustName := fmLectureCustomerRegist.memberName + '(' + fmLectureCustomerRegist.memberTel + ')';
      UID := CreateUniqTimeString;
      LESSON_CUSTOMER_INS.ParamByName('ID').Value := UID;
      LESSON_CUSTOMER_INS.ParamByName('REG_DATE').Value := fmLectureCustomerRegist.REG_DATE.Date;
      LESSON_CUSTOMER_INS.ParamByName('MEMBER_UID').Value := fmLectureCustomerRegist.memberUID;
      LESSON_CUSTOMER_INS.ParamByName('START_DATE').Value := fmLectureCustomerRegist.s_date.Date;
      LESSON_CUSTOMER_INS.ParamByName('END_DATE').Value := fmLectureCustomerRegist.e_date.Date;
      LESSON_CUSTOMER_INS.ParamByName('LEC_MONTH').Value := fmLectureCustomerRegist.M_MONTH.EditValue;
      LESSON_CUSTOMER_INS.ParamByName('LEC_CODE').Value := fmLectureCustomerRegist.edtLectureName.EditValue;
      LESSON_CUSTOMER_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
      LESSON_CUSTOMER_INS.ParamByName('IS_DONE').Value := 0;
      LESSON_CUSTOMER_INS.ParamByName('M_KIND').Value := fmLectureCustomerRegist.M_KIND.EditValue;
      LESSON_CUSTOMER_INS.ParamByName('LOCKER_NO').Value := fmLectureCustomerRegist.LOCKER_NO.Text;
      LESSON_CUSTOMER_INS.ParamByName('NEW_OR_RENEW').Value := fmLectureCustomerRegist.NEW_OR_RENEW.EditValue;
      LESSON_CUSTOMER_INS.ParamByName('LEC_DESC').Value := fmLectureCustomerRegist.mmoLEC_DESC.Text;
      LESSON_CUSTOMER_INS.ParamByName('LEC_PRICE').AsFloat := fmLectureCustomerRegist.LEC_PRICE.Value;
      LESSON_CUSTOMER_INS.ParamByName('PAY_KIND').Value := fmLectureCustomerRegist.PAY_KIND.EditValue;
      LESSON_CUSTOMER_INS.ParamByName('CENTER_ID').Value := fmLectureCustomerRegist.lcCenter.EditValue;
      LESSON_CUSTOMER_INS.ExecProc;
      //현금일 경우에만 현금출납부에 데이터 등록
      if fmLectureCustomerRegist.PAY_KIND.EditValue = 0 then begin
        dmDBCommon.CASH_INOUT_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
        dmDBCommon.CASH_INOUT_INS.ParamByName('C_DATE').Value := fmLectureCustomerRegist.REG_DATE.Date;
        dmDBCommon.CASH_INOUT_INS.ParamByName('K_CODE').Value := 2; //계정과목:수강료(고정값, 수정하면안됨)
        dmDBCommon.CASH_INOUT_INS.ParamByName('C_DESC').Value := '수강료:' + CustName;
        dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_IN').Value := fmLectureCustomerRegist.LEC_PRICE.Value;
        dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_OUT').Value := 0;
        dmDBCommon.CASH_INOUT_INS.ParamByName('LESSON_ID').Value := UID;
        dmDBCommon.CASH_INOUT_INS.ParamByName('PRODUCT_SALE_ID').Value := '';
        dmDBCommon.CASH_INOUT_INS.ParamByName('CENTER_ID').Value := fmLectureCustomerRegist.lcCenter.EditValue;
        dmDBCommon.CASH_INOUT_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
        dmDBCommon.CASH_INOUT_INS.ExecProc;
      end;
      if fmLectureCustomerRegist.LOCKER_NO.Text <> '' then begin
        LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_NO').Value := fmLectureCustomerRegist.LOCKER_NO.Text;
        LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_STATUS').Value := 1;
        LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_USER').Value := fmLectureCustomerRegist.memberUID;
        LOCKER_DATA_UPD_BYUSER.ExecProc;
      end;
      dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
      dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Locate('ID', UID, []);
    end;
  finally
    fmLectureCustomerRegist.Free;
  end;
end;

procedure TfmLecture.btnBreakClick(Sender: TObject);
var
  toprow, day_cnt, is_done : Integer;
  old_end, new_end, start_date, end_date, new_date : TDate;
begin
  fmLectureBreakList := TfmLectureBreakList.Create(Self);
  try
    fmLectureBreakList.LECTURE_ID := gridLectureCustID.EditValue;
    fmLectureBreakList.ShowModal;
    if fmLectureBreakList.ModalResult = mrOk then begin
      old_end := gridLectureCustEND_DATE.EditValue;
      start_date := fmLectureBreakList.BREAK_START;
      end_date := fmLectureBreakList.BREAK_END;
      day_cnt := DaysBetween(start_date, end_date)+1;
      new_date := old_end + day_cnt;
      if new_date >= Date then begin
        if end_date >= Date then
          is_done := 3
        else
          is_done := 0;
      end else begin
        is_done := 1;
      end;

      LESSON_CUSTOMER_UPD_BREAK.ParamByName('ID').Value := CurrentLectureID;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('IS_DONE').Value := is_done;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('BREAK_START').Value := start_date;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('BREAK_END').Value := end_date;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('NEW_END_DATE').Value := new_date;
      LESSON_CUSTOMER_UPD_BREAK.ExecProc;
      toprow := gridLectureCust.Controller.TopRecordIndex;
      gridLectureCust.DataController.SaveBookmark;
      dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
      gridLectureCust.Controller.TopRecordIndex := toprow;
      gridLectureCust.DataController.GotoBookmark;
    end;
    if fmLectureBreakList.ModalResult = mrAbort then begin
      old_end := gridLectureCustEND_DATE.EditValue;
      start_date := fmLectureBreakList.BREAK_START;
      end_date := fmLectureBreakList.BREAK_END;
      day_cnt := DaysBetween(start_date, end_date)+1;
      new_date := old_end - day_cnt;
      if new_date >= Date then
        is_done := 0
      else
        is_done := 1;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('ID').Value := CurrentLectureID;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('IS_DONE').Value := is_done;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('BREAK_START').Clear;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('BREAK_END').Clear;
      LESSON_CUSTOMER_UPD_BREAK.ParamByName('NEW_END_DATE').Value := new_date;
      LESSON_CUSTOMER_UPD_BREAK.ExecProc;

      toprow := gridLectureCust.Controller.TopRecordIndex;
      gridLectureCust.DataController.SaveBookmark;
      dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
      gridLectureCust.Controller.TopRecordIndex := toprow;
      gridLectureCust.DataController.GotoBookmark;
    end;
  finally
    fmLectureBreakList.Free;
  end;
end;

procedure TfmLecture.btnCountDownClick(Sender: TObject);
var
  rowidx, use_cnt : Integer;
begin
  if gridLectureCustM_KIND.EditValue <> 3 then begin
    ShowMessage('구분이 횟수인 회원에게만 적용됩니다.');
    Exit;
  end;
  if VarIsNull(gridLectureCustUSED_CNT.EditValue) then
    use_cnt := 0
  else
    use_cnt := gridLectureCustUSED_CNT.EditValue;
  if use_cnt > 0 then begin
    LESSON_CUSTOMER_UPD_BYID.ParamByName('ID').Value := CurrentLectureID;
    LESSON_CUSTOMER_UPD_BYID.ParamByName('CURRENT_COUNT').Value := use_cnt;
    LESSON_CUSTOMER_UPD_BYID.ParamByName('UPDOWN_KIND').Value := 0;
    LESSON_CUSTOMER_UPD_BYID.ExecProc;
    SavePosition(gridLectureCust);
    dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
    GotoPosition(gridLectureCust);
  end;
end;

procedure TfmLecture.btnCountUpClick(Sender: TObject);
var
  use_cnt, reg_cnt : Integer;
begin
  if gridLectureCustM_KIND.EditValue <> 3 then begin
    ShowMessage('구분이 횟수인 회원에게만 적용됩니다.');
    Exit;
  end;
  reg_cnt := gridLectureCustLEC_MONTH.EditValue;
  if VarIsNull(gridLectureCustUSED_CNT.EditValue) then
    use_cnt := 0
  else
    use_cnt := gridLectureCustUSED_CNT.EditValue;

  if use_cnt < reg_cnt then begin
    LESSON_CUSTOMER_UPD_BYID.ParamByName('ID').Value := CurrentLectureID;
    LESSON_CUSTOMER_UPD_BYID.ParamByName('CURRENT_COUNT').Value := use_cnt;
    LESSON_CUSTOMER_UPD_BYID.ParamByName('UPDOWN_KIND').Value := 1;
    LESSON_CUSTOMER_UPD_BYID.ExecProc;
    SavePosition(gridLectureCust);
    dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
    GotoPosition(gridLectureCust);
  end else begin
    ShowMessage('횟수가 완료되었습니다.');
  end;
end;

procedure TfmLecture.btnCustInfoClick(Sender: TObject);
begin
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    GLOVAL_MEMBER_UID := gridLectureCustMEMBER_UID.EditValue;
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmLecture.btnDelCancelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료의 환불내용을 취소합니다.' + #13#10 + '환불내용만 삭제됩니다.' +
    #13#10 + '취소 할까요?', '환불취소', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    LESSON_CUSTOMER_UPD_CANCEL.ParamByName('ID').AsString := CurrentLectureID;
    LESSON_CUSTOMER_UPD_CANCEL.ParamByName('IS_DONE').AsInteger := 0;
    LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_DATE').AsString := '';
    LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_PRICE').Clear;
    LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_KIND').Clear;
    LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_REASON').AsString := '';
    LESSON_CUSTOMER_UPD_CANCEL.ExecProc;
    if gridLectureCustOUT_KIND.EditValue = 0 then begin
      CASH_INOUT_DEL_BY_LESSON_DATE.ParamByName('LESSON_ID').Value := CurrentLectureID;
      CASH_INOUT_DEL_BY_LESSON_DATE.ParamByName('C_DATE').Value := gridLectureCustOUT_DATE.EditValue;
      CASH_INOUT_DEL_BY_LESSON_DATE.ExecProc;
    end;
    SavePosition(gridLectureCust);
    dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
    GotoPosition(gridLectureCust);
  end;
end;

procedure TfmLecture.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    CUSTOMER_HISTORY_DEL.ParamByName('ID').Value := gridHistoryID.EditValue;
    CUSTOMER_HISTORY_DEL.ExecProc;
    dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
  end;
end;

procedure TfmLecture.btnDelLecMemberClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    IsMyAction := True;
    LESSON_CUSTOMER_DEL.ParamByName('ID').Value := CurrentLectureID;
    LESSON_CUSTOMER_DEL.ExecProc;

    dmDBCommon.CASH_INOUT_DEL_BY_LESSON.ParamByName('LESSON_ID').Value := CurrentLectureID;
    dmDBCommon.CASH_INOUT_DEL_BY_LESSON.ExecProc;

    SavePosition(gridLectureCust);
    dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
    GotoPosition(gridLectureCust);
  end;
end;

procedure TfmLecture.btnEditClick(Sender: TObject);
begin
  fmHistoryEdit := TfmHistoryEdit.Create(Self);
  try
    fmHistoryEdit.edtDate.Date := gridHistoryR_DATE.EditValue;
    fmHistoryEdit.mmoBigo.Text := gridHistoryBIGO.EditValue;
    fmHistoryEdit.ShowModal;
    if fmHistoryEdit.ModalResult = mrOk then begin
      CUSTOMER_HISTORY_UPD.ParamByName('ID').Value := gridHistoryID.EditValue;
      CUSTOMER_HISTORY_UPD.ParamByName('R_DATE').Value := fmHistoryEdit.edtDate.Date;
      CUSTOMER_HISTORY_UPD.ParamByName('BIGO').Value := fmHistoryEdit.mmoBigo.Text;
      CUSTOMER_HISTORY_UPD.ExecProc;
      dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
    end;
  finally
    fmHistoryEdit.Free;
  end;
end;

procedure TfmLecture.btnEditCustLecClick(Sender: TObject);
var
  id, member_uid, CustName, lesson_id, old_locker, new_locker : string;
  cnt, is_done : Integer;
  cash_val, card_val, bank_val : Double;
begin
  fmLectureCustomerRegist := TfmLectureCustomerRegist.Create(Self);
  try
    fmLectureCustomerRegist.memberUID := gridLectureCustMEMBER_UID.EditValue;
    fmLectureCustomerRegist.btnSelectMember.Enabled := False;
    fmLectureCustomerRegist.IsEditMode := True;
    fmLectureCustomerRegist.LabelMsg.Caption := '회원명은 수정할 수 없음!';
    id := gridLectureCustID.EditValue;
    old_locker := VarToStr(gridLectureCustLOCKER_NO.EditValue);
    fmLectureCustomerRegist.lblCustName.Caption := gridLectureCustCNAME.EditValue + '(' + gridLectureCustCTEL.EditValue + ')';
    fmLectureCustomerRegist.lcCenter.EditValue := gridLectureCustIS_ACTIVE.EditValue;
    fmLectureCustomerRegist.edtLectureName.EditValue := gridLectureCustLEC_CODE.EditValue;
    fmLectureCustomerRegist.reg_date.Date := gridLectureCustREG_DATE.EditValue;
    fmLectureCustomerRegist.s_date.Date := gridLectureCustSTART_DATE.EditValue;
    fmLectureCustomerRegist.e_date.Date := gridLectureCustEND_DATE.EditValue;
    fmLectureCustomerRegist.M_MONTH.EditValue := gridLectureCustLEC_MONTH.EditValue;
    fmLectureCustomerRegist.M_KIND.EditValue := gridLectureCustM_KIND.EditValue;
    fmLectureCustomerRegist.LOCKER_NO.Text := old_locker;
    fmLectureCustomerRegist.PAY_KIND.EditValue := gridLectureCustPAY_KIND.EditValue;
    fmLectureCustomerRegist.LEC_PRICE.Value := dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.FieldByName('LEC_PRICE').AsFloat;
    fmLectureCustomerRegist.NEW_OR_RENEW.EditValue := gridLectureCustNEW_OR_RENEW.EditValue;
    fmLectureCustomerRegist.IS_DONE.EditValue := gridLectureCustIS_DONE.EditValue;
    fmLectureCustomerRegist.mmoLEC_DESC.Text := gridLectureCustLEC_DESC.EditValue;
    fmLectureCustomerRegist.lcCenter.EditValue := gridLectureCustCENTER_ID.EditValue;


    fmLectureCustomerRegist.ShowModal;
    if fmLectureCustomerRegist.ModalResult = mrOk then begin
      IsMyAction := True;
      new_locker := fmLectureCustomerRegist.LOCKER_NO.Text;
      LESSON_CUSTOMER_UPD.ParamByName('ID').Value := id;
      LESSON_CUSTOMER_UPD.ParamByName('REG_DATE').Value := fmLectureCustomerRegist.REG_DATE.Date;
      LESSON_CUSTOMER_UPD.ParamByName('START_DATE').Value := fmLectureCustomerRegist.s_date.Date;
      LESSON_CUSTOMER_UPD.ParamByName('END_DATE').Value := fmLectureCustomerRegist.e_date.Date;
      LESSON_CUSTOMER_UPD.ParamByName('LEC_MONTH').Value := fmLectureCustomerRegist.M_MONTH.EditValue;
      LESSON_CUSTOMER_UPD.ParamByName('LEC_CODE').Value := fmLectureCustomerRegist.edtLectureName.EditValue;
      LESSON_CUSTOMER_UPD.ParamByName('M_KIND').Value := fmLectureCustomerRegist.M_KIND.EditValue;
      LESSON_CUSTOMER_UPD.ParamByName('LOCKER_NO').Value := new_locker;
      LESSON_CUSTOMER_UPD.ParamByName('NEW_OR_RENEW').Value := fmLectureCustomerRegist.NEW_OR_RENEW.EditValue;
      LESSON_CUSTOMER_UPD.ParamByName('LEC_DESC').Value := fmLectureCustomerRegist.mmoLEC_DESC.Text;
      LESSON_CUSTOMER_UPD.ParamByName('LEC_PRICE').AsFloat := fmLectureCustomerRegist.LEC_PRICE.Value;
      LESSON_CUSTOMER_UPD.ParamByName('PAY_KIND').Value := fmLectureCustomerRegist.PAY_KIND.EditValue;
      LESSON_CUSTOMER_UPD.ParamByName('IS_DONE').Value := fmLectureCustomerRegist.IS_DONE.EditValue;
      LESSON_CUSTOMER_UPD.ParamByName('CENTER_ID').Value := fmLectureCustomerRegist.lcCenter.EditValue;
      LESSON_CUSTOMER_UPD.ExecProc;

      //현금일 경우에만 현금출납부에 데이터 등록
      if fmLectureCustomerRegist.PAY_KIND.EditValue = 0 then begin
        GET_CASH_INOUT_LESSONID.ParamByName('LESSON_ID').Value := id;
        GET_CASH_INOUT_LESSONID.ExecProc;
        lesson_id := GET_CASH_INOUT_LESSONID.ParamByName('cash_inout_id').AsString;
        if lesson_id <> '' then begin
          dmDBCommon.CASH_INOUT_UPD_BY_LESSON.ParamByName('LESSON_ID').Value := id;
          dmDBCommon.CASH_INOUT_UPD_BY_LESSON.ParamByName('C_DATE').Value := fmLectureCustomerRegist.REG_DATE.Date;
          dmDBCommon.CASH_INOUT_UPD_BY_LESSON.ParamByName('CASH_IN').Value := fmLectureCustomerRegist.LEC_PRICE.Value;
          dmDBCommon.CASH_INOUT_UPD_BY_LESSON.ParamByName('CASH_OUT').Value := 0;
          dmDBCommon.CASH_INOUT_UPD_BY_LESSON.ExecProc;
        end else begin
          CustName := VarToStr(gridLectureCustCNAME.EditValue) + '(' + VarToStr(gridLectureCustCTEL.EditValue) + ')';
          dmDBCommon.CASH_INOUT_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
          dmDBCommon.CASH_INOUT_INS.ParamByName('C_DATE').Value := fmLectureCustomerRegist.REG_DATE.Date;
          dmDBCommon.CASH_INOUT_INS.ParamByName('K_CODE').Value := 2; //계정과목:수강료(고정값, 수정하면안됨)
          dmDBCommon.CASH_INOUT_INS.ParamByName('C_DESC').Value := '수강료:' + CustName;
          dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_IN').Value := fmLectureCustomerRegist.LEC_PRICE.Value;
          dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_OUT').Value := 0;
          dmDBCommon.CASH_INOUT_INS.ParamByName('LESSON_ID').Value := ID;
          dmDBCommon.CASH_INOUT_INS.ParamByName('PRODUCT_SALE_ID').Value := '';
          dmDBCommon.CASH_INOUT_INS.ParamByName('CENTER_ID').Value := fmLectureCustomerRegist.lcCenter.EditValue;
          dmDBCommon.CASH_INOUT_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
          dmDBCommon.CASH_INOUT_INS.ExecProc;
        end;
      end else begin
        dmDBCommon.CASH_INOUT_DEL_BY_LESSON.ParamByName('LESSON_ID').Value := id;
        dmDBCommon.CASH_INOUT_DEL_BY_LESSON.ExecProc;
      end;
      //if old_locker <> new_locker then begin
        if old_locker <> '' then begin
          LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_NO').Value := old_locker;
          LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_STATUS').Value := 0;
          LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_USER').Value := '';
          LOCKER_DATA_UPD_BYUSER.ExecProc;
        end;
        if new_locker <> '' then begin
          LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_NO').Value := new_locker;
          LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_STATUS').Value := 1;
          LOCKER_DATA_UPD_BYUSER.ParamByName('LOCKER_USER').Value := fmLectureCustomerRegist.memberUID;
          LOCKER_DATA_UPD_BYUSER.ExecProc;
        end;
      //end;

      SavePosition(gridLectureCust);
      dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
      GotoPosition(gridLectureCust);
    end;
  finally
    fmLectureCustomerRegist.Free;
  end;
end;

procedure TfmLecture.btnEndUpdateClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  IsMyAction := True;
  LESSON_CUSTOMER_UPD_ENDSTATUS.ExecProc;
  btnView.Click;
  cxGrid3.SetFocus;
  IsMyAction := False;
  Screen.Cursor := crArrow;
end;

procedure TfmLecture.btnExcelActiveClick(Sender: TObject);
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

procedure TfmLecture.btnFilterClearClick(Sender: TObject);
var
  fstr : string;
begin
  edtFind.Text := '';
  if icbCenter.EditValue > 0 then begin
    fstr := 'CENTER_ID = ' + IntToStr(icbCenter.EditValue);
  end else begin
    fstr := '';
  end;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filter := fstr;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filtered := True;
end;

procedure TfmLecture.btnFilterClick(Sender: TObject);
var
  fstr : string;
begin
  if icbCenter.EditValue > 0 then begin
    fstr := 'CENTER_ID = ' + IntToStr(icbCenter.EditValue) + ' and CNAME like "%' + Trim(edtFind.Text) + '%" or CTEL like "%' + Trim(edtFind.Text) + '%"';
  end else begin
    fstr := 'CNAME like "%' + Trim(edtFind.Text) + '%" or CTEL like "%' + Trim(edtFind.Text) + '%"';
  end;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filter := fstr;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filtered := True;
end;

procedure TfmLecture.btnFindEnderClick(Sender: TObject);
var
  sdate, edate : TDateTime;
  year, month : Integer;
  AItemList: TcxFilterCriteriaItemList;
begin
  fmYearMonth := TfmYearMonth.Create(Self);
  try
    fmYearMonth.cxImageComboBox1.EditValue := YearOf(Date);
    fmYearMonth.cxImageComboBox2.EditValue := MonthOf(Date);
    fmYearMonth.ShowModal;
    if fmYearMonth.ModalResult = mrOk then begin
      year := fmYearMonth.cxImageComboBox1.EditValue;
      month := fmYearMonth.cxImageComboBox2.EditValue;
      sdate := EncodeDate(year, month, 1);
      edate := EndOfTheMonth(EncodeDate(year, month, 1));
//      dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filter := 'END_DATE >= "' + DateToStr(SDATE) + '" and END_DATE <= "' + DateToStr(EDATE) + '"';
//      dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filtered := True;
      gridLectureCust.DataController.Filter.BeginUpdate;
       try
         gridLectureCust.DataController.Filter.Root.Clear;
         gridLectureCust.DataController.Filter.Root.AddItem(gridLectureCustEND_DATE, foGreaterEqual, SDATE, DateToStr(SDATE));
         AItemList := gridLectureCust.DataController.Filter.Root.AddItemList(fboAnd);
         gridLectureCust.DataController.Filter.Root.AddItem(gridLectureCustEND_DATE, foLessEqual, EDATE, DateToStr(EDATE));
       finally
         gridLectureCust.DataController.Filter.EndUpdate;
         gridLectureCust.DataController.Filter.Active := true;
       end;
    end;
  finally
    fmYearMonth.Free;
  end;
end;

procedure TfmLecture.btnLectureClick(Sender: TObject);
begin
  fmViewLecture := TfmViewLecture.Create(Self);
  try
    fmViewLecture.ShowModal;
  finally
    fmViewLecture.Free;
  end;
end;

procedure TfmLecture.btnNoSMSClick(Sender: TObject);
var
  yesno : Integer;
begin
  yesno := gridLectureCustSMS_YESNO.EditValue;
  if yesno = 0 then
    yesno := 1
  else
    yesno := 0;
  dmDBCommon.CUSTOMER_UPD_SMS.ParamByName('UID').Value := gridLectureCustMEMBER_UID.EditValue;
  dmDBCommon.CUSTOMER_UPD_SMS.ParamByName('SMS_YESNO').Value := yesno;
  dmDBCommon.CUSTOMER_UPD_SMS.ExecProc;

  SavePosition(gridLectureCust);
  dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
  GotoPosition(gridLectureCust);
end;

procedure TfmLecture.btnOutClick(Sender: TObject);
var
  uid, CustName : string;
  memPic : TMemoryStream;
  checkItem : array[0..9] of TCheckBox;
  i, itemVal : Integer;
  sel_item, sel_item_desc : string;
  stlist : TStringList;
begin
  fmLessonOut := TfmLessonOut.Create(Self);
  try
    if gridLectureCustOUT_PRICE.EditValue > 0 then begin
      fmLessonOut.OUT_DATE.Date := StrToDate(gridLectureCustOUT_DATE.EditValue);
      fmLessonOut.OUT_PRICE.Value := gridLectureCustOUT_PRICE.EditValue;
      fmLessonOut.OUT_KIND.EditValue := gridLectureCustOUT_KIND.EditValue;
      fmLessonOut.OUT_REASON.Text := gridLectureCustOUT_REASON.EditValue;
    end else begin
      fmLessonOut.OUT_DATE.Date := Date;
      fmLessonOut.OUT_PRICE.Value := 0;
    end;
    fmLessonOut.ShowModal;
    if fmLessonOut.ModalResult = mrOk then begin
      LESSON_CUSTOMER_UPD_CANCEL.ParamByName('ID').AsString := gridLectureCustID.EditValue;
      LESSON_CUSTOMER_UPD_CANCEL.ParamByName('IS_DONE').AsInteger := 2;
      LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_DATE').AsString := DateToStr(fmLessonOut.OUT_DATE.Date);
      LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_PRICE').AsFloat := fmLessonOut.OUT_PRICE.Value;
      LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_KIND').AsInteger := fmLessonOut.OUT_KIND.EditValue;
      LESSON_CUSTOMER_UPD_CANCEL.ParamByName('OUT_REASON').AsString := fmLessonOut.OUT_REASON.Text;
      LESSON_CUSTOMER_UPD_CANCEL.ExecProc;

      SavePosition(gridLectureCust);
      dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
      GotoPosition(gridLectureCust);

      if fmLessonOut.OUT_KIND.EditValue = 0 then begin
        CustName := VarToStr(gridLectureCustCNAME.EditValue) + '(' + VarToStr(gridLectureCustCTEL.EditValue) + ')';
        dmDBCommon.CASH_INOUT_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
        dmDBCommon.CASH_INOUT_INS.ParamByName('C_DATE').Value := fmLessonOut.OUT_DATE.Date;
        dmDBCommon.CASH_INOUT_INS.ParamByName('K_CODE').Value := 2; //계정과목:수강료(고정값, 수정하면안됨)
        dmDBCommon.CASH_INOUT_INS.ParamByName('C_DESC').Value := '수강료 환불:' + CustName;
        dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_IN').Value := 0;
        dmDBCommon.CASH_INOUT_INS.ParamByName('CASH_OUT').Value := fmLessonOut.OUT_PRICE.Value;
        dmDBCommon.CASH_INOUT_INS.ParamByName('LESSON_ID').Value := gridLectureCustID.EditValue;
        dmDBCommon.CASH_INOUT_INS.ExecProc;
      end;
    end;
  finally
    fmLessonOut.Free;
  end;
end;

procedure TfmLecture.btnReportClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True);
end;

procedure TfmLecture.btnSaveChangeClick(Sender: TObject);
begin
  UniQuery1.ParamByName('l_id').Value := gridLectureCustID.EditValue;
  UniQuery1.ParamByName('l_desc').Value := Memo1.Text;
  UniQuery1.ExecSQL;
  SavePosition(gridLectureCust);
  dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
  GotoPosition(gridLectureCust);
end;

procedure TfmLecture.btnSMSSendingClick(Sender: TObject);
var
  cnt, i, sel_id, sms_yesno : integer;
  cname, cTel, csex, cjob : string;
  SMS_List : TStringList;
begin
  SMS_List := TStringList.Create;
  if gridLectureCust.DataController.RecordCount < 1 then begin
    ShowMessage('전송대상 리스트가 없습니다. 명단을 먼저 선택하세요.');
    Exit;
  end;
  fmSendingSMS := TfmSendingSMS.Create(Self);
  try
    fmSendingSMS.mdSMS.Active := False;
    fmSendingSMS.mdSMS.Active := True;
    cnt := gridLectureCust.Controller.SelectedRecordCount;
    for I := 0 to cnt - 1 do begin
      with gridLectureCust do begin
        sel_id := Controller.SelectedRecords[i].RecordIndex;
        cname := DataController.GetValue(sel_id, GetColumnByFieldName('cname').Index);
        //cjob := DataController.GetValue(sel_id, GetColumnByFieldName('jobkind').Index);
        //csex := DataController.GetValue(sel_id, GetColumnByFieldName('sex').Index);
        ctel := DataController.GetValue(sel_id, GetColumnByFieldName('ctel').Index);
        sms_yesno := DataController.GetValue(sel_id, GetColumnByFieldName('sms_yesno').Index);
      end;
      if (ctel <> '') and (sms_yesno = 0) then begin
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

procedure TfmLecture.btnViewClick(Sender: TObject);
begin
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.ParamByName('S_DATE').Value := s_date.Date;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.ParamByName('E_DATE').Value := e_date.Date;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.ParamByName('QRY_KIND').Value := icbQryKind.EditValue;
  dmDBCommon.LESSON_CUSTOMER_MIXSEL.Active := True;
  dmDBCommon.d_LESSON_CUSTOMER_MIXSEL.DataSet.Refresh;
  if icbCenter.EditValue > 0 then begin
    dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filter := 'CENTER_ID = ' + IntToStr(icbCenter.EditValue);
    dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filtered := True;
  end else begin
    dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filter := '';
    dmDBCommon.LESSON_CUSTOMER_MIXSEL.Filtered := False;
  end;
  ShowMemberData;
end;

procedure TfmLecture.Button1Click(Sender: TObject);
begin
  ShowMessage(LoginUserCompID);
end;

procedure TfmLecture.ShowMemberData;
begin
  CurrentLectureID := gridLectureCustID.EditValue;
  CurrentMemberID := gridLectureCustMEMBER_UID.EditValue;
  Memo1.Text := gridLectureCustLEC_DESC.EditValue;
  LESSON_CUSTOMER_BREAK_SEL.ParamByName('L_ID').Value := CurrentLectureID;
  LESSON_CUSTOMER_BREAK_SEL.Open;
  d_LESSON_CUSTOMER_BREAK_SEL.DataSet.Refresh;

  LESSON_CUSTOMER_SEL_BYUSER.ParamByName('USER_UID').Value := CurrentMemberID;
  LESSON_CUSTOMER_SEL_BYUSER.Open;
  d_LESSON_CUSTOMER_SEL_BYUSER.DataSet.Refresh;
  CUSTOMER_HISTORY_SEL.ParamByName('CUSTOMER_ID').Value := CurrentMemberID;
  CUSTOMER_HISTORY_SEL.Active := True;
  dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
  LESSON_ATTENDANCE_SEL_LEC.ParamByName('M_ID').Value := CurrentMemberID;
  LESSON_ATTENDANCE_SEL_LEC.ParamByName('SDATE').Value := gridLectureCustSTART_DATE.EditValue;
  LESSON_ATTENDANCE_SEL_LEC.ParamByName('EDATE').Value := gridLectureCustEND_DATE.EditValue;
  LESSON_ATTENDANCE_SEL_LEC.Open;
  d_LESSON_ATTENDANCE_SEL_LEC.DataSet.Refresh;
end;

procedure TfmLecture.e_dateChange(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmLecture.gridLectureCustCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowMemberData;
end;

procedure TfmLecture.gridLectureCustCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditCustLec.Click;
end;

procedure TfmLecture.gridLectureCustFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
//  if OldCustID <> gridLectureCustID.EditValue then begin
//    OldCustID := gridLectureCustID.EditValue;
//    CurrentLectureID := gridLectureCustID.EditValue;
//    CurrentMemberID := gridLectureCustMEMBER_UID.EditValue;
//    Memo1.Text := gridLectureCustLEC_DESC.EditValue;
//    LESSON_CUSTOMER_BREAK_SEL.ParamByName('L_ID').Value := CurrentLectureID;
//    LESSON_CUSTOMER_BREAK_SEL.Open;
//    d_LESSON_CUSTOMER_BREAK_SEL.DataSet.Refresh;
//    LESSON_CUSTOMER_SEL_BYUSER.ParamByName('USER_UID').Value := CurrentMemberID;
//    LESSON_CUSTOMER_SEL_BYUSER.Open;
//    d_LESSON_CUSTOMER_SEL_BYUSER.DataSet.Refresh;
//    CUSTOMER_HISTORY_SEL.ParamByName('CUSTOMER_ID').Value := CurrentMemberID;
//    CUSTOMER_HISTORY_SEL.Active := True;
//    dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
//    LESSON_ATTENDANCE_SEL_LEC.ParamByName('M_ID').Value := CurrentMemberID;
//    LESSON_ATTENDANCE_SEL_LEC.ParamByName('SDATE').Value := gridLectureCustSTART_DATE.EditValue;
//    LESSON_ATTENDANCE_SEL_LEC.ParamByName('EDATE').Value := gridLectureCustEND_DATE.EditValue;
//    LESSON_ATTENDANCE_SEL_LEC.Open;
//    d_LESSON_ATTENDANCE_SEL_LEC.DataSet.Refresh;
//  end;
end;

procedure TfmLecture.gridLectureCustIS_DONECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not VarIsSoftNull(AViewInfo.Value) then begin
    case AViewInfo.Value of
      1: begin
        ACanvas.Brush.Color := clRed;
        ACanvas.Font.Color := clWhite;
      end;
      2: begin
        ACanvas.Brush.Color := clGreen;
        ACanvas.Font.Color := clWhite;
      end;
      3: begin
        ACanvas.Brush.Color := clYellow;
        ACanvas.Font.Color := clBlack;
      end;
    end;
  end;
end;

procedure TfmLecture.gridLectureCustM_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Value = 3 then
    ACanvas.Brush.Color := clYellow;
end;

procedure TfmLecture.gridLectureCustStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn : TcxCustomGridTableItem;
  sdate, ldate: Variant;
  lday : Integer;
begin
  lday := seLimit.Value;
  AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('end_date');
  ldate := ARecord.Values[AColumn.Index];
  AStyle := cxStyleDefault;
  if not VarIsSoftNull(ldate) then begin
    sdate := IncDay(Date, + lday);
    if (ldate <= Date) or (ldate <= sdate) then
      AStyle := cxStyleRed;
  end;
end;

procedure TfmLecture.icbCenterPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmLecture.icbQryKindPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmLecture.s_dateChange(Sender: TObject);
begin
  btnView.Click;
  //btnEndUpdate.Click;
end;

procedure TfmLecture.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  if IsMyAction = False then
    btnView.Click
  else
    IsMyAction := False;
end;

initialization RegisterClasses([TfmLecture]);

end.
