unit uCaptureNew;

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
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, UniProvider,
  InterBaseUniProvider, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, cxGroupBox, ExtCtrls, cxTextEdit, Menus, cxButtons,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, Registry,
  imageenview, ievect, ieview, iemview, imageenio, ieds, dxmdaset, dbimageenvect,
  VirtualTable, cxLabel, cxDBLabel, DBClient, Provider, ActnList, ImgList,
  ieopensavedlg, dxSkinOffice2013White, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, hyiedefs,
  iexActionsMulti, cxCalendar, cxImageComboBox, VidGrab, IniFiles,
  UfrmMemberSelect, dxBarBuiltInMenu, cxPC, DAAlerter, UniAlerter;

type
  TfmCaptureNew = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    pnlVideo: TPanel;
    pnlProcess: TPanel;
    lblCount: TLabel;
    lblMessage: TLabel;
    ActionThumbnail: TActionList;
    ImageListThumbnail: TImageList;
    actThumbWindowMax: TAction;
    actThumbWindowMin: TAction;
    actThumbDelete: TAction;
    actThumbSaveAs: TAction;
    PopupThumb: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    SaveImageEnDialog1: TSaveImageEnDialog;
    ActionControl: TActionList;
    ActCameraSetup: TAction;
    ActCameraRefresh: TAction;
    ActCameraOn: TAction;
    ActCameraOff: TAction;
    ActOpenImageFile: TAction;
    AcCameraCapture: TAction;
    ActRequestAnalyse: TAction;
    ActSaveConfig: TAction;
    ActClearScreen: TAction;
    ImageListControl: TImageList;
    PopupCamera: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    ON1: TMenuItem;
    OFF1: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    ActRetrieveThumbnail: TAction;
    ActAddPictureData: TAction;
    ActDelPictureData: TAction;
    PopupPicture: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    ActAutoFit: TAction;
    N16: TMenuItem;
    ActHoldCamera: TAction;
    ActCameraGuidline: TAction;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    PICTURE_DATA_INS: TUniStoredProc;
    PICTURE_DATA_DEL: TUniStoredProc;
    ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage;
    q_UpdatePictureData: TUniQuery;
    pnlRoot: TPanel;
    cxGroupBox2: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    pnlNo: TPanel;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckUID: TcxGridDBColumn;
    gridCheckCUST_UID: TcxGridDBColumn;
    gridCheckPICTURE_DATE: TcxGridDBColumn;
    gridCheckPIC_CNT: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    pnlPictureButton: TPanel;
    btnAdd: TBitBtn;
    btnDel: TBitBtn;
    btnEdit: TBitBtn;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Panel4: TPanel;
    btnDelThumb: TBitBtn;
    btnZoom: TBitBtn;
    btnSaveToFile: TBitBtn;
    ImageEnMViewSave1: TImageEnMViewSave;
    ImageEnMViewPromptToSave1: TImageEnMViewPromptToSave;
    btnFavorite: TBitBtn;
    btnReadyCapture: TBitBtn;
    PICTURE_DATA_UPD_ACTIVE: TUniStoredProc;
    PICTURE_DATA_CLEAR_ACTIVE: TUniStoredProc;
    ImageEnView1: TImageEnView;
    ImageEnMView: TImageEnMView;
    UniAlerter1: TUniAlerter;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure ActAddPictureDataExecute(Sender: TObject);
    procedure ActDelPictureDataExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure WebCopy1Error(Sender: TObject; ErrorCode: Integer);
    procedure pnlNameClick(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnFavoriteClick(Sender: TObject);
    procedure btnReadyCaptureClick(Sender: TObject);
    procedure btnZoomClick(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure btnDelThumbClick(Sender: TObject);
  private
    function GetPictureCount(check_id: string): integer;
    procedure ShowProcessMsg(msg, cnt_str: string; onoff: integer);
    procedure SaveNewImage(mem_stream: TMemoryStream);
    procedure DeleteServerData(image_id: integer);
    procedure SaveUserPicture(uid: string; memPic: TMemoryStream);
    procedure RetrieveMemberInfo;
    procedure RetrieveMemberImage;
    { Private declarations }
  public
    { Public declarations }
    THUMBNAIL_HEIGHT : integer;
    ActiveCameraNo : Integer;
    CURRENT_MEMBER_UID : string;
  end;

var
  fmCaptureNew: TfmCaptureNew;

implementation

uses GlobalVar, UdmDBCommon, uMemberSelect, UfmMemberPicture, UfmDateSelector,
  UfmThumbnails, UfmCustomerHistory, uMemberEditView, miscCameraControl,
  UfmPictureZoom, uMemberFavorite;

{$R *.dfm}

procedure AssignListToComboBox (ComboBox: TComboBox; List: String; Index: integer);
begin
   ComboBox.Items.Text := List;
   if (ComboBox.Items.Count > 0) and (Index >= 0) then begin
      ComboBox.ItemIndex := Index;
   end;
end;

procedure TfmCaptureNew.FormActivate(Sender: TObject);
begin
  if (GLOVAL_MEMBER_UID <> '') then begin
    if GLOVAL_MEMBER_UID = CURRENT_MEMBER_UID then begin
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;
    end else begin
      CURRENT_MEMBER_UID := GLOVAL_MEMBER_UID;
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;
    end;
    RetrieveMemberImage;
  end;
  UniAlerter1.Active := True;
end;

procedure TfmCaptureNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //SaveCameraSetting;
  Action := caFree;
end;

procedure TfmCaptureNew.FormCreate(Sender: TObject);
begin
  cxPageControl1.ActivePageIndex := 0;
end;
procedure TfmCaptureNew.FormResize(Sender: TObject);
begin
  pnlProcess.Top := (Height div 4);
  pnlProcess.Left := (Width div 2) - (pnlProcess.Width div 2);
  pnlProcess.Update;
  ImageEnMView.ThumbHeight := ImageEnMView.ClientHeight - 30;
  ImageEnMView.ThumbWidth := 280;
end;

procedure TfmCaptureNew.btnAddClick(Sender: TObject);
begin
  if GLOVAL_MEMBER_UID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmDateSelector := TfmDateSelector.Create(Self);
  try
    fmDateSelector.MonthCalendar1.Date := Date;
    fmDateSelector.ShowModal;
    if fmDateSelector.ModalResult = mrOk then begin
      dmDBCommon.PICTURE_DATA_INS.ParamByName('UID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
      dmDBCommon.PICTURE_DATA_INS.ParamByName('CUST_UID').Value := GLOVAL_MEMBER_UID;
      dmDBCommon.PICTURE_DATA_INS.ParamByName('PICTURE_DATE').Value := fmDateSelector.MonthCalendar1.Date;
      dmDBCommon.PICTURE_DATA_INS.ParamByName('PIC_CNT').Value := 0;
      dmDBCommon.PICTURE_DATA_INS.ParamByName('CHASU').Value := 0;
      dmDBCommon.PICTURE_DATA_INS.ExecProc;
      dmDBCommon.d_picture_data.DataSet.Refresh;
      dmDBCommon.d_picture_data.DataSet.Last;
//      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end;
  finally
    fmDateSelector.Free;
  end;
end;

procedure TfmCaptureNew.btnCustInfoClick(Sender: TObject);
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

procedure TfmCaptureNew.SaveUserPicture(uid : string; memPic :TMemoryStream);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(self);
  try
    memPic.Position := 0;
    with Query do begin
      Connection := dmDBCommon.UniDBConnection;
      SQL.Clear;
      SQL.Add('update customer set photo = :nphoto where uid = :uid');
      ParamByName('uid').AsString := uid;
      ParamByName('nphoto').LoadFromStream(memPic, ftBlob);
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmCaptureNew.btnDelClick(Sender: TObject);
var
  Query : TUniQuery;
begin
  if MessageDlg('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' + #13#10 +
    '삭제 할까요?',  mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    Query := TUniQuery.Create(self);
    Query.Connection := dmDBCommon.UniDBConnection;
    Query.SQL.Clear;
    Query.SQL.Text := 'DELETE FROM CUSTOMER_IMAGE3 WHERE CHECK_ID = ' + gridCheckUID.EditValue;
    Query.ExecSQL;

    dmDBCommon.PICTURE_DATA_DEL.ParamByName('UID').Value := gridCheckUID.EditValue;
    dmDBCommon.PICTURE_DATA_DEL.ExecProc;
    dmDBCommon.d_picture_data.DataSet.Refresh;
//    dmDBCommon.RetrieveThumbnailList(ImageEnMView);
  end;
end;

procedure TfmCaptureNew.btnDelThumbClick(Sender: TObject);
var
  img_id, i, cnt : integer;
  check_id, img_name : string;
begin
  cnt := ImageEnMView.ImageCount;
  for i := 0 to cnt - 1 do begin
    if ImageEnMView.IsSelected(i) then begin
      img_name := ImageEnMView.ImageFileName[i];
      img_id := ImageEnMView.ImageID[i];
      dmDBCommon.CUSTOMER_IMAGE4_DEL.ParamByName('id').Value := img_id;
      dmDBCommon.CUSTOMER_IMAGE4_DEL.ExecProc;
    end;
  end;
  ImageEnMView.DeleteSelectedImages;
  dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.Refresh;

  dmDBCommon.d_picture_data.DataSet.Refresh;
  dmDBCommon.d_picture_data.DataSet.Locate('uid', GLOVAL_CHECK_DATA_UID, []);
  RetrieveMemberImage;
end;

procedure TfmCaptureNew.btnEditClick(Sender: TObject);
var
  trow, crow : Integer;
begin
  fmDateSelector := TfmDateSelector.Create(Self);
  try
    fmDateSelector.MonthCalendar1.Date := gridCheckPICTURE_DATE.EditValue;
    fmDateSelector.ShowModal;
    if fmDateSelector.ModalResult = mrOk then begin
      q_UpdatePictureData.ParamByName('p_date').Value := fmDateSelector.MonthCalendar1.Date;
      q_UpdatePictureData.ParamByName('uid').Value := gridCheckUID.EditValue;
      q_UpdatePictureData.ExecSQL;
      trow := gridCheck.Controller.TopRowIndex;
      crow := gridCheck.Controller.FocusedRowIndex;
      dmDBCommon.d_picture_data.DataSet.Refresh;
      gridCheck.Controller.TopRowIndex := trow;
      gridCheck.DataController.FocusedRowIndex := crow;
    end;
  finally
    fmDateSelector.Free;
  end;
end;

procedure TfmCaptureNew.btnFavoriteClick(Sender: TObject);
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

procedure TfmCaptureNew.btnHistoryClick(Sender: TObject);
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

procedure TfmCaptureNew.btnReadyCaptureClick(Sender: TObject);
begin
  dmDBCommon.UniTransaction1.StartTransaction;
  PICTURE_DATA_CLEAR_ACTIVE.ExecProc;

  PICTURE_DATA_UPD_ACTIVE.ParamByName('UID').Value := gridCheckUID.EditValue;
  PICTURE_DATA_UPD_ACTIVE.ExecProc;
  dmDBCommon.UniTransaction1.Commit;
  ShowMessage('촬영준비가 완료되었습니다. 사진을 촬영하세요.');
end;

procedure TfmCaptureNew.btnZoomClick(Sender: TObject);
begin
  fmPictureZoom := TfmPictureZoom.Create(Self);
  try
    fmPictureZoom.ImageEnView1.IEBitmap.Assign(ImageEnMView.GetBitmap(ImageEnMView.SelectedImage));
    fmPictureZoom.ShowModal;
  finally
    fmPictureZoom.Free;
  end;
end;

procedure TfmCaptureNew.ShowProcessMsg(msg, cnt_str : string ; onoff : integer);
begin
  if onoff = 1 then begin
    lblMessage.Caption := msg;
    lblCount.Caption := cnt_str;
    pnlProcess.Visible := True;
    pnlProcess.Update;
  end else
    pnlProcess.Visible := False;
end;

procedure TfmCaptureNew.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  RetrieveMemberImage;
end;

procedure TfmCaptureNew.RetrieveMemberImage;
var
  img_id, i, cnt, r : Integer;
  img_name, img_url : string;
  mem_stream : TMemoryStream;
const
  server_url = 'http://www.bodycheck.co.kr/images/';
begin
  Screen.Cursor := crHourGlass;
  img_url := server_url + LoginUserCompID + '/';
  GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
  dmDBCommon.CUSTOMER_IMAGE4_SEL.ParamByName('chk_id').AsString := GLOVAL_CHECK_DATA_UID;
  dmDBCommon.CUSTOMER_IMAGE4_SEL.Active := True;
  dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.Refresh;
  cnt := dmDBCommon.CUSTOMER_IMAGE4_SEL.RecordCount;
  dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.First;
  ImageEnMView.Clear;
  ImageEnMView.LockUpdate;
  for i := 0 to cnt - 1 do begin
    mem_stream := TMemoryStream.Create;
    img_id := dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.FieldByName('id').AsInteger;
    img_name := dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.FieldByName('image_name').AsString;
    ImageEnView1.IO.LoadFromURL(img_url + img_name);
    ImageEnView1.Proc.Rotate(-90);
    ImageEnView1.IO.SaveToStreamJpeg(mem_stream);
    mem_stream.Position := 0;
    r := ImageEnMView.AppendImage;
    ImageEnMView.SetImageFromStream(r, mem_stream, 0);
    ImageEnMView.ImageFileName[r] := img_name;
    ImageEnMView.ImageID[r] := img_id;
    dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.Next;
    mem_stream.Free;
  end;
  ImageEnMView.UnLockUpdate;
  ImageEnMView.ThumbnailDisplayFilter := rfLanczos3;
  ImageEnMView.Repaint;
  Screen.Cursor := crArrow;
end;

procedure TfmCaptureNew.WebCopy1Error(Sender: TObject; ErrorCode: Integer);
begin
  ShowMessage(IntToStr(ErrorCode));
end;

function TfmCaptureNew.GetPictureCount(check_id : string) : integer;
var
  Qry : TUniQuery;
  cnt : Integer;
begin
  Qry := TUniQuery.Create(nil);
  Qry.Connection := dmDBCommon.UniDBConnection;
  with Qry do begin
    SQL.Clear;
    SQL.Add('select Count(*) as cnt from CUSTOMER_IMAGE3 ');
    SQL.Add('where check_id = :check_id ;');
    ParamByName('check_id').AsString := check_id;
    Active := True;
  end;
  cnt := Qry.FieldByName('cnt').AsInteger;
  if cnt >= 0 then
    Result := cnt + 1
  else
    Result := 1;
end;

procedure TfmCaptureNew.gridCheckCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  RetrieveMemberImage;
end;

procedure TfmCaptureNew.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCaptureNew.DeleteServerData(image_id : integer);
var
  Qry : TUniQuery;
begin
  Qry := TUniQuery.Create(nil);
  Qry.Connection := dmDBCommon.UniDBConnection;
  with Qry do begin
    SQL.Clear;
    SQL.Add('delete from CUSTOMER_IMAGE3 ');
    SQL.Add('where id = :image_id ;');
    ParamByName('image_id').AsInteger := image_id;
    Execute;
  end;
end;

procedure TfmCaptureNew.pnlNameClick(Sender: TObject);
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

procedure TfmCaptureNew.RetrieveMemberInfo;
begin
  pnlName.Caption := GLOVAL_MEMBER_NAME;
  pnlNo.Caption := GLOVAL_MEMBER_TEL;
  cxGroupBox2.Refresh;
  cxPageControl1.ActivePageIndex := 0;
  dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);
end;

procedure TfmCaptureNew.SaveNewImage(mem_stream : TMemoryStream);
var
  pic_cnt : integer;
begin
  if not dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Active then
    dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Open;
  pic_cnt := dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.RecordCount;
  mem_stream.Position := 0;

  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('CHECK_ID').Value := GLOVAL_CHECK_DATA_UID;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('CUST_UID').Value := GLOVAL_MEMBER_UID;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('IMAGE_IDX').Value  := pic_cnt + 1;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('PICTURE_DATE').Value := Now;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('IMAGE_DATA').LoadFromStream(mem_stream, ftBlob);
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('DRAW_DATA').Clear;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ExecProc;

  dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Refresh;
  dmDBCommon.d_picture_data.DataSet.Refresh;
end;

procedure TfmCaptureNew.ActAddPictureDataExecute(Sender: TObject);
var
  data_id : string;
begin
  if GLOVAL_MEMBER_UID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  data_id := FormatDateTime('yyyymmddhhnnsszzz', now);
  PICTURE_DATA_INS.ParamByName('UID').Value := data_id;
  PICTURE_DATA_INS.ParamByName('CUST_UID').Value := GLOVAL_MEMBER_UID;
  PICTURE_DATA_INS.ParamByName('PICTURE_DATE').Value := Date;
  PICTURE_DATA_INS.ParamByName('PIC_CNT').Value := 0;
  PICTURE_DATA_INS.ParamByName('CHASU').Value := 0;
  PICTURE_DATA_INS.ExecProc;
  dmDBCommon.d_picture_data.DataSet.Refresh;
  dmDBCommon.d_picture_data.DataSet.Last;
end;

procedure TfmCaptureNew.ActDelPictureDataExecute(Sender: TObject);
begin
  if MessageDlg('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' + #13#10 +
    '삭제 할까요?',  mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    PICTURE_DATA_DEL.ParamByName('UID').Value := GLOVAL_CHECK_DATA_UID;
    PICTURE_DATA_DEL.ExecProc;
    dmDBCommon.d_picture_data.DataSet.Refresh;
  end;
end;

initialization RegisterClasses([TfmCaptureNew]);

end.
