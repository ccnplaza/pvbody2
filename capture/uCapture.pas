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
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  iexActionsMulti, cxCalendar, cxImageComboBox, VidGrab, IniFiles,
  UfrmMemberSelect, dxBarBuiltInMenu, cxPC, WebImage, cxImage, DAAlerter,
  UniAlerter, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  AdvCircularProgress, UfrmImages, UfrmImageMultiView, hyieutils, iexBitmaps,
  hyiedefs, iesettings, iexLayers, iexRulers, iexToolbars, ComCtrls, dxCore,
  cxDateUtils;

type
  TfmCapture = class(TForm)
    Panel2: TPanel;
    pnlProcess: TPanel;
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
    ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage;
    q_UpdatePictureData: TUniQuery;
    Panel1: TPanel;
    chkFitSize: TCheckBox;
    cboVideoDevices: TComboBox;
    cboVideoFormats: TComboBox;
    btnStartPreview1: TcxButton;
    btnStopPreview1: TcxButton;
    cbRotation1: TcxImageComboBox;
    chkCrossGuideLine: TCheckBox;
    btnImportPicture: TBitBtn;
    btnRotate: TBitBtn;
    Label1: TLabel;
    btnSet1: TcxButton;
    btnCaptureFace: TBitBtn;
    Label4: TLabel;
    lblImageSize: TLabel;
    ImageEnMViewSave1: TImageEnMViewSave;
    ImageEnMViewPromptToSave1: TImageEnMViewPromptToSave;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    UniAlerter1: TUniAlerter;
    lblMessage: TLabel;
    lblCount: TLabel;
    OpenImageEnDialog1: TOpenImageEnDialog;
    cxGroupBox1: TcxGroupBox;
    Label5: TLabel;
    edtPicDate: TcxDateEdit;
    btnMakePicture: TBitBtn;
    ImageEnView1: TImageEnView;
    ImageEnView2: TImageEnView;
    procedure btnMakePictureClick(Sender: TObject);
    procedure ImageEnVect2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVect2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure actThumbSaveAsExecute(Sender: TObject);
    procedure ActOpenImageFileExecute(Sender: TObject);
    procedure ActAutoFitExecute(Sender: TObject);
    procedure ActHoldCameraExecute(Sender: TObject);
    procedure ActCameraGuidlineExecute(Sender: TObject);
    procedure WebCopy1Error(Sender: TObject; ErrorCode: Integer);
    procedure btnRotateClick(Sender: TObject);
    procedure btnStartPreview1Click(Sender: TObject);
    procedure btnStopPreview1Click(Sender: TObject);
    procedure btnSet1Click(Sender: TObject);
    procedure btnCaptureFaceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cboVideoDevicesChange(Sender: TObject);
    procedure cboVideoFormatsCloseUp(Sender: TObject);
    procedure ImageEnView1DShowNewFrame(Sender: TObject);
  private
    procedure ShowProcessMsg(msg, cnt_str: string; onoff: integer);
    procedure DeleteServerData(image_id: integer);
    procedure RefreshDeviceControls1;
    procedure RefreshDeviceControls2;
    procedure RefreshDeviceControls3;
    procedure LoadCameraSetting;
    procedure SaveCameraSetting;
    procedure SaveUserPicture(uid: string; memPic: TMemoryStream);
    procedure InitCameraSet;
    procedure ShowVideoFormats;
    procedure Connect;
    procedure Disconnect;
    { Private declarations }
  public
    { Public declarations }
    THUMBNAIL_HEIGHT : integer;
    ActiveCameraNo : Integer;
    CURRENT_MEMBER_UID : string;
    IS_CAMERA_SETTED : Boolean;
    CheckOldID : string;
    CUST_UID, CUST_UID_OLD : string;
    PIC_DATE, PIC_DATE_OLD : TDate;
    LIST_LOADED : Boolean;
  end;

var
  fmCapture: TfmCapture;

implementation

uses GlobalVar, uCommonLogic, UdmDBCommon, miscCameraControl;

{$R *.dfm}

procedure TransPanel(var panel : TPanel);
var
  I, X, Y : Integer;
  FullRgn, ClientRgn, ControlRgn : THandle;
  Margin, MarginX, MarginY : Integer;
