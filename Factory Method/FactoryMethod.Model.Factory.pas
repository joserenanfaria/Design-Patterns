unit FactoryMethod.Model.Factory;

interface

uses
  FactoryMethod.Intf;

type

  TMobFactory = class(TInterfacedObject, IMobFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IMobFactory;
      function CreateMob(AElemento : TElementos) : IMob;
  end;

implementation

uses
  FactoryMethod.Model.MobElementoFogo,
  FactoryMethod.Model.MobElementoAgua,
  FactoryMethod.Model.MobElementoVento;


{ TMobFactory }


constructor TMobFactory.Create;
begin

end;

function TMobFactory.CreateMob(AElemento: TElementos): IMob;
begin
  case AElemento of
    Fogo: Result := TMobFogo.New;
    Agua: Result := TMobAgua.New;
    Vento: Result := TMobVento.New;
  end;
end;

destructor TMobFactory.Destroy;
begin

  inherited;
end;

class function TMobFactory.New: IMobFactory;
begin
  Result := Self.Create;
end;

end.
