program ChainOfResponsability;

uses
  Vcl.Forms,
  ChainOfResponsability.Principal in 'ChainOfResponsability.Principal.pas' {frmPrincipal},
  ChainOfResponsability.Model.Intf in 'ChainOfResponsability.Model.Intf.pas',
  ChainOfResponsability.Model.Usuario.Caixa in 'ChainOfResponsability.Model.Usuario.Caixa.pas',
  ChainOfResponsability.Model.Usuario.Fiscal in 'ChainOfResponsability.Model.Usuario.Fiscal.pas',
  ChainOfResponsability.Model.Usuario.Gerente in 'ChainOfResponsability.Model.Usuario.Gerente.pas',
  ChainOfResponsability.Model.Item in 'ChainOfResponsability.Model.Item.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
