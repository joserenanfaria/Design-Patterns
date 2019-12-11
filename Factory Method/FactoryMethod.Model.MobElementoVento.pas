unit FactoryMethod.Model.MobElementoVento;

interface

uses
  FactoryMethod.Intf;

type

  TMobVento = class(TInterfacedObject, IMob)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IMob;
      function Atacar: String;
  end;

implementation

{ TMobVento }

function TMobVento.Atacar: String;
begin
  Result := 'Ataque de vento';
end;

constructor TMobVento.Create;
begin

end;

destructor TMobVento.Destroy;
begin

  inherited;
end;

class function TMobVento.New: IMob;
begin
  Result := Self.Create;
end;

end.
