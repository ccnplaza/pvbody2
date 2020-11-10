unit UfmCompareList;

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
  cxTrackBar, dxZoomTrackBar, cxMaskEdit, cxSpinEdit, imageenio, iexActionsMulti;

type
  TfmCompareList = class(TForm)
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
    compareGroupLeftTop: TcxGroupBox;
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
    ImageListThumbnail: TImageList;
    ActAddLayer: TAction;
    ActSaveLayer: TAction;
    ActDeleteLayer: TAction;
    ActClearAll: TAction;
    ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    ImageEnMView: TImageEnMView;
    cxGroupBox3: TcxGroupBox;
    cxGrid2: TcxGrid;
    gridComp: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    q_compare_data: TUniQuery;
    UniQuery2: TUniQuery;
    UniQuery3: TUniQuery;
    q_compare_dataID: TIntegerField;
    q_compare_dataMEMBER_ID: TStringField;
    q_compare_dataCOMPARE_NAME: TStringField;
    d_compare_data: TDataSource;
    gridCompID: TcxGridDBColumn;
    gridCompMEMBER_ID: TcxGridDBColumn;
    gridCompCOMPARE_NAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageEnMView2EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure actThumbSaveAsExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlNameClick(Sender: TObject);
    procedure actThumbDeleteExecute(Sender: TObject);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ImageEnMViewDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    procedure RetrieveCompareImage(image_id : string; var ImageEnVect : TImageEnVect);
    procedure RunAnalyser;
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
  end;

var
  fmCompareList: TfmCompareList;

implementation

uses GlobalVar, uMemberSelect, UfmAnalyseRequestSelect, UdmDBCommon,
  UfmCustomerHistory, uMemberEditView, UfmPostureEditor;

{$R *.dfm}

procedure TfmCompareList.FormActivate(Sender: TObject);
begin
  if (GLOVAL_MEMBER_UID <> '') and (GLOVAL_CHECK_DATA_UID <> '') then begin
    pnlName.Caption := GLOVAL_MEMBER_NAME;
    pnlNo.Caption := GLOVAL_MEMBER_TEL;
    dmDBCommon.RetrieveThumbnails(ImageEnMView);
  end;
end;

procedure TfmCompareList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompareList.FormCreate(Sender: TObject);
begin
  ImageEnMView.ThumbHeight := ImageEnMView.Height - 20;
  ImageEnMView.ThumbWidth := ImageEnMView.Height div 3;
end;

procedure TfmCompareList.FormResize(Sender: TObject);
begin
  ImageEnMView.ThumbHeight := ImageEnMView.Height - 20;
  ImageEnMView.ThumbWidth := ImageEnMView.Height div 3;
end;

procedure TfmCompareList.actThumbDeleteExecute(Sender: TObject);
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

procedure TfmCompareList.actThumbSaveAsExecute(Sender: TObject);
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

procedure TfmCompareList.btnAddClick(Sender: TObject);
var
  str_val : string;
const
  str1 = '비교자료 등록';
  str2 = '등록 비교자료명을 입력';
begin
  if InputQuery(str1, str2, str_val) then begin
    q_compare_data.Append;
    q_compare_dataMEMBER_ID.Value := GLOVAL_MEMBER_UID;
    q_compare_dataCOMPARE_NAME.Value := str_val;
    q_compare_data.Post;
    d_compare_data.DataSet.Refresh;
  end;
end;

procedure TfmCompareList.btnEditClick(Sender: TObject);
var
  str_val : string;
const
  str1 = '비교자료 수정';
  str2 = '수정 비교자료명을 입력';
begin
  str_val := q_compare_dataCOMPARE_NAME.Value;
  if InputQuery(str1, str2, str_val) then begin
    q_compare_data.Edit;
    q_compare_dataMEMBER_ID.Value := GLOVAL_MEMBER_UID;
    q_compare_dataCOMPARE_NAME.Value := str_val;
    q_compare_data.Post;
    d_compare_data.DataSet.Refresh;
  end;
end;

procedure TfmCompareList.btnCustInfoClick(Sender: TObject);
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

procedure TfmCompareList.btnHistoryClick(Sender: TObject);
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

procedure TfmCompareList.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCompareList.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if Assigned(APrevFocusedRecord) and Assigned(AFocusedRecord) then begin
    if APrevFocusedRecord.RecordIndex <> AFocusedRecord.RecordIndex then begin
      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end;
  end;
end;

procedure TfmCompareList.RetrieveCompareImage(image_id : string; var ImageEnVect : TImageEnVect);
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
procedure TfmCompareList.ImageEnMView2EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  ImageEnMView.IEEndDrag;
  ImageEnMView.MouseInteract := [mmiScroll,mmiSelect];
end;

procedure TfmCompareList.ImageEnMViewDblClick(Sender: TObject);
begin
  RunAnalyser;
end;

procedure TfmCompareList.RunAnalyser;
var
  img_id : string;
  idx : Integer;
begin
  fmPostureEditor := TfmPostureEditor.Create(Self);
  try
    idx := ImageEnMView.SelectedImage;
    img_id := ImageEnMView.ImageFileName[idx];
    fmPostureEditor.IMAGE_ID := img_id;
    fmPostureEditor.frmImageEditor21.ImageEnVect1.Clear;
    fmPostureEditor.frmImageEditor21.ImageEnVect1.RemoveAllObjects;
    fmPostureEditor.frmImageEditor21.ImageEnVect1.Assign(ImageEnMView.GetTIEBitmap(idx));
    fmPostureEditor.frmImageEditor21.ImageEnVect1.Update;

    dmDBCommon.RetrieveDrawings(fmPostureEditor.frmImageEditor21.ImageEnVect1, img_id);

    fmPostureEditor.ShowModal;
  finally
    fmPostureEditor.Free;
  end;
end;

procedure TfmCompareList.pnlNameClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;

      dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);
      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
      //compare data list
//      q_compare_data.ParamByName('mem_id').Value := GLOVAL_MEMBER_UID;
//      q_compare_data.Active := True;
//      d_compare_data.DataSet.Refresh;
    end;
  finally
    fmMemberSelect.Free;
    Screen.Cursor := crDefault;
  end;
end;

initialization RegisterClasses([TfmCompareList]);

end.
