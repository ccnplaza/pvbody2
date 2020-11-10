unit UfmMovementCheck;

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
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, cxImage, cxMemo,
  Menus, DBAccess, Uni, imageenview, ievect, StdCtrls, cxButtons, ExtCtrls,
  MemDS, Buttons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox, ieview,
  iemview, VirtualTable, cxLabel, cxDBLabel, DBClient, Provider, UniProvider,
  InterBaseUniProvider, cxDBLookupComboBox, cxImageComboBox, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit,
  ImgList, ieopensavedlg, ActnList, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfmMovementCheck = class(TForm)
    pnlThumbnail: TPanel;
    ImageEnMView: TImageEnMView;
    Panel1: TPanel;
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
    Panel16: TPanel;
    Panel6: TPanel;
    Panel19: TPanel;
    Label2: TLabel;
    chkMoveFit: TCheckBox;
    ImageEnVect4: TImageEnVect;
    pnlProcess: TPanel;
    lblCount: TLabel;
    lblMessage: TLabel;
    cxGroupBox6: TcxGroupBox;
    q_result_value: TUniQuery;
    d_result_value: TDataSource;
    t_item_text: TUniTable;
    t_item_question_text: TUniTable;
    d_item_text: TDataSource;
    d_item_question_text: TDataSource;
    cxGrid3: TcxGrid;
    gridStaticResults: TcxGridDBTableView;
    gridStaticResultsID: TcxGridDBColumn;
    gridStaticResultsMOVEMENT_RESULT_ID: TcxGridDBColumn;
    gridStaticResultsCHECK_ITEM_ID: TcxGridDBColumn;
    gridStaticResultsCHECK_POINT_ID: TcxGridDBColumn;
    gridStaticResultsCHECK_VALUE: TcxGridDBColumn;
    gridStaticResultsCUSTOMER_ID: TcxGridDBColumn;
    gridStaticResultsCOMPANY_ID: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox5: TcxGroupBox;
    btnNormal: TcxButton;
    btnSmall: TcxButton;
    btnMiddle: TcxButton;
    btnBig: TcxButton;
    btnMoveReport: TcxButton;
    btnMoveGuide: TcxButton;
    ImageList1: TImageList;
    chkShowDraw: TCheckBox;
    Panel2: TPanel;
    btnAddData: TBitBtn;
    btnOpenImage: TBitBtn;
    t_item_textUID: TStringField;
    t_item_textITEM_NAME: TStringField;
    t_item_textIDX: TIntegerField;
    t_item_question_textUID: TStringField;
    t_item_question_textITEM_UID: TStringField;
    t_item_question_textITEM_QUESTION: TStringField;
    t_item_question_textIDX: TIntegerField;
    q_result_valueID: TStringField;
    q_result_valueMOVEMENT_RESULT_ID: TStringField;
    q_result_valueCHECK_POINT_ID: TStringField;
    q_result_valueCHECK_VALUE: TIntegerField;
    q_result_valueCUSTOMER_ID: TStringField;
    q_result_valueCOMPANY_ID: TStringField;
    q_result_valueCHECK_ITEM_ID: TStringField;
    Splitter1: TSplitter;
    PopupThumb: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ActionThumbnail: TActionList;
    actThumbWindowMax: TAction;
    actThumbWindowMin: TAction;
    actThumbDelete: TAction;
    actThumbSaveAs: TAction;
    ImageListThumbnail: TImageList;
    SaveImageEnDialog1: TSaveImageEnDialog;
    ActionResult: TActionList;
    ActNormal: TAction;
    ActSmall: TAction;
    ActMiddle: TAction;
    ActBig: TAction;
    ActResultView: TAction;
    ActPracticeList: TAction;
    PopupResult: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkMoveFitClick(Sender: TObject);
    procedure ImageEnMViewDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ShowProcessMsg(msg, cnt_str: string; onoff: integer);
    procedure gridCheckCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gridResultColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnOpenImageClick(Sender: TObject);
    procedure btnAddDataClick(Sender: TObject);
    procedure actThumbWindowMaxExecute(Sender: TObject);
    procedure actThumbWindowMinExecute(Sender: TObject);
    procedure actThumbSaveAsExecute(Sender: TObject);
    procedure pnlThumbnailResize(Sender: TObject);
    procedure ActNormalExecute(Sender: TObject);
    procedure ActSmallExecute(Sender: TObject);
    procedure ActMiddleExecute(Sender: TObject);
    procedure ActBigExecute(Sender: TObject);
    procedure ActResultViewExecute(Sender: TObject);
    procedure ActPracticeListExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlNameClick(Sender: TObject);
  private
    function RetrieveMoveResultData: integer;
    procedure CreateStaticCheckData(checkset_id: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovementCheck: TfmMovementCheck;

implementation

uses GlobalVar, uMemberSelect, uMovementGuide, ufmMovementResultView,
  UfmAnalyseRequestSelect, UdmDBCommon;

{$R *.dfm}

procedure TfmMovementCheck.FormActivate(Sender: TObject);
begin
  if (GLOVAL_MEMBER_UID <> '') and (GLOVAL_CHECK_DATA_UID <> '') then begin
    pnlName.Caption := GLOVAL_MEMBER_NAME;
    pnlNo.Caption := GLOVAL_MEMBER_TEL;
    dmDBCommon.RetrieveThumbnails(ImageEnMView);

    q_result_value.ParamByName('RESULT_ID').AsString := GLOVAL_CHECK_DATA_UID;
    q_result_value.Active := True;
    d_result_value.DataSet.Refresh;
  end;
end;

procedure TfmMovementCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMovementCheck.FormShow(Sender: TObject);
begin
  ImageEnVect4.Blank;
  ImageEnVect4.AutoFit := True;
  ImageEnVect4.AutoStretch := True;
  ImageEnVect4.MouseInteract := [miZoom, miScroll];
  t_item_text.Active := True;
  t_item_question_text.Active := True;
end;

procedure TfmMovementCheck.ShowProcessMsg(msg, cnt_str: string; onoff: integer);
begin
  if onoff = 1 then begin
    lblMessage.Caption := msg;
    lblCount.Caption := cnt_str;
    pnlProcess.Visible := True;
    pnlProcess.Update;
  end else
    pnlProcess.Visible := False;
end;

procedure TfmMovementCheck.CreateStaticCheckData(checkset_id : string);
var
  i, cnt : integer;
  strID : string;
begin
  q_result_value.DisableControls;
  strID := FormatDateTime('yyyymmddhhnnsszzz', now);
  cnt := t_item_question_text.RecordCount;
  t_item_question_text.First;
  for i := 0 to cnt - 1 do begin
    q_result_value.Append;
    q_result_valueID.AsString := IntToStr(StrToInt64(strID) + i);
    q_result_valueMOVEMENT_RESULT_ID.AsString := checkset_id;
    q_result_valueCHECK_POINT_ID.AsString := t_item_question_textUID.AsString;
    q_result_valueCHECK_ITEM_ID.AsString := t_item_question_textITEM_UID.AsString;
    q_result_valueCHECK_VALUE.AsInteger := 1;
    q_result_value.Post;
    t_item_question_text.Next;
  end;
  q_result_value.First;
  q_result_value.EnableControls;
end;

procedure TfmMovementCheck.ActBigExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 4;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmMovementCheck.ActMiddleExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 3;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmMovementCheck.ActNormalExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 1;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmMovementCheck.ActPracticeListExecute(Sender: TObject);
begin
  fmMovementGuide := TfmMovementGuide.Create(Self);
  fmMovementGuide.Show;
end;

procedure TfmMovementCheck.ActResultViewExecute(Sender: TObject);
begin
  fmMovementResultView := TfmMovementResultView.Create(Self);
  try
    fmMovementResultView.ShowModal;
  finally
    fmMovementResultView.Free;
  end;
end;

procedure TfmMovementCheck.ActSmallExecute(Sender: TObject);
begin
  q_result_value.Edit;
  q_result_valueCHECK_VALUE.AsInteger := 2;
  q_result_value.Post;
  if not q_result_value.Eof then
    q_result_value.Next;
end;

procedure TfmMovementCheck.actThumbSaveAsExecute(Sender: TObject);
var
  fname, img_id : string;
  i : integer;
  memStream : TMemoryStream;
begin
  if SaveImageEnDialog1.Execute then begin
    fname := SaveImageEnDialog1.FileName;
    i := ImageEnMView.SelectedImage;
    img_id := ImageEnMView.ImageFileName[i];
    dmDBCommon.d_customer_image.DataSet.Locate('id', img_id, []);
    memStream := TMemoryStream.Create;
    TBlobField(dmDBCommon.d_customer_image.DataSet.FieldByName('IMAGE_DATA')).SaveToStream(memStream);
    memStream.Position := 0;
    memStream.SaveToFile(fname);
    memStream.Free;
  end;
end;

procedure TfmMovementCheck.actThumbWindowMaxExecute(Sender: TObject);
begin
  pnlThumbnail.Height := 190;
end;

procedure TfmMovementCheck.actThumbWindowMinExecute(Sender: TObject);
begin
  pnlThumbnail.Height := 60;
end;

procedure TfmMovementCheck.btnAddDataClick(Sender: TObject);
begin
  if q_result_value.RecordCount > 0 then
    ShowMessage('해당 날짜의 결과자료가 있습니다.')
  else
    CreateStaticCheckData(GLOVAL_CHECK_DATA_UID);
end;

procedure TfmMovementCheck.btnOpenImageClick(Sender: TObject);
begin
  dmDBCommon.RetrieveThumbnails(ImageEnMView);
end;

procedure TfmMovementCheck.chkMoveFitClick(Sender: TObject);
begin
  ImageEnVect4.AutoFit := chkMoveFit.Checked;
  ImageEnVect4.AutoStretch := chkMoveFit.Checked;
end;

procedure TfmMovementCheck.gridCheckCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
  q_result_value.ParamByName('RESULT_ID').AsString := GLOVAL_CHECK_DATA_UID;
  q_result_value.Active := True;
  d_result_value.DataSet.Refresh;
end;

procedure TfmMovementCheck.gridCheckCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  dmDBCommon.RetrieveThumbnails(ImageEnMView);
end;

procedure TfmMovementCheck.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

function TfmMovementCheck.RetrieveMoveResultData : integer;
begin
end;

procedure TfmMovementCheck.gridResultColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmMovementCheck.ImageEnMViewDblClick(Sender: TObject);
var
  idx : integer;
  image_stream, draw_stream : TMemoryStream;
  img_id : string;
begin
  Screen.Cursor := crHourGlass;
  image_stream := TMemoryStream.Create;
  draw_stream := TMemoryStream.Create;
  ShowProcessMsg('사진 여는중...', '', 1);
  try
    idx := ImageEnMView.SelectedImage;
    img_id := ImageEnMView.ImageFileName[idx];

    dmDBCommon.d_customer_image.DataSet.Locate('id', img_id, []);
    TBlobField(dmDBCommon.d_customer_image.DataSet.FieldByName('image_data')).SaveToStream(image_stream);
    TBlobField(dmDBCommon.d_customer_image.DataSet.FieldByName('draw_data')).SaveToStream(draw_stream);

    ImageEnVect4.Proc.Clear;
    ImageEnVect4.RemoveAllObjects;

    if image_stream.Size > 0 then begin
      image_stream.Position := 0;
      ImageEnVect4.IO.LoadFromStreamJpeg(image_stream);
    end;

    if chkShowDraw.Checked then begin
      if draw_stream.Size > 0 then begin
        draw_stream.Position := 0;
        ImageEnVect4.LoadFromStreamIEV(draw_stream);
      end;
    end;
  finally
    image_stream.Free;
    draw_stream.Free;
    ShowProcessMsg('사진 저장중...', '', 0);
    Screen.Cursor := crDefault;
  end;
end;


procedure TfmMovementCheck.pnlNameClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      ShowProcessMsg('자료 추출중...', '', 1);
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;

      dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);

      GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
      q_result_value.ParamByName('RESULT_ID').AsString := GLOVAL_CHECK_DATA_UID;
      q_result_value.Active := True;
      d_result_value.DataSet.Refresh;
    end;
  finally
    fmMemberSelect.Free;
    ShowProcessMsg('', '', 0);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMovementCheck.pnlThumbnailResize(Sender: TObject);
begin
  ImageEnMView.ThumbHeight := pnlThumbnail.height - 4;
  ImageEnMView.ThumbWidth := ImageEnMView.ThumbHeight div 2;
end;

initialization RegisterClasses([TfmMovementCheck]);

end.
