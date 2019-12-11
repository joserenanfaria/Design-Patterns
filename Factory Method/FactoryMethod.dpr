program FactoryMethod;

uses
  Vcl.Forms,
  FactoryMethod.Principal in 'FactoryMethod.Principal.pas' {frmPrincipal},
  FactoryMethod.Intf in 'FactoryMethod.Intf.pas',
  FactoryMethod.Model.MobElementoFogo in 'FactoryMethod.Model.MobElementoFogo.pas',
  FactoryMethod.Model.MobElementoAgua in 'FactoryMethod.Model.MobElementoAgua.pas',
  FactoryMethod.Model.MobElementoVento in 'FactoryMethod.Model.MobElementoVento.pas',
  FactoryMethod.Model.Factory in 'FactoryMethod.Model.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
