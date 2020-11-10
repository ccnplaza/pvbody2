unit UfmMultiUploader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ieopensavedlg, StdCtrls, Buttons, ieview, imageenview, hyieutils,
  iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers, iexToolbars;

type
  TfmMultiUploader = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    btnPic1: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    OpenImageEnDialog1: TOpenImageEnDialog;
    Label8: TLabel;
    ImageEnView1: TImageEnView;
    ImageEnView2: TImageEnView;
    ImageEnView3: TImageEnView;
    ImageEnView4: TImageEnView;
    ImageEnView5: TImageEnView;
    ImageEnView6: TImageEnView;
    ImageEnView7: TImageEnView;
    procedure btnPic1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMultiUploader: TfmMultiUploader;

implementation

{$R *.dfm}

procedure TfmMultiUploader.btnPic1Click(Sender: TObject);
var
  i, cnt : Integer;
  fname : array[0..6] of TEdit;
  img : array[0..6] of TImageEnView;
begin
  fname[0] := Edit1;
  fname[1] := Edit2;
  fname[2] := Edit3;
  fname[3] := Edit4;
  fname[4] := Edit5;
  fname[5] := Edit6;
  fname[6] := Edit7;
  img[0] := ImageEnView1;
  img[1] := ImageEnView2;
  img[2] := ImageEnView3;
  img[3] := ImageEnView4;
  img[4] := ImageEnView5;
  img[5] := ImageEnView6;
  img[6] := ImageEnView7;
  if OpenImageEnDialog1.Execute then begin
    cnt := OpenImageEnDialog1.Files.Count;
    for i := 0 to cnt - 1 do begin
      fname[i].Text := OpenImageEnDialog1.Files[i];
      img[i].IO.LoadFromFile(fname[i].Text);
    end;
  end;
end;

procedure TfmMultiUploader.FormShow(Sender: TObject);
begin
  ImageEnView1.Clear;
  ImageEnView2.Clear;
  ImageEnView3.Clear;
  ImageEnView4.Clear;
  ImageEnView5.Clear;
  ImageEnView6.Clear;
  ImageEnView7.Clear;
end;

end.
