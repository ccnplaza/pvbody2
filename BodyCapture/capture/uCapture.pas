unit uCapture;

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
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, WebImage, WebCopy,
  iexActionsMulti, cxCalendar, cxImageComboBox, VidGrab, IniFiles,
  dxBarBuiltInMenu, cxPC;

type
  TfmCapture = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    pnlVideo: TPanel;
    ImageEnVect2: TImageEnVect;
    pnlProcess: TPanel;
    lblCount: TLabel;
    lblMessage: TLabel;
    ImageEnVect3: TImageEnVect;
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
    Panel1: TPanel;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel5: TCategoryPanel;
    chkFitSize: TCheckBox;
    CategoryPanel3: TCategoryPanel;
    RecorderCAM3: TVideoGrabber;
    cboVideoDevices3: TComboBox;
    cboVideoFormats3: TComboBox;
    btnStartPreview3: TcxButton;
    btnStopPreview3: TcxButton;
    cbRotation3: TcxImageComboBox;
    CategoryPanel2: TCategoryPanel;
    RecorderCAM2: TVideoGrabber;
    cboVideoDevices2: TComboBox;
    cboVideoFormats2: TComboBox;
    btnStartPreview2: TcxButton;
    btnStopPreview2: TcxButton;
    cbRotation2: TcxImageComboBox;
    CategoryPanel1: TCategoryPanel;
    RecorderCAM1: TVideoGrabber;
    cboVideoDevices1: TComboBox;
    cboVideoFormats1: TComboBox;
    btnStartPreview1: TcxButton;
    btnStopPreview1: TcxButton;
    cbRotation1: TcxImageComboBox;
    chkCrossGuideLine: TCheckBox;
    btnImportPicture: TBitBtn;
    btnClearScreen: TBitBtn;
    btnActClearScreen: TBitBtn;
    btnMakePicture: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSet1: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    btnCaptureFace: TBitBtn;
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
    Label4: TLabel;
    lblImageSize: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    ImageEnMView: TImageEnMView;
    Panel5: TPanel;
    btnDelThumb: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnMakePictureClick(Sender: TObject);
    procedure ImageEnVect2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVect2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure actThumbSaveAsExecute(Sender: TObject);
    procedure ActClearScreenExecute(Sender: TObject);
    procedure ActOpenImageFileExecute(Sender: TObject);
    procedure AcCameraCaptureExecute(Sender: TObject);
    procedure ActAddPictureDataExecute(Sender: TObject);
    procedure ActDelPictureDataExecute(Sender: TObject);
    procedure ActRetrieveThumbnailExecute(Sender: TObject);
    procedure ActionThumbnailExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure ActAutoFitExecute(Sender: TObject);
    procedure ActHoldCameraExecute(Sender: TObject);
    procedure ActCameraGuidlineExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actThumbDeleteExecute(Sender: TObject);
    procedure WebCopy1Error(Sender: TObject; ErrorCode: Integer);
    procedure ImageEnMViewImageSelect(Sender: TObject; idx: Integer);
    procedure pnlNameClick(Sender: TObject);
    procedure btnDelThumbClick(Sender: TObject);
    procedure btnActClearScreenClick(Sender: TObject);
    procedure cboVideoDevices1Click(Sender: TObject);
    procedure cboVideoFormats1Click(Sender: TObject);
    procedure btnStartPreview1Click(Sender: TObject);
    procedure btnStopPreview1Click(Sender: TObject);
    procedure cbRotation1PropertiesEditValueChanged(Sender: TObject);
    procedure RecorderCAM1FrameBitmap(Sender: TObject; FrameInfo: pFrameInfo;
      BitmapInfo: pFrameBitmapInfo);
    procedure RecorderCAM1DblClick(Sender: TObject);
    procedure RecorderCAM2FrameBitmap(Sender: TObject; FrameInfo: pFrameInfo;
      BitmapInfo: pFrameBitmapInfo);
    procedure RecorderCAM3FrameBitmap(Sender: TObject; FrameInfo: pFrameInfo;
      BitmapInfo: pFrameBitmapInfo);
    procedure RecorderCAM1DeviceArrivalOrRemoval(Sender: TObject;
      IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: string;
      DeviceIndex: Integer);
    procedure RecorderCAM2DeviceArrivalOrRemoval(Sender: TObject;
      IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: string;
      DeviceIndex: Integer);
    procedure RecorderCAM3DeviceArrivalOrRemoval(Sender: TObject;
      IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: string;
      DeviceIndex: Integer);
    procedure RecorderCAM1DeviceLost(Sender: TObject);
    procedure RecorderCAM2DeviceLost(Sender: TObject);
    procedure RecorderCAM3DeviceLost(Sender: TObject);
    procedure RecorderCAM1VideoDeviceSelected(Sender: TObject);
    procedure RecorderCAM2VideoDeviceSelected(Sender: TObject);
    procedure RecorderCAM3VideoDeviceSelected(Sender: TObject);
    procedure btnSet1Click(Sender: TObject);
    procedure btnCaptureFaceClick(Sender: TObject);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
  private
    function GetPictureCount(check_id: string): integer;
    procedure ShowProcessMsg(msg, cnt_str: string; onoff: integer);
    procedure SaveNewImage(mem_stream: TMemoryStream);
    procedure DeleteServerData(image_id: integer);
    procedure RefreshDeviceControls1;
    procedure RefreshDeviceControls2;
    procedure RefreshDeviceControls3;
    procedure LoadCameraSetting;
    procedure SaveCameraSetting;
    procedure SaveUserPicture(uid: string; memPic: TMemoryStream);
    { Private declarations }
  public
    { Public declarations }
    THUMBNAIL_HEIGHT : integer;
    ActiveCameraNo : Integer;
    CURRENT_MEMBER_UID : string;
  end;