begin
  Margin := (panel.Width - panel.ClientWidth) div 2;
  MarginX := Margin;
  MarginY := panel.Height - panel.ClientHeight - Margin;
  FullRgn   := CreateRectRgn(0, 0, panel.ClientWidth, panel.ClientHeight);
  ClientRgn := CreateRectRgn(0, 0, panel.ClientWidth, panel.ClientHeight);
  CombineRgn(FullRgn, FullRgn, ClientRgn, RGN_DIFF);
  for I := 0 to panel.ControlCount - 1 do begin
    X := panel.Controls[I].Left;
    Y := panel.Controls[I].Top;
    ControlRgn := CreateRectRgn(X, Y, X + panel.Controls[I].Width, Y + panel.Controls[I].Height);
    CombineRgn(FullRgn, FullRgn, ControlRgn, RGN_OR);
  end;
  SetWindowRgn(panel.Handle, FullRgn, True);
end;

procedure AssignListToComboBox (ComboBox: TComboBox; List: String; Index: integer);
begin
   ComboBox.Items.Text := List;
   if (ComboBox.Items.Count > 0) and (Index >= 0) then begin
      ComboBox.ItemIndex := Index;
   end;
end;

procedure TfmCapture.InitCameraSet;
begin
  cboVideoDevices.Items.Assign(ImageEnView1.IO.DShowParams.VideoInputs);
  cboVideoDevices.ItemIndex := 0;
  ShowVideoFormats;
  LoadCameraSetting;
  IS_CAMERA_SETTED := True;
end;

procedure TfmCapture.ShowVideoFormats;
var
  i, idx: integer;
  s: string;
begin
  Connect;
  cboVideoFormats.Clear;
  with ImageEnView1.IO.DShowParams do
    for i := 0 to VideoFormatsCount - 1 do begin
      s := SysUtils.Format('%s %dx%d', [VideoFormats[i].Format, VideoFormats[i].MaxWidth, VideoFormats[i].MaxHeight]);
      if (VideoFormats[i].MaxWidth = 1920) and (VideoFormats[i].MaxHeight = 1080) then
        idx := i;
      cboVideoFormats.Items.Add(s);
    end;
  cboVideoFormats.ItemIndex:=idx;
  Disconnect;
end;

procedure TfmCapture.Connect;
var
  w, h : Integer;
begin
  Disconnect;
  if (not ImageEnView1.IO.DShowParams.Connected) then
  begin
    w := 0; h := 0;
    if cboVideoFormats.ItemIndex > -1 then
    begin
      w := ImageEnView1.IO.DShowParams.VideoFormats[cboVideoFormats.ItemIndex].MaxWidth;
      h := ImageEnView1.IO.DShowParams.VideoFormats[cboVideoFormats.ItemIndex].MaxHeight;
    end;
    ImageEnView1.IO.DShowParams.SetVideoInput(cboVideoDevices.ItemIndex,0,w, h,'');
    ImageEnView1.IO.DShowParams.EnableSampleGrabber := true;
    ImageEnView1.IO.DShowParams.Connect;
  end;
end;

procedure TfmCapture.Disconnect;
begin
  ImageEnView1.IO.DShowParams.Disconnect;
end;

procedure TfmCapture.LoadCameraSetting;
var
  iniFileName : string;
  FIni : TIniFile;
begin
  iniFileName := gsDefaultFolder + 'CameraSetting.ini';
  FIni := TIniFile.Create(iniFileName);
  cboVideoDevices.ItemIndex := FIni.ReadInteger('Camera1', 'Device', -1);
  cboVideoFormats.ItemIndex := FIni.ReadInteger('Camera1', 'Size', 0);
  cbRotation1.ItemIndex := FIni.ReadInteger('Camera1', 'Rotate', 0);
end;

procedure TfmCapture.SaveCameraSetting;
var
  iniFileName : string;
  FIni : TIniFile;
begin
  iniFileName := gsDefaultFolder + 'CameraSetting.ini';
  FIni := TIniFile.Create(iniFileName);

  FIni.WriteInteger('Camera1', 'Device', cboVideoDevices.ItemIndex);
  FIni.WriteInteger('Camera1', 'Size', cboVideoFormats.ItemIndex);
  FIni.WriteInteger('Camera1', 'Rotate', cbRotation1.ItemIndex);
end;

procedure TfmCapture.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //SaveCameraSetting;
  Action := caFree;
