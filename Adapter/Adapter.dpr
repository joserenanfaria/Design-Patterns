program Adapter;

uses
  Vcl.Forms,
  Adapter.Principal in 'Adapter.Principal.pas' {frmPrincipal},
  Adapter.Intf in 'Adapter.Intf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
