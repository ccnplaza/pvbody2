unit UfmViewLecture;

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
  DBAccess, Uni, MemDS, StdCtrls, Buttons;

type
  TfmViewLecture = class(TForm)
    Panel1: TPanel;
    gridLecture: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnAddCustLec: TBitBtn;
    btnEditCustLec: TBitBtn;
    btnDelLecMember: TBitBtn;
    LESSON_INS: TUniStoredProc;
    LESSON_UPD: TUniStoredProc;
    LESSON_DEL: TUniStoredProc;
    LESSON_SEL: TUniStoredProc;
    d_LESSON_SEL: TUniDataSource;
    LESSON_SELID: TStringField;
    LESSON_SELL_NAME: TStringField;
    LESSON_SELL_DESC: TStringField;
    gridLectureID: TcxGridDBColumn;
    gridLectureL_NAME: TcxGridDBColumn;
    gridLectureL_DESC: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnAddCustLecClick(Sender: TObject);
    procedure btnEditCustLecClick(Sender: TObject);
    procedure btnDelLecMemberClick(Sender: TObject);
    procedure gridLectureCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmViewLecture: TfmViewLecture;

implementation

uses GlobalVar, UdmDBCommon, ufmLectureRegist;

{$R *.dfm}

procedure TfmViewLecture.btnAddCustLecClick(Sender: TObject);
begin
  fmLectureRegist := TfmLectureRegist.Create(Self);
  try
    fmLectureRegist.ShowModal;
    if fmLectureRegist.ModalResult = mrOk then begin
      LESSON_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
      LESSON_INS.ParamByName('L_NAME').Value := fmLectureRegist.edtName.Text;
      LESSON_INS.ParamByName('L_DESC').Value := fmLectureRegist.edtBigo.Text;
      LESSON_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
      LESSON_INS.ExecProc;
      d_LESSON_SEL.DataSet.Refresh;
      dmDBCommon.d_LESSON_SEL_LOOK.DataSet.Refresh;
    end;
  finally
    fmLectureRegist.Free;
  end;
end;

procedure TfmViewLecture.btnDelLecMemberClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    gridLecture.DataController.SaveBookmark;
    LESSON_DEL.ParamByName('ID').Value := gridLectureID.EditValue;
    LESSON_DEL.ExecProc;
    d_LESSON_SEL.DataSet.Refresh;
    dmDBCommon.d_LESSON_SEL_LOOK.DataSet.Refresh;
    gridLecture.DataController.GotoBookmark;
  end;
end;

procedure TfmViewLecture.btnEditCustLecClick(Sender: TObject);
var
  id : string;
begin
  fmLectureRegist := TfmLectureRegist.Create(Self);
  try
    gridLecture.DataController.SaveBookmark;
    id := gridLectureID.EditValue;

    fmLectureRegist.edtName.Text := gridLectureL_NAME.EditValue;
    fmLectureRegist.edtBigo.Text := VarToStr(gridLectureL_DESC.EditValue);
    fmLectureRegist.ShowModal;
    if fmLectureRegist.ModalResult = mrOk then begin
      //LESSON_UPD(:ID, :L_NAME, :L_PRICE, :L_DESC)
      LESSON_UPD.ParamByName('ID').Value := id;
      LESSON_UPD.ParamByName('L_NAME').Value := fmLectureRegist.edtName.Text;
      LESSON_UPD.ParamByName('L_DESC').Value := fmLectureRegist.edtBigo.Text;
      LESSON_UPD.ExecProc;
      d_LESSON_SEL.DataSet.Refresh;
      dmDBCommon.d_LESSON_SEL_LOOK.DataSet.Refresh;
      gridLecture.DataController.GotoBookmark;
    end;
  finally
    fmLectureRegist.Free;
  end;
end;

procedure TfmViewLecture.FormShow(Sender: TObject);
begin
  LESSON_SEL.ParamByName('COMP_ID').Value := LoginUserCompID;
  LESSON_SEL.Active := True;
  d_LESSON_SEL.DataSet.Refresh;
end;

procedure TfmViewLecture.gridLectureCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditCustLec.Click;
end;

end.
