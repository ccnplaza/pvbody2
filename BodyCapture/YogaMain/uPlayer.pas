unit uPlayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, WMPLib_TLB, ExtCtrls;

type
  TfmVideoPlayer = class(TForm)
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VIDEO_ID : Integer;
  end;

var
  fmVideoPlayer: TfmVideoPlayer;

implementation

{$R *.dfm}

procedure TfmVideoPlayer.FormShow(Sender: TObject);
begin
  WindowsMediaPlayer1.enableContextMenu := False;
  WindowsMediaPlayer1.uiMode := 'full';
  WindowsMediaPlayer1.settings.autoStart := True;
  WindowsMediaPlayer1.settings.setMode('loop', True);
  WindowsMediaPlayer1.URL := 'http://210.122.36.244/yoga/video/video_' + Format('%.2d', [VIDEO_ID]) + '.mp4';
  WindowsMediaPlayer1.controls.play;
end;

end.
