unit AbstractFactory.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
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
  AbstractFactory.Intf,
  AbstractFactory.Model.Factory;
{$R *.dfm}


procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  _Pessoa: IPessoa;
begin
  _Pessoa := TModelFactory.New.CreatePessoa;

  _Pessoa.ID := StrToInt(Edit1.Text);
  _Pessoa.Nome := Edit2.Text;

  ShowMessage('ID: ' + _Pessoa.ID.ToString + ' Nome: ' + _Pessoa.Nome);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
var
  _notaFiscal : INotaFiscal;
begin
  _notaFiscal := TModelFactory.New.CreateNotaFiscal;

  _notaFiscal.Numero := StrToInt(Edit3.Text);

  ShowMessage('Nota fiscal: ' + _notaFiscal.Numero.ToString);

end;

end.
