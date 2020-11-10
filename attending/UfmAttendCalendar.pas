unit UfmAttendCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
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
  dxSkinXmas2008Blue, ImgList, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  DateUtils, DB, DBAccess, Uni, MemDS, dxmdaset, DAAlerter, UniAlerter,
  dxGDIPlusClasses;

type
  TfmAttendCalendar = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    FlowPanel1: TFlowPanel;
    PanelMonth: TPanel;
    ImageList2: TImageList;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    edtYear: TcxSpinEdit;
    edtMonth: TcxSpinEdit;
    btnRetrieve: TcxButton;
    Label1: TLabel;
    LESSON_ATTENDANCE_SEL_MONTHLY: TUniStoredProc;
    d_LESSON_ATTENDANCE_SEL_MONTHLY: TUniDataSource;
    dxMemData1: TdxMemData;
    dxMemData1day_1: TSmallintField;
    dxMemData1day_2: TSmallintField;
    dxMemData1day_3: TSmallintField;
    dxMemData1day_4: TSmallintField;
    dxMemData1day_5: TSmallintField;
    dxMemData1day_6: TSmallintField;
    dxMemData1day_7: TSmallintField;
    dxMemData1day_8: TSmallintField;
    dxMemData1day_9: TSmallintField;
    dxMemData1day_10: TSmallintField;
    dxMemData1day_11: TSmallintField;
    dxMemData1day_12: TSmallintField;
    dxMemData1day_13: TSmallintField;
    dxMemData1day_14: TSmallintField;
    dxMemData1day_15: TSmallintField;
    dxMemData1day_16: TSmallintField;
    dxMemData1day_17: TSmallintField;
    dxMemData1day_18: TSmallintField;
    dxMemData1day_19: TSmallintField;
    dxMemData1day_20: TSmallintField;
    dxMemData1day_21: TSmallintField;
    dxMemData1day_22: TSmallintField;
    dxMemData1day_23: TSmallintField;
    dxMemData1day_24: TSmallintField;
    dxMemData1day_25: TSmallintField;
    dxMemData1day_26: TSmallintField;
    dxMemData1day_27: TSmallintField;
    dxMemData1day_28: TSmallintField;
    dxMemData1day_29: TSmallintField;
    dxMemData1day_30: TSmallintField;
    dxMemData1day_31: TSmallintField;
    DataSource1: TDataSource;
    UniAlerter1: TUniAlerter;
    Label2: TLabel;
    Image1: TImage;
    DPanel1: TPanel;
    DImage1: TImage;
    DPanel2: TPanel;
    DImage2: TImage;
    DPanel3: TPanel;
    DImage3: TImage;
    DPanel4: TPanel;
    DImage4: TImage;
    DPanel5: TPanel;
    DImage5: TImage;
    DPanel6: TPanel;
    DImage6: TImage;
    DPanel7: TPanel;
    DImage7: TImage;
    DPanel8: TPanel;
    DImage8: TImage;
    DPanel9: TPanel;
    DImage9: TImage;
    DPanel10: TPanel;
    DImage10: TImage;
    DPanel11: TPanel;
    DImage11: TImage;
    DPanel12: TPanel;
    DImage12: TImage;
    DPanel13: TPanel;
    DImage13: TImage;
    DPanel14: TPanel;
    DImage14: TImage;
    DPanel15: TPanel;
    DImage15: TImage;
    DPanel16: TPanel;
    DImage16: TImage;
    DPanel17: TPanel;
    DImage17: TImage;
    DPanel18: TPanel;
    DImage18: TImage;
    DPanel19: TPanel;
    DImage19: TImage;
    DPanel20: TPanel;
    DImage20: TImage;
    DPanel21: TPanel;
    DImage21: TImage;
    DPanel22: TPanel;
    DImage22: TImage;
    DPanel23: TPanel;
    DImage23: TImage;
    DPanel24: TPanel;
    DImage24: TImage;
    DPanel25: TPanel;
    DImage25: TImage;
    DPanel26: TPanel;
    DImage26: TImage;
    DPanel27: TPanel;
    DImage27: TImage;
    DPanel28: TPanel;
    DImage28: TImage;
    DPanel29: TPanel;
    DImage29: TImage;
    DPanel30: TPanel;
    DImage30: TImage;
    DPanel31: TPanel;
    DImage31: TImage;
    DPanel32: TPanel;
    DImage32: TImage;
    DPanel33: TPanel;
    DImage33: TImage;
    DPanel34: TPanel;
    DImage34: TImage;
    DPanel35: TPanel;
    DImage35: TImage;
    DPanel36: TPanel;
    DImage36: TImage;
    DPanel37: TPanel;
    DImage37: TImage;
    DPanel38: TPanel;
    DImage38: TImage;
    DPanel39: TPanel;
    DImage39: TImage;
    DPanel40: TPanel;
    DImage40: TImage;
    DPanel41: TPanel;
    DImage41: TImage;
    DPanel42: TPanel;
    DImage42: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnRetrieveClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
  private
    { Private declarations }
  public
    { Public declarations }
    DayPanel : array[0..41] of TPanel;
    DImage : array[0..41] of TImage;
    MemberUID : string;
  end;

