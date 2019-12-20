unit ChainOfResponsability.Model.Intf;

interface

type
  IITem = interface;

  IResponsability = interface
    ['{874D3B5A-17A5-4F3F-81EB-A5C63E1F8973}']
    function NextResponsability(AValue: IResponsability) : IResponsability;
    function Desconto(AValue: Currency): IResponsability;
  end;

  IUsuario = Interface
    ['{1B1D0812-4D8F-4306-80FE-8244F5111C77}']
    function Responsability: IResponsability;
  End;

  IOperacoesItem = interface
    ['{A6F8A07E-56D2-49F0-9961-7C8751D61EF1}']
    function Desconto(AValue : Currency): IOperacoesItem;
    function &End: IITem;
  end;

  IITem = interface
    ['{30EEF708-49C2-477C-91DD-DDE1F884B005}']
    function Operacoes: IOperacoesItem;
  end;

implementation

end.
