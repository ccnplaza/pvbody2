unit UfmPictureZoom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ieview, imageenview, StdCtrls, Buttons, ExtCtrls;

type
  TfmPictureZoom = class(TForm)
    ImageEnView1: TImageEnView;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPictureZoom: TfmPictureZoom;

implementation

{$R *.dfm}

procedure TfmPictureZoom.FormActivate(Sender: TObject);
begin
  ImageEnView1.FitToWidth;
  ImageEnView1.Update;
end;

end.
