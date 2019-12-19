unit Composite.Model.Itens;

interface

uses
  Composite.Model.Intf;

type

  TModelItens = Class(TInterfacedObject, IITens)
  private
    FCodigo: String;
    FPreco: Currency;
    FQuantidade: Currency;
  public
    function GetCodigo : String;
    function GetQuantidade: Currency;
    function GetPreco: Currency;

    function SetCodigo(AValue: String):Iitens;
    function SetQuantidade(AValue: Currency): IITens;
    function SetPreco(AValue: Currency) : IItens;

    function GetTotal: Currency;

    Constructor Create;
    Destructor Destroy; Override;

    Class function New: IITens;
  End;

implementation

{ TModelItens }

constructor TModelItens.Create;
begin

end;

destructor TModelItens.Destroy;
begin

  inherited;
end;

class function TModelItens.New: IITens;
begin
  Result := Self.Create;
end;

function TModelItens.SetCodigo(AValue: String): Iitens;
begin
  Result := Self;
  FCodigo := AValue;
end;

function TModelItens.SetPreco(AValue: Currency): IITens;
begin
  Result := Self;
  FPreco := AValue;
end;

function TModelItens.SetQuantidade(AValue: Currency): IITens;
begin
  Result := Self;
  FQuantidade := AValue;
end;

function TModelItens.GetCodigo: String;
begin
  Result := FCodigo;
end;

function TModelItens.GetPreco: Currency;
begin
  Result := FPreco;
end;

function TModelItens.GetQuantidade: Currency;
begin
  Result := FQuantidade;
end;

function TModelItens.GetTotal: Currency;
begin
  Result := (FQuantidade * FPreco);
end;

end.
