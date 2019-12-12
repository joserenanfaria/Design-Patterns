program Singleton;

uses
  Vcl.Forms,
  Singleton.Principal in 'Singleton.Principal.pas' {frmPrincipal},
  Singleton.Model.Parametros in 'Singleton.Model.Parametros.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := DebugHook<>0;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
