unit ChainOfResponsability.Model.Usuario.Fiscal;

interface

uses ChainOfResponsability.Model.Intf;

type

  TModelUsuarioFiscal = class(TInterfacedObject, IUsuario, IResponsability)
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

{ TModelUsuarioFiscal }

constructor TModelUsuarioFiscal.Create;
begin

end;

function TModelUsuarioFiscal.Desconto(AValue: Currency): IResponsability;
begin
  Result := Self;
  if AValue <= 70 then
    raise Exception.Create('Desconto concedido pelo Fiscal com sucesso');

  if not Assigned(FSucessor) then
    raise Exception.Create('Operação não pode ser executada');

  FSucessor.Desconto(AValue);
end;

destructor TModelUsuarioFiscal.Destroy;
begin

  inherited;
end;

class function TModelUsuarioFiscal.New: IUsuario;
begin
  Result := Self.Create;
end;

function TModelUsuarioFiscal.NextResponsability(
  AValue: IResponsability): IResponsability;
begin
  Result := Self;
  FSucessor := AValue;
end;

function TModelUsuarioFiscal.Responsability: IResponsability;
begin
  Result := Self;
end;

end.
