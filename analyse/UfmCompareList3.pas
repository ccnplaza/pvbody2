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
  cxScrollBox, UfrmImages, UfrmImageMultiView, cxDBLookupComboBox, iexBitmaps,
  iesettings, iexLayers, iexRulers, iexToolbars;

type
  TfmCompareList3 = class(TForm)
    pnlMember: TPanel;
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
    gridCustomerP_DATE: TcxGridDBColumn;
    gridCustomerCNT: TcxGridDBColumn;
    gridCustomerCUST_ID: TcxGridDBColumn;
    gridCustomerColumn1: TcxGridDBColumn;
    compareGroupLeftTop: TcxGroupBox;
    Panel2: TPanel;
    PanelButtons: TPanel;
    Label1: TLabel;
    edtTrackBar: TcxSpinEdit;
    btnDelete: TcxButton;
    btnEditImage: TcxButton;
    btnStaticCheck: TcxButton;
    cxButton1: TcxButton;
    ImageEnMView1: TImageEnMView;
    PanelMessage: TPanel;
    Label2: TLabel;
    ImageEnView1: TImageEnView;
    btnSelect: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnViewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridCustomerCNAMECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridCustomerP_DATECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridCustomerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure BMDThread1Execute(Sender: TObject; Thread: TBMDExecuteThread;
      var Data: Pointer);
    procedure s_dateCloseUp(Sender: TObject);
    procedure e_dateCloseUp(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure ImageEnMView1DblClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditImageClick(Sender: TObject);
    procedure btnStaticCheckClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ImageEnMView1ImageSelect(Sender: TObject; idx: Integer);
  private
    procedure RetrievePictures;
    procedure RetrieveThumbNails;
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    CURRENT_MEMBER_UID : string;
    CURRENT_CHECK_UID : string;
    LIST_LOADED : Boolean;
    SELECTED_PANEL : Integer;
    IMAGE_IDX : Integer;

end;

var
  fmCompareList3: TfmCompareList3;

implementation

uses GlobalVar, uCommonLogic, uMemberSelect, UfmAnalyseRequestSelect, UdmDBCommon,
  UfmCustomerHistory, uMemberEditView, UfmPostureEditor, uMemberFavorite,
  uCapture, UfmPostureEditor2, UfmStaticCheck, UfmMuscleView;

{$R *.dfm}

procedure TfmCompareList3.FormShow(Sender: TObject);
begin
  LIST_LOADED := False;
  s_date.Date := Date - 7;
  e_date.Date := Date;
  dmDBCommon.CUSTOMER_SEL_LOOK_TEL.Open;
  dmDBCommon.ds_CUSTOMER_SEL_LOOK_TEL.DataSet.Refresh;
  btnView.Click;
  RetrievePictures;
  RetrieveThumbNails;
  //BMDThread1.Start;
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
//  CustomerImages.CustID := gridCustomerCUST_ID.EditValue;
  if LIST_LOADED then begin
    RetrievePictures;
    RetrieveThumbNails;
    //BMDThread1.Start;
    btnSelect.Click;
  end;
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

procedure TfmCompareList3.ImageEnMView1DblClick(Sender: TObject);
begin
  btnEditImage.Click;
end;

procedure TfmCompareList3.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
begin
  IMAGE_IDX := idx;
  CustomerImages.ImageID := ImageEnMView1.ImageID[idx];
end;

procedure TfmCompareList3.BMDThread1Execute(Sender: TObject;
  Thread: TBMDExecuteThread; var Data: Pointer);
var
  i, cnt, idx, thumb_id : integer;
  img_name, drw_name : string;
  mStream, dStream : TMemoryStream;
begin
  ImageEnMView1.LockPaint;
  ImageEnMView1.Clear;
  ImageEnMView1.TextTruncSide := iemtsLeft;
  with dmDBCommon do begin
    cnt := IMAGES_SEL.RecordCount;
    IMAGES_SEL.First;
    for i := 0 to cnt - 1 do begin
      mStream := TMemoryStream.Create;
      IMAGES_SELIMAGE_DATA.SaveToStream(mStream);
      if mStream.Size > 10 then begin
        mStream.Position := 0;
        idx := ImageEnMView1.AppendImage;
        ImageEnMView1.SetImageFromStream(idx, mStream);
        ImageEnMView1.ImageID[idx] := IMAGES_SELID.Value;
        ImageEnMView1.ImageTopText[idx] := IntToStr(IMAGES_SELID.Value);
        //ImageEnMView1.Update();
      end;
      mStream.Free;
      IMAGES_SEL.Next;
    end;
  end;
  //ImageEnMView1.Sort(iesb);
  ImageEnMView1.UnlockPaint;
  ImageEnMView1.SelectedImage := 0;
end;

procedure TfmCompareList3.RetrievePictures;
begin
  dmDBCommon.IMAGES_SEL.ParamByName('CUST_ID').Value := gridCustomerCUST_ID.EditValue;
  dmDBCommon.IMAGES_SEL.ParamByName('P_DATE').Value := gridCustomerP_DATE.EditValue;
  dmDBCommon.IMAGES_SEL.Open;
  dmDBCommon.ds_IMAGES_SEL.DataSet.Refresh;
end;

procedure TfmCompareList3.RetrieveThumbNails;
var
  i, cnt, idx, thumb_id : integer;
  img_name, drw_name : string;
  mStream, dStream : TMemoryStream;
begin
  ImageEnMView1.LockPaint;
  ImageEnMView1.Clear;
  ImageEnMView1.TextTruncSide := iemtsLeft;
  with dmDBCommon do begin
    cnt := IMAGES_SEL.RecordCount;
    IMAGES_SEL.First;
    for i := 0 to cnt - 1 do begin
      mStream := TMemoryStream.Create;
      IMAGES_SELIMAGE_DATA.SaveToStream(mStream);
      if mStream.Size > 10 then begin
        mStream.Position := 0;
        idx := ImageEnMView1.AppendImage;
        ImageEnMView1.SetImageFromStream(idx, mStream);
        ImageEnMView1.ImageID[idx] := IMAGES_SELID.Value;
        ImageEnMView1.ImageTopText[idx] := IntToStr(IMAGES_SELID.Value);
        //ImageEnMView1.Update();
      end;
      mStream.Free;
      IMAGES_SEL.Next;
    end;
  end;
  //ImageEnMView1.Sort(iesb);
  ImageEnMView1.UnlockPaint;
  ImageEnMView1.SelectedImage := 0;
end;

procedure TfmCompareList3.s_dateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmCompareList3.btnDeleteClick(Sender: TObject);
var
  id, i, img_field, idx : Integer;
  img_name, db_name : string;
  pdate : TDateTime;
begin
  try
    if ImageEnMView1.ImageCount > 0 then begin
      if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
        + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
        IDYES then
      begin
        pdate := dmDBCommon.IMAGES_SEL_BYDATEP_DATE.Value;
        idx := ImageEnMView1.SelectedImage;
        id := ImageEnMView1.ImageID[idx];
        img_name := ImageEnMView1.ImageFileName[idx];
        dmDBCommon.IMAGES_DEL.ParamByName('ID').Value := id;
        dmDBCommon.IMAGES_DEL.ExecProc;
        ImageEnMView1.DeleteSelectedImages;
        dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
        dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Locate('P_DATE', pdate, []);
      end;
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfmCompareList3.btnEditImageClick(Sender: TObject);
var
  iev_name : string;
  image_uid : string;
  mStream, dStream : TMemoryStream;
begin
  if ImageEnMView1.ImageCount > 0 then begin
    fmPostureEditor2 := TfmPostureEditor2.Create(Self);
    mStream := TMemoryStream.Create;
    dStream := TMemoryStream.Create;
    try
      dmDBCommon.IMAGES_SEL.Locate('ID', CustomerImages.ImageID, []);
      fmPostureEditor2.SetImageIndex(IMAGE_IDX);
      fmPostureEditor2.frmImageEditor21.ImageEnVect1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(IMAGE_IDX));
      CustomerImages.ImageID := ImageEnMView1.ImageID[IMAGE_IDX];
      dmDBCommon.IMAGES_SELDRAW_DATA.SaveToStream(dStream);
      if dStream.Size > 10 then begin
        dStream.Position := 0;
        fmPostureEditor2.frmImageEditor21.ImageEnVect1.LoadFromStreamIEV(dStream);
      end;
      fmPostureEditor2.ShowModal;
      if fmPostureEditor2.ModalResult = mrOk then begin
        if fmPostureEditor2.frmImageEditor21.IMAGE_CHANGED = True then begin
          ImageEnMView1.SetIEBitmap(IMAGE_IDX, fmPostureEditor2.frmImageEditor21.ImageEnVect1.IEBitmap);
          ImageEnMView1.Update;
        end;
      end;
    finally
      fmPostureEditor2.Free;
    end;
  end;
