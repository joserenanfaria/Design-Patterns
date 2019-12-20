unit ChainOfResponsability.Model.Usuario.Caixa;

interface

uses ChainOfResponsability.Model.Intf;

type

  TModelUsuarioCaixa = class(TInterfacedObject, IUsuario, IResponsability)
  private
    FSucessor: IResponsability;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IUsuario;

    function Responsability: IResponsability;
    function NextResponsability(AValue: IResponsability): IResponsability;
    function Desconto(AValue: Currency): IResponsability;
  end;

implementation

uses
  System.SysUtils;

{ TModelUsuarioCaixa }

constructor TModelUsuarioCaixa.Create;
begin

end;

function TModelUsuarioCaixa.Desconto(AValue: Currency): IResponsability;
begin
  Result := Self;
  if AValue <= 10 then
    raise Exception.Create('Desconto concedido pelo Caixa com sucesso');

  if not Assigned(FSucessor) then
    raise Exception.Create('Operação não pode ser executada');

  FSucessor.Desconto(AValue);
end;

destructor TModelUsuarioCaixa.Destroy;
begin

  inherited;
end;

class function TModelUsuarioCaixa.New: IUsuario;
begin
  Result := Self.Create;
end;

function TModelUsuarioCaixa.NextResponsability(
  AValue: IResponsability): IResponsability;
begin
  Result := Self;
  FSucessor := AValue;
end;

function TModelUsuarioCaixa.Responsability: IResponsability;
begin
  Result := Self;
end;

end.
