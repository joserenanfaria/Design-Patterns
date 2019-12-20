unit ChainOfResponsability.Model.Usuario.Gerente;

interface

uses ChainOfResponsability.Model.Intf;

type

  TModelUsuarioGerente = class(TInterfacedObject, IUsuario, IResponsability)
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

{ TModelUsuarioGerente }

constructor TModelUsuarioGerente.Create;
begin

end;

function TModelUsuarioGerente.Desconto(AValue: Currency): IResponsability;
begin
  Result := Self;
  raise Exception.Create('Desconto concedido pelo Gerente com sucesso');
end;

destructor TModelUsuarioGerente.Destroy;
begin

  inherited;
end;

class function TModelUsuarioGerente.New: IUsuario;
begin
  Result := Self.Create;
end;

function TModelUsuarioGerente.NextResponsability(
  AValue: IResponsability): IResponsability;
begin
  Result := Self;
  FSucessor := AValue;
end;

function TModelUsuarioGerente.Responsability: IResponsability;
begin
  Result := Self;
end;

end.
