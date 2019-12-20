unit ChainOfResponsability.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Edit1: TEdit;
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

{$R *.dfm}

uses ChainOfResponsability.Model.Item;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  TModelItem.New.Operacoes.Desconto(StrToCurr(Edit1.Text));
end;

end.
