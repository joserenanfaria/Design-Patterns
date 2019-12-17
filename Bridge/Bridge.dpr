program Bridge;

uses
  Vcl.Forms,
  Bridge.Principal in 'Bridge.Principal.pas' {frmPrincipal},
  Bridge.Intf in 'Bridge.Intf.pas',
  Bridge.Model.Venda in 'Bridge.Model.Venda.pas',
  Bridge.Model.SPED.C100 in 'Bridge.Model.SPED.C100.pas',
  Bridge.Model.SPED.C190 in 'Bridge.Model.SPED.C190.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