end;

procedure TfmCapture.FormResize(Sender: TObject);
begin
  pnlProcess.Top := (Height div 4);
  pnlProcess.Left := (Width div 2) - (pnlProcess.Width div 2);
  pnlProcess.Update;
end;

procedure TfmCapture.FormShow(Sender: TObject);
const cap_str = '사진캡쳐';
begin
  Caption := cap_str + ' - ' + CustomerImages.CustName + '(' + CustomerImages.CustTel + ')';
  InitCameraSet;
  edtPicDate.Date := Date;

  ImageEnView1.Zoom := 100;
  ImageEnView1.AutoFit := True;
  ImageEnView1.AutoStretch := True;
  ImageEnView1.AutoShrink := True;
  //ImageEnView1.CropTool.LockAspectRatio := 6 / 16;
  //ImageEnView1.CropTool.Options := ImageEnView1.CropTool.Options - [ iecoAllowRotating ];
end;

procedure TfmCapture.btnRotateClick(Sender: TObject);
begin
  ImageEnView1.Proc.Rotate(90);
  ImageEnView1.Update;
end;

procedure TfmCapture.btnCaptureFaceClick(Sender: TObject);
var
  mem_stream : TMemoryStream;
  checkID : string;
begin
  if (CustomerImages.CustID <> '') then begin
    Screen.Cursor := crHourGlass;
    ShowProcessMsg('사진 저장중...', '', 1);
    pnlProcess.Visible := True;
    pnlProcess.Update;
    mem_stream := TMemoryStream.Create;
    try
      if (ImageEnView1.IEBitmap.IsEmpty = False) then begin
        ImageEnView1.Proc.SelCopyToClip(True);
        ImageEnView2.Proc.SelPasteFromClip(True);
        ImageEnView2.Update;
        ImageEnView2.IO.SaveToStreamJpeg(mem_stream);
        //ImageEnView1.DeSelect;
        //ImageEnView1.Clear;
        //member table picture update
        SaveUserPicture(CustomerImages.CustID, mem_stream);
      end;
    finally
      ShowProcessMsg('사진 저장중...', '', 0);
      Screen.Cursor := crDefault;
    end;
  end else begin
    ShowMessage('회원데이터가 없습니다. 회원을 먼저 선택하세요.');
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

procedure TfmCapture.btnMakePictureClick(Sender: TObject);
var
  mStream : TMemoryStream;
  fid : Integer;
begin
  fid := (Sender as TBitBtn).Tag;
  Screen.Cursor := crHourGlass;
  ShowProcessMsg('사진 저장중...', '', 1);
  mStream := TMemoryStream.Create;
  try
    if (ImageEnView1.IEBitmap.IsEmpty = False) then begin
      ImageEnView1.Proc.SelCopyToClip(True);
      ImageEnView2.Proc.SelPasteFromClip(True);
      ImageEnView2.Update;
      ImageEnView2.IO.SaveToStreamJpeg(mStream);
      //ImageEnVect2.DeSelect;
      //ImageEnVect3.Clear;
      //local table에 데이터저장
      mStream.Position := 0;
      dmDBCommon.IMAGES_INS.ParamByName('CUST_ID').Value := CustomerImages.CustID;
      dmDBCommon.IMAGES_INS.ParamByName('P_DATE').Value := edtPicDate.Date;
      dmDBCommon.IMAGES_INS.ParamByName('IMAGE_DATA').LoadFromStream(mStream, ftBlob);
      dmDBCommon.IMAGES_INS.ParamByName('DRAW_DATA').Clear;
      dmDBCommon.IMAGES_INS.ParamByName('IDX').Value := fid;
      dmDBCommon.IMAGES_INS.ExecProc;

      dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
      dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Locate('P_DATE', edtPicDate.Date, []);
      //dmDBCommon.RetrievePictureByDate;
    end;
  finally
    mStream.Free;
    ShowProcessMsg('사진 저장중...', '', 0);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCapture.btnSet1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TcxButton).Tag;
  frmCameraControl := TfrmCameraControl.Create(Self);
  try
    frmCameraControl.ShowModal;
  finally
    frmCameraControl.Free;
  end;
end;

