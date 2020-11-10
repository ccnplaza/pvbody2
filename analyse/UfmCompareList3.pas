unit UfmCompareList3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, IniFiles,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, Menus,
  imageenview, ievect, cxButtons, StdCtrls, ExtCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, ieview, iemview, Uni, MemDS, DBAccess,
  VirtualTable, cxLabel, cxDBLabel, DBClient, Provider, UniProvider,
  InterBaseUniProvider, Registry, dxmdaset, frxClass, frxDBSet, ieopensavedlg,
  ImgList, ActnList, ComCtrls, hyiedefs, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, hyieutils,
  cxTrackBar, dxZoomTrackBar, cxMaskEdit, cxSpinEdit, imageenio, iexActionsMulti,
  UfrmMemberSelect, cxCalendar, UfrmImageEnVect, DateUtils, BMDThread,
  cxScrollBox, UfrmImages, UfrmImageMultiView, cxDBLookupComboBox;

type
  TfmCompareList3 = class(TForm)
    pnlMember: TPanel;
    pgcCompareFrame: TPanel;
    compareGroupLeftTop: TcxGroupBox;
    pnlRoot: TPanel;
    cxGroupBox2: TcxGroupBox;
    gridCustomer: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    Label3: TLabel;
    s_date: TDateTimePicker;
    e_date: TDateTimePicker;
    btnView: TBitBtn;
    BMDThread1: TBMDThread;
    frmImageMultiView1: TfrmImageMultiView;
    gridCustomerP_DATE: TcxGridDBColumn;
    gridCustomerCNT: TcxGridDBColumn;
    gridCustomerCUST_ID: TcxGridDBColumn;
    gridCustomerColumn1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmImageMultiView1ImageEnMView1DblClick(Sender: TObject);
    procedure gridCustomerCNAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridCustomerP_DATECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridCustomerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    procedure RetrieveThumbnails;
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    CURRENT_MEMBER_UID : string;
    CURRENT_CHECK_UID : string;
    LIST_LOADED : Boolean;
    SELECTED_PANEL : Integer;

end;

var
  fmCompareList3: TfmCompareList3;

implementation

uses GlobalVar, uCommonLogic, uMemberSelect, UfmAnalyseRequestSelect, UdmDBCommon,
  UfmCustomerHistory, uMemberEditView, UfmPostureEditor, uMemberFavorite;

{$R *.dfm}

procedure TfmCompareList3.FormShow(Sender: TObject);
begin
  LIST_LOADED := False;
  s_date.Date := Date - 7;
  e_date.Date := Date;
  dmDBCommon.CUSTOMER_SEL_LOOK_TEL.Open;
  dmDBCommon.ds_CUSTOMER_SEL_LOOK_TEL.DataSet.Refresh;
  btnView.Click;
end;

procedure TfmCompareList3.frmImageMultiView1ImageEnMView1DblClick(
  Sender: TObject);
begin
  frmImageMultiView1.btnEditImage.Click;
end;

procedure TfmCompareList3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompareList3.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCompareList3.gridCustomerCNAMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentOddColor
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;
end;
procedure TfmCompareList3.gridCustomerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if LIST_LOADED then
    RetrieveThumbnails;
end;

procedure TfmCompareList3.gridCustomerP_DATECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then begin
    if (AViewInfo.GridRecord.Index mod 2 = 1) then
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentOddColor
    else
      ACanvas.Brush.Color := RootLookAndFeel.Painter.DefaultContentEvenColor;
    ACanvas.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  end;
end;

procedure TfmCompareList3.RetrieveThumbnails;
begin
  dmDBCommon.IMAGES_SEL.ParamByName('CUST_ID').Value := gridCustomerCUST_ID.EditValue;
  dmDBCommon.IMAGES_SEL.ParamByName('P_DATE').Value := gridCustomerP_DATE.EditValue;
  dmDBCommon.IMAGES_SEL.Open;
  dmDBCommon.ds_IMAGES_SEL.DataSet.Refresh;
  frmImageMultiView1.RetrieveThumbnailList;
end;

procedure TfmCompareList3.btnViewClick(Sender: TObject);
begin
  dmDBCommon.IMAGES_SEL_BYDATE_PERIOD.ParamByName('SDATE').Value := s_date.Date;
  dmDBCommon.IMAGES_SEL_BYDATE_PERIOD.ParamByName('EDATE').Value := e_date.Date;
  dmDBCommon.IMAGES_SEL_BYDATE_PERIOD.Active := True;
  dmDBCommon.ds_IMAGES_SEL_BYDATE_PERIOD.DataSet.Refresh;
  RetrieveThumbnails;
  LIST_LOADED := True;
end;


initialization RegisterClasses([TfmCompareList3]);

end.