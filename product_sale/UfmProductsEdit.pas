unit UfmProductsEdit;

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
  StdCtrls, Buttons;

type
  TfmProductsEdit = class(TForm)
    Panel1: TPanel;
    gridProducts: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridProductsID: TcxGridDBColumn;
    gridProductsPRODUCT_NAME: TcxGridDBColumn;
    gridProductsPRODUCTS_BIGO: TcxGridDBColumn;
    btnAddCustLec: TBitBtn;
    btnEditCustLec: TBitBtn;
    btnDelLecMember: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnAddCustLecClick(Sender: TObject);
    procedure btnEditCustLecClick(Sender: TObject);
    procedure btnDelLecMemberClick(Sender: TObject);
    procedure gridProductsCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProductsEdit: TfmProductsEdit;

implementation

uses GlobalVar, UdmDBCommon, UfmProductsIN;

{$R *.dfm}

procedure TfmProductsEdit.btnAddCustLecClick(Sender: TObject);
begin
  fmProductsIN := TfmProductsIN.Create(Self);
  try
    fmProductsIN.ShowModal;
    if fmProductsIN.ModalResult = mrOk then begin
      dmDBCommon.PRODUCTS_INS.ParamByName('COMPANY_ID').AsString := LoginUserCompID;
      dmDBCommon.PRODUCTS_INS.ParamByName('PRODUCT_NAME').AsString := fmProductsIN.edtProductName.Text;
      dmDBCommon.PRODUCTS_INS.ParamByName('PRODUCTS_BIGO').AsString := fmProductsIN.edtProductBigo.Text;
      dmDBCommon.PRODUCTS_INS.ExecProc;

      dmDBCommon.PRODUCTS_SEL_LOOK.ParamByName('COMPANY_ID').Value := LoginUserCompID;
      dmDBCommon.PRODUCTS_SEL_LOOK.Active := True;
      dmDBCommon.d_PRODUCTS_SEL_LOOK.DataSet.Refresh;

      dmDBCommon.d_PRODUCTS_SEL.DataSet.Refresh;
    end;
  finally
    fmProductsIN.Free;
  end;
end;

procedure TfmProductsEdit.btnDelLecMemberClick(Sender: TObject);
var
  gid : Integer;
begin
  gid := gridProductsID.EditValue;
  if (gid < 4) then begin
    ShowMessage('선택한 항목은 삭제할 수 없습니다.');
    Exit;
  end;

  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    //IsMyAction := True;
    gridProducts.DataController.SaveBookmark;
    dmDBCommon.PRODUCTS_DEL.ParamByName('ID').Value := gridProductsID.EditValue;
    dmDBCommon.PRODUCTS_DEL.ExecProc;

    dmDBCommon.PRODUCTS_SEL_LOOK.Active := True;
    dmDBCommon.d_PRODUCTS_SEL_LOOK.DataSet.Refresh;

    dmDBCommon.d_PRODUCTS_SEL.DataSet.Refresh;
    gridProducts.DataController.GotoBookmark;
  end;
end;

procedure TfmProductsEdit.btnEditCustLecClick(Sender: TObject);
begin
  fmProductsIN := TfmProductsIN.Create(Self);
  try
    gridProducts.DataController.SaveBookmark;
    fmProductsIN.edtProductName.Text := VarToStr(gridProductsPRODUCT_NAME.EditValue);
    fmProductsIN.edtProductBigo.Text := VarToStr(gridProductsPRODUCTS_BIGO.EditValue);
    fmProductsIN.ShowModal;
    if fmProductsIN.ModalResult = mrOk then begin
      dmDBCommon.PRODUCTS_UPD.ParamByName('ID').AsInteger := gridProductsID.EditValue;
      dmDBCommon.PRODUCTS_UPD.ParamByName('PRODUCT_NAME').AsString := fmProductsIN.edtProductName.Text;
      dmDBCommon.PRODUCTS_UPD.ParamByName('PRODUCTS_BIGO').AsString := fmProductsIN.edtProductBigo.Text;
      dmDBCommon.PRODUCTS_UPD.ExecProc;

      dmDBCommon.d_PRODUCTS_SEL_LOOK.DataSet.Refresh;

      dmDBCommon.d_PRODUCTS_SEL.DataSet.Refresh;
      gridProducts.DataController.GotoBookmark;
    end;
  finally
    fmProductsIN.Free;
  end;
end;

procedure TfmProductsEdit.FormShow(Sender: TObject);
begin
  dmDBCommon.PRODUCTS_SEL.ParamByName('COMPANY_ID').Value := LoginUserCompID;
  dmDBCommon.PRODUCTS_SEL.Active := True;
  dmDBCommon.d_PRODUCTS_SEL.DataSet.Filter := 'id > 3';
  dmDBCommon.d_PRODUCTS_SEL.DataSet.Filtered := True;
  dmDBCommon.d_PRODUCTS_SEL.DataSet.Refresh;
end;

procedure TfmProductsEdit.gridProductsCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditCustLec.Click;
end;

end.
