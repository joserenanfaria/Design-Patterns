unit AbstractFactory.Model.NotaFiscal;

interface

uses AbstractFactory.Intf;

type

  TNotaFiscal = class(TInterfacedObject, INotaFiscal)
    private
    FNumero: Integer;
     procedure SetNumero(val: Integer);
    function GetNumero(): Integer;
    public
      property Numero: Integer read GetNumero write SetNumero;
      constructor Create;
      destructor Destroy; override;
      class function New : INotaFiscal;
  end;

implementation

{ TNotaFiscal }

constructor TNotaFiscal.Create;
begin

end;

destructor TNotaFiscal.Destroy;
begin

  inherited;
end;

function TNotaFiscal.GetNumero: Integer;
begin
  Result := FNumero;
end;

class function TNotaFiscal.New: INotaFiscal;
begin
  Result := TNotaFiscal.Create;
end;

procedure TNotaFiscal.SetNumero(val: Integer);
begin
  FNumero := val;
end;

end.


