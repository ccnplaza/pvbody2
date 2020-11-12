unit UfmMuscleDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, StdCtrls, ComCtrls, iexRichEdit, ieview, imageenview;

type
  TfmMuscleDetail = class(TForm)
    ImageEnView1: TImageEnView;
    IERichEdit1: TIERichEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IMAGE_ID : Integer;
  end;

var
  fmMuscleDetail: TfmMuscleDetail;

implementation
uses
  UdmDBCommon;
{$R *.dfm}

procedure TfmMuscleDetail.FormShow(Sender: TObject);
begin
  dmDBCommon.MUSCLE_IMAGES_SEL.Locate('ID', IMAGE_ID, []);
  IERichEdit1.RTFText := dmDBCommon.MUSCLE_IMAGES_SELM_DESC.Value;
end;

end.