var
  fmCapture: TfmCapture;

implementation

uses GlobalVar, UdmDBCommon, uMemberSelect, UfmMemberPicture, UfmDateSelector,
  UfmThumbnails, uMemberEditView, miscCameraControl, UfmHistoryEdit,
  UfmCustomerHistory;

{$R *.dfm}

procedure AssignListToComboBox (ComboBox: TComboBox; List: String; Index: integer);
begin
   ComboBox.Items.Text := List;
   if (ComboBox.Items.Count > 0) and (Index >= 0) then begin
      ComboBox.ItemIndex := Index;
   end;
end;

procedure TfmCapture.LoadCameraSetting;
var
  iniFileName : string;
  FIni : TIniFile;
begin
  iniFileName := gsDefaultFolder + 'CameraSetting.ini';
  FIni := TIniFile.Create(iniFileName);
  cboVideoDevices1.ItemIndex := FIni.ReadInteger('Camera1', 'Device', -1);
  cboVideoDevices2.ItemIndex := FIni.ReadInteger('Camera2', 'Device', -1);
  cboVideoDevices3.ItemIndex := FIni.ReadInteger('Camera3', 'Device', -1);

  cboVideoFormats1.ItemIndex := FIni.ReadInteger('Camera1', 'Size', 0);
  cboVideoFormats2.ItemIndex := FIni.ReadInteger('Camera2', 'Size', 0);
  cboVideoFormats3.ItemIndex := FIni.ReadInteger('Camera3', 'Size', 0);

  cbRotation1.ItemIndex := FIni.ReadInteger('Camera1', 'Rotate', 0);
  cbRotation2.ItemIndex := FIni.ReadInteger('Camera2', 'Rotate', 0);
  cbRotation3.ItemIndex := FIni.ReadInteger('Camera3', 'Rotate', 0);
end;

procedure TfmCapture.SaveCameraSetting;
var
  iniFileName : string;
  FIni : TIniFile;
begin
  iniFileName := gsDefaultFolder + 'CameraSetting.ini';
  FIni := TIniFile.Create(iniFileName);

  FIni.WriteInteger('Camera1', 'Device', cboVideoDevices1.ItemIndex);
  FIni.WriteInteger('Camera2', 'Device', cboVideoDevices2.ItemIndex);
  FIni.WriteInteger('Camera3', 'Device', cboVideoDevices3.ItemIndex);

  FIni.WriteInteger('Camera1', 'Size', cboVideoFormats1.ItemIndex);
  FIni.WriteInteger('Camera2', 'Size', cboVideoFormats2.ItemIndex);
  FIni.WriteInteger('Camera3', 'Size', cboVideoFormats3.ItemIndex);

  FIni.WriteInteger('Camera1', 'Rotate', cbRotation1.ItemIndex);
  FIni.WriteInteger('Camera2', 'Rotate', cbRotation2.ItemIndex);
  FIni.WriteInteger('Camera3', 'Rotate', cbRotation3.ItemIndex);
end;

procedure TfmCapture.FormActivate(Sender: TObject);
begin
  if (GLOVAL_MEMBER_UID <> '') then begin
    if GLOVAL_MEMBER_UID = CURRENT_MEMBER_UID then begin
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;
      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end else begin
      CURRENT_MEMBER_UID := GLOVAL_MEMBER_UID;
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;
      dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);
      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end;
  end;
end;

