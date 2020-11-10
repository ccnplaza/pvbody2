unit UfmCashKindView;

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
  cxNavigator, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, MemDS, DBAccess, Uni;

type
  TfmCashKindView = class(TForm)
    Panel1: TPanel;
    btnAddCustLec: TBitBtn;
    btnEditCustLec: TBitBtn;
    btnDelLecMember: TBitBtn;
    cxGrid1: TcxGrid;
    gridKind: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    gridKindID: TcxGridDBColumn;
    gridKindK_NAME: TcxGridDBColumn;
    gridKindCOMPANY_ID: TcxGridDBColumn;
    CASH_INOUT_KIND_INS: TUniStoredProc;
    CASH_INOUT_KIND_UPD: TUniStoredProc;
    CASH_INOUT_KIND_DEL: TUniStoredProc;
    procedure FormActivate(Sender: TObject);
    procedure btnAddCustLecClick(Sender: TObject);
    procedure btnEditCustLecClick(Sender: TObject);
    procedure btnDelLecMemberClick(Sender: TObject);
    procedure gridKindCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    IsMyAction : Boolean;
  end;

var
  fmCashKindView: TfmCashKindView;

implementation

uses UdmDBCommon, GlobalVar;

{$R *.dfm}

procedure TfmCashKindView.btnAddCustLecClick(Sender: TObject);
var
  str_val : string;
begin
  if InputQuery('계정과목등록', '계정과목을 입력하세요.', str_val) then begin
    IsMyAction := True;
    CASH_INOUT_KIND_INS.ParamByName('K_NAME').Value := str_val;
    CASH_INOUT_KIND_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
    CASH_INOUT_KIND_INS.ExecProc;
    dmDBCommon.d_CASH_INOUT_KIND_SEL.DataSet.Refresh;
  end;
end;

procedure TfmCashKindView.btnDelLecMemberClick(Sender: TObject);
begin
  if gridKindID.EditValue = 1 then begin
    ShowMessage('전기이월 항목은 고정항목으로 삭제할 수 없습니다.');
    Exit;
  end;
  if gridKindID.EditValue = 2 then begin
    ShowMessage('수강료 항목은 고정항목으로 삭제할 수 없습니다.');
    Exit;
  end;
  if gridKindID.EditValue = 3 then begin
    ShowMessage('상품판매 항목은 고정항목으로 삭제할 수 없습니다.');
    Exit;
  end;
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    IsMyAction := True;
    gridKind.DataController.SaveBookmark;
    CASH_INOUT_KIND_DEL.ParamByName('ID').Value := gridKindID.EditValue;
    CASH_INOUT_KIND_DEL.ExecProc;
    dmDBCommon.d_CASH_INOUT_KIND_SEL.DataSet.Refresh;
    gridKind.DataController.GotoBookmark;
  end;
end;

procedure TfmCashKindView.btnEditCustLecClick(Sender: TObject);
var
  str_val : string;
begin
  if gridKindID.EditValue = 1 then begin
    ShowMessage('전기이월 항목은 고정항목으로 수정할 수 없습니다.');
    Exit;
  end;
  if gridKindID.EditValue = 2 then begin
    ShowMessage('수강료 항목은 고정항목으로 수정할 수 없습니다.');
    Exit;
  end;
  if gridKindID.EditValue = 3 then begin
    ShowMessage('상품판매 항목은 고정항목으로 수정할 수 없습니다.');
    Exit;
  end;
  gridKind.DataController.SaveBookmark;
  str_val := gridKindK_NAME.EditValue;
  if InputQuery('계정과목등록', '계정과목을 입력하세요.', str_val) then begin
    IsMyAction := True;
    CASH_INOUT_KIND_UPD.ParamByName('ID').Value := gridKindID.EditValue;
    CASH_INOUT_KIND_UPD.ParamByName('K_NAME').Value := str_val;
    CASH_INOUT_KIND_UPD.ExecProc;
    dmDBCommon.d_CASH_INOUT_KIND_SEL.DataSet.Refresh;
    gridKind.DataController.GotoBookmark;
  end;
end;

procedure TfmCashKindView.FormActivate(Sender: TObject);
begin
  dmDBCommon.CASH_INOUT_KIND_SEL.Active := True;
end;

procedure TfmCashKindView.gridKindCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditCustLec.Click;
end;

end.
