unit UfmImportImages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, DB,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, ieopensavedlg, StdCtrls, cxButtons, LMDControl, LMDShList,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, iexWindowsFunctions,
  ieview, iemview, ExtCtrls, cxSpinEdit;

type
  TfmImportImages = class(TForm)
    OpenImageEnDialog1: TOpenImageEnDialog;
    Panel1: TPanel;
    Label1: TLabel;
    edtSaveDate: TcxDateEdit;
    cxButton1: TcxButton;
    btnSave: TcxButton;
    ImageEnMView1: TImageEnMView;
    IEFileDragDrop1: TIEFileDragDrop;
    btnTrim: TcxButton;
    PanelMessage: TPanel;
    Label2: TLabel;
    btnDel: TcxButton;
    btnRotate: TcxButton;
    Label3: TLabel;
    edtTrackBar: TcxSpinEdit;
    Label4: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IEFileDragDrop1FileDrop(Sender: TObject; X, Y: Integer;
      ssFiles: TStrings; dwEffect: Integer);
    procedure btnTrimClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnRotateClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edtTrackBarPropertiesEditValueChanged(Sender: TObject);
    procedure ImageEnMView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmImportImages: TfmImportImages;

implementation

uses GlobalVar, UfmPictureZoom, UdmDBCommon;

{$R *.dfm}

procedure TfmImportImages.btnTrimClick(Sender: TObject);
var
  mStream, newStream : TMemoryStream;
  idx : Integer;
begin
  if ImageEnMView1.ImageCount > 0 then begin
    fmPictureZoom := TfmPictureZoom.Create(Self);
    try
      fmPictureZoom.Height := ClientHeight;
      mStream := TMemoryStream.Create;
      idx := ImageEnMView1.SelectedImage;
      fmPictureZoom.ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(idx));
      fmPictureZoom.ImageEnView1.Update;
      fmPictureZoom.ShowModal;
      if fmPictureZoom.ModalResult = mrOk then begin
        newStream := TMemoryStream.Create;
        fmPictureZoom.ImageEnView1.IO.SaveToStreamJpeg(newStream);
        newStream.Position := 0;
        ImageEnMView1.SetImageFromStream(idx, newStream);
        ImageEnMView1.Update;
        newStream.Free;
      end;
    finally
      mStream.Free;
      fmPictureZoom.Free;
    end;
  end;
end;

procedure TfmImportImages.cxButton1Click(Sender: TObject);
var
  i, cnt : Integer;
  aFileName: string;
begin
  if OpenImageEnDialog1.Execute then begin
    cnt := OpenImageEnDialog1.Files.Count;
    for i := 0 to cnt - 1 do begin
      aFileName := Trim(OpenImageEnDialog1.Files[i]);
      ImageEnMView1.InsertImage(i, aFileName);
      ImageEnMView1.ImageBottomText[i] := ExtractFileName(aFileName);
    end;
  end;
end;

procedure TfmImportImages.edtTrackBarPropertiesEditValueChanged(
  Sender: TObject);
begin
  ImageEnMView1.Zoom := edtTrackBar.Value;
end;

procedure TfmImportImages.btnDelClick(Sender: TObject);
begin
  ImageEnMView1.DeleteSelectedImages;
end;

procedure TfmImportImages.btnRotateClick(Sender: TObject);
begin
  ImageEnMView1.IEMBitmap.Rotate(ImageEnMView1.SelectedImage, 90);
end;

procedure TfmImportImages.btnSaveClick(Sender: TObject);
var
  i, cnt, idx, dcnt : Integer;
  mStream : TMemoryStream;
begin
  PanelMessage.Visible := True;
  PanelMessage.Refresh;
  Screen.Cursor := crHourGlass;
  cnt := ImageEnMView1.ImageCount;
  for i := 0 to cnt - 1 do begin
    if dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Locate('P_DATE', edtSaveDate.Date, []) = True then begin
      dcnt := dmDBCommon.IMAGES_SEL_BYDATECNT.Value + 1;
      idx := dcnt + i;
    end else begin
      idx := i + 1;
    end;
    mStream := TMemoryStream.Create;
    ImageEnMView1.GetImageToStream(i, mStream, ioJPEG);
    mStream.Position := 0;
    dmDBCommon.IMAGES_INS.ParamByName('CUST_ID').Value := CustomerImages.CustID;
    dmDBCommon.IMAGES_INS.ParamByName('P_DATE').Value := edtSaveDate.Date;
    dmDBCommon.IMAGES_INS.ParamByName('IMAGE_DATA').LoadFromStream(mStream, ftBlob);
    dmDBCommon.IMAGES_INS.ParamByName('DRAW_DATA').Clear;
    dmDBCommon.IMAGES_INS.ParamByName('IDX').Value := idx;
    dmDBCommon.IMAGES_INS.ExecProc;
    mStream.Free;
  end;
  Screen.Cursor := crArrow;
  PanelMessage.Visible := False;
  ModalResult := mrOk;
end;

procedure TfmImportImages.FormShow(Sender: TObject);
begin
  RegisterExpectedMemoryLeak(IEFileDragDrop1);
  // Activate dropping
  IEFileDragDrop1.EnableDropping := True;
  ImageEnMView1.EnableAdjustOrientation := True;
  ImageEnMView1.Zoom := 100;
  edtSaveDate.Date := Date;
end;

procedure TfmImportImages.IEFileDragDrop1FileDrop(Sender: TObject; X,
  Y: Integer; ssFiles: TStrings; dwEffect: Integer);
var
  i, idx: Integer;
  aFileName: string;
begin
  for i := 0 to ssFiles.Count - 1 do begin
    aFileName := Trim(ssFiles[i]);
    ImageEnMView1.InsertImage(i, aFileName);
    ImageEnMView1.ImageBottomText[i] := ExtractFileName(aFileName);
  end;
  ImageEnMView1.SelectedImage := 0;
end;

procedure TfmImportImages.ImageEnMView1DblClick(Sender: TObject);
begin
  btnTrim.Click;
end;

end.
