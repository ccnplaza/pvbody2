unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxTabbedMDI, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, ImgList, ComCtrls,
  ToolWin, ExtCtrls, Buttons, ActnList, StdCtrls, UniProvider, TLHelp32,
  InterBaseUniProvider, DB, DBAccess, Uni, cxLocalization, ShellAPI,
  AppEvnts, dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxBarBuiltInMenu,
  cxClasses, cxLookAndFeels, ievect;

type
  TfmMain = class(TForm)
    ImageList1: TImageList;
    ImageList2: TImageList;
    MainMenu1: TMainMenu;
    mnuCustomerManager: TMenuItem;
    mnuSMS: TMenuItem;
    dxTabbedMDIManager1: TdxTabbedMDIManager;
    ActionList1: TActionList;
    actAnalyse: TAction;
    ImageAction: TImageList;
    mnuWindow: TMenuItem;
    actTileCascade: TAction;
    actTileHorizontal: TAction;
    ImageList3: TImageList;
    actTileVertical: TAction;
    N1: TMenuItem;
    actTabMode: TAction;
    actCloseAll: TAction;
    actCloseAll1: TMenuItem;
    actMovementCheck: TAction;
    actCompareLayer: TAction;
    actCompareWindow: TAction;
    actStaticCheck: TAction;
    actCustQuestion: TAction;
    actCapture: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    N_lecture: TMenuItem;
    N12: TMenuItem;
    actScheduleManager: TAction;
    actLectureManager: TAction;
    actMemberManager: TAction;
    N13: TMenuItem;
    actAttendanceManager: TAction;
    actAttendanceMonthly: TAction;
    actAttendanceMonthly1: TMenuItem;
    actPaymentManager: TAction;
    N_cash: TMenuItem;
    actUserManager: TAction;
    actCompUserRequest: TAction;
    actUserInformation: TAction;
    N17: TMenuItem;
    cxLocalizer1: TcxLocalizer;
    actAnalyzerManager: TAction;
    actAnalyseRequestManager: TAction;
    actCommunity: TAction;
    N23: TMenuItem;
    actSetupConfig: TAction;
    actCheckUpdate: TAction;
    mnuCheckUpdate: TMenuItem;
    actStaticCheckItems: TAction;
    actPracticeItems: TAction;
    actMemberDetail: TAction;
    actStaticCheckCompare: TAction;
    actMovementCheckCompare: TAction;
    actPractice: TAction;
    actMovementCheckItems: TAction;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    UniSQL: TUniSQL;
    actCurrentLoginUser: TAction;
    actUserMessage: TAction;
    actCompareWindow2: TAction;
    actCompanyPayment: TAction;
    cxLookAndFeelController1: TcxLookAndFeelController;
    lblTimer: TLabel;
    N16: TMenuItem;
    actCashInOut: TAction;
    N22: TMenuItem;
    ActionProductSale: TAction;
    N_sale: TMenuItem;
    StatusBar1: TStatusBar;
    N15: TMenuItem;
    ActToday: TAction;
    N_today: TMenuItem;
    ActTelLog: TAction;
    N18: TMenuItem;
    N_user_assign: TMenuItem;
    actCompareList: TAction;
    N6: TMenuItem;
    N11: TMenuItem;
    ActCompareSimulate: TAction;
    ActMemberAttend: TAction;
    N14: TMenuItem;
    ActStaticCheckItemSet: TAction;
    NStaticCheckItemSet: TMenuItem;
    ActCustomerImageList: TAction;
    N19: TMenuItem;
    SMS1: TMenuItem;
    ActTelDictionary: TAction;
    N20: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actAnalyseExecute(Sender: TObject);
    procedure actSMSManagerExecute(Sender: TObject);
    procedure actTileCascadeExecute(Sender: TObject);
    procedure actTileHorizontalExecute(Sender: TObject);
    procedure actTileVerticalExecute(Sender: TObject);
    procedure actCloseAllExecute(Sender: TObject);
    procedure actCompareLayerExecute(Sender: TObject);
    procedure actScheduleManagerExecute(Sender: TObject);
    procedure actLectureManagerExecute(Sender: TObject);
    procedure actMemberManagerExecute(Sender: TObject);
    procedure actAttendanceManagerExecute(Sender: TObject);
    procedure actAttendanceMonthlyExecute(Sender: TObject);
    procedure actPaymentManagerExecute(Sender: TObject);
    procedure actUserManagerExecute(Sender: TObject);
    procedure actCompUserRequestExecute(Sender: TObject);
    procedure actUserInformationExecute(Sender: TObject);
    procedure actAnalyzerManagerExecute(Sender: TObject);
    procedure actAnalyseRequestManagerExecute(Sender: TObject);
    procedure actCommunityExecute(Sender: TObject);
    procedure actStaticCheckItemsExecute(Sender: TObject);
    procedure actPracticeItemsExecute(Sender: TObject);
    procedure actStaticCheckCompareExecute(Sender: TObject);
    procedure actPracticeExecute(Sender: TObject);
    procedure actMovementCheckItemsExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure actCurrentLoginUserExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actUserMessageExecute(Sender: TObject);
    procedure actCompanyPaymentExecute(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure actCashInOutExecute(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure ActionProductSaleExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure ActTodayExecute(Sender: TObject);
    procedure ActTelLogExecute(Sender: TObject);
    procedure actCompareListExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure ActCompareSimulateExecute(Sender: TObject);
    procedure ActMemberAttendExecute(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ActStaticCheckItemSetExecute(Sender: TObject);
    procedure ActCustomerImageListExecute(Sender: TObject);
    procedure SMS1Click(Sender: TObject);
    procedure ActTelDictionaryExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    appmgr : IInterface;
    SMS_LIST : TStringList;
    gsDefaultFolder : string;
    downfilename : string;
    FStartIdle: Cardinal;
  end;

var
  fmMain: TfmMain;

implementation


uses jjsApp, GlobalVar, UdmDBCommon, uMember, ufmAttendMain,
  UfmAttendCalendar, UfmLockerManager, UfmUserInfo, UfmSettings, UfmSMSSetting, UfmTextObjectManager;

  {$R *.dfm}

function CreateChild(sClass : string):Boolean;
var
  MyFormClass : TFormClass;
  WorkForm : TForm;
  H : THandle;
  I : Integer;
begin
  Result := True; H := 0;
  for I := 0 to Screen.CustomFormCount - 1 do begin
    if UpperCase('T' + Screen.CustomForms[I].Name) = UpperCase(sClass) then begin
      H := Screen.CustomForms[I].Handle;
      Break;
    end;
  end;
  if H = 0 then begin
    MyFormClass := TFormClass(GetClass(sClass));
    if MyFormClass <> nil then begin
      WorkForm := MyFormClass.Create(Application.MainForm);
    end else Result := False;
  end else begin
    if IsIconic(H) then ShowWindow(H, SW_SHOWNORMAL)
    else BringWindowToTop(H);
  end;
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  fQuery : TUniQuery;
begin
  fQuery := TUniQuery.Create(nil);
  with fQuery do begin
    Connection := dmDBCommon.UniDBConnection;
    SQL.Clear;
    SQL.Text := 'delete from LOGIN_USERS where USER_ID = ' + LoginUserNo;
    Execute;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  appmgr := TAppManager.Create;
  gsDefaultFolder := ExtractFilePath(Application.ExeName);
  gsServerImageFolder := 'http://bodycheck.co.kr/images/'+LoginUserCompID + '/';
  gsLocalImageFolder := gsDefaultFolder + 'images\';
  cxLocalizer1.FileName := gsDefaultFolder + 'ccnkorean.ini';
  cxLocalizer1.StorageType := lstIni;
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := $0412;
end;

procedure TfmMain.FormShow(Sender: TObject);
var
  ukind : string;
begin
  NStaticCheckItemSet.Visible := LoginUserKIND = 2;
  if LoginUserKIND = 0 then begin
    ukind := '사용자';
    N_lecture.Enabled := False;
    N_cash.Enabled := False;
    N_sale.Enabled := False;
    N_today.Enabled := False;
    N_user_assign.Enabled := False;
  end else begin
    ukind := '관리자';
    N_lecture.Enabled := True;
    N_cash.Enabled := True;
    N_sale.Enabled := True;
    N_today.Enabled := True;
    N_user_assign.Enabled := True;
  end;
  StatusBar1.Panels[1].Text := '버전: ' + AppVersion;
  StatusBar1.Panels[2].Text := '사용자명: ' + LoginUserName + '(' + ukind + ')';
  StatusBar1.Panels[3].Text := '로그인ID: ' + LoginUserID;
//  dmDBCommon.IMAGE_DESCRIPT_LIST.Active := True;
//  //dsIMAGE_DESCRIPT_LIST.DataSet.Refresh;
//  dmDBCommon.t_center.Active := True;
//  //d_center.DataSet.Refresh;
//  dmDBCommon.vtCustomerImage.Open;
//  dmDBCommon.vtCustomerImage.Active := True;
//  dmDBCommon.t_NPRACTICE_look.Active := True;
//  //d_NPRACTICE_look.DataSet.Refresh;
//  dmDBCommon.t_ITEM_SUB.Active := True;
//  //d_ITEM_SUB.DataSet.Refresh;
//  dmDBCommon.t_ITEM_SUB_look.Active := True;
//  //d_ITEM_SUB_look.DataSet.Refresh;
//  dmDBCommon.t_ITEM_RESULT_look.Active := True;
//  //d_ITEM_RESULT_look.DataSet.Refresh;
//  dmDBCommon.t_CHECK_ITEM.Active := True;
//  //d_CHECK_ITEM.DataSet.Refresh;
//  dmDBCommon.t_ITEM_BODY.Active := True;
//  //d_ITEM_BODY.DataSet.Refresh;

end;

procedure TfmMain.N11Click(Sender: TObject);
begin
  fmSettings := TfmSettings.Create(Self);
  try
    fmSettings.ShowModal;
  finally
    fmSettings.Free;
  end;
end;

procedure TfmMain.N15Click(Sender: TObject);
begin
  CreateChild('TfmExtractMemberPicture');
end;

procedure TfmMain.N16Click(Sender: TObject);
begin
  fmAttendMain := TfmAttendMain.Create(Self);
  fmAttendMain.Show;
end;

procedure TfmMain.N22Click(Sender: TObject);
begin
  fmLockerManager := TfmLockerManager.Create(Self);
  try
    fmLockerManager.ShowModal;
  finally
    fmLockerManager.Free;
  end;
end;

procedure TfmMain.N2Click(Sender: TObject);
begin
  //CreateChild('TfmCompareLayer');
end;

procedure TfmMain.N3Click(Sender: TObject);
begin
  //CreateChild('TfmCompareList1');
end;

procedure TfmMain.N5Click(Sender: TObject);
begin
  CreateChild('TfmMuscleEditor');
end;

procedure TfmMain.N7Click(Sender: TObject);
begin
  fmTextObjectManager := TfmTextObjectManager.Create(Self);
  try
    fmTextObjectManager.ShowModal;
  finally
    fmTextObjectManager.Free;
  end;
end;

procedure TfmMain.SMS1Click(Sender: TObject);
begin
  fmSMSSetting := TfmSMSSetting.Create(Self);
  try
    fmSMSSetting.ShowModal;
  finally
    fmSMSSetting.Free;
  end;
end;

procedure TfmMain.Timer1Timer(Sender: TObject);
var
  vIdleTime : Cardinal;
  vSeconds  : Cardinal;
begin
  if ExecuteMode = 1 then begin
    vIdleTime := GetTickCount - FStartIdle;
    vSeconds := vIdleTime div 1000;
    lblTimer.Caption := Format('%.d', [vSeconds]);
    if vSeconds > 120 then begin
      UniSQL.Execute;
      FStartIdle := GetTickCount;
    end;
  end;
end;

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

procedure TfmMain.actAnalyseRequestManagerExecute(Sender: TObject);
begin
  CreateChild('TfmAnalyseRequest');
end;

procedure TfmMain.actAnalyzerManagerExecute(Sender: TObject);
begin
  CreateChild('TfmAnalyzermanager');
end;

procedure TfmMain.actAttendanceManagerExecute(Sender: TObject);
begin
  CreateChild('TfmAttendance');
end;

procedure TfmMain.actAttendanceMonthlyExecute(Sender: TObject);
begin
  CreateChild('TfmAttendanceMonthly');
end;

procedure TfmMain.actCashInOutExecute(Sender: TObject);
begin
  CreateChild('TfmCashInOut');
end;

procedure TfmMain.actCloseAllExecute(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to MDIChildCount-1 do
    MDIChildren[i].Close;
end;

procedure TfmMain.actCommunityExecute(Sender: TObject);
begin
  CreateChild('TfmCommunity');
end;

procedure TfmMain.actCompanyPaymentExecute(Sender: TObject);
begin
  CreateChild('TfmCompanyPayment');
end;

procedure TfmMain.actCompareLayerExecute(Sender: TObject);
begin
  CreateChild('TfmCompareLayer');
end;

procedure TfmMain.actCompareListExecute(Sender: TObject);
begin
  CreateChild('TfmCompareList2');
end;

procedure TfmMain.ActCompareSimulateExecute(Sender: TObject);
begin
  CreateChild('TfmCompareSimulate');
end;

procedure TfmMain.actCompUserRequestExecute(Sender: TObject);
begin
  CreateChild('TfmCompUserRequested');
end;

procedure TfmMain.actCurrentLoginUserExecute(Sender: TObject);
begin
  CreateChild('TfmLoginUsers');
end;

procedure TfmMain.ActCustomerImageListExecute(Sender: TObject);
begin
  CreateChild('TfmCompareList3');
end;

procedure TfmMain.ActionProductSaleExecute(Sender: TObject);
begin
  CreateChild('TfmProductSale');
end;

procedure TfmMain.actLectureManagerExecute(Sender: TObject);
begin
  CreateChild('TfmLecture');
end;

procedure TfmMain.ActMemberAttendExecute(Sender: TObject);
begin
  CreateChild('TfmMemberAttend');
end;

procedure TfmMain.actAnalyseExecute(Sender: TObject);
begin
  CreateChild('TfmAnalyse');
end;

procedure TfmMain.actMemberManagerExecute(Sender: TObject);
begin
  CreateChild('TfmMember');
end;

procedure TfmMain.actMovementCheckItemsExecute(Sender: TObject);
begin
  CreateChild('TfmMovementCheckItems');
end;

procedure TfmMain.actPaymentManagerExecute(Sender: TObject);
begin
  CreateChild('TfmPaymentManager');
end;

procedure TfmMain.actPracticeExecute(Sender: TObject);
begin
  CreateChild('TfmPractice');
end;

procedure TfmMain.actPracticeItemsExecute(Sender: TObject);
begin
  CreateChild('TfmPracticeList');
end;

procedure TfmMain.actScheduleManagerExecute(Sender: TObject);
begin
  CreateChild('TDBDemoMainForm');
end;

procedure TfmMain.actSMSManagerExecute(Sender: TObject);
begin
//  CreateChild('TfmSMSManager');
end;

procedure TfmMain.actStaticCheckCompareExecute(Sender: TObject);
begin
  CreateChild('TfmStaticCheckCompare');
end;

procedure TfmMain.ActStaticCheckItemSetExecute(Sender: TObject);
begin
  CreateChild('TfmStaticCheckItemSet');
end;

procedure TfmMain.actStaticCheckItemsExecute(Sender: TObject);
begin
  CreateChild('TfmStaticCheckItems');
end;

procedure TfmMain.ActTelDictionaryExecute(Sender: TObject);
begin
  CreateChild('TfmContacts');
end;

procedure TfmMain.ActTelLogExecute(Sender: TObject);
begin
  CreateChild('TfmTelLog');
end;

procedure TfmMain.actTileCascadeExecute(Sender: TObject);
begin
  Cascade;
end;

procedure TfmMain.actTileHorizontalExecute(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure TfmMain.actTileVerticalExecute(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

procedure TfmMain.ActTodayExecute(Sender: TObject);
begin
  CreateChild('TfmToday');
end;

procedure TfmMain.actUserInformationExecute(Sender: TObject);
begin
  fmUserInfo := TfmUserInfo.Create(Self);
  try
    fmUserInfo.ShowModal;
  finally
    fmUserInfo.Free;
  end;
end;

procedure TfmMain.actUserManagerExecute(Sender: TObject);
begin
  CreateChild('TfmUserAssign');
end;

procedure TfmMain.actUserMessageExecute(Sender: TObject);
begin
  CreateChild('TfmUserMessage');
end;

procedure TfmMain.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  ShowMessage(E.Message);
end;

procedure TfmMain.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  if Timer1.Enabled then Exit;
  FStartIdle := GetTickCount;
  Timer1.Enabled := True;
end;

procedure TfmMain.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
  Handled := False;
  case Msg.message of
    WM_KEYDOWN
    , WM_MOUSEMOVE
    , WM_MOUSEWHEEL
    , WM_LBUTTONDOWN
    , WM_RBUTTONDOWN
    , WM_MBUTTONDOWN : Timer1.Enabled := False;
  end;
end;

end.
