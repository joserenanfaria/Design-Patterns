program AbstractFactory;

uses
  Vcl.Forms,
  AbstractFactory.Principal in 'AbstractFactory.Principal.pas' {frmPrincipal},
  AbstractFactory.Intf in 'AbstractFactory.Intf.pas',
  AbstractFactory.Model.Pessoa in 'AbstractFactory.Model.Pessoa.pas',
  AbstractFactory.Model.NotaFiscal in 'AbstractFactory.Model.NotaFiscal.pas',
  AbstractFactory.Model.Factory in 'AbstractFactory.Model.Factory.pas';

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
