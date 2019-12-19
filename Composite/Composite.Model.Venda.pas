unit Composite.Model.Venda;

interface

uses
  Composite.Model.Intf, System.Generics.Collections;

type

  TModelVenda = Class(TInterfacedObject, Ivenda)
  private
    FItens : TList<IITens>;
  public
    function Add(AValue: IItens): Ivenda;
    function Total: Currency;

    function Itens: TList<IItens>;
    Constructor Create;
    Destructor Destroy; Override;

    Class function New: Ivenda;
  End;

implementation

{ TModelVenda }

function TModelVenda.Add(AValue: IItens): Ivenda;
begin
  Result := Self;
  FItens.Add(AValue);
end;

constructor TModelVenda.Create;
begin
 FItens := TList<IITens>.Create;
end;

destructor TModelVenda.Destroy;
begin
  FItens.Free;
  inherited;
end;

function TModelVenda.Itens: TList<IItens>;
begin
  Result := FItens;
end;

class function TModelVenda.New: Ivenda;
begin
  Result := Self.Create;
end;

function TModelVenda.Total: Currency;
var
  i: Integer;
begin
  Result := 0;

  for i := 0 to pred(FItens.Count) do
    Result := Result + FItens[i].GetTotal;

end;

end.
