unit UfmThumbnails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ieview, iemview, ExtCtrls;

type
  TfmThumbnails = class(TForm)
    Panel1: TPanel;
    ImageEnMView: TImageEnMView;
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure SetThumbSize;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmThumbnails: TfmThumbnails;

implementation

{$R *.dfm}

procedure TfmThumbnails.FormResize(Sender: TObject);
begin
  SetThumbSize;
end;

procedure TfmThumbnails.SetThumbSize;
begin
  ImageEnMView.ThumbHeight := ImageEnMView.ClientHeight - 3;
  ImageEnMView.ThumbWidth := ImageEnMView.ClientHeight div 2;
end;
procedure TfmThumbnails.FormActivate(Sender: TObject);
begin
  SetThumbSize;
end;

end.
