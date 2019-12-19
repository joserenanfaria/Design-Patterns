unit Composite.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Composite.Model.Intf,
  Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    pnlItens: TPanel;
    Memo1: TMemo;
    lbltotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FVenda: IVenda;
  public
    { Public declarations }
    procedure AtualizaMemo;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Composite.Model.Venda, Composite.Model.Itens;

{$R *.dfm}

procedure TfrmPrincipal.AtualizaMemo;
var
  i: Integer;
begin
  Memo1.Clear;
  for i := 0 to pred(FVenda.Itens.Count) do
  begin
    Memo1.Lines.Add('COD: ' + FVenda.Itens[i].GetCodigo);
    Memo1.Lines.Add('QTDE: ' +
      FormatCurr('R$ ###,##0.00',FVenda.Itens[i].GetQuantidade));
    Memo1.Lines.Add('PRECO: ' +
      FormatCurr('R$ ###,##0.00',FVenda.Itens[i].GetPreco));
    Memo1.Lines.Add('TOTAL ITEM: ' +
      FormatCurr('R$ ###,##0.00',FVenda.Itens[i].GetTotal));
    Memo1.Lines.Add('--------------------------------');
  end;
  lbltotal.Caption := FormatCurr('R$ ###,##0.00',FVenda.Total);
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  FVenda.Add(
    TModelItens.New
      .SetCodigo(Edit3.Text)
      .SetQuantidade(StrToCurr(Edit1.Text))
      .SetPreco(StrToCurr(Edit2.Text))
      );

  AtualizaMemo;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FVenda := TModelVenda.New;
end;

end.
