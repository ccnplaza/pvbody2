unit UfrmImageMultiView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, ieview, iemview, imageen,
  cxPC, ExtCtrls, cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxSpinEdit, hyieutils, iexBitmaps, hyiedefs, iesettings,
  iexLayers, iexRulers, iexToolbars, imageenview, AdvCircularProgress,
  cxDropDownEdit, cxImageComboBox, iexDBBitmaps, DB;

type
  TfrmImageMultiView = class(TFrame)
    Panel1: TPanel;
    PanelButtons: TPanel;
    Label1: TLabel;
    edtTrackBar: TcxSpinEdit;
    btnDelete: TcxButton;
    btnEditImage: TcxButton;
    ImageEnMView1: TImageEnMView;
    btnRotate: TcxButton;
    ImageEnView1: TImageEnView;
    PanelMessage: TPanel;
    Label2: TLabel;
    icbThumbSize: TcxImageComboBox;
    procedure ImageEnMView1ImageSelect(Sender: TObject; idx: Integer);
    procedure FrameResize(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtTrackBarPropertiesChange(Sender: TObject);
    procedure btnEditImageClick(Sender: TObject);
    procedure ImageEnMView1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnMView1AfterEvent(Sender: TObject; Event: TIEAfterEvent);
    procedure ImageEnMView1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ImageEnMView1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ImageEnMView1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageEnMView1DblClick(Sender: TObject);
    procedure ImageEnMView1Changed(Sender: TObject);
    procedure btnRotateClick(Sender: TObject);
    procedure icbThumbSizePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDragInsertPos : integer;
    IMAGE_IDX : Integer;  //image sequence
    IMAGE_ID : Integer;   //image order index
    IMAGE_FILE_NAME : string;
    BASIC_THUMB_WIDTH : Integer;
    fDBMultiBitmap : TIEDBMultiBitmap;
    //procedure SetDisplayMode(disp_mode : Integer);
    constructor Create(AOwner: TComponent) ; override;
    procedure RetrieveThumbnailList;
  end;

implementation
uses
  GlobalVar, UdmDBCommon, UfmPostureEditor2;
{$R *.dfm}

constructor TfrmImageMultiView.Create(AOwner: TComponent);
begin
  inherited;
  ImageEnMView1.AnnotationsVisible := True;
end;

procedure TfrmImageMultiView.FrameResize(Sender: TObject);
begin
  //ImageEnMView1.Width := Parent.Width;
  case icbThumbSize.EditValue of
    0: begin
      ImageEnMView1.ThumbHeight := (ImageEnMView1.Height div 3) - 10;
      ImageEnMView1.ThumbWidth := 200;
    end;
    1: begin
      ImageEnMView1.ThumbHeight := (ImageEnMView1.Height div 2) - 10;
      ImageEnMView1.ThumbWidth := 250;
    end;
    2: begin
      ImageEnMView1.ThumbHeight := (ImageEnMView1.Height) - 10;
      ImageEnMView1.ThumbWidth := 500;
    end;
  end;
  ImageEnMView1.Update;
  ImageEnMView1.EnableAdjustOrientation := True;
  PanelMessage.Top := (Panel1.Height div 2) - (PanelMessage.Height div 2);
  PanelMessage.Left := (Panel1.Width div 2) - (PanelMessage.Width div 2);
end;

procedure TfrmImageMultiView.icbThumbSizePropertiesChange(Sender: TObject);
begin
  case icbThumbSize.EditValue of
    0: begin
      ImageEnMView1.ThumbHeight := (ImageEnMView1.Height div 3) - 10;
      ImageEnMView1.ThumbWidth := 200;
    end;
    1: begin
      ImageEnMView1.ThumbHeight := (ImageEnMView1.Height div 2) - 10;
      ImageEnMView1.ThumbWidth := 250;
    end;
    2: begin
      ImageEnMView1.ThumbHeight := (ImageEnMView1.Height) - 10;
      ImageEnMView1.ThumbWidth := 500;
    end;
  end;
  edtTrackBar.Value := ImageEnMView1.ThumbWidth;
  ImageEnMView1.Update;
end;

procedure TfrmImageMultiView.btnDeleteClick(Sender: TObject);
var
  id, i, img_field, idx : Integer;
  img_name, db_name : string;
  pdate : TDateTime;
begin
  try
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
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TfrmImageMultiView.btnEditImageClick(Sender: TObject);
var
  iev_name : string;
  image_uid : string;
  mStream, dStream : TMemoryStream;
begin
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
        ImageEnMView1 .SetIEBitmap(IMAGE_IDX, fmPostureEditor2.frmImageEditor21.ImageEnVect1.IEBitmap);
        ImageEnMView1.Update;
      end;
    end;
  finally
    fmPostureEditor2.Free;
  end;
end;

procedure TfrmImageMultiView.btnRotateClick(Sender: TObject);
var
  image_uid : string;
  mStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  image_uid := ImageEnMView1.ImageBottomText[IMAGE_IDX];
  ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(IMAGE_IDX));
  ImageEnView1.Proc.Rotate(90);
  ImageEnView1.Update;
  ImageEnMView1.SetIEBitmap(IMAGE_IDX, ImageEnView1.IEBitmap);
  ImageEnMView1.Update;
  ImageEnView1.IO.SaveToStreamJpeg(mStream);
  mStream.Position := 0;
  //IMAGES_UPD(:IMAGE_UID, :IMAGE_DATA, :DRAW_DATA, :IDX)
  dmDBCommon.IMAGES_UPD.ParamByName('IMAGE_UID').Value := image_uid;
  dmDBCommon.IMAGES_UPD.ParamByName('IMAGE_DATA').LoadFromStream(mStream, ftBlob);