procedure TfmCapture.btnStartPreview1Click(Sender: TObject);
begin
  if ImageEnView1.IO.DShowParams.Connected then begin
    Disconnect;
    Connect;
    ImageEnView1.IO.DShowParams.Run;
  end else begin
    Connect;
    ImageEnView1.IO.DShowParams.Run
  end;
  ImageEnView1.AutoFit := True;
  ImageEnView1.AutoStretch := True;
end;

procedure TfmCapture.btnStopPreview1Click(Sender: TObject);
begin
  Disconnect;
  ImageEnView1.Blank;
end;

procedure TfmCapture.cboVideoDevicesChange(Sender: TObject);
begin
  ShowVideoFormats;
  btnStartPreview1.Click;
end;

procedure TfmCapture.cboVideoFormatsCloseUp(Sender: TObject);
begin
  btnStartPreview1.Click;
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

procedure TfmCapture.ImageEnVect2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssCtrl in Shift then begin
    ImageEnView1.MouseInteract := [miScroll];
    ImageEnView1.Cursor := 1782;
  end else begin
    ImageEnView1.MouseInteract := [];
    ImageEnView1.MouseInteract := [miSelect];
    ImageEnView1.Cursor := 1785;
  end;
end;

procedure TfmCapture.ImageEnVect2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImageEnView1.MouseInteract := [];
  ImageEnView1.MouseInteract := [miSelect];
  ImageEnView1.Cursor := 1785;
end;

procedure TfmCapture.ImageEnView1DShowNewFrame(Sender: TObject);
begin
  ImageEnView1.IO.DShowParams.GetSample(ImageEnView1.IEBitmap);
  ImageEnView1.Proc.Rotate(cbRotation1.EditValue);
  ImageEnView1.Update;
end;

procedure TfmCapture.ActAutoFitExecute(Sender: TObject);
begin
  if (Sender as TAction).Checked then begin
    ImageEnView1.AutoFit := True;
    ImageEnView1.AutoStretch := False;
  end else begin
    ImageEnView1.AutoFit := False;
    ImageEnView1.AutoStretch := True;
  end;
  ImageEnView1.Refresh;
end;

procedure TfmCapture.ActCameraGuidlineExecute(Sender: TObject);
var
  tWidth, tHeight, hobj : integer;
begin
  if (Sender as TAction).Checked then begin
    ImageEnView1.DisplayGridKind := iedgGuideLines;
  end else begin
    ImageEnView1.DisplayGridKind := iedgNone;
  end;
end;

procedure TfmCapture.ActHoldCameraExecute(Sender: TObject);
begin
  if (Sender as TAction).Checked then
    ImageEnView1.IO.DShowParams.Pause
  else
    ImageEnView1.IO.DShowParams.Run;
end;

procedure TfmCapture.ActOpenImageFileExecute(Sender: TObject);
var
  imgHeight, imgWidth : Integer;
begin
  Disconnect;
  ImageEnView1.Blank;
  with ImageEnView1.IO do begin
    NativePixelFormat:=true;
    LoadFromFile(ExecuteOpenDialog('', '', false, 1, ''));
    imgHeight := ImageEnView1.IEBitmap.Height;
    imgWidth := ImageEnView1.IEBitmap.Width;
    ImageEnView1.Select((imgWidth div 2) - 100, 0, (imgWidth div 2) + 100, imgHeight, iespReplace);
  end;
end;

procedure TfmCapture.actThumbSaveAsExecute(Sender: TObject);
var
  fname, img_id : string;
  i : integer;
  memStream : TMemoryStream;
begin
//  if SaveImageEnDialog1.Execute then begin
//    fname := SaveImageEnDialog1.FileName;
//    i := ImageEnMView.SelectedImage;
//    img_id := ImageEnMView.ImageFileName[i];
//    dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.Locate('id', img_id, []);
//    memStream := TMemoryStream.Create;
//    TBlobField(dmDBCommon.dsCUSTOMER_IMAGE4_SEL.DataSet.FieldByName('IMAGE_DATA')).SaveToStream(memStream);
//    memStream.Position := 0;
//    memStream.SaveToFile(fname);
//    memStream.Free;
//  end;
end;

procedure TfmCapture.RefreshDeviceControls1;
begin
end;

procedure TfmCapture.RefreshDeviceControls2;
begin
end;

procedure TfmCapture.RefreshDeviceControls3;
begin
end;

end.