var
  fmAttendCalendar: TfmAttendCalendar;

implementation

uses UdmDBCommon, GlobalVar;

{$R *.dfm}

procedure TfmAttendCalendar.btnRetrieveClick(Sender: TObject);
var
  i, cnt, sday, DaysCnt1, DaysCnt2, yyyy, mm : Integer;
  FirstDayWeek, StartGap : Integer;
  FirstDate, AttendDate : TDateTime;
  FieldName : string;
begin
  yyyy := edtYear.Value;
  mm := edtMonth.Value;
  FirstDate := StrToDate(Format('%.4d-%.2d-01', [yyyy, mm]));
  FirstDayWeek := DayOfWeek(FirstDate);
  DaysCnt1 := DayOf(IncDay(FirstDate, -1));
  DaysCnt2 := DaysInAMonth(edtYear.Value, edtMonth.Value);

  for i := 0 to 41 do begin
    DayPanel[i].Caption := '';
    DImage[i].Picture := nil;
//    DayPanel[i].Appearance.Color := clWhite;
  end;

  LESSON_ATTENDANCE_SEL_MONTHLY.ParamByName('M_ID').Value := MemberUID;
  LESSON_ATTENDANCE_SEL_MONTHLY.ParamByName('A_YEAR').Value := yyyy;
  LESSON_ATTENDANCE_SEL_MONTHLY.ParamByName('A_MONTH').Value := mm;
  LESSON_ATTENDANCE_SEL_MONTHLY.Active := True;
  d_LESSON_ATTENDANCE_SEL_MONTHLY.DataSet.Refresh;
  cnt := d_LESSON_ATTENDANCE_SEL_MONTHLY.DataSet.RecordCount;

  dxMemData1.Close;
  dxMemData1.Open;
  d_LESSON_ATTENDANCE_SEL_MONTHLY.DataSet.First;
  for i := 0 to cnt - 1 do begin
    AttendDate := d_LESSON_ATTENDANCE_SEL_MONTHLY.DataSet.FieldByName('att_date').AsDateTime;
    FieldName := 'day_' + IntToStr(DayOf(AttendDate));
    DataSource1.DataSet.Edit;
    DataSource1.DataSet.FieldByName(FieldName).AsInteger := 1;
    DataSource1.DataSet.Post;
    d_LESSON_ATTENDANCE_SEL_MONTHLY.DataSet.Next;
  end;

  sday := 0;
  for i := FirstDayWeek - 1 to DaysCnt2 + FirstDayWeek - 2 do begin
    DayPanel[i].Caption := IntToStr(sday + 1);
    FieldName := 'day_' + IntToStr(sday + 1);
    if DataSource1.DataSet.FieldByName(FieldName).AsInteger = 1 then begin
      DImage[i].Picture.Assign(Image1.Picture); // LoadFromFile('yes.png');
