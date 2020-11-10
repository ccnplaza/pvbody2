unit UfmCheckImageViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ieview, imageenview, ievect;

type
  TfmCheckImageViewer = class(TForm)
    ImageEnVect2: TImageEnVect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCheckImageViewer: TfmCheckImageViewer;

implementation

{$R *.dfm}

end.
