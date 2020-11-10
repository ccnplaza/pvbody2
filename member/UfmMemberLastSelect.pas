unit UfmMemberLastSelect;

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
  MemDS, DBAccess, Uni, StdCtrls, Buttons;

type
  TfmMemberLastSelect = class(TForm)
    Panel1: TPanel;
    gridMember: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridMemberID: TcxGridDBColumn;
    gridMemberCUST_ID: TcxGridDBColumn;
    gridMemberCUST_NAME: TcxGridDBColumn;
    gridMemberCUST_TEL: TcxGridDBColumn;
    gridMemberUSER_ID: TcxGridDBColumn;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure gridMemberCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberLastSelect: TfmMemberLastSelect;

implementation

uses
  GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmMemberLastSelect.btnCancelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    gridMember.DataController.SaveBookmark;
    dmDBCommon.LATEST_CUSTOMER_DEL.ParamByName('ID').Value := gridMemberID.EditValue;
    dmDBCommon.LATEST_CUSTOMER_DEL.ExecProc;
    dmDBCommon.ds_LATEST_CUSTOMER_SEL.DataSet.Refresh;
    gridMember.DataController.GotoBookmark;
  end;
end;

procedure TfmMemberLastSelect.FormShow(Sender: TObject);
begin
  dmDBCommon.LATEST_CUSTOMER_SEL.ParamByName('LOGIN_USER').Value := LoginUserID;
  dmDBCommon.LATEST_CUSTOMER_SEL.Open;
  dmDBCommon.ds_LATEST_CUSTOMER_SEL.DataSet.Refresh;
end;

procedure TfmMemberLastSelect.gridMemberCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

end.
