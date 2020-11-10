unit UfmLectureBreakList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  StdCtrls, cxButtons, MemDS, DBAccess, Uni, cxImageComboBox;

type
  TfmLectureBreakList = class(TForm)
    Panel1: TPanel;
    gridBreak: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    gridBreakID: TcxGridDBColumn;
    gridBreakLECTURE_ID: TcxGridDBColumn;
    gridBreakSTART_DATE: TcxGridDBColumn;
    gridBreakEND_DATE: TcxGridDBColumn;
    gridBreakREASONS: TcxGridDBColumn;
    gridBreakBREAK_STATUS: TcxGridDBColumn;
    btnOK: TcxButton;
    LESSON_CUSTOMER_BREAK_INS: TUniStoredProc;
    LESSON_CUSTOMER_BREAK_UPD: TUniStoredProc;
    LESSON_CUSTOMER_BREAK_DEL: TUniStoredProc;
    btnCancelBreak: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelBreakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LECTURE_ID : string;
  end;

var
  fmLectureBreakList: TfmLectureBreakList;

implementation

uses
  GlobalVar, uCommonLogic, UdmDBCommon, UfmLectureBreak;

{$R *.dfm}

procedure TfmLectureBreakList.btnCancelBreakClick(Sender: TObject);
begin
  if gridBreakID.EditValue > 0 then
    ModalResult := mrAbort
  else
    ModalResult := mrNone;
end;

procedure TfmLectureBreakList.btnOKClick(Sender: TObject);
begin
  if gridBreakID.EditValue > 0 then
    ModalResult := mrOk
  else
    ModalResult := mrNone;
end;

procedure TfmLectureBreakList.cxButton1Click(Sender: TObject);
begin
  fmLectureBreak := TfmLectureBreak.Create(Self);
  try
    fmLectureBreak.ShowModal;
    if fmLectureBreak.ModalResult = mrOk then begin
      LESSON_CUSTOMER_BREAK_INS.ParamByName('LECTURE_ID').Value := LECTURE_ID;
      LESSON_CUSTOMER_BREAK_INS.ParamByName('START_DATE').Value := fmLectureBreak.START_DATE.EditValue;
      LESSON_CUSTOMER_BREAK_INS.ParamByName('END_DATE').Value := fmLectureBreak.END_DATE.EditValue;
      LESSON_CUSTOMER_BREAK_INS.ParamByName('REASONS').Value := fmLectureBreak.edtReason.Text;
      LESSON_CUSTOMER_BREAK_INS.ParamByName('BREAK_STATUS').Value := fmLectureBreak.cbStatus.EditValue;
      LESSON_CUSTOMER_BREAK_INS.ExecProc;
      dmDBCommon.ds_LESSON_CUSTOMER_BREAK_SEL.DataSet.Refresh;
    end;
  finally
    fmLectureBreak.Free;
  end;
end;

procedure TfmLectureBreakList.cxButton2Click(Sender: TObject);
begin
  fmLectureBreak := TfmLectureBreak.Create(Self);
  try
    fmLectureBreak.START_DATE.EditValue := gridBreakSTART_DATE.EditValue;
    fmLectureBreak.END_DATE.EditValue := gridBreakEND_DATE.EditValue;
    fmLectureBreak.cbStatus.EditValue := gridBreakBREAK_STATUS.EditValue;
    fmLectureBreak.edtReason.Text := VarToStrDef(gridBreakREASONS.EditValue, '');
    fmLectureBreak.ShowModal;
    if fmLectureBreak.ModalResult = mrOk then begin
      LESSON_CUSTOMER_BREAK_UPD.ParamByName('ID').Value := gridBreakID.EditValue;
      LESSON_CUSTOMER_BREAK_UPD.ParamByName('LECTURE_ID').Value := LECTURE_ID;
      LESSON_CUSTOMER_BREAK_UPD.ParamByName('START_DATE').Value := fmLectureBreak.START_DATE.EditValue;
      LESSON_CUSTOMER_BREAK_UPD.ParamByName('END_DATE').Value := fmLectureBreak.END_DATE.EditValue;
      LESSON_CUSTOMER_BREAK_UPD.ParamByName('REASONS').Value := fmLectureBreak.edtReason.Text;
      LESSON_CUSTOMER_BREAK_UPD.ParamByName('BREAK_STATUS').Value := fmLectureBreak.cbStatus.EditValue;
      LESSON_CUSTOMER_BREAK_UPD.ExecProc;
      SavePosition(gridBreak);
      dmDBCommon.ds_LESSON_CUSTOMER_BREAK_SEL.DataSet.Refresh;
      GotoPosition(gridBreak);
    end;
  finally
    fmLectureBreak.Free;
  end;
end;

procedure TfmLectureBreakList.cxButton3Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    LESSON_CUSTOMER_BREAK_DEL.ParamByName('ID').Value := gridBreakID.EditValue;
    LESSON_CUSTOMER_BREAK_DEL.ExecProc;
    SavePosition(gridBreak);
    dmDBCommon.ds_LESSON_CUSTOMER_BREAK_SEL.DataSet.Refresh;
    GotoPosition(gridBreak);
  end;
end;

procedure TfmLectureBreakList.FormShow(Sender: TObject);
begin
  dmDBCommon.LESSON_CUSTOMER_BREAK_SEL.ParamByName('L_ID').Value := LECTURE_ID;
  dmDBCommon.LESSON_CUSTOMER_BREAK_SEL.Active := True;
  dmDBCommon.ds_LESSON_CUSTOMER_BREAK_SEL.DataSet.Refresh;
end;

end.
