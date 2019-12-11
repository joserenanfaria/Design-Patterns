unit FactoryMethod.Model.MobElementoAgua;

interface

uses
  FactoryMethod.Intf;

type

  TMobAgua = class(TInterfacedObject, IMob)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IMob;
      function Atacar: String;
  end;

implementation

{ TMobAgua }

function TMobAgua.Atacar: String;
begin
  Result := 'Ataque de água';
end;

constructor TMobAgua.Create;
begin

end;

destructor TMobAgua.Destroy;
begin

  inherited;
end;

class function TMobAgua.New: IMob;
begin
  Result := Self.Create;
end;

end.
