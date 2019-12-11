unit AbstractFactory.Intf;

interface

type

  IPessoa = interface
  ['{4F035C15-701F-4ABB-A3F3-8DC144A85C64}']
    procedure SetID(val: Integer);
    procedure SetNome(val: String);

    function GetNome(): String;
    function GetID(): Integer;

    property Nome: String read GetNome write SetNome;
    property ID: Integer read GetID write SetID;
  end;

  INotaFiscal = interface
    ['{16531ED8-CCBC-4E10-823F-A09D08A54C7D}']
    procedure SetNumero(val: Integer);
    function GetNumero(): Integer;
    property Numero: Integer read GetNumero write SetNumero;
  end;

  IModelFactory = interface
    function CreatePessoa: IPessoa;
    function CreateNotaFiscal: INotaFiscal;
  end;

implementation

end.
