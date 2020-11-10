unit UfmCustomerHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, StdCtrls, Buttons, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCalendar;

type
  TfmCustomerHistory = class(TForm)
    Panel1: TPanel;
    gridHistory: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CUSTOMER_HISTORY_SEL: TUniStoredProc;
    dsCUSTOMER_HISTORY_SEL: TDataSource;
    CUSTOMER_HISTORY_SELID: TIntegerField;
    CUSTOMER_HISTORY_SELR_DATE: TDateField;
    CUSTOMER_HISTORY_SELBIGO: TStringField;
    gridHistoryID: TcxGridDBColumn;
    gridHistoryR_DATE: TcxGridDBColumn;
    gridHistoryBIGO: TcxGridDBColumn;
    CUSTOMER_HISTORY_INS: TUniStoredProc;
    CUSTOMER_HISTORY_UPD: TUniStoredProc;
    CUSTOMER_HISTORY_DEL: TUniStoredProc;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CustomerID : string;
  end;

var
  fmCustomerHistory: TfmCustomerHistory;

implementation

uses GlobalVar, UdmDBCommon, UfmHistoryEdit;

{$R *.dfm}

procedure TfmCustomerHistory.btnAddClick(Sender: TObject);
begin
  fmHistoryEdit := TfmHistoryEdit.Create(Self);
  try
    fmHistoryEdit.edtDate.Date := Date;
    fmHistoryEdit.ShowModal;
    if fmHistoryEdit.ModalResult = mrOk then begin
      CUSTOMER_HISTORY_INS.ParamByName('CUSTOMER_ID').Value := CustomerID;
      CUSTOMER_HISTORY_INS.ParamByName('R_DATE').Value := fmHistoryEdit.edtDate.Date;
      CUSTOMER_HISTORY_INS.ParamByName('BIGO').Value := fmHistoryEdit.mmoBigo.Text;
      CUSTOMER_HISTORY_INS.ExecProc;
      dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
    end;
  finally
    fmHistoryEdit.Free;
  end;
end;

procedure TfmCustomerHistory.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    CUSTOMER_HISTORY_DEL.ParamByName('ID').Value := gridHistoryID.EditValue;
    CUSTOMER_HISTORY_DEL.ExecProc;
    dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
  end;

end;

procedure TfmCustomerHistory.btnEditClick(Sender: TObject);
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

procedure TfmCustomerHistory.FormShow(Sender: TObject);
begin
  CUSTOMER_HISTORY_SEL.ParamByName('CUSTOMER_ID').Value := CustomerID;
  CUSTOMER_HISTORY_SEL.Active := True;
  dsCUSTOMER_HISTORY_SEL.DataSet.Refresh;
end;

end.