procedure TfmCapture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //SaveCameraSetting;
  RecorderCAM1.StopPreview;
  RecorderCAM2.StopPreview;
  RecorderCAM3.StopPreview;
  RecorderCAM1.Free;
  RecorderCAM2.Free;
  RecorderCAM3.Free;
  Action := caFree;
end;

procedure TfmCapture.FormCreate(Sender: TObject);
begin
  AssignListToComboBox (cboVideoDevices1, RecorderCAM1.VideoDevices, RecorderCAM1.VideoDevice);
  AssignListToComboBox (cboVideoDevices2, RecorderCAM2.VideoDevices, RecorderCAM2.VideoDevice);
  AssignListToComboBox (cboVideoDevices3, RecorderCAM3.VideoDevices, RecorderCAM3.VideoDevice);
  //LoadCameraSetting;
  RecorderCAM1.VideoProcessing_Rotation := VidGrab.TVideoRotation(cbRotation1.ItemIndex);
  RecorderCAM2.VideoProcessing_Rotation := VidGrab.TVideoRotation(cbRotation2.ItemIndex);
  RecorderCAM3.VideoProcessing_Rotation := VidGrab.TVideoRotation(cbRotation3.ItemIndex);

  ImageEnVect2.AutoFit := True;
  ImageEnVect2.AutoStretch := True;
  ImageEnVect2.Fit;
  ImageEnVect2.Clear;
  ImageEnVect2.SelColor1 := clWhite;
  ImageEnVect2.SelColor2 := clRed;
  ImageEnVect2.MeasureTrack := true;
  ImageEnVect2.UseCentralGrip := false;
  ImageEnVect2.ObjAutoUndo := true;
  ImageEnVect2.ObjAntialias := True;
  ImageEnVect2.MouseInteractVt := [miObjectSelect];
  ImageEnVect2.Update;
end;
procedure TfmCapture.FormResize(Sender: TObject);
begin
  ImageEnMView.ThumbHeight := ImageEnMView.ClientHeight - 25;
  ImageEnMView.ThumbWidth := ImageEnMView.ClientHeight div 3;

  pnlProcess.Top := (Height div 4);
  pnlProcess.Left := (Width div 2) - (pnlProcess.Width div 2);
  pnlProcess.Update;
end;

procedure TfmCapture.btnActClearScreenClick(Sender: TObject);
begin
  ImageEnVect2.Proc.Rotate(90);
  ImageEnVect2.Update;
end;

procedure TfmCapture.btnAddClick(Sender: TObject);
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
      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end;
  finally
    fmDateSelector.Free;
  end;
end;

procedure TfmCapture.btnCaptureFaceClick(Sender: TObject);
var
  mem_stream : TMemoryStream;
  checkID : string;
begin
  if (GLOVAL_MEMBER_UID <> '') then begin
    Screen.Cursor := crHourGlass;
    ShowProcessMsg('사진 저장중...', '', 1);
    pnlProcess.Visible := True;
    pnlProcess.Update;
    mem_stream := TMemoryStream.Create;
    try
      if (ImageEnVect2.IEBitmap.IsEmpty = False) then begin
        ImageEnVect2.Proc.SelCopyToClip(True);
        ImageEnVect3.Proc.SelPasteFromClip(True);
        ImageEnVect3.Update;
        ImageEnVect3.IO.SaveToStreamJpeg(mem_stream);
        ImageEnVect2.DeSelect;
        ImageEnVect3.Clear;
        //member table picture update
        SaveUserPicture(GLOVAL_MEMBER_UID, mem_stream);
      end;
    finally
      ShowProcessMsg('사진 저장중...', '', 0);
      Screen.Cursor := crDefault;
    end;
  end else begin
    ShowMessage('회원데이터가 없습니다. 회원을 먼저 선택하세요.');
  end;
end;

procedure TfmCapture.btnCustInfoClick(Sender: TObject);
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

procedure TfmCapture.SaveUserPicture(uid : string; memPic :TMemoryStream);
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

procedure TfmCapture.btnDelClick(Sender: TObject);
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
    dmDBCommon.RetrieveThumbnailList(ImageEnMView);
  end;
end;

procedure TfmCapture.btnDelThumbClick(Sender: TObject);
var
  i, cnt : integer;
  img_id, check_id : string;
begin
  i := ImageEnMView.SelectedImage;
  img_id := ImageEnMView.ImageFileName[i];

  check_id := GLOVAL_CHECK_DATA_UID;
  dmDBCommon.CUSTOMER_IMAGE3_DEL.ParamByName('id').Value := img_id;
  dmDBCommon.CUSTOMER_IMAGE3_DEL.ExecProc;
  dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Refresh;
  cnt := dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.RecordCount;

  dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('UID').Value := check_id;
  dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('PIC_CNT').AsInteger := cnt;
  dmDBCommon.PICTURE_DATA_UPD_COUNT.ExecProc;
  dmDBCommon.d_picture_data.DataSet.Refresh;
  dmDBCommon.d_picture_data.DataSet.Locate('uid', check_id, []);

  dmDBCommon.RetrieveThumbnails(ImageEnMView);
