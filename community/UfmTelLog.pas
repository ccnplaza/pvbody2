unit UfmTelLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, DateUtils,
  dxSkinsDefaultPainters, dxSkinVS2010, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxTimeEdit, cxCalendar, Menus, cxButtons, MemDS, DBAccess, Uni,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxDBLookupComboBox, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, dxmdaset;

type
  TfmTelLog = class(TForm)
    pnl1: TPanel;
    lbl3: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    dtp_sdate: TDateTimePicker;
    dtp_edate: TDateTimePicker;
    icbBankList: TcxImageComboBox;
    icbAccount: TcxImageComboBox;
    gridTelLog: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridTelLogID: TcxGridDBColumn;
    gridTelLogIN_DATE: TcxGridDBColumn;
    gridTelLogIN_KIND: TcxGridDBColumn;
    gridTelLogRECEIVED: TcxGridDBColumn;
    gridTelLogDAMDANG: TcxGridDBColumn;
    gridTelLogCALLER: TcxGridDBColumn;
    gridTelLogIN_DESC: TcxGridDBColumn;
    gridTelLogIS_DONE: TcxGridDBColumn;
    gridTelLogRETURN_DESC: TcxGridDBColumn;
    gridTelLogIN_TIME: TcxGridDBColumn;
    btnView: TcxButton;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    cxButton4: TcxButton;
    btnChange: TcxButton;
    cxButton6: TcxButton;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    DAY_LOG_SEL_DATE: TUniStoredProc;
    DAY_LOG_DEL: TUniStoredProc;
    DAY_LOG_UPD_DONE: TUniStoredProc;
    d_TEL_LOG_SEL_DATE: TDataSource;
    gridTelLogCENTER_ID: TcxGridDBColumn;
    DAY_LOG_SEL_DATEID: TIntegerField;
    DAY_LOG_SEL_DATEIN_DATE: TDateField;
    DAY_LOG_SEL_DATEIN_TIME: TStringField;
    DAY_LOG_SEL_DATEIN_KIND: TIntegerField;
    DAY_LOG_SEL_DATERECEIVED: TStringField;
    DAY_LOG_SEL_DATEDAMDANG: TStringField;
    DAY_LOG_SEL_DATECALLER: TStringField;
    DAY_LOG_SEL_DATEIN_DESC: TStringField;
    DAY_LOG_SEL_DATEIS_DONE: TIntegerField;
    DAY_LOG_SEL_DATERETURN_DESC: TStringField;
    DAY_LOG_SEL_DATECENTER_ID: TIntegerField;
    icbCenter: TcxImageComboBox;
    Label1: TLabel;
    btnSMS: TcxButton;
    dxMemData1: TdxMemData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridTelLogCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridTelLogIS_DONECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnChangeClick(Sender: TObject);
    procedure dtp_sdateCloseUp(Sender: TObject);
    procedure dtp_edateCloseUp(Sender: TObject);
    procedure icbBankListPropertiesCloseUp(Sender: TObject);
    procedure icbAccountPropertiesCloseUp(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure icbCenterPropertiesCloseUp(Sender: TObject);
    procedure btnSMSClick(Sender: TObject);
  private
    procedure RunFilter;
    procedure AddSMS_List(var dxSMSData: TdxMemData);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTelLog: TfmTelLog;

implementation

uses GlobalVar, UfmTelLogEdit, UdmDBCommon, uSendingSMS;

{$R *.dfm}


procedure TfmTelLog.btnAddClick(Sender: TObject);
begin
  fmTelLogEdit := TfmTelLogEdit.Create(Self);
  try
    fmTelLogEdit.SAVE_MODE := 'INSERT';
    fmTelLogEdit.ShowModal;
    if fmTelLogEdit.ModalResult = mrOk then begin
      dmDBCommon.ds_DAY_LOG_SEL.DataSet.Refresh;
    end;
  finally
    fmTelLogEdit.Free;
  end;
end;

procedure TfmTelLog.btnChangeClick(Sender: TObject);
begin
  //SavePosition(gridTelLog);
  //DataModule1.TelLogChangeDone;
  //GotoPosition(gridTelLog);
end;

procedure TfmTelLog.btnEditClick(Sender: TObject);
begin
  fmTelLogEdit := TfmTelLogEdit.Create(Self);
  try
    fmTelLogEdit.SAVE_MODE := 'EDIT';
    fmTelLogEdit.ShowModal;
    if fmTelLogEdit.ModalResult = mrOk then begin
      //SavePosition(gridTelLog);
      dmDBCommon.ds_DAY_LOG_SEL.DataSet.Refresh;
      //GotoPosition(gridTelLog);
    end;
  finally
    fmTelLogEdit.Free;
  end;
end;

procedure TfmTelLog.btnSMSClick(Sender: TObject);
begin
  fmSendingSMS := TfmSendingSMS.Create(Self);
  try
    AddSMS_List(fmSendingSMS.mdSMS);
    fmSendingSMS.ShowModal;
  finally
    fmSendingSMS.Free;
  end;
end;

procedure TfmTelLog.AddSMS_List(var dxSMSData : TdxMemData);
var
  c_name, c_tel : string;
  i, cnt : Integer;
begin
  dxSMSData.Close;
  dxSMSData.Open;
  with gridTelLog do begin
    cnt := Controller.SelectedRecordCount;
    for i := 0 to cnt - 1 do begin
      c_name := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('CALLER').Index);
      c_tel := DataController.GetValue(Controller.SelectedRecords[i].RecordIndex, GetColumnByFieldName('DAMDANG').Index);
      if c_tel <> '' then begin
        dxSMSData.Append;
        dxSMSData.FieldByName('cname').Value := c_name;
        dxSMSData.FieldByName('ctel').Value := c_tel;
        dxSMSData.FieldByName('check_send').Value := 1;
        dxSMSData.Post;
      end;
    end;
    dxSMSData.First;
  end;
