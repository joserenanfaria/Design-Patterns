unit AbstractFactory.Model.Factory;

interface

uses AbstractFactory.Intf;

type

  TModelFactory = class(TInterfacedObject, IModelFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IModelFactory;

      function CreatePessoa: IPessoa;
      function CreateNotaFiscal: INotaFiscal;
  end;

implementation

uses
  AbstractFactory.Model.NotaFiscal,
  AbstractFactory.Model.Pessoa;

{ TModelFactory }

constructor TModelFactory.Create;
begin

end;

function TModelFactory.CreateNotaFiscal: INotaFiscal;
begin
  Result := TNotaFiscal.New;
end;

function TModelFactory.CreatePessoa: IPessoa;
begin
  Result := TPessoa.New;
end;

destructor TModelFactory.Destroy;
begin

  inherited;
end;

class function TModelFactory.New: IModelFactory;
begin
  Result := TModelFactory.Create;
end;

end.
