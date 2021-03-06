unit UfmCompareSimulate;

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
  dxBarBuiltInMenu, cxPC;

type
  TfmCompareSimulate = class(TForm)
    ImageEnMView: TImageEnMView;
    pnlMember: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckUID: TcxGridDBColumn;
    gridCheckCUST_UID: TcxGridDBColumn;
    gridCheckPICTURE_DATE: TcxGridDBColumn;
    gridCheckPIC_CNT: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    pnlNo: TPanel;
    pgcCompareFrame: TPanel;
    compareRight: TcxGroupBox;
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
    ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    btnRefresh: TBitBtn;
    compareLeft: TcxGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    ImageEnMView1: TImageEnMView;
    Splitter1: TSplitter;
    cxGroupBox4: TcxGroupBox;
    cxGrid2: TcxGrid;
    gridComp: TcxGridDBTableView;
    gridCompID: TcxGridDBColumn;
    gridCompMEMBER_ID: TcxGridDBColumn;
    gridCompCOMPARE_NAME: TcxGridDBColumn;
    gridCompIMAGE_CNT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnCompare: TBitBtn;
    btnAddToCompare: TcxButton;
    CUSTOMER_IMAGE3_SEL_UID: TUniStoredProc;
    CUSTOMER_IMAGE3_SEL_UIDID: TStringField;
    CUSTOMER_IMAGE3_SEL_UIDCHECK_ID: TStringField;
    CUSTOMER_IMAGE3_SEL_UIDCUST_UID: TStringField;
    CUSTOMER_IMAGE3_SEL_UIDIMAGE_IDX: TIntegerField;
    CUSTOMER_IMAGE3_SEL_UIDPICTURE_DATE: TDateTimeField;
    CUSTOMER_IMAGE3_SEL_UIDIMAGE_DATA: TBlobField;
    CUSTOMER_IMAGE3_SEL_UIDDRAW_DATA: TBlobField;
    CUST_COMPARE_MULTI_INS: TUniStoredProc;
    btnPlay: TcxButton;
    btnStopPlay: TcxButton;
    Label1: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    ImageEnView1: TImageEnView;
    Timer1: TTimer;
    speTime: TcxSpinEdit;
    btnDelImage: TcxButton;
    CUST_COMPARE_MULTI_DEL: TUniStoredProc;
    q_delete_compare_image: TUniQuery;
    btnFavorite: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure actThumbSaveAsExecute(Sender: TObject);
    procedure ActDeleteLayerExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ImageEnView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ImageEnView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnView2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure pnlNameClick(Sender: TObject);
    procedure actThumbDeleteExecute(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAddToCompareClick(Sender: TObject);
    procedure gridCompCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPlayClick(Sender: TObject);
    procedure btnStopPlayClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure speTimePropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDelImageClick(Sender: TObject);
    procedure pgcCompareFrameResize(Sender: TObject);
    procedure btnFavoriteClick(Sender: TObject);
  private
    procedure RetrieveCompareImage(image_id : string; var ImageEnVect : TImageEnVect);
    procedure RetrieveMemberInfo;
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    CURRENT_MEMBER_UID : string;
    IMAGE_CNT, PLAY_IDX : Integer;
  end;

var
  fmCompareSimulate: TfmCompareSimulate;

implementation

uses GlobalVar, uMemberSelect, UfmAnalyseRequestSelect, UdmDBCommon,
  UfmCustomerHistory, uMemberEditView, UfmMemberPicture, uMemberFavorite;

{$R *.dfm}

procedure TfmCompareSimulate.FormCreate(Sender: TObject);
begin
  IMAGE_CNT := 5;
  PLAY_IDX := 0;
  cxPageControl1.Properties.HideTabs := True;
end;

procedure TfmCompareSimulate.FormActivate(Sender: TObject);
begin
  if (GLOVAL_MEMBER_UID <> '') then begin
    if (CURRENT_MEMBER_UID <> GLOVAL_MEMBER_UID) then begin
      RetrieveMemberInfo;
    end;
  end;
end;

procedure TfmCompareSimulate.RetrieveMemberInfo;
begin
  CURRENT_MEMBER_UID := GLOVAL_MEMBER_UID;
  pnlName.Caption := GLOVAL_MEMBER_NAME;
  pnlNo.Caption := GLOVAL_MEMBER_TEL;
  cxGroupBox2.Refresh;

  dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);
  if gridCheck.DataController.RecordCount > 0 then begin
    dmDBCommon.SelectLocalPictureByID(GLOVAL_CHECK_DATA_UID);
    dmDBCommon.RetrieveLocalThumbnails(ImageEnMView);
  end else begin
    ImageEnMView.Clear;
  end;
  dmDBCommon.q_compare_data.ParamByName('mem_id').Value := GLOVAL_MEMBER_UID;
  dmDBCommon.q_compare_data.Active := True;
  dmDBCommon.d_compare_data.DataSet.Refresh;
  if gridComp.DataController.RecordCount > 0 then
    dmDBCommon.CreateCompareImage(ImageEnMView1, gridCompID.EditValue);

