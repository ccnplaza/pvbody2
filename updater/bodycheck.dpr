program bodycheck;

uses
  Forms,
  UfmLauncher in 'UfmLauncher.pas' {fmLauncher};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BodyCheck';
  Application.CreateForm(TfmLauncher, fmLauncher);
  Application.Run;
end.
