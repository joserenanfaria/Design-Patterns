unit FactoryMethod.Intf;

interface

type
  TElementos = (Fogo, Agua, Vento);

  IMob = interface
  ['{AEFAEC8D-B1C9-410B-9904-FD8CEA0AAC12}']
    function Atacar: String;
  end;

  IMobFactory = interface
  ['{3B658BA5-313A-4FB2-9218-081CA8C08A30}']
    function CreateMob(AElemento : TElementos) : IMob;
  end;

implementation

end.
