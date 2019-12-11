unit Singleton.Model.Parametros;

interface

type
  TParametros = class
  strict private
    class var FInstance: TParametros;
    constructor Create;
  private
    FpermissaoCriar: Boolean;
    FpermissaoEditar: Boolean;
    procedure SetpermissaoCriar(const Value: Boolean);
    procedure SetpermissaoEditar(const Value: Boolean);
  public
    class function GetInstance: TParametros;
    property permissaoEditar:Boolean read FpermissaoEditar write SetpermissaoEditar;
    property permissaoCriar:Boolean read FpermissaoCriar write SetpermissaoCriar;
  end;

implementation

constructor TParametros.Create;
begin
  inherited;
end;

class function TParametros.GetInstance: TParametros;
begin
  If FInstance = nil Then
  begin
    FInstance := TParametros.Create();
  end;
  Result := FInstance;
end;

procedure TParametros.SetpermissaoCriar(const Value: Boolean);
begin
  FpermissaoCriar := Value;
end;

procedure TParametros.SetpermissaoEditar(const Value: Boolean);
begin
  FpermissaoEditar := Value;
end;

end.