//  dmDBCommon.IMAGES_UPD.ParamByName('DRAW_DATA').Value := dmDBCommon.IMAGES_SELDRAW_DATA.Value;
  dmDBCommon.IMAGES_UPD.ParamByName('IDX').Value := dmDBCommon.IMAGES_SELIDX.Value;
  dmDBCommon.IMAGES_UPD.ExecProc;
end;

procedure TfrmImageMultiView.edtTrackBarPropertiesChange(Sender: TObject);
begin
  ImageEnMView1.ThumbWidth := edtTrackBar.Value;
  ImageEnMView1.Update;
end;

procedure TfrmImageMultiView.ImageEnMView1AfterEvent(Sender: TObject;
  Event: TIEAfterEvent);
var
  imgX, imgY :integer;
begin
  if (Event = ieaePaint) and ImageEnMView1.Dragging and (fDragInsertPos > -1) then begin
    if fDragInsertPos >= ImageEnMView1.ImageCount then begin
      // Position at end of last thumbnail
      imgX := ImageEnMView1.ImageX[ImageEnMView1.ImageCount - 1] - ImageEnMView1.ViewX;
      imgY := ImageEnMView1.ImageY[ImageEnMView1.ImageCount - 1] - ImageEnMView1.ViewY + ImageEnMView1.ThumbHeight - 2;
    end else begin
      // Position before current thumbnail
      imgX := ImageEnMView1.ImageX[fDragInsertPos] - ImageEnMView1.ViewX;
      imgY := ImageEnMView1.ImageY[fDragInsertPos] - ImageEnMView1.ViewY + 1;
    end;
    with ImageEnMView1.GetCanvas do begin
      Pen.Color := clRed;
      Pen.Width := 5;
      MoveTo(ImgX + 10, ImgY);
      LineTo(ImgX + ImageEnMView1.ThumbWidth - 10, ImgY);
    end;
  end;
end;

procedure TfrmImageMultiView.ImageEnMView1Changed(Sender: TObject);
var
  i, id, cnt, idx : Integer;
begin
  cnt := ImageEnMView1.ImageCount;
  for i := 0 to cnt - 1 do begin
    id := ImageEnMView1.ImageID[i];
    dmDBCommon.IMAGES_UPD_IDX.ParamByName('ID').Value := id;
    dmDBCommon.IMAGES_UPD_IDX.ParamByName('IDX').Value := i + 1;
    dmDBCommon.IMAGES_UPD_IDX.ExecProc;
  end;
end;

procedure TfrmImageMultiView.ImageEnMView1DblClick(Sender: TObject);
begin
  btnEditImage.Click;
end;

procedure TfrmImageMultiView.ImageEnMView1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  im:integer;
begin
  im := ImageEnMView1.InsertingPoint(X, Y);
  ImageEnMView1.MoveSelectedImagesTo( im );
end;

procedure TfrmImageMultiView.ImageEnMView1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  fDragInsertPos := -1;
  if Source = ImageEnMView1 then
  begin
    Accept := True;
    fDragInsertPos := ImageEnMView1.InsertingPoint(X, Y);
  end;
  ImageEnMView1.Paint;
end;

procedure TfrmImageMultiView.ImageEnMView1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  ImageEnMView1.IEEndDrag;
  ImageEnMView1.MouseInteract := [mmiSelect];
  ImageEnMView1.Paint;
end;

procedure TfrmImageMultiView.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
begin
  IMAGE_IDX := idx;
  CustomerImages.ImageID := ImageEnMView1.ImageID[idx];
end;

procedure TfrmImageMultiView.ImageEnMView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (ssLeft in Shift) then
  begin
    ImageEnMView1.MouseInteract := [];
    ImageEnMView1.IEBeginDrag(true, -1);
  end;
end;

procedure TfrmImageMultiView.RetrieveThumbnailList;
var
  i, cnt, idx, thumb_id : integer;
  img_name, drw_name : string;
  mStream, dStream : TMemoryStream;
begin
  Screen.Cursor := crHourGlass;
  ImageEnMView1.LockPaint;
  ImageEnMView1.Clear;
  ImageEnMView1.TextTruncSide := iemtsLeft;
  PanelMessage.Visible := True;
  PanelMessage.Refresh;

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

  PanelMessage.Visible := False;
  ImageEnMView1.UnlockPaint;
  ImageEnMView1.SelectedImage := 0;
  Screen.Cursor := crArrow;
//  ImageEnMView1.Update();
end;

end.