end;

procedure TfmCapture.btnEditClick(Sender: TObject);
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

procedure TfmCapture.btnHistoryClick(Sender: TObject);
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

procedure TfmCapture.btnMakePictureClick(Sender: TObject);
var
  mem_stream : TMemoryStream;
  checkID : string;
begin
  if (dmDBCommon.d_picture_data.DataSet.Active = True) and (dmDBCommon.d_picture_data.DataSet.RecordCount > 0) then begin
    Screen.Cursor := crHourGlass;
    ShowProcessMsg('사진 저장중...', '', 1);
    pnlProcess.Visible := True;
    pnlProcess.Update;
    mem_stream := TMemoryStream.Create;
    try
      if (ImageEnVect2.IEBitmap.IsEmpty = False) then begin
        checkID := GLOVAL_CHECK_DATA_UID;
        ImageEnVect2.Proc.SelCopyToClip(True);
        ImageEnVect3.Proc.SelPasteFromClip(True);
        ImageEnVect3.Update;
        ImageEnVect3.IO.SaveToStreamJpeg(mem_stream);
        ImageEnVect2.DeSelect;
        ImageEnVect3.Clear;
        //local table에 데이터저장
        SaveNewImage(mem_stream);
        dmDBCommon.RetrieveThumbnails(ImageEnMView);
        dmDBCommon.d_picture_data.DataSet.Locate('UID', checkID, []);
      end;
    finally
      ShowProcessMsg('사진 저장중...', '', 0);
      Screen.Cursor := crDefault;
    end;
  end else begin
    ShowMessage('측정데이터가 없습니다. 측정데이터를 먼저 생성하세요.');
  end;
end;

procedure TfmCapture.btnSet1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TcxButton).Tag;
  frmCameraControl := TfrmCameraControl.Create(Self);
  try
    if tno = 1 then
      frmCameraControl.VideoCamera := RecorderCAM1;
    if tno = 2 then
      frmCameraControl.VideoCamera := RecorderCAM2;
    if tno = 3 then
      frmCameraControl.VideoCamera := RecorderCAM3;
    frmCameraControl.ShowModal;
  finally
    frmCameraControl.Free;
  end;
end;

procedure TfmCapture.btnStartPreview1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TcxButton).Tag;
  ActiveCameraNo := tno;
  if tno = 1 then RecorderCAM1.StartPreview;
  if tno = 2 then RecorderCAM2.StartPreview;
  if tno = 3 then RecorderCAM3.StartPreview;
end;

procedure TfmCapture.btnStopPreview1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TcxButton).Tag;
  if tno = 1 then RecorderCAM1.StopPreview;
  if tno = 2 then RecorderCAM2.StopPreview;
  if tno = 3 then RecorderCAM3.StopPreview;
  ImageEnVect2.Clear;
end;

procedure TfmCapture.cboVideoDevices1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TComboBox).Tag;
  if tno = 1 then begin
    RecorderCAM1.VideoDevice := cboVideoDevices1.ItemIndex;
    ActiveCameraNo := 1;
    btnStartPreview1.Click;
  end;
  if tno = 2 then begin
    RecorderCAM2.VideoDevice := cboVideoDevices2.ItemIndex;
    ActiveCameraNo := 2;
    btnStartPreview2.Click;
  end;
  if tno = 3 then begin
    RecorderCAM3.VideoDevice := cboVideoDevices3.ItemIndex;
    ActiveCameraNo := 3;
    btnStartPreview3.Click;
  end;
end;

procedure TfmCapture.cboVideoFormats1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TComboBox).Tag;
  if tno = 1 then RecorderCAM1.VideoFormat := cboVideoFormats1.ItemIndex;
  if tno = 2 then RecorderCAM2.VideoFormat := cboVideoFormats2.ItemIndex;
  if tno = 3 then RecorderCAM3.VideoFormat := cboVideoFormats3.ItemIndex;
end;

procedure TfmCapture.cbRotation1PropertiesEditValueChanged(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TcxImageComboBox).Tag;
  if tno = 1 then RecorderCAM1.VideoProcessing_Rotation := VidGrab.TVideoRotation((Sender as TcxImageComboBox).ItemIndex);
  if tno = 2 then RecorderCAM2.VideoProcessing_Rotation := VidGrab.TVideoRotation((Sender as TcxImageComboBox).ItemIndex);
  if tno = 3 then RecorderCAM3.VideoProcessing_Rotation := VidGrab.TVideoRotation((Sender as TcxImageComboBox).ItemIndex);
