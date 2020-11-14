unit DBDemoMainUnit;

interface

{$I cxVer.inc}

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms, Dialogs, DemoBasicMain, cxStyles, cxGraphics, cxEdit,
  cxScheduler, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, DB, cxSchedulerStorage,
  cxSchedulerDBStorage, cxLookAndFeels, Menus, StdCtrls,
  ExtCtrls, cxControls, ComCtrls, cxSchedulerWeekView, Math, 
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerYearView,
  cxLookAndFeelPainters, cxContainer, cxCheckBox, cxButtons,
  cxSchedulerHolidays, cxSchedulerGanttView, cxGroupBox, dxmdaset, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxSchedulerPainter, Buttons,
  cxExportSchedulerLink, MemDS, DBAccess, Uni, cxSchedulerRecurrence,
  cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxClasses;

type
  TDBDemoMainForm = class(TDemoBasicMainForm)
    SchedulerDataSource: TDataSource;
    SchedulerDBStorage: TcxSchedulerDBStorage;
    cxCheckBox1: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    mdEvents: TdxMemData;
    mdEventsID: TAutoIncField;
    mdEventsParentID: TIntegerField;
    mdEventsType: TIntegerField;
    mdEventsStart: TDateTimeField;
    mdEventsFinish: TDateTimeField;
    mdEventsOptions: TIntegerField;
    mdEventsCaption: TStringField;
    mdEventsRecurrenceIndex: TIntegerField;
    mdEventsRecurrenceInfo: TBlobField;
    mdEventsResourceID: TBlobField;
    mdEventsLocation: TStringField;
    mdEventsMessage: TStringField;
    mdEventsReminderDate: TDateTimeField;
    mdEventsReminderMinutes: TIntegerField;
    mdEventsState: TIntegerField;
    mdEventsLabelColor: TIntegerField;
    mdEventsActualStart: TDateTimeField;
    mdEventsActualFinish: TDateTimeField;
    mdEventsSyncIDField: TStringField;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    btnSaveSchedule: TBitBtn;
    q_Events: TUniQuery;
    q_EventsID: TIntegerField;
    q_EventsPARENTID: TIntegerField;
    q_EventsTYPE: TIntegerField;
    q_EventsSTART: TDateTimeField;
    q_EventsFINISH: TDateTimeField;
    q_EventsOPTIONS: TIntegerField;
    q_EventsCAPTION: TStringField;
    q_EventsRECURRENCEINDEX: TIntegerField;
    q_EventsRECURRENCEINFO: TBlobField;
    q_EventsRESOURCEID: TIntegerField;
    q_EventsLOCATION: TStringField;
    q_EventsMESSAGE: TStringField;
    q_EventsREMINDERDATE: TDateTimeField;
    q_EventsREMINDERMINUTES: TIntegerField;
    q_EventsSTATE: TIntegerField;
    q_EventsLABELCOLOR: TIntegerField;
    q_EventsACTUALSTART: TIntegerField;
    q_EventsACTUALFINISH: TIntegerField;
    q_EventsSYNCIDFIELD: TStringField;
    q_EventsCOMPANY_ID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure chDataModeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSaveScheduleClick(Sender: TObject);
    procedure mdEventsAfterPost(DataSet: TDataSet);
    procedure q_EventsBeforePost(DataSet: TDataSet);
  private
    FEventCount: Integer;
    FMaxID: Integer;
  public
    { Public declarations }
  end;

var
  DBDemoMainForm: TDBDemoMainForm;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TDBDemoMainForm.FormCreate(Sender: TObject);
var
  ADate: TDateTime;
  I: Integer;
begin
  inherited;
//  mdEvents.LoadFromBinaryFile(gsDefaultFolder + 'Events.dat');
//  mdEvents.Open;
  q_Events.ParamByName('company_id').AsString := LoginUserCompID;
  q_Events.Active := True;
  ADate := Date; // EncodeDate(2005, 9, 30);
  Scheduler.GotoDate(ADate);
  ADate := ADate + Scheduler.OptionsView.WorkStart;
  Scheduler.SelectTime(ADate, ADate, nil);
  FMaxID := 0;
  FEventCount := SchedulerDBStorage.EventCount;
  for I := 0 to FEventCount - 1 do
    FMaxID := Max(FMaxID, SchedulerDBStorage.Events[I].ID);
end;

procedure TDBDemoMainForm.mdEventsAfterPost(DataSet: TDataSet);
begin
  //mdEvents.SaveToBinaryFile(gsDefaultFolder + 'Events.dat');
end;

procedure TDBDemoMainForm.q_EventsBeforePost(DataSet: TDataSet);
begin
  inherited;
  q_EventsCOMPANY_ID.AsString := LoginUserCompID;
end;

procedure TDBDemoMainForm.BitBtn1Click(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    case ComboBox1.ItemIndex of
      0:
        cxExportSchedulerToExcel(SaveDialog.FileName, Scheduler);
      1:
        cxExportSchedulerToText(SaveDialog.FileName, Scheduler);
      2:
        cxExportSchedulerToHTML(SaveDialog.FileName, Scheduler);
      3:
        cxExportSchedulerToXML(SaveDialog.FileName, Scheduler);
    end;
  end;
end;

procedure TDBDemoMainForm.btnSaveScheduleClick(Sender: TObject);
begin
  //mdEvents.SaveToBinaryFile(gsDefaultFolder + 'Events.dat');
  q_Events.Post;
end;

procedure TDBDemoMainForm.chDataModeClick(Sender: TObject);
begin
  SchedulerDBStorage.SmartRefresh := (Sender as TcxCheckBox).Checked;
end;

procedure TDBDemoMainForm.ComboBox2Change(Sender: TObject);
begin
  if not Scheduler.ViewWeek.Active then
    AnchorDate := Scheduler.SelectedDays[0];
  Scheduler.SelectDays([AnchorDate], TMenuItem(Sender).Tag in [0, 1]);
  case ComboBox2.ItemIndex of
    0:
      Scheduler.ViewDay.Active := True;
    1:
      Scheduler.SelectWorkDays(Date);
    2:
      Scheduler.ViewWeek.Active := True;
    3:
      Scheduler.GoToDate(Scheduler.SelectedDays[0], vmMonth);
    4:
      Scheduler.ViewTimeGrid.Active := True;
    5:
      Scheduler.ViewYear.Active := True;
  end;
end;

procedure TDBDemoMainForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  if (FEventCount < SchedulerDBStorage.EventCount) and
//    (MessageDlg('Do you want to delete previously created events?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
//  begin
//    SchedulerDBStorage.BeginUpdate;
//    try
//      I := 0;
//      while I < SchedulerDBStorage.EventCount do
//      begin
//        if SchedulerDBStorage.Events[I].ID > FMaxID then
//          SchedulerDBStorage.Events[I].Delete
//        else
//          Inc(I);
//      end;
//    finally
//      SchedulerDBStorage.EndUpdate;
//    end;
//  end;
  Action := caFree;
end;
initialization RegisterClasses([TDBDemoMainForm]);

end.
