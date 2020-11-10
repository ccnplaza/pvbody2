unit UfmMemberPicture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ieview, iemview;

type
  TfmMemberPicture = class(TForm)
    ImageEnMView: TImageEnMView;
    pnl1: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ImageEnMViewDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ImageIndex : Integer;
  end;

var
  fmMemberPicture: TfmMemberPicture;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmMemberPicture.FormActivate(Sender: TObject);
begin
  ImageEnMView.ThumbHeight := ImageEnMView.Height - 20;
end;

procedure TfmMemberPicture.FormResize(Sender: TObject);
begin
  ImageEnMView.Height := ClientHeight;
  ImageEnMView.Width := ClientWidth;
  ImageEnMView.ThumbHeight := ImageEnMView.Height - 20;
  ImageEnMView.ThumbWidth := ImageEnMView.Height div 3;
end;

procedure TfmMemberPicture.ImageEnMViewDblClick(Sender: TObject);
begin
  ImageIndex := ImageEnMView.SelectedImage;
  ModalResult := mrOk;
end;

end.