end;

procedure TfmCapture.ShowProcessMsg(msg, cnt_str : string ; onoff : integer);
begin
  if onoff = 1 then begin
    lblMessage.Caption := msg;
    lblCount.Caption := cnt_str;
    pnlProcess.Visible := True;
    pnlProcess.Update;
  end else
    pnlProcess.Visible := False;
end;

procedure TfmCapture.WebCopy1Error(Sender: TObject; ErrorCode: Integer);
begin
  ShowMessage(IntToStr(ErrorCode));
end;

function TfmCapture.GetPictureCount(check_id : string) : integer;
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

procedure TfmCapture.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCapture.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if Assigned(APrevFocusedRecord) and Assigned(AFocusedRecord) then begin
    if APrevFocusedRecord.RecordIndex <> AFocusedRecord.RecordIndex then begin
      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end;
  end;
end;

procedure TfmCapture.DeleteServerData(image_id : integer);
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

procedure TfmCapture.ImageEnMViewImageSelect(Sender: TObject; idx: Integer);
var
  w, h : Integer;
begin
  RecorderCAM1.StopPreview;
  RecorderCAM2.StopPreview;
  RecorderCAM3.StopPreview;

  ImageEnVect2.Assign(ImageEnMView.GetTIEBitmap(idx));
  ImageEnVect2.Update;
  w := ImageEnVect2.IEBitmap.Width;
  h := ImageEnVect2.IEBitmap.Height;
  lblImageSize.Caption := IntToStr(w) + '(W) X ' + IntToStr(h) + '(H)';
  lblImageSize.Refresh;
end;

procedure TfmCapture.ImageEnVect2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssCtrl in Shift then begin
    ImageEnVect2.MouseInteract := [miScroll];
    ImageEnVect2.Cursor := 1782;
  end else begin
    ImageEnVect2.MouseInteract := [];
    ImageEnVect2.MouseInteract := [miSelect];
    ImageEnVect2.Cursor := 1785;
  end;
end;

procedure TfmCapture.ImageEnVect2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImageEnVect2.MouseInteract := [];
  ImageEnVect2.MouseInteract := [miSelect];
  ImageEnVect2.Cursor := 1785;
end;

procedure TfmCapture.pnlNameClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;
      cxGroupBox2.Refresh;
      dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);
      dmDBCommon.RetrieveThumbnailList(ImageEnMView);
    end;
  finally
    fmMemberSelect.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCapture.RecorderCAM1DblClick(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TVideoGrabber).Tag;
  ActiveCameraNo := tno;
end;

procedure TfmCapture.RecorderCAM1DeviceArrivalOrRemoval(Sender: TObject;
  IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: string;
  DeviceIndex: Integer);
begin
  if IsVideoDevice then begin
    AssignListToComboBox (cboVideoDevices1, RecorderCAM1.VideoDevices, RecorderCAM1.VideoDevice);
  end;
end;

procedure TfmCapture.RecorderCAM1DeviceLost(Sender: TObject);
begin
  AssignListToComboBox (cboVideoDevices1, RecorderCAM1.VideoDevices, RecorderCAM1.VideoDevice);

end;

procedure TfmCapture.RecorderCAM1FrameBitmap(Sender: TObject;
  FrameInfo: pFrameInfo; BitmapInfo: pFrameBitmapInfo);
var
   NewBitmap: TBitmap;
begin
  try
    if ActiveCameraNo = 1 then begin
       NewBitmap := TBitmap.Create;
       NewBitmap.Canvas.Lock;
       NewBitmap.Width := BitmapInfo^.BitmapWidth;
       NewBitmap.Height := BitmapInfo^.BitmapHeight;
       case BitmapInfo^.BitmapBitsPerPixel of
          32: NewBitmap.PixelFormat := pf32Bit;
          24: NewBitmap.PixelFormat := pf24Bit;
          16: NewBitmap.PixelFormat := pf16Bit;
          15: NewBitmap.PixelFormat := pf15Bit;
           8: NewBitmap.PixelFormat := pf8Bit;
        else  NewBitmap.PixelFormat := pf24Bit;
       end;
       BitBlt (NewBitmap.Canvas.Handle, 0, 0, BitmapInfo^.BitmapWidth, BitmapInfo^.BitmapHeight, BitmapInfo^.BitmapDC, 0, 0, SRCCOPY);
       NewBitmap.Canvas.Unlock;
       ImageEnVect2.Bitmap.Assign(NewBitmap);
       ImageEnVect2.Refresh;
       NewBitmap.Free;
    end;
  except

  end;
