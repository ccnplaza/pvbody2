unit UfmSetupConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfmSetupConfig = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSetupConfig: TfmSetupConfig;

implementation

{$R *.dfm}



procedure TfmSetupConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmSetupConfig]);

end.
