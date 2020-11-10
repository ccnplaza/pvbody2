unit UfmCompareWindow2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  UfrmMemberSelect, dxBarBuiltInMenu, cxPC, UfrmImageMultiView, iexBitmaps,
  iesettings, iexLayers, iexRulers, iexToolbars, cxDropDownEdit, cxImageComboBox,
  cxCalendar;

type
  TfmCompareWindow2 = class(TForm)
    pnlMember: TPanel;
    PanelThumb: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxGrid3: TcxGrid;
    gridCompareWin: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    pgcCompareFrame: TPanel;
    compareGroupLeftTop: TcxGroupBox;
    btnReport: TBitBtn;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    dxMemData: TdxMemData;
    dxMemDataImage1: TBlobField;
    dxMemDataImage2: TBlobField;
    dxMemDataImage3: TBlobField;
    dxMemDataImage4: TBlobField;
    dxMemDataImage1Date: TStringField;
    dxMemDataImage2Date: TStringField;
    dxMemDataImage3Date: TStringField;
    dxMemDataImage4Date: TStringField;
    dxMemDatamember_name: TStringField;
    dxMemDatamember_no: TStringField;
    PopupThumb: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    ActionThumbnail: TActionList;
    actThumbWindowMax: TAction;
    actThumbWindowMin: TAction;
    actThumbDelete: TAction;
    actThumbSaveAs: TAction;
    SaveImageEnDialog1: TSaveImageEnDialog;
    PopupLayer: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ImageListThumbnail: TImageList;
    ActAddLayer: TAction;
    ActSaveLayer: TAction;
    ActDeleteLayer: TAction;
    ActClearAll: TAction;
    N8: TMenuItem;
    N9: TMenuItem;
    ImageEnVect1Print: TImageEnVect;
    ImageEnVect1: TImageEnVect;
    CheckBox1: TCheckBox;
    btnDeleteLayer: TBitBtn;
    btnDeleteLayerAll: TBitBtn;
    btnAutoAlign: TBitBtn;
    ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage;
    btnAdd: TBitBtn;
    btnSave: TBitBtn;
    btnDel: TBitBtn;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    ImageEnMView1: TImageEnMView;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label2: TLabel;
    icbThumbSize: TcxImageComboBox;
    IMAGE_LAYERS_DEL: TUniStoredProc;
    IMAGE_LAYERS_INS: TUniStoredProc;
    IMAGE_LAYERS_UPD: TUniStoredProc;
    IMAGE_LAYERS_SEL: TUniStoredProc;
    IMAGE_LAYERS_SEL_IMAGE: TUniStoredProc;
    ds_IMAGE_LAYERS_SEL: TDataSource;
    ds_IMAGE_LAYERS_SEL_IMAGE: TDataSource;
    IMAGE_LAYERS_SELID: TIntegerField;
    IMAGE_LAYERS_SELMEMBER_ID: TStringField;
    IMAGE_LAYERS_SELP_DATE: TDateField;
    IMAGE_LAYERS_SELC_NAME: TStringField;
    IMAGE_LAYERS_SELC_COMMENT: TMemoField;
    IMAGE_LAYERS_SEL_IMAGEC_IMAGE: TBlobField;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckP_DATE: TcxGridDBColumn;
    gridCheckCNT: TcxGridDBColumn;
    gridCheckCUST_ID: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    pnlPictureButton: TPanel;
    BitBtn1: TBitBtn;
    cxGroupBox4: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    edtName: TEdit;
    btnFindMember: TBitBtn;
    pnlNo: TPanel;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    btnFavorite: TBitBtn;
    btnRefresh: TBitBtn;
    btnLatelySelect: TBitBtn;
    gridCompareWinID: TcxGridDBColumn;
    gridCompareWinMEMBER_ID: TcxGridDBColumn;
    gridCompareWinP_DATE: TcxGridDBColumn;
    gridCompareWinC_NAME: TcxGridDBColumn;
    gridCompareWinC_COMMENT: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridCompareWinCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure compareGroupLeftTopClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnDeleteLayerClick(Sender: TObject);
    procedure btnDeleteLayerAllClick(Sender: TObject);
    procedure btnAutoAlignClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure ImageEnMView1DblClick(Sender: TObject);
    procedure icbThumbSizePropertiesChange(Sender: TObject);
    procedure frmMemberSelect1edtNameChange(Sender: TObject);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnFindMemberClick(Sender: TObject);
    procedure btnLatelySelectClick(Sender: TObject);
    procedure btnFavoriteClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    procedure RetrieveThumbnailList;
    procedure RetrieveLayerData;
    procedure RetrieveMemberInfo;
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    CheckOldID : string;
    LIST_LOADED : Boolean;
  end;

