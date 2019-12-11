unit FactoryMethod.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    memAtaques: TMemo;
    Elementos: TRadioGroup;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  FactoryMethod.Model.Factory, FactoryMethod.Intf;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  memAtaques.Clear;
  if Elementos.ItemIndex <> -1 then
  
  memAtaques.Lines.Add(
    TMobFactory.New.CreateMob(TElementos(Elementos.ItemIndex)).Atacar);
end;

end.