end;

procedure TfmCapture.RecorderCAM1VideoDeviceSelected(Sender: TObject);
begin
  cboVideoDevices1.ItemIndex := RecorderCAM1.VideoDevice; // be sure the listbox index matches the current index value
  RefreshDeviceControls1;

end;

procedure TfmCapture.RecorderCAM2DeviceArrivalOrRemoval(Sender: TObject;
  IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: string;
  DeviceIndex: Integer);
begin
  if IsVideoDevice then begin
    AssignListToComboBox (cboVideoDevices2, RecorderCAM2.VideoDevices, RecorderCAM2.VideoDevice);
  end;
end;

procedure TfmCapture.RecorderCAM2DeviceLost(Sender: TObject);
begin
  AssignListToComboBox (cboVideoDevices2, RecorderCAM2.VideoDevices, RecorderCAM2.VideoDevice);

end;

procedure TfmCapture.RecorderCAM2FrameBitmap(Sender: TObject;
  FrameInfo: pFrameInfo; BitmapInfo: pFrameBitmapInfo);
var
   NewBitmap: TBitmap;
begin
  try
    if ActiveCameraNo = 2 then begin
       NewBitmap := TBitmap.Create;
       NewBitmap.Canvas.Lock;
       NewBitmap.Width := BitmapInfo^.BitmapWidth;
       NewBitmap.Height := BitmapInfo^.BitmapHeight;
       case BitmapInfo^.BitmapBitsPerPixel of
          32: NewBitmap.PixelFormat := pf32Bit;
          24: NewBitmap.PixelFormat := pf24Bit;
          16: NewBitmap.PixelFormat := pf16Bit;
          15: NewBitmap.PixelFormat := pf15Bit;
           8: NewBitmap.PixelFormat := pf8Bit;
        else  NewBitmap.PixelFormat := pf24Bit;
       end;
       BitBlt (NewBitmap.Canvas.Handle, 0, 0, BitmapInfo^.BitmapWidth, BitmapInfo^.BitmapHeight, BitmapInfo^.BitmapDC, 0, 0, SRCCOPY);
       NewBitmap.Canvas.Unlock;
       ImageEnVect2.Bitmap.Assign(NewBitmap);
       ImageEnVect2.Refresh;
       NewBitmap.Free;
    end;
  except

  end;
end;

procedure TfmCapture.RecorderCAM2VideoDeviceSelected(Sender: TObject);
begin
  cboVideoDevices2.ItemIndex := RecorderCAM2.VideoDevice; // be sure the listbox index matches the current index value
  RefreshDeviceControls2;

end;

procedure TfmCapture.RecorderCAM3DeviceArrivalOrRemoval(Sender: TObject;
  IsDeviceArrival, IsVideoDevice: Boolean; DeviceName: string;
  DeviceIndex: Integer);
begin
  if IsVideoDevice then begin
    AssignListToComboBox (cboVideoDevices3, RecorderCAM3.VideoDevices, RecorderCAM3.VideoDevice);
  end;
end;

procedure TfmCapture.RecorderCAM3DeviceLost(Sender: TObject);
begin
  AssignListToComboBox (cboVideoDevices3, RecorderCAM3.VideoDevices, RecorderCAM3.VideoDevice);

end;

procedure TfmCapture.RecorderCAM3FrameBitmap(Sender: TObject;
  FrameInfo: pFrameInfo; BitmapInfo: pFrameBitmapInfo);
var
   NewBitmap: TBitmap;
begin
  try
    if ActiveCameraNo = 3 then begin
       NewBitmap := TBitmap.Create;
       NewBitmap.Canvas.Lock;
       NewBitmap.Width := BitmapInfo^.BitmapWidth;
       NewBitmap.Height := BitmapInfo^.BitmapHeight;
       case BitmapInfo^.BitmapBitsPerPixel of
          32: NewBitmap.PixelFormat := pf32Bit;
          24: NewBitmap.PixelFormat := pf24Bit;
          16: NewBitmap.PixelFormat := pf16Bit;
          15: NewBitmap.PixelFormat := pf15Bit;
           8: NewBitmap.PixelFormat := pf8Bit;
        else  NewBitmap.PixelFormat := pf24Bit;
       end;
       BitBlt (NewBitmap.Canvas.Handle, 0, 0, BitmapInfo^.BitmapWidth, BitmapInfo^.BitmapHeight, BitmapInfo^.BitmapDC, 0, 0, SRCCOPY);
       NewBitmap.Canvas.Unlock;
       ImageEnVect2.Bitmap.Assign(NewBitmap);
       ImageEnVect2.Refresh;
       NewBitmap.Free;
    end;
  except

  end;
