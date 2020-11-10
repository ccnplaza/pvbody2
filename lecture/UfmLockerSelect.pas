unit UfmLockerSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxNavigator, DB, cxDBData, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBLookupComboBox, ImgList;

type
  TfmLockerSelect = class(TForm)
    Panel1: TPanel;
    btnSelect: TBitBtn;
    btnCancel: TBitBtn;
    cxGrid1: TcxGrid;
    gridLocker: TcxGridDBTableView;
    gridLockerID: TcxGridDBColumn;
    gridLockerLOCKER_NO: TcxGridDBColumn;
    gridLockerLOCKER_STATUS: TcxGridDBColumn;
    gridLockerLOCKER_USER: TcxGridDBColumn;
    gridLockerBIGO: TcxGridDBColumn;
    gridLockerCOMPANY_ID: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure gridLockerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LockerNo : string;
  end;

var
  fmLockerSelect: TfmLockerSelect;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmLockerSelect.btnSelectClick(Sender: TObject);
var
  status : Integer;
begin
  status := gridLockerLOCKER_STATUS.EditValue;
  if status <> 0 then begin
    ShowMessage('현재 선택한 락커번호는 사용할 수 없습니다.' + #13#10 +
                '다른 락커번호를 선택하세요.');
    Exit;
  end;
  ModalResult := mrOk;
end;

procedure TfmLockerSelect.FormShow(Sender: TObject);
begin
  dmDBCommon.CUSTOMER_SEL_LOOK.Active := True;
  dmDBCommon.LOCKER_DATA_SEL.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.LOCKER_DATA_SEL.Active := True;
  dmDBCommon.d_LOCKER_DATA_SEL.DataSet.Refresh;
  if LockerNo <> '' then begin
    dmDBCommon.d_LOCKER_DATA_SEL.DataSet.Locate('locker_no', LockerNo, []);
  end;
end;

procedure TfmLockerSelect.gridLockerCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnSelect.Click;
end;

end.
