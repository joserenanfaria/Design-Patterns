unit Prototype.Intf;

interface

type
  IPrototype<T> = interface
    ['{3154B763-23EC-44FF-8B2E-26525F5570BA}']
    function Clonar : T;
  end;

  IItem = interface
    ['{3CCA945C-4968-4BC1-934E-18E99CE4BA61}']
    function GetCodigo: Integer;
    function GetDescricao: String;

    procedure SetCodigo(AValue:Integer);
    procedure SetDescricao(AValue:String);

    property Codigo: Integer read GetCodigo write SetCodigo;
    property Descricao: String read GetDescricao write SetDescricao;
    function Prototype: IPrototype<IItem>;
  end;

implementation

end.
