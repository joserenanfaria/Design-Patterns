unit ChainOfResponsability.Model.Item;

interface

uses ChainOfResponsability.Model.Intf;

type

  TModelItem = class(TInterfacedObject, IItem, IOperacoesItem)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IItem;
    function Operacoes: IOperacoesItem;
    function Desconto(AValue: Currency): IOperacoesItem;
    function &End: IItem;
  end;

implementation

uses
  ChainOfResponsability.Model.Usuario.Caixa,
  ChainOfResponsability.Model.Usuario.Fiscal,
  ChainOfResponsability.Model.Usuario.Gerente;

{ TModelItem }

function TModelItem.&End: IItem;
begin
  Result := Self;
end;

constructor TModelItem.Create;
begin

end;

function TModelItem.Desconto(AValue: Currency): IOperacoesItem;
begin
  TModelUsuarioCaixa.New
    .Responsability
    .NextResponsability(
      TModelUsuarioFiscal.New
        .Responsability
        .NextResponsability(
          TModelUsuarioGerente.New
            .Responsability
            .NextResponsability(nil)
        )
    ).Desconto(AValue);
end;

destructor TModelItem.Destroy;
begin

  inherited;
end;

class function TModelItem.New: IItem;
begin
  Result := Self.Create;
end;

function TModelItem.Operacoes: IOperacoesItem;
begin

end;

end.