end;

procedure TfmCapture.RecorderCAM3VideoDeviceSelected(Sender: TObject);
begin
  cboVideoDevices3.ItemIndex := RecorderCAM3.VideoDevice; // be sure the listbox index matches the current index value
  RefreshDeviceControls3;

end;

procedure TfmCapture.AcCameraCaptureExecute(Sender: TObject);
var
  mem_stream : TMemoryStream;
begin
  GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
  if (dmDBCommon.d_picture_data.DataSet.Active = True) and (dmDBCommon.d_picture_data.DataSet.RecordCount > 0) then begin
    Screen.Cursor := crHourGlass;
    ShowProcessMsg('사진 저장중...', '', 1);
    pnlProcess.Visible := True;
    pnlProcess.Update;
    mem_stream := TMemoryStream.Create;
    try
      if (ImageEnVect2.IEBitmap.IsEmpty = False) then begin
        ImageEnVect2.Proc.SelCopyToClip(True);
        ImageEnVect3.Proc.SelPasteFromClip(True);
        ImageEnVect3.Update;
        ImageEnVect3.IO.SaveToFileJpeg(gsDefaultFolder + 'temp_image.jpg');
        ImageEnVect2.DeSelect;
        ImageEnVect3.Clear;
        //local table에 데이터저장
        SaveNewImage(mem_stream);
      end;
      dmDBCommon.RetrieveThumbnails(ImageEnMView);
    finally
      ShowProcessMsg('사진 저장중...', '', 0);
      Screen.Cursor := crDefault;
    end;
  end else begin
    ShowMessage('측정데이터가 없습니다. 측정데이터를 먼저 생성하세요.');
  end;
end;

procedure TfmCapture.SaveNewImage(mem_stream : TMemoryStream);
var
  pic_cnt : integer;
begin
  if not dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Active then dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Open;
  pic_cnt := dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.RecordCount;
  mem_stream.Position := 0;

  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('CHECK_ID').Value := GLOVAL_CHECK_DATA_UID;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('CUST_UID').Value := GLOVAL_MEMBER_UID;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('IMAGE_IDX').Value  := pic_cnt;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('PICTURE_DATE').Value := Now;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('IMAGE_DATA').LoadFromStream(mem_stream, ftBlob);
  dmDBCommon.CUSTOMER_IMAGE3_INS.ParamByName('DRAW_DATA').Clear;
  dmDBCommon.CUSTOMER_IMAGE3_INS.ExecProc;

  dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Refresh;

  dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('UID').Value := GLOVAL_CHECK_DATA_UID;
  dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('PIC_CNT').AsInteger := pic_cnt + 1;
  dmDBCommon.PICTURE_DATA_UPD_COUNT.ExecProc;
  dmDBCommon.d_picture_data.DataSet.Refresh;
end;

procedure TfmCapture.ActAddPictureDataExecute(Sender: TObject);
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

procedure TfmCapture.ActAutoFitExecute(Sender: TObject);
begin
  if (Sender as TAction).Checked then begin
    ImageEnVect2.AutoFit := True;
    ImageEnVect2.AutoStretch := False;
  end else begin
    ImageEnVect2.AutoFit := False;
    ImageEnVect2.AutoStretch := True;
    ImageEnVect2.Width := pnlVideo.Width; // ImageEnVect2.Width;
    ImageEnVect2.Height := pnlVideo.Height; // ImageEnVect2.Height;
  end;
  ImageEnVect2.Refresh;
end;

procedure TfmCapture.ActCameraGuidlineExecute(Sender: TObject);
var
  tWidth, tHeight, hobj : integer;
begin
  if (Sender as TAction).Checked then begin
    tWidth := ImageEnVect2.IEBitmap.Width;
    tHeight := ImageEnVect2.IEBitmap.Height;
    hobj := ImageEnVect2.AddNewObject;
    ImageEnVect2.ObjKind[hobj] := iekLINE;
    ImageEnVect2.ObjPenWidth[hobj] := 2;
    ImageEnVect2.ObjLeft[hobj] := 0;
    ImageEnVect2.ObjTop[hobj] := tHeight div 2;
    ImageEnVect2.ObjWidth[hobj] := tWidth;
    ImageEnVect2.ObjHeight[hobj] := 0;
    ImageEnVect2.ObjPenColor[hobj] := clRed;
    ImageEnVect2.ObjAntialias := False;

    hobj := ImageEnVect2.AddNewObject;
    ImageEnVect2.ObjKind[hobj] := iekLINE;
    ImageEnVect2.ObjPenWidth[hobj] := 2;
    ImageEnVect2.ObjLeft[hobj] := tWidth div 2;
    ImageEnVect2.ObjTop[hobj] := 0;
    ImageEnVect2.ObjWidth[hobj] := 0;
    ImageEnVect2.ObjHeight[hobj] := tHeight;
    ImageEnVect2.ObjPenColor[hobj] := clRed;
    ImageEnVect2.ObjAntialias := False;
  end else begin
    ImageEnVect2.RemoveAllObjects;
  end;
