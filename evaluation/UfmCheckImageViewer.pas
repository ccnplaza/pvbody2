unit UfmCheckImageViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ieview, imageenview, ievect, hyieutils, iexBitmaps, hyiedefs,
  iesettings, iexLayers, iexRulers, iexToolbars, ExtCtrls;

type
  TfmCheckImageViewer = class(TForm)
    ImageEnView1: TImageEnView;
    PanelMsg: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RESULT_LEVEL : Integer;
  end;

var
  fmCheckImageViewer: TfmCheckImageViewer;

implementation

{$R *.dfm}

procedure TfmCheckImageViewer.FormShow(Sender: TObject);
begin
  case RESULT_LEVEL of
    1: begin
      PanelMsg.Color := clYellow;
      PanelMsg.Font.Color := clBlack;
    end;
    2: begin
      PanelMsg.Color := clGreen;
      PanelMsg.Font.Color := clWhite;
    end;
    3: begin
      PanelMsg.Color := clRed;
      PanelMsg.Font.Color := clWhite;
    end;
  end;
end;

end.
