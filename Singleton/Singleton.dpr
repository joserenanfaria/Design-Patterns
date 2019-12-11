program Singleton;

uses
  Vcl.Forms,
  Singleton.Principal in 'Singleton.Principal.pas' {frmPrincipal},
  Singleton.Model.Parametros in 'Singleton.Model.Parametros.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
