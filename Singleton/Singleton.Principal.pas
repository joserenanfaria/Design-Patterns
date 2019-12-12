unit Singleton.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Singleton.Model.Parametros;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
  if TParametros.GetInstance.permissaoCriar then
    Memo1.Lines.Add('Permissão concedida')
  else
    Memo1.Lines.Add('Permissão negada');
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
  if TParametros.GetInstance.permissaoEditar then
    Memo1.Lines.Add('Permissão concedida')
  else
    Memo1.Lines.Add('Permissão negada');
end;

end.