end;

procedure TfmCompareList3.btnSelectClick(Sender: TObject);
var
  cust_id : string;
begin
  cust_id := gridCustomerCUST_ID.EditValue;
  dmDBCommon.SelectCustomerByID(cust_id);
  CustomerImages.CustID := cust_id;
  CustomerImages.CustName := dmDBCommon.CUSTOMER_SEL_BYIDCNAME.Value;
  CustomerImages.CustTel := dmDBCommon.CUSTOMER_SEL_BYIDCTEL.Value;
  CustomerImages.CustSex := StrToIntDef(dmDBCommon.CUSTOMER_SEL_BYIDSEX.Value, 1);
  CustomerImages.PDate := gridCustomerP_DATE.EditValue;
//  dmDBCommon.InsertLatestCustomer;
end;

procedure TfmCompareList3.btnStaticCheckClick(Sender: TObject);
begin
  fmStaticCheck := TfmStaticCheck.Create(Self);
  try
    fmStaticCheck.PICTURE_DATE := gridCustomerP_DATE.EditValue;
    fmStaticCheck.ShowModal;
  finally
    fmStaticCheck.Free;
  end;
end;

procedure TfmCompareList3.btnViewClick(Sender: TObject);
begin
  dmDBCommon.IMAGES_SEL_BYDATE_PERIOD.ParamByName('SDATE').Value := s_date.Date;
  dmDBCommon.IMAGES_SEL_BYDATE_PERIOD.ParamByName('EDATE').Value := e_date.Date;
  dmDBCommon.IMAGES_SEL_BYDATE_PERIOD.Active := True;
  dmDBCommon.ds_IMAGES_SEL_BYDATE_PERIOD.DataSet.Refresh;
  btnSelect.Click;;
  LIST_LOADED := True;
end;

procedure TfmCompareList3.cxButton1Click(Sender: TObject);
begin
  fmMuscleView := TfmMuscleView.Create(self);
  fmMuscleView.Show;
end;

procedure TfmCompareList3.e_dateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

initialization RegisterClasses([TfmCompareList3]);

end.
