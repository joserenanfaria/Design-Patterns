unit Bridge.Model.Venda;

interface

uses
  Bridge.Intf, System.Generics.Collections;

type

  TModelVenda = Class(TInterfacedObject, ISource<TVenda>)
  private
    FList: TList<TVenda>;
    procedure AddItens;
  public
    Constructor Create;
    Destructor Destroy; Override;

    function Exportar(AExport: IExport<TVenda>): ISource<TVenda>;
    Class function New: ISource<TVenda>;
  End;

implementation

uses
  System.SysUtils;

{ TModelVenda }

procedure TModelVenda.AddItens;
var
  _venda: TVenda;
  i: Integer;
begin
  for i := 0 to 10 do
  begin
    _venda.COO := i + 1;
    _venda.Itens := i + 3;
    _venda.Total := _venda.Itens * 8;
    FList.Add(_venda);
  end;
  FList.TrimExcess;
end;

constructor TModelVenda.Create;
begin
  FList := TList<TVenda>.Create;
  AddItens;
end;

destructor TModelVenda.Destroy;
begin
  FreeAndNil(FList);
  inherited;
end;

function TModelVenda.Exportar(AExport: IExport<TVenda>): ISource<TVenda>;
var
  i: Integer;
begin
  Result := Self;
  for i := 0 to pred(FList.Count) do
    AExport.GerarRegistros(FList.Items[i]);
end;

class function TModelVenda.New: ISource<TVenda>;
begin
  Result := Self.Create;
end;

end.