end;

procedure TfmTelLog.btnViewClick(Sender: TObject);
begin
  dmDBCommon.DAY_LOG_SEL.ParamByName('S_DATE').Value := dtp_sdate.Date;
  dmDBCommon.DAY_LOG_SEL.ParamByName('E_DATE').value := dtp_edate.Date;
  if icbCenter.EditValue > 0 then begin
    dmDBCommon.DAY_LOG_SEL.Filter := 'CENTER_ID = ' + VarToStr(icbCenter.EditValue);
    dmDBCommon.DAY_LOG_SEL.Filtered := True;
  end else begin
    dmDBCommon.DAY_LOG_SEL.Filter := '';
    dmDBCommon.DAY_LOG_SEL.Filtered := True;
  end;
  dmDBCommon.DAY_LOG_SEL.Active := True;
  dmDBCommon.ds_DAY_LOG_SEL.DataSet.Refresh;
end;

procedure TfmTelLog.cxButton4Click(Sender: TObject);
var
  rowidx : Integer;
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    rowidx := gridTelLog.Controller.FocusedRowIndex;
    DAY_LOG_DEL.ParamByName('ID').Value := gridTelLogID.EditValue;
    DAY_LOG_DEL.ExecProc;
    gridTelLog.DataController.SaveBookmark;
    dmDBCommon.ds_DAY_LOG_SEL.DataSet.Refresh;
    gridTelLog.DataController.GotoBookmark;
    gridTelLog.DataController.FocusedRowIndex := rowidx;
    cxGrid1.SetFocus;
  end;
end;

procedure TfmTelLog.dtp_edateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmTelLog.dtp_sdateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmTelLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmTelLog.FormShow(Sender: TObject);
begin
  dmDBCommon.SetCenter(icbCenter);
  dtp_sdate.Date := StartOfTheMonth(Date);
  dtp_edate.Date := Date;
  btnView.Click;
end;

procedure TfmTelLog.gridTelLogCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmTelLog.gridTelLogIS_DONECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  cellVal : Integer;
begin
  cellVal := AViewInfo.GridRecord.Values[gridTelLog.GetColumnByFieldName('IS_DONE').Index];
  case cellVal of
    2: begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clWhite;
    end;
    3: begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color := clWhite;
    end;
    4: begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
    end;
  end;
end;

procedure TfmTelLog.icbAccountPropertiesCloseUp(Sender: TObject);
begin
  RunFilter;
end;

procedure TfmTelLog.icbBankListPropertiesCloseUp(Sender: TObject);
begin
  RunFilter;
end;

procedure TfmTelLog.icbCenterPropertiesCloseUp(Sender: TObject);
begin
  RunFilter;
end;

procedure TfmTelLog.RunFilter;
begin
  if icbCenter.EditValue > 0 then begin
    if icbBankList.EditValue > 0 then begin
      if icbAccount.EditValue > 0 then begin
        dmDBCommon.DAY_LOG_SEL.Filter := 'CENTER_ID = ' + VarToStr(icbCenter.EditValue) +
                                         ' and IN_KIND = ' + VarToStr(icbBankList.EditValue) +
                                         ' and IS_DONE = ' + VarToStr(icbAccount.EditValue);
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end else begin
        dmDBCommon.DAY_LOG_SEL.Filter := 'CENTER_ID = ' + VarToStr(icbCenter.EditValue) +
                                         ' and IN_KIND = ' + VarToStr(icbBankList.EditValue);
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end;
    end else begin
      if icbAccount.EditValue > 0 then begin
        dmDBCommon.DAY_LOG_SEL.Filter := 'CENTER_ID = ' + VarToStr(icbCenter.EditValue) +
                                         ' and IS_DONE = ' + VarToStr(icbAccount.EditValue);
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end else begin
        dmDBCommon.DAY_LOG_SEL.Filter := 'CENTER_ID = ' + VarToStr(icbCenter.EditValue);
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end;
    end;
  end else begin
    if icbBankList.EditValue > 0 then begin
      if icbAccount.EditValue > 0 then begin
        dmDBCommon.DAY_LOG_SEL.Filter := 'IN_KIND = ' + VarToStr(icbBankList.EditValue) +
                                         ' and IS_DONE = ' + VarToStr(icbAccount.EditValue);
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end else begin
        dmDBCommon.DAY_LOG_SEL.Filter := 'IN_KIND = ' + VarToStr(icbBankList.EditValue);
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end;
    end else begin
      if icbAccount.EditValue > 0 then begin
        dmDBCommon.DAY_LOG_SEL.Filter := 'IS_DONE = ' + VarToStr(icbAccount.EditValue);
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end else begin
        dmDBCommon.DAY_LOG_SEL.Filter := '';
        dmDBCommon.DAY_LOG_SEL.Filtered := True;
      end;
    end;
  end;
end;

initialization RegisterClasses([TfmTelLog]);
end.
