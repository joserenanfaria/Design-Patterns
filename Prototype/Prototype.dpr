program Prototype;

uses
  Vcl.Forms,
  Prototype.Principal in 'Prototype.Principal.pas' {frmPrincipal},
  Protorype.Model.Itens in 'Protorype.Model.Itens.pas',
  Prototype.Intf in 'Prototype.Intf.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
