unit uViewPractice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  TfmViewPractice = class(TForm)
    wb1: TWebBrowser;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    file_url : string;
  end;

var
  fmViewPractice: TfmViewPractice;

implementation

{$R *.dfm}

procedure TfmViewPractice.FormActivate(Sender: TObject);
begin
  wb1.Navigate(file_url);
end;

end.
