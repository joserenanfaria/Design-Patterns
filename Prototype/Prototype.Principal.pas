unit Prototype.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Prototype.Intf,
  system.generics.collections;

type
  TfrmPrincipal = class(TForm)
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FLista : TList<IItem>;
    procedure carregarMemo;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses Protorype.Model.Itens;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  _item : IItem;
begin
  _item := TItem.New;
  _item.Codigo := StrtoInt(Edit1.Text);
  _item.Descricao := Edit2.Text;
  FLista.Add(_item);
  carregarMemo;
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
  FLista.Add(Flista[pred(FLista.Count)].Prototype.Clonar);
  carregarMemo;
end;

procedure TfrmPrincipal.carregarMemo;
var
  I: Integer;
begin
  Memo1.Clear;
  for I := 0 to pred(FLista.Count) do
  begin
    Memo1.Lines.Add('ITEM: ' + i.ToString);
    Memo1.Lines.Add('ID: ' + FLista[i].Codigo.ToString);
    Memo1.Lines.Add('Descrição: ' + FLista[i].Descricao);
    Memo1.Lines.Add('');
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FLista := TList<IItem>.Create;
end;

end.
