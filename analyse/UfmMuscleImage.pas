unit UfmMuscleImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, ieview, iemview, DB, MemDS, DBAccess, Uni;

type
  TfmMuscleImage = class(TForm)
    ImageEnMView1: TImageEnMView;
    procedure FormShow(Sender: TObject);
    procedure ImageEnMView1DblClick(Sender: TObject);
  private
    procedure RetrieveImages;
    { Private declarations }
  public
    { Public declarations }
    BODY_SIDE : Integer;  //1=front, 2=left, 3=right, 4=back
    BODY_POINT : Integer;

  end;

var
  fmMuscleImage: TfmMuscleImage;

implementation
uses
  GlobalVar, UdmDBCommon, UfmPostureEditor2, UfmMuscleDetail;

{$R *.dfm}

procedure TfmMuscleImage.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  dmDBCommon.MUSCLE_IMAGES_SEL.ParamByName('MKIND').Value := BODY_SIDE;
  dmDBCommon.MUSCLE_IMAGES_SEL.ParamByName('MPOINT').Value := BODY_POINT;
  dmDBCommon.MUSCLE_IMAGES_SEL.Open;
  dmDBCommon.ds_MUSCLE_IMAGES_SEL.DataSet.Refresh;
  RetrieveImages;
  Screen.Cursor := crArrow;
end;

procedure TfmMuscleImage.ImageEnMView1DblClick(Sender: TObject);
var
  iev_name : string;
  image_uid : string;
  mStream, dStream : TMemoryStream;
  IMAGE_IDX : Integer;
begin
  if ImageEnMView1.ImageCount > 0 then begin
    fmMuscleDetail := TfmMuscleDetail.Create(Self);
    try
      IMAGE_IDX := ImageEnMView1.SelectedImage;
      fmMuscleDetail.IMAGE_ID := ImageEnMView1.ImageID[image_idx];
      fmMuscleDetail.ImageEnView1.IEBitmap.Assign(ImageEnMView1.GetTIEBitmap(IMAGE_IDX));
      fmMuscleDetail.ShowModal;
    finally
      fmMuscleDetail.Free;
    end;
  end;
end;

procedure TfmMuscleImage.RetrieveImages;
var
  mStream : TMemoryStream;
  i, cnt, idx : Integer;
begin
  cnt := dmDBCommon.MUSCLE_IMAGES_SEL.RecordCount;
  dmDBCommon.MUSCLE_IMAGES_SEL.First;
  ImageEnMView1.LockUpdate;
  for i := 0 to cnt - 1 do begin
    mStream := TMemoryStream.Create;
    dmDBCommon.MUSCLE_IMAGES_SELM_IMAGE.SaveToStream(mStream);
    mStream.Position := 0;
    idx := ImageEnMView1.AppendImage;
    ImageEnMView1.SetImageFromStream(idx, mStream);
    ImageEnMView1.ImageID[idx] := dmDBCommon.MUSCLE_IMAGES_SELID.Value;
    ImageEnMView1.ImageTopText[idx] := dmDBCommon.MUSCLE_IMAGES_SELM_NAME.Value;
    ImageEnMView1.Update();
    mStream.Free;
    dmDBCommon.MUSCLE_IMAGES_SEL.Next;
  end;
  ImageEnMView1.UnlockUpdate;
  ImageEnMView1.SelectedImage := 0;
end;

end.
