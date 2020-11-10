unit UfmDailyActivity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  Menus, StdCtrls, cxButtons, cxDBLookupComboBox;

type
  TfmDailyActivity = class(TForm)
    Panel1: TPanel;
    gridActivity: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridActivityID: TcxGridDBColumn;
    gridActivityACTION_KIND: TcxGridDBColumn;
    gridActivityFROM_NAME: TcxGridDBColumn;
    gridActivityRESULT_STATUS: TcxGridDBColumn;
    gridActivityACTION_NAME: TcxGridDBColumn;
    gridActivityFROM_SUBJECT: TcxGridDBColumn;
    btnEdit: TcxButton;
    btnAdd: TcxButton;
    btnDel: TcxButton;
    gridActivityTO_NAME: TcxGridDBColumn;
    gridActivityUSER_ID: TcxGridDBColumn;
    gridActivityUNIQ_ID: TcxGridDBColumn;
    gridActivityW_DATE: TcxGridDBColumn;
    gridActivityW_TIME: TcxGridDBColumn;
    gridActivityRESPONSE: TcxGridDBColumn;
    gridActivityD_DATE: TcxGridDBColumn;
    gridActivityD_TIME: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridActivityCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure gridActivityRESULT_STATUSCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure gridActivityACTION_KINDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    procedure RetrieveData;
    { Private declarations }
  public
    { Public declarations }
    ACTION_DATE : TDateTime;
    S_USER, E_USER, S_ACTION, E_ACTION, S_RESULT, E_RESULT : Integer;
    HAS_MODIFIED : Boolean;
  end;

var
  fmDailyActivity: TfmDailyActivity;

implementation
uses
  UDataModule, UfmDiaryEdit, UfmDiaryIns;

{$R *.dfm}

procedure TfmDailyActivity.btnEditClick(Sender: TObject);
var
  toprow : Integer;
  WORK_UNIQ_ID : Int64;
begin
  fmDiaryEdit := TfmDiaryEdit.Create(Self);
  try
    fmDiaryEdit.edtWDate.EditValue       := gridActivityW_DATE.EditValue;
    fmDiaryEdit.edtTime.Text             := gridActivityW_TIME.EditValue;
    fmDiaryEdit.cbActionKind.EditValue   := gridActivityACTION_KIND.EditValue;
    fmDiaryEdit.edtFromName.Text         := gridActivityFROM_NAME.EditValue;
    fmDiaryEdit.edtSubject.Text          := gridActivityFROM_SUBJECT.EditValue;
    fmDiaryEdit.edtToName.Text           := gridActivityTO_NAME.EditValue;
    fmDiaryEdit.edtResponse.Text         := gridActivityRESPONSE.EditValue;
    fmDiaryEdit.cbResult.EditValue       := gridActivityRESULT_STATUS.EditValue;
    fmDiaryEdit.icbUser.EditValue        := gridActivityUSER_ID.EditValue;
    fmDiaryEdit.edtDDate.EditValue       := gridActivityD_DATE.EditValue;
    fmDiaryEdit.edtDTime.Text            := gridActivityD_TIME.EditValue;

    fmDiaryEdit.ShowModal;
    if fmDiaryEdit.ModalResult = mrOk then begin
      DataModule1.WORK_LOG_UPD.ParamByName('ID').Value := gridActivityID.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('W_DATE').Value := fmDiaryEdit.edtWDate.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('W_TIME').Value := fmDiaryEdit.edtTime.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('ACTION_KIND').Value := fmDiaryEdit.cbActionKind.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('FROM_NAME').Value := fmDiaryEdit.edtFromName.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('FROM_SUBJECT').Value := fmDiaryEdit.edtSubject.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('TO_NAME').Value := fmDiaryEdit.edtToName.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('RESPONSE').Value := fmDiaryEdit.edtResponse.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('RESULT_STATUS').Value := fmDiaryEdit.cbResult.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('D_DATE').Value := fmDiaryEdit.edtDDate.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('D_TIME').Value := fmDiaryEdit.edtDTime.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('USER_ID').Value := fmDiaryEdit.icbUser.EditValue;
      DataModule1.WORK_LOG_UPD.ExecProc;
      gridActivity.DataController.SaveBookmark;
      toprow := gridActivity.Controller.TopRowIndex;
      RetrieveData;
      gridActivity.DataController.GotoBookmark;
      gridActivity.Controller.TopRowIndex := toprow;
      HAS_MODIFIED := True;
    end;
  finally
    fmDiaryEdit.Free;
  end;
end;

procedure TfmDailyActivity.btnAddClick(Sender: TObject);
var
  WORK_UNIQ_ID : Int64;
