unit Protorype.Model.Itens;

interface

uses
  Prototype.Intf;

type

  TItem = Class(TInterfacedObject, IItem, IPrototype<IItem>)
    private
      FCodigo: Integer;
      FDescricao: String;

      function GetCodigo: Integer;
      function GetDescricao: String;

      procedure SetCodigo(AValue:Integer);
      procedure SetDescricao(AValue:String);
    public
      Constructor Create;
      Destructor Destroy; Override;

      property Codigo: Integer read GetCodigo write SetCodigo;
      property Descricao: String read GetDescricao write SetDescricao;

      function Prototype: IPrototype<IItem>;

      function Clonar: IItem;

      Class function New : IItem;
  End;

implementation

{ TItens }

function TItem.Clonar: IItem;
begin
  Result := TItem.New;
  Result.Codigo    := FCodigo;
  Result.Descricao := FDescricao;
end;

constructor TItem.Create;
begin

end;

destructor TItem.Destroy;
begin

  inherited;
end;

function TItem.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TItem.GetDescricao: String;
begin
  Result := FDescricao;
end;

class function TItem.New: IItem;
begin
  Result :=  TItem.Create;
end;

function TItem.Prototype: IPrototype<IItem>;
begin
  Result := Self;
end;

procedure TItem.SetCodigo(AValue: Integer);
begin
  FCodigo := AValue;
end;

procedure TItem.SetDescricao(AValue: String);
begin
  FDescricao := AValue;
end;

end.
