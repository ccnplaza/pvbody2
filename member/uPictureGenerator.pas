unit uPictureGenerator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ieview, imageenview, ExtCtrls, Buttons, ievect, imageenio,
  ieds;

type
  TfmPictureGenerator = class(TForm)
    btnStartPreview: TBitBtn;
    btnStopPreview: TBitBtn;
    btnSetup: TBitBtn;
    btnRefresh: TBitBtn;
    chkPause: TCheckBox;
    btnCapture: TBitBtn;
    btnOpenFile: TBitBtn;
    btnClearScreen: TBitBtn;
    ImageEnVect2: TImageEnVect;
    ImageEnVect3: TImageEnVect;
    btnSaveQuit: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    cboVideoDevices: TComboBox;
    edtDeviceIndex: TEdit;
    chkRotateCamera: TCheckBox;
    chkFitSize: TCheckBox;
    cbAngle: TComboBox;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure cboVideoDevicesChange(Sender: TObject);
    procedure chkFitSizeClick(Sender: TObject);
    procedure btnStartPreviewClick(Sender: TObject);
    procedure btnStopPreviewClick(Sender: TObject);
    procedure btnSetupClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure chkPauseClick(Sender: TObject);
    procedure btnCaptureClick(Sender: TObject);
    procedure ImageEnVect2DShowNewFrame(Sender: TObject);
    procedure ImageEnVect2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVect2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnOpenFileClick(Sender: TObject);
    procedure btnClearScreenClick(Sender: TObject);
    procedure btnSaveQuitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure Connect;
    procedure Disconnect;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPictureGenerator: TfmPictureGenerator;

implementation

{$R *.dfm}

procedure AssignListToComboBox (ComboBox: TComboBox; List: String; Index: integer);
begin
   ComboBox.Items.Text := List;
   if (ComboBox.Items.Count > 0) and (Index >= 0) then begin
      ComboBox.ItemIndex := Index;
   end;
end;

procedure TfmPictureGenerator.BitBtn1Click(Sender: TObject);
begin
  ImageEnVect2.Proc.Rotate(90);
  ImageEnVect2.Update;
end;

procedure TfmPictureGenerator.btnCaptureClick(Sender: TObject);
begin
  if (ImageEnVect2.IEBitmap.IsEmpty = False) then begin
    ImageEnVect2.Proc.SelCopyToClip(True);
    ImageEnVect3.Proc.SelPasteFromClip(True);
    ImageEnVect2.DeSelect;
  end;
end;

procedure TfmPictureGenerator.btnClearScreenClick(Sender: TObject);
begin
  ImageEnVect2.Clear;
end;

procedure TfmPictureGenerator.btnOpenFileClick(Sender: TObject);
begin
  Disconnect;
  ImageEnVect2.Blank;
  with ImageEnVect2.IO do
  begin
    NativePixelFormat:=true;
    LoadFromFile(ExecuteOpenDialog('', '', false, 1, ''));
  end;

end;

procedure TfmPictureGenerator.btnRefreshClick(Sender: TObject);
begin
  ImageEnVect2.IO.DShowParams.Disconnect;
  ImageEnVect2.Clear;
  cboVideoDevices.Items.Clear;
  cboVideoDevices.Items.Assign(ImageEnVect2.IO.DShowParams.VideoInputs);
  cboVideoDevices.ItemIndex := 0;
end;

procedure TfmPictureGenerator.btnSaveQuitClick(Sender: TObject);
begin
  if (ImageEnVect3.IEBitmap.IsEmpty = False) then begin
    ModalResult := mrOk;
  end else
    ShowMessage('저장할 사진을 캡쳐하세요.');
end;

procedure TfmPictureGenerator.btnSetupClick(Sender: TObject);
begin
  if ImageEnVect2.IO.DShowParams.Connected then
    Disconnect;
  Connect;
  ImageEnVect2.IO.DShowParams.ShowPropertyPages(iepVideoInput, ietOutput, false);
end;

procedure TfmPictureGenerator.btnStartPreviewClick(Sender: TObject);
begin
  ImageEnVect2.Clear;
  if ImageEnVect2.IO.DShowParams.Connected then
    ImageEnVect2.IO.DShowParams.Run
  else begin
    Connect;
    ImageEnVect2.IO.DShowParams.Run
  end;
end;

procedure TfmPictureGenerator.btnStopPreviewClick(Sender: TObject);
begin
  Disconnect;
  ImageEnVect2.Blank;
end;

procedure TfmPictureGenerator.cboVideoDevicesChange(Sender: TObject);
begin
  if ImageEnVect2.IO.DShowParams.Connected then begin
    ImageEnVect2.IO.DShowParams.Disconnect;
    ImageEnVect2.Blank;
  end;
  cboVideoDevices.ItemIndex := cboVideoDevices.ItemIndex;
  btnStartPreview.Click;
end;

procedure TfmPictureGenerator.chkPauseClick(Sender: TObject);
begin
  if chkPause.Checked then
    ImageEnVect2.IO.DShowParams.Pause
  else
    ImageEnVect2.IO.DShowParams.Run;
end;

procedure TfmPictureGenerator.chkFitSizeClick(Sender: TObject);
begin
  if chkFitSize.Checked then begin
    ImageEnVect2.AutoFit := True;
    ImageEnVect2.AutoStretch := True;
    ImageEnVect2.Fit;
    ImageEnVect2.Update;
  end else begin
    ImageEnVect2.AutoFit := False;
    ImageEnVect2.AutoStretch := False;
    ImageEnVect2.Fit;
    ImageEnVect2.Update;
  end;
end;

procedure TfmPictureGenerator.Connect;
begin
  if (not ImageEnVect2.IO.DShowParams.Connected) then
  begin
    ImageEnVect2.IO.DShowParams.SetVideoInput(cboVideoDevices.ItemIndex, StrToIntDef(edtDeviceIndex.Text,0));
    ImageEnVect2.IO.DShowParams.EnableSampleGrabber := true;
    ImageEnVect2.IO.DShowParams.Connect;
    //ImageEnVect2.IO.DShowParams.SetCurrentVideoFormat(640, 480, '');
  end;
end;
procedure TfmPictureGenerator.Disconnect;
begin
  ImageEnVect2.IO.DShowParams.Disconnect;
end;

procedure TfmPictureGenerator.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

end;

procedure TfmPictureGenerator.FormCreate(Sender: TObject);
begin
  cboVideoDevices.Items.Assign(ImageEnVect2.IO.DShowParams.VideoInputs);
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

procedure TfmPictureGenerator.ImageEnVect2DShowNewFrame(Sender: TObject);
begin
  ImageEnVect2.IO.DShowParams.GetSample(ImageEnVect2.IEBitmap);
  if chkRotateCamera.Checked then begin
    if cbAngle.ItemIndex = 0 then
      ImageEnVect2.Proc.Rotate(90);
    if cbAngle.ItemIndex = 1 then
      ImageEnVect2.Proc.Rotate(-90);
  end else begin
    ImageEnVect2.Proc.Rotate(0);
  end;
  ImageEnVect2.Update;
end;

procedure TfmPictureGenerator.ImageEnVect2MouseDown(Sender: TObject;
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

procedure TfmPictureGenerator.ImageEnVect2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImageEnVect2.MouseInteract := [];
  ImageEnVect2.MouseInteract := [miSelect];
  ImageEnVect2.Cursor := 1785;
end;

end.