begin
  fmDiaryIns := TfmDiaryIns.Create(Self);
  try
    WORK_UNIQ_ID := StrToInt64(FormatDateTime('yyyymmddhhnnsszzz', now));
    fmDiaryIns.edtWDate.EditValue := ACTION_DATE;
    fmDiaryIns.edtDDate.EditValue := ACTION_DATE;
    fmDiaryIns.edtTime.Text       := FormatDateTime('hhmm', Now);
    fmDiaryIns.edtDTime.Text       := FormatDateTime('hhmm', Now);
    fmDiaryIns.cbActionKind.EditValue := 1;
    fmDiaryIns.cbResult.EditValue := 1;
    fmDiaryIns.ShowModal;
    if fmDiaryIns.ModalResult = mrOk then begin
      DataModule1.WORK_LOG_INS.ParamByName('W_DATE').Value := fmDiaryIns.edtWDate.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('W_TIME').Value := fmDiaryIns.edtTime.Text;
      DataModule1.WORK_LOG_INS.ParamByName('ACTION_KIND').Value := fmDiaryIns.cbActionKind.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('FROM_NAME').Value := fmDiaryIns.edtFromName.Text;
      DataModule1.WORK_LOG_INS.ParamByName('FROM_SUBJECT').Value := fmDiaryIns.edtSubject.Text;
      DataModule1.WORK_LOG_INS.ParamByName('TO_NAME').Value := fmDiaryIns.edtToName.Text;
      DataModule1.WORK_LOG_INS.ParamByName('RESPONSE').Value := fmDiaryIns.edtResponse.Text;
      DataModule1.WORK_LOG_INS.ParamByName('RESULT_STATUS').Value := fmDiaryIns.cbResult.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('D_DATE').Value := fmDiaryIns.edtDDate.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('D_TIME').Value := fmDiaryIns.edtDTime.Text;
      DataModule1.WORK_LOG_INS.ParamByName('USER_ID').Value := fmDiaryIns.icbUser.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('UNIQ_ID').Value := WORK_UNIQ_ID;
      DataModule1.WORK_LOG_INS.ExecProc;
      RetrieveData;
      HAS_MODIFIED := True;
    end;
  finally
    fmDiaryIns.Free;
  end;
end;

procedure TfmDailyActivity.btnDelClick(Sender: TObject);
var
  toprow : Integer;
begin
  if MessageBox(Handle, '선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    DataModule1.WORK_LOG_DEL.ParamByName('ID').Value := gridActivityID.EditValue;
    DataModule1.WORK_LOG_DEL.ExecProc;
    gridActivity.DataController.SaveBookmark;
    toprow := gridActivity.Controller.TopRowIndex;
    DataModule1.ds_WORK_LOG_SEL_DATE2.DataSet.Refresh;
    gridActivity.DataController.GotoBookmark;
    gridActivity.Controller.TopRowIndex := toprow;
    HAS_MODIFIED := True;
  end;
end;

procedure TfmDailyActivity.FormShow(Sender: TObject);
begin
  RetrieveData;
  HAS_MODIFIED := False;
end;

procedure TfmDailyActivity.RetrieveData;
begin
  DataModule1.WORK_LOG_SEL_DATE2.ParamByName('S_DATE').Value := ACTION_DATE;
  DataModule1.WORK_LOG_SEL_DATE2.ParamByName('START_ACTION').Value := S_ACTION;
  DataModule1.WORK_LOG_SEL_DATE2.ParamByName('END_ACTION').Value := E_ACTION;
  DataModule1.WORK_LOG_SEL_DATE2.ParamByName('START_RESULT').Value := S_RESULT;
  DataModule1.WORK_LOG_SEL_DATE2.ParamByName('END_RESULT').Value := E_RESULT;
  DataModule1.WORK_LOG_SEL_DATE2.ParamByName('S_USER').Value := S_USER;
  DataModule1.WORK_LOG_SEL_DATE2.ParamByName('E_USER').Value := E_USER;
  DataModule1.WORK_LOG_SEL_DATE2.Active := True;
  DataModule1.ds_WORK_LOG_SEL_DATE2.DataSet.Refresh;
end;

procedure TfmDailyActivity.gridActivityACTION_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  stat_val : Integer;
begin
  stat_val := AViewInfo.GridRecord.Values[gridActivity.GetColumnByFieldName('ACTION_KIND').Index];
  case stat_val of
    1: begin
      ACanvas.Brush.Color := clLime;
      ACanvas.Font.Color := clBlack;
      ACanvas.Font.Style := [fsBold];
    end;
    2..3: begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
      ACanvas.Font.Style := [fsBold];
    end;
    4, 6, 8: begin
      ACanvas.Brush.Color := clBlue;
      ACanvas.Font.Color := clWhite;
      ACanvas.Font.Style := [fsBold];
    end;
  end;
end;

procedure TfmDailyActivity.gridActivityCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmDailyActivity.gridActivityRESULT_STATUSCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  stat_val : Integer;
begin
  stat_val := AViewInfo.GridRecord.Values[gridActivity.GetColumnByFieldName('RESULT_STATUS').Index];
  case stat_val of
    2: begin
      ACanvas.Brush.Color := clGreen;
      ACanvas.Font.Color := clWhite;
      ACanvas.Font.Style := [fsBold];
    end;
    3: begin
      ACanvas.Brush.Color := clRed;
      ACanvas.Font.Color := clWhite;
      ACanvas.Font.Style := [fsBold];
    end;
    4: begin
      ACanvas.Brush.Color := clYellow;
      ACanvas.Font.Color := clBlack;
    end;
  end;
end;

end.