var
  fmCompareWindow2: TfmCompareWindow2;

implementation

uses GlobalVar, uCommonLogic, UfmAnalyseRequestSelect, UdmDBCommon,
    UfmCompareComment, uMemberEditView, uMemberFavorite, uMemberSelect,
  UfmCustomerHistory, UfmMemberLastSelect;

{$R *.dfm}

procedure TfmCompareWindow2.RetrieveMemberInfo;
begin
  edtName.Text := CustomerImages.CustName;
  pnlNo.Caption := CustomerImages.CustTel;
  cxGroupBox2.Refresh;
  //retrieve all image list...
  dmDBCommon.IMAGES_SEL_BYDATE.ParamByName('C_ID').Value := CustomerImages.CustID;
  dmDBCommon.IMAGES_SEL_BYDATE.Open;
  dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
  //retrieve selected list...
  dmDBCommon.RetrievePictureByDate;
  //retrieve thumbnails
  RetrieveThumbnailList;
  //insert last customer...
  dmDBCommon.InsertLatestCustomer;
end;

procedure TfmCompareWindow2.RetrieveLayerData;
begin
  IMAGE_LAYERS_SEL.ParamByName('M_ID').AsString := CustomerImages.CustID;
  IMAGE_LAYERS_SEL.Active := True;
  ds_IMAGE_LAYERS_SEL.DataSet.Refresh;
end;

procedure TfmCompareWindow2.TrackBar1Change(Sender: TObject);
var
  i, obj : integer;
begin
  with ImageEnVect1 do begin
    for i := 0 to SelObjectsCount - 1 do begin
      obj := ImageEnVect1.SelObjects[i];
      ImageEnVect1.ObjTransparency[obj] := TrackBar1.Position;
      Update;
    end;
  end;
end;

