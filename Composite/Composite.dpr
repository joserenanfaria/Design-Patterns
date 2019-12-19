program Composite;

uses
  Vcl.Forms,
  Composite.Principal in 'Composite.Principal.pas' {frmPrincipal},
  Composite.Model.Intf in 'Composite.Model.Intf.pas',
  Composite.Model.Venda in 'Composite.Model.Venda.pas',
  Composite.Model.Itens in 'Composite.Model.Itens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
