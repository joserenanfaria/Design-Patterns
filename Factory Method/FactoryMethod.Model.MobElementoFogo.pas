unit FactoryMethod.Model.MobElementoFogo;

interface

uses
  FactoryMethod.Intf;

type

  TMobFogo = class(TInterfacedObject, IMob)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IMob;
      function Atacar: String;
  end;

implementation

{ TMobFogo }

function TMobFogo.Atacar: String;
begin
  Result := 'Ataque de fogo';
end;

constructor TMobFogo.Create;
begin

end;

destructor TMobFogo.Destroy;
begin

  inherited;
end;

class function TMobFogo.New: IMob;
begin
  Result := Self.Create;
end;

end.