end;

procedure TfmCapture.ActClearScreenExecute(Sender: TObject);
begin
  ImageEnVect2.Clear;
end;

procedure TfmCapture.ActDelPictureDataExecute(Sender: TObject);
begin
  if MessageDlg('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' + #13#10 +
    '삭제 할까요?',  mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    PICTURE_DATA_DEL.ParamByName('UID').Value := GLOVAL_CHECK_DATA_UID;
    PICTURE_DATA_DEL.ExecProc;
    dmDBCommon.d_picture_data.DataSet.Refresh;
    dmDBCommon.RetrieveThumbnailList(ImageEnMView);
  end;
end;

procedure TfmCapture.ActHoldCameraExecute(Sender: TObject);
begin
  if (Sender as TAction).Checked then
    ImageEnVect2.IO.DShowParams.Pause
  else
    ImageEnVect2.IO.DShowParams.Run;
end;

procedure TfmCapture.ActionThumbnailExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dmDBCommon.RetrieveThumbnails(ImageEnMView);
end;

procedure TfmCapture.ActOpenImageFileExecute(Sender: TObject);
var
  imgHeight, imgWidth : Integer;
begin
  GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
  ImageEnVect2.Blank;
  with ImageEnVect2.IO do begin
    NativePixelFormat:=true;
    LoadFromFile(ExecuteOpenDialog('', '', false, 1, ''));
    imgHeight := ImageEnVect2.IEBitmap.Height;
    imgWidth := ImageEnVect2.IEBitmap.Width;
    ImageEnVect2.Select((imgWidth div 2) - 100, 0, (imgWidth div 2) + 100, imgHeight, iespReplace);
  end;
end;

procedure TfmCapture.ActRetrieveThumbnailExecute(Sender: TObject);
begin
  dmDBCommon.RetrieveThumbnails(ImageEnMView);
end;

procedure TfmCapture.actThumbDeleteExecute(Sender: TObject);
var
  i, cnt : integer;
  img_id, check_id : string;
begin
  i := ImageEnMView.SelectedImage;
  img_id := ImageEnMView.ImageFileName[i];
  ShowMessage(IntToStr(i) + '/' + img_id);
  if ImageEnMView.ImageCount > 0 then begin
    //dmDBCommon.d_customer_image.DataSet.Locate('id', img_id, []);
//    if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
//      + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
//    begin

//      check_id := gridCheckUID.EditValue;
//      dmDBCommon.CUSTOMER_IMAGE3_DEL.ParamByName('id').Value := img_id;
//      dmDBCommon.CUSTOMER_IMAGE3_DEL.ExecProc;
//      dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Refresh;
//      cnt := dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.RecordCount;
//
//      dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('UID').Value := check_id;
//      dmDBCommon.PICTURE_DATA_UPD_COUNT.ParamByName('PIC_CNT').AsInteger := cnt;
//      dmDBCommon.PICTURE_DATA_UPD_COUNT.ExecProc;
//      dmDBCommon.d_picture_data.DataSet.Refresh;
//      dmDBCommon.d_picture_data.DataSet.Locate('uid', check_id, []);
//
//      dmDBCommon.RetrieveThumbnails(ImageEnMView);
//    end;
  end;
end;

procedure TfmCapture.actThumbSaveAsExecute(Sender: TObject);
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

procedure TfmCapture.RefreshDeviceControls1;
begin
  if csDestroying in ComponentState then Exit; // do nothing if the app terminates
  AssignListToComboBox (cboVideoFormats1, RecorderCAM1.VideoFormats, RecorderCAM1.VideoFormat);
end;

procedure TfmCapture.RefreshDeviceControls2;
begin
  if csDestroying in ComponentState then Exit; // do nothing if the app terminates
  AssignListToComboBox (cboVideoFormats2, RecorderCAM2.VideoFormats, RecorderCAM2.VideoFormat);
end;

procedure TfmCapture.RefreshDeviceControls3;
begin
  if csDestroying in ComponentState then Exit; // do nothing if the app terminates
  AssignListToComboBox (cboVideoFormats3, RecorderCAM3.VideoFormats, RecorderCAM3.VideoFormat);
end;

initialization RegisterClasses([TfmCapture]);

end.