end;

procedure TfmCompareSimulate.btnPlayClick(Sender: TObject);
var
  i, cnt : Integer;
begin
  Timer1.Interval := speTime.Value * 100;
  IMAGE_CNT := ImageEnMView1.ImageCount;
  PLAY_IDX := 0;
  ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(PLAY_IDX));
  Timer1.Enabled := True;
  cxPageControl1.ActivePageIndex := 1;
end;

procedure TfmCompareSimulate.Timer1Timer(Sender: TObject);
begin
  ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(PLAY_IDX));
  ImageEnView1.Update;
  if PLAY_IDX < IMAGE_CNT - 1 then
    Inc(PLAY_IDX)
  else
    PLAY_IDX := 0;
end;

procedure TfmCompareSimulate.btnStopPlayClick(Sender: TObject);
begin
  Timer1.Enabled := False;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TfmCompareSimulate.speTimePropertiesEditValueChanged(Sender: TObject);
begin
  Timer1.Interval := speTime.Value * 100;
end;

procedure TfmCompareSimulate.ActDeleteLayerExecute(Sender: TObject);
begin
  if Application.MessageBox('정말 삭제합니까?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin

  end;
end;

procedure TfmCompareSimulate.actThumbDeleteExecute(Sender: TObject);
var
  i, cnt : integer;
  img_id : string;
begin
  if ImageEnMView.ImageCount > 0 then begin
    i := ImageEnMView.SelectedImage;
    img_id := ImageEnMView.ImageFileName[i];
    dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Locate('id', img_id, []);
    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
      + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      gridCheck.DataController.SaveBookmark;
      dmDBCommon.CUSTOMER_IMAGE3_DEL.ParamByName('id').Value := dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('id').Value;
      dmDBCommon.CUSTOMER_IMAGE3_DEL.ExecProc;
      dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Refresh;
      cnt := dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.RecordCount;

      dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('UID').Value := gridCheckUID.EditValue;
      dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('PIC_CNT').AsInteger := cnt;
      dmDBCommon.PICTURE_DATA_UPD_COUNT.ExecProc;
      dmDBCommon.d_picture_data.DataSet.Refresh;
      gridCheck.DataController.GotoBookmark;

      dmDBCommon.RetrieveThumbnails(ImageEnMView);
    end;
  end;
end;

procedure TfmCompareSimulate.actThumbSaveAsExecute(Sender: TObject);
var
  fname, img_id : string;
  i : integer;
  memStream : TMemoryStream;
begin
  if SaveImageEnDialog1.Execute then begin
    fname := SaveImageEnDialog1.FileName;
    i := ImageEnMView.SelectedImage;
    img_id := ImageEnMView.ImageFileName[i];
    dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Locate('id', img_id, []);
    memStream := TMemoryStream.Create;
    TBlobField(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('IMAGE_DATA')).SaveToStream(memStream);
    memStream.Position := 0;
    memStream.SaveToFile(fname);
    memStream.Free;
  end;
end;

procedure TfmCompareSimulate.btnAddClick(Sender: TObject);
var
  str_val : string;
const
  str1 = '비교자료 등록';
  str2 = '등록 비교자료명을 입력';
begin
  if InputQuery(str1, str2, str_val) then begin
    dmDBCommon.q_compare_data.Append;
    dmDBCommon.q_compare_dataMEMBER_ID.Value := GLOVAL_MEMBER_UID;
    dmDBCommon.q_compare_dataCOMPARE_NAME.Value := str_val;
    dmDBCommon.q_compare_dataIMAGE_CNT.Value := 0;
    dmDBCommon.q_compare_data.Post;
    dmDBCommon.d_compare_data.DataSet.Refresh;
  end;
end;

procedure TfmCompareSimulate.btnAddToCompareClick(Sender: TObject);
var
  d_id, pic_cnt : Integer;
  img_id : string;
begin
  if gridComp.DataController.RecordCount > 0 then begin
    d_id := gridCompID.EditValue;
    img_id := ImageEnMView.ImageFileName[ImageEnMView.SelectedImage];
    CUSTOMER_IMAGE3_SEL_UID.ParamByName('UID').Value := img_id;
    CUSTOMER_IMAGE3_SEL_UID.Active := True;
    CUSTOMER_IMAGE3_SEL_UID.Refresh;

    CUST_COMPARE_MULTI_INS.ParamByName('DATA_ID').Value := d_id;
    CUST_COMPARE_MULTI_INS.ParamByName('IMAGE_ID').Value := img_id;
    CUST_COMPARE_MULTI_INS.ParamByName('IMAGE_DATE').Value := CUSTOMER_IMAGE3_SEL_UIDPICTURE_DATE.Value;
    CUST_COMPARE_MULTI_INS.ExecProc;

    dmDBCommon.d_compare_data.DataSet.Refresh;
    dmDBCommon.d_compare_data.DataSet.Locate('ID', d_id, []);
  end else begin
    ShowMessage('비교데이터를 먼저 생성하세요.');
  end;
end;

procedure TfmCompareSimulate.btnCustInfoClick(Sender: TObject);
begin
  if GLOVAL_MEMBER_UID = '' then begin
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

procedure TfmCompareSimulate.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    dmDBCommon.d_compare_data.DataSet.Delete;
  end;
end;

procedure TfmCompareSimulate.btnDelImageClick(Sender: TObject);
var
  idx : Integer;
  img_id : string;
begin
  Screen.Cursor := crHourGlass;
  idx := ImageEnMView1.SelectedImage;
  img_id := ImageEnMView1.ImageFileName[idx];
  q_delete_compare_image.ParamByName('data_id').Value := gridCompID.EditValue;
  q_delete_compare_image.ParamByName('image_id').Value := img_id;
  q_delete_compare_image.ExecSQL;
  dmDBCommon.d_compare_data.DataSet.Refresh;
  dmDBCommon.CreateCompareImage(ImageEnMView1, gridCompID.EditValue);
  Screen.Cursor := crArrow;
end;

procedure TfmCompareSimulate.btnEditClick(Sender: TObject);
var
  str_val : string;
const
  str1 = '비교자료 수정';
  str2 = '수정 비교자료명을 입력';
begin
  str_val := dmDBCommon.q_compare_dataCOMPARE_NAME.Value;
  if InputQuery(str1, str2, str_val) then begin
    dmDBCommon.q_compare_data.Edit;
    dmDBCommon.q_compare_dataMEMBER_ID.Value := GLOVAL_MEMBER_UID;
    dmDBCommon.q_compare_dataCOMPARE_NAME.Value := str_val;
    dmDBCommon.q_compare_data.Post;
    dmDBCommon.d_compare_data.DataSet.Refresh;
  end;
end;

procedure TfmCompareSimulate.btnFavoriteClick(Sender: TObject);
begin
  fmMemberFavorite := TfmMemberFavorite.Create(Self);
  try
    fmMemberFavorite.ShowModal;
    if fmMemberFavorite.ModalResult = mrOk then begin
      RetrieveMemberInfo;
    end;
  finally
    fmMemberFavorite.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCompareSimulate.btnHistoryClick(Sender: TObject);
begin
  if GLOVAL_MEMBER_UID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := GLOVAL_MEMBER_UID;
    fmCustomerHistory.ShowModal;
  finally
    fmCustomerHistory.Free;
  end;
end;

procedure TfmCompareSimulate.btnRefreshClick(Sender: TObject);
begin
  RetrieveMemberInfo;
end;

procedure TfmCompareSimulate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompareSimulate.gridCheckCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  dmDBCommon.SelectLocalPictureByID(gridCheckUID.EditValue);
  dmDBCommon.RetrieveLocalThumbnails(ImageEnMView);
end;

procedure TfmCompareSimulate.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCompareSimulate.gridCompCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  dmDBCommon.CreateCompareImage(ImageEnMView1, gridCompID.EditValue);
end;

procedure TfmCompareSimulate.RetrieveCompareImage(image_id : string; var ImageEnVect : TImageEnVect);
var
  image_stream, draw_stream : TMemoryStream;
  img_date : string;
begin
  image_stream := TMemoryStream.Create;
  draw_stream := TMemoryStream.Create;
  dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Locate('id', image_id, []);
  TBlobField(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('image_data')).SaveToStream(image_stream);
  TBlobField(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('draw_data')).SaveToStream(draw_stream);
  img_date := DateTimeToStr(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('PICTURE_DATE').AsDateTime);
  image_stream.Position := 0;
  draw_stream.Position := 0;
  try
    with ImageEnVect do begin
      Proc.Clear;
      Hint := image_id;
      if image_stream.Size > 0 then
        IO.LoadFromStreamJpeg(image_stream);
    end;
  finally
    image_stream.Free;
    draw_stream.Free;
  end;
end;
procedure TfmCompareSimulate.ImageEnView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  idx : integer;
  image_stream, draw_stream : TMemoryStream;
  img_id, img_date : string;
begin
  idx := ImageEnMView.SelectedImage;
  img_id := ImageEnMView.ImageFileName[idx];
  image_stream := TMemoryStream.Create;
  draw_stream := TMemoryStream.Create;
  dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Locate('id', img_id, []);
  TBlobField(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('image_data')).SaveToStream(image_stream);
  TBlobField(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('draw_data')).SaveToStream(draw_stream);
  img_date := DateTimeToStr(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('PICTURE_DATE').AsDateTime);
  image_stream.Position := 0;
  draw_stream.Position := 0;
  try
    with (Sender as TImageEnView) do begin
      Proc.Clear;
      Hint := img_id;
      if image_stream.Size > 0 then
        IO.LoadFromStreamJpeg(image_stream);
    end;
  finally
    image_stream.Free;
    draw_stream.Free;
  end;
end;

procedure TfmCompareSimulate.ImageEnView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnMView then
    Accept := True;
end;

procedure TfmCompareSimulate.ImageEnView2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnMView then
    Accept := True;
end;

procedure TfmCompareSimulate.pgcCompareFrameResize(Sender: TObject);
begin
  compareLeft.Width := pgcCompareFrame.Width div 2;
  ImageEnMView.ThumbHeight := ImageEnMView.ClientHeight - 5;
  ImageEnMView.ThumbWidth := ImageEnMView.ClientHeight div 3;
  ImageEnMView1.ThumbHeight := ImageEnMView1.ClientHeight - 5;
  ImageEnMView1.ThumbWidth := ImageEnMView1.ClientHeight div 3;
end;

procedure TfmCompareSimulate.pnlNameClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      RetrieveMemberInfo;
    end;
  finally
    fmMemberSelect.Free;
    Screen.Cursor := crDefault;
  end;
end;

initialization RegisterClasses([TfmCompareSimulate]);

end.
