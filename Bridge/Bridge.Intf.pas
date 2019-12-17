unit Bridge.Intf;

interface

type
  TVenda = record
    COO: Integer;
    Itens: Integer;
    Total: Currency;
  end;

  IExport<T> = Interface;

  ISource<T> = interface
    ['{60DDDD2A-0E58-4C84-8A50-81E45D7B4D8B}']
    function Exportar(AExport: IExport<T>): ISource<T>;
  end;

  IExport<T> = Interface
    ['{36DC554C-0ACF-44EF-BD46-3B074D5479A8}']
    function GerarRegistros(Value: T): IExport<T>;
  End;

implementation

end.