procedure TfmCompareWindow2.btnSaveClick(Sender: TObject);
var
  sVal : string;
  compare_id : integer;
  mStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  fmCompareComment := TfmCompareComment.Create(self);
  try
    fmCompareComment.Edit1.Text := IMAGE_LAYERS_SELC_NAME.Value;
    fmCompareComment.Memo1.Text := IMAGE_LAYERS_SELC_COMMENT.Value;
    fmCompareComment.ShowModal;
    if fmCompareComment.ModalResult = mrOk then begin
      Screen.Cursor := crHourGlass;
      ImageEnVect1.SaveToStreamIEV(mStream);
      mStream.Position := 0;
      compare_id := IMAGE_LAYERS_SELID.Value;
      IMAGE_LAYERS_UPD.ParamByName('ID').Value := compare_id;
      IMAGE_LAYERS_UPD.ParamByName('C_NAME').AsString := fmCompareComment.Edit1.Text;
      IMAGE_LAYERS_UPD.ParamByName('C_COMMENT').AsString := fmCompareComment.Memo1.Text;
      IMAGE_LAYERS_UPD.ExecProc;
      ds_IMAGE_LAYERS_SEL.DataSet.Refresh;
      ds_IMAGE_LAYERS_SEL.DataSet.Locate('id', compare_id, []);
    end;
  finally
    mStream.Free;
    fmCompareComment.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmCompareWindow2.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('정말 삭제합니까?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    IMAGE_LAYERS_DEL.ParamByName('ID').Value := gridCompareWinID.EditValue;
    IMAGE_LAYERS_DEL.ExecProc;
    ds_IMAGE_LAYERS_SEL.DataSet.Refresh;
  end;
end;

procedure TfmCompareWindow2.BitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('CUST_ID').Value := CustomerImages.CustID;
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('P_DATE').Value := gridCheckP_DATE.EditValue;
    dmDBCommon.IMAGES_DEL_DATE.ExecProc;
    dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
  end;
end;

procedure TfmCompareWindow2.btnAddClick(Sender: TObject);
var
  sVal : string;
  compare_id : string;
  mStream : TMemoryStream;
begin
  fmCompareComment := TfmCompareComment.Create(self);
  mStream := TMemoryStream.Create;
  try
    fmCompareComment.ShowModal;
    if fmCompareComment.ModalResult = mrOk then begin
      Screen.Cursor := crHourGlass;

      if not ImageEnVect1.IsEmpty then begin
        ImageEnVect1.SaveToStreamAll(mStream);
        mStream.Position := 0;
        IMAGE_LAYERS_INS.ParamByName('MEMBER_ID').Value := CustomerImages.CustID;
        IMAGE_LAYERS_INS.ParamByName('P_DATE').Value := Date;
        IMAGE_LAYERS_INS.ParamByName('C_NAME').Value := fmCompareComment.Edit1.Text;
        IMAGE_LAYERS_INS.ParamByName('C_COMMENT').Value := fmCompareComment.Memo1.Text;
        IMAGE_LAYERS_INS.ParamByName('C_IMAGE').LoadFromStream(mStream, ftBlob);
        IMAGE_LAYERS_INS.ExecProc;
        ds_IMAGE_LAYERS_SEL.DataSet.Refresh;
      end;
    end;
  finally
    mStream.Free;
    fmCompareComment.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmCompareWindow2.btnAutoAlignClick(Sender: TObject);
var
  i : Integer;
  owidth : Integer;
begin
//  if ImageEnVect1.ObjectsCount > 0 then begin
//    for i := 0 to ImageEnVect1.ObjectsCount - 1 do begin
//      owidth := ImageEnVect1.ObjWidth[i];
//      ImageEnVect1.al
//    end;
//    ImageEnVect1.Update;
//  end;
end;

procedure TfmCompareWindow2.btnCustInfoClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmCompareWindow2.btnDeleteLayerAllClick(Sender: TObject);
begin
  ImageEnVect1.RemoveAllObjects;
  ImageEnVect1.Update;
end;

procedure TfmCompareWindow2.btnDeleteLayerClick(Sender: TObject);
var
  i : Integer;
begin
  if ImageEnVect1.SelObjectsCount > 0 then begin
    for i := ImageEnVect1.SelObjectsCount - 1 downto 0 do
      ImageEnVect1.RemoveObject(ImageEnVect1.selobjects[i]);
    ImageEnVect1.Update;
  end;
end;

procedure TfmCompareWindow2.btnFavoriteClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberFavorite := TfmMemberFavorite.Create(Self);
  try
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberFavorite.Top := pt.Y;
    fmMemberFavorite.Left := pt.X;
    fmMemberFavorite.ShowModal;
    if fmMemberFavorite.ModalResult = mrOk then begin
      RetrieveLayerData;
      if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
    end;
  finally
    fmMemberFavorite.Free;
  end;
end;

procedure TfmCompareWindow2.btnFindMemberClick(Sender: TObject);
var
  search_str : string;
  found_cnt : Integer;
begin
  search_str := '%' + edtName.Text + '%';
  dmDBCommon.SelectMember(search_str);
  found_cnt := dmDBCommon.CUSTOMER_SEARCH.RecordCount;
  LIST_LOADED := False;
  if found_cnt = 0 then begin
    ShowMessage('등록된 자료가 없습니다.');
    edtName.SetFocus;
    Exit;
  end else
  if found_cnt = 1 then begin
    CustomerImages.CustID := dmDBCommon.CUSTOMER_SEARCHUID.Value;
    CustomerImages.CustName := dmDBCommon.CUSTOMER_SEARCHCNAME.Value;
    CustomerImages.CustTel := dmDBCommon.CUSTOMER_SEARCHCTEL.Value;
    CustomerImages.CustSex := StrToInt(dmDBCommon.CUSTOMER_SEARCHSEX.Value);
    RetrieveMemberInfo;
    RetrieveLayerData;
    if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
  end;
  if found_cnt > 1 then begin
    fmMemberSelect := TfmMemberSelect.Create(Self);
    try
      Screen.Cursor := crHourGlass;
      fmMemberSelect.gsSearchStr := search_str;
      fmMemberSelect.ShowModal;
      if fmMemberSelect.ModalResult = mrOk then begin
        RetrieveMemberInfo;
        RetrieveLayerData;
        if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
      end;
    finally
      fmMemberSelect.Free;
      Screen.Cursor := crArrow;
    end;
  end;
end;

procedure TfmCompareWindow2.btnHistoryClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := CustomerImages.CustID;
    fmCustomerHistory.ShowModal;
  finally
    if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
    fmCustomerHistory.Free;
  end;
end;

procedure TfmCompareWindow2.btnLatelySelectClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberLastSelect := TfmMemberLastSelect.Create(Self);
  try
    LIST_LOADED := False;
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberLastSelect.Top := pt.Y;
    fmMemberLastSelect.Left := pt.X;
    fmMemberLastSelect.ShowModal;
    if fmMemberLastSelect.ModalResult = mrOk then begin
      CustomerImages.CustID := dmDBCommon.LATEST_CUSTOMER_SELCUST_ID.Value;
      CustomerImages.CustName := dmDBCommon.LATEST_CUSTOMER_SELCUST_NAME.Value;
      CustomerImages.CustTel := dmDBCommon.LATEST_CUSTOMER_SELCUST_TEL.Value;
      CustomerImages.CustSex := dmDBCommon.LATEST_CUSTOMER_SELCUST_SEX.Value;
      RetrieveMemberInfo;
      RetrieveLayerData;
      if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
    end;
  finally
    fmMemberLastSelect.Free;
  end;
end;

procedure TfmCompareWindow2.btnRefreshClick(Sender: TObject);
begin
  RetrieveMemberInfo;
  RetrieveLayerData;
  if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
end;

procedure TfmCompareWindow2.btnReportClick(Sender: TObject);
var
  mStream1, mStream2 : TMemoryStream;
begin
  ImageEnVect1Print.Proc.Clear;
  ImageEnVect1Print.RemoveAllObjects;
  if not ImageEnVect1.IsEmpty then begin
    ImageEnVect1.CopyAllObjectsTo(ImageEnVect1Print);
    ImageEnVect1Print.IEBitmap.Assign(ImageEnVect1.IEBitmap);
    ImageEnVect1Print.CopyObjectsToBack(False);
    ImageEnVect1Print.IO.DoPrintPreviewDialog(iedtDialog);
  end;
end;

procedure TfmCompareWindow2.CheckBox1Click(Sender: TObject);
begin
  ImageEnVect1.AutoFit := CheckBox1.Checked;
end;

procedure TfmCompareWindow2.compareGroupLeftTopClick(Sender: TObject);
var
  tno : integer;
begin
  tno := (Sender as TcxGroupBox).Tag;
  CurrentCompareWindow := tno;
end;

procedure TfmCompareWindow2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompareWindow2.FormShow(Sender: TObject);
begin
  ImageEnVect1.FitToHeight;
  if CustomerImages.CustID <> '' then begin
    RetrieveMemberInfo;
    LIST_LOADED := True;
  end;
end;

procedure TfmCompareWindow2.frmMemberSelect1edtNameChange(Sender: TObject);
begin
  IMAGE_LAYERS_SEL.ParamByName('M_ID').Value := CustomerImages.CustID;
  IMAGE_LAYERS_SEL.Open;
  ds_IMAGE_LAYERS_SEL.DataSet.Refresh;
end;

procedure TfmCompareWindow2.RetrieveThumbnailList;
var
  i, cnt, idx, thumb_id : integer;
  img_name, drw_name : string;
  mStream, dStream : TMemoryStream;
begin
  Screen.Cursor := crHourGlass;
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
        ImageEnMView1.Update();
      end;
      mStream.Free;
      IMAGES_SEL.Next;
    end;
  end;
  ImageEnMView1.UnlockPaint;
  ImageEnMView1.SelectedImage := 0;
  Screen.Cursor := crArrow;
end;

procedure TfmCompareWindow2.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCompareWindow2.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if LIST_LOADED then begin
    dmDBCommon.RetrievePictureByDate;
    RetrieveThumbnailList;
    RetrieveLayerData;
  end;
end;

procedure TfmCompareWindow2.gridCompareWinCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  compare_id : string;
  mStream : TMemoryStream;
begin
  Screen.Cursor := crHourGlass;
  mStream := TMemoryStream.Create;
  try
    ImageEnVect1.LockUpdate;
    ImageEnVect1.ClearAll;
    ImageEnVect1.RemoveAllObjects;
    compare_id := gridCompareWinID.EditValue;
    IMAGE_LAYERS_SEL_IMAGE.ParamByName('ID').Value := compare_id;
    IMAGE_LAYERS_SEL_IMAGE.Open;
    ds_IMAGE_LAYERS_SEL_IMAGE.DataSet.Refresh;
    IMAGE_LAYERS_SEL_IMAGEC_IMAGE.SaveToStream(mStream);
    mStream.Position := 0;

    ImageEnVect1.Clear;
    ImageEnVect1.RemoveAllObjects;
    ImageEnVect1.LoadFromStreamAll(mStream);
    ImageEnVect1.MouseInteractVt := ImageEnVect1.MouseInteractVt + [miObjectSelect];
    ImageEnVect1.FitToHeight;
    ImageEnVect1.Update;
    ImageEnVect1.UnLockUpdate;
  finally
    Screen.Cursor := crArrow;
  end;
end;


procedure TfmCompareWindow2.icbThumbSizePropertiesChange(Sender: TObject);
begin
  case icbThumbSize.EditValue of
    1: PanelThumb.Width := 170;
    2: PanelThumb.Width := 310;
    3: PanelThumb.Width := 445;
  end;
end;

procedure TfmCompareWindow2.ImageEnMView1DblClick(Sender: TObject);
var
  new_idx, idx, hobj, sWidth, sHeight : Integer;
  mStream : TMemoryStream;
  imgWidth, imgHeight, nWidth, iStart : Integer;
  i, cnt : Integer;
begin
  mStream := TMemoryStream.Create;
  try
    idx := ImageEnMView1.SelectedImage;
    with ImageEnVect1 do begin
      sWidth := IEBitmap.Width; // div 2;
      sHeight := IEBitmap.Height; // div 2;
      imgWidth := ImageEnMView1.ImageWidth[idx];
      imgHeight := ImageEnMView1.ImageHeight[idx];
      if imgHeight > ImageEnVect1.IEBitmap.Height then
        ImageEnVect1.IEBitmap.Allocate(imgWidth * 5, imgHeight);

      ImageEnMView1.GetImageToStream(idx, mStream, ioJPEG);
      mStream.Position := 0;

      iStart := 1;
      cnt := ImageEnVect1.ObjectsCount;
      for i := 0 to cnt - 1 do begin
        nWidth := ImageEnVect1.ObjWidth[i];
        iStart := iStart + nWidth + 1;
      end;
      SetObjBitmapFromStream(IEV_NEXT_INSERTED_OBJECT, mStream);
      ObjKind[IEV_NEXT_INSERTED_OBJECT] := iekBITMAP;
      ObjLeft[IEV_NEXT_INSERTED_OBJECT] := iStart;
      ObjTop[IEV_NEXT_INSERTED_OBJECT] := 0;
      ObjWidth[IEV_NEXT_INSERTED_OBJECT] := imgWidth;
      ObjHeight[IEV_NEXT_INSERTED_OBJECT] := imgHeight;
      new_idx := AddNewObject;
      ImageEnVect1.UnSelAllObjects;
      AddSelObject(new_idx);
      MouseInteractVt := MouseInteractVt + [miObjectSelect];
    end;
    ImageEnVect1.FitToHeight;
  finally
    mStream.Free;
  end;
end;

initialization RegisterClasses([TfmCompareWindow2]);

end.
