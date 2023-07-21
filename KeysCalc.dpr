program KeysCalc;

uses
  Vcl.Forms,
  API.KEYS in 'API\API.KEYS.pas',
  Main in 'Main.pas' {MainView};

{$R *.res}

var
  MainView: TMainView;

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainView, MainView);
  Application.Run;
end.