//    end else begin
//      admTile[i].Picture.LoadFromFile('no.png');
    end;
//    if DayOf(Date) = (sday + 1) then
//      admTile[i].Appearance.Color := clGreen;
    Inc(sday);
  end;

end;

procedure TfmAttendCalendar.FormShow(Sender: TObject);
var
  i, sday, DaysCnt1, DaysCnt2 : Integer;
  FirstDayWeek, StartGap : Integer;
  FirstDate : TDateTime;
begin
  DayPanel[0] := DPanel1;
  DayPanel[1] := DPanel2;
  DayPanel[2] := DPanel3;
  DayPanel[3] := DPanel4;
  DayPanel[4] := DPanel5;
  DayPanel[5] := DPanel6;
  DayPanel[6] := DPanel7;
  DayPanel[7] := DPanel8;
  DayPanel[8] := DPanel9;
  DayPanel[9] := DPanel10;
  DayPanel[10] := DPanel11;
  DayPanel[11] := DPanel12;
  DayPanel[12] := DPanel13;
  DayPanel[13] := DPanel14;
  DayPanel[14] := DPanel15;
  DayPanel[15] := DPanel16;
  DayPanel[16] := DPanel17;
  DayPanel[17] := DPanel18;
  DayPanel[18] := DPanel19;
  DayPanel[19] := DPanel20;
  DayPanel[20] := DPanel21;
  DayPanel[21] := DPanel22;
  DayPanel[22] := DPanel23;
  DayPanel[23] := DPanel24;
  DayPanel[24] := DPanel25;
  DayPanel[25] := DPanel26;
  DayPanel[26] := DPanel27;
  DayPanel[27] := DPanel28;
  DayPanel[28] := DPanel29;
  DayPanel[29] := DPanel30;

  DayPanel[30] := DPanel31;
  DayPanel[31] := DPanel32;
  DayPanel[32] := DPanel33;
  DayPanel[33] := DPanel34;
  DayPanel[34] := DPanel35;
  DayPanel[35] := DPanel36;
  DayPanel[36] := DPanel37;
  DayPanel[37] := DPanel38;
  DayPanel[38] := DPanel39;
  DayPanel[39] := DPanel40;

  DayPanel[40] := DPanel41;
  DayPanel[41] := DPanel42;

  DImage[0] := DImage1;
  DImage[1] := DImage2;
  DImage[2] := DImage3;
  DImage[3] := DImage4;
  DImage[4] := DImage5;
  DImage[5] := DImage6;
  DImage[6] := DImage7;
  DImage[7] := DImage8;
  DImage[8] := DImage9;
  DImage[9] := DImage10;
  DImage[10] := DImage11;
  DImage[11] := DImage12;
  DImage[12] := DImage13;
  DImage[13] := DImage14;
  DImage[14] := DImage15;
  DImage[15] := DImage16;
  DImage[16] := DImage17;
  DImage[17] := DImage18;
  DImage[18] := DImage19;
  DImage[19] := DImage20;
  DImage[20] := DImage21;
  DImage[21] := DImage22;
  DImage[22] := DImage23;
  DImage[23] := DImage24;
  DImage[24] := DImage25;
  DImage[25] := DImage26;
  DImage[26] := DImage27;
  DImage[27] := DImage28;
  DImage[28] := DImage29;
  DImage[29] := DImage30;

  DImage[30] := DImage31;
  DImage[31] := DImage32;
  DImage[32] := DImage33;
  DImage[33] := DImage34;
  DImage[34] := DImage35;
  DImage[35] := DImage36;
  DImage[36] := DImage37;
  DImage[37] := DImage38;
  DImage[38] := DImage39;
  DImage[39] := DImage40;

  DImage[40] := DImage41;
  DImage[41] := DImage42;
  //
  edtYear.Value := YearOf(Date);
  edtMonth.Value := MonthOf(Date);

  btnRetrieve.Click;
end;

procedure TfmAttendCalendar.UniAlerter1Event(Sender: TDAAlerter;
  const EventName, Message: string);
begin
  btnRetrieve.Click;
end;

end.
