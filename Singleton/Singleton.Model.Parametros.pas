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

    //procedure SetpermissaoCriar(const Value: Boolean);
    //procedure SetpermissaoEditar(const Value: Boolean);

    class procedure ReleaseInstance;

  public
    class function GetInstance: TParametros;


    property permissaoEditar:Boolean read FpermissaoEditar;// write SetpermissaoEditar;
    property permissaoCriar:Boolean read FpermissaoCriar;// write SetpermissaoCriar;

    destructor Destroy; Override;
  end;

var
  CanDestroy:boolean = false;

implementation

constructor TParametros.Create;
begin
  FpermissaoCriar  := False;
  FpermissaoEditar := True;
  inherited;
end;

destructor TParametros.Destroy;
begin
  if not CanDestroy then
    Exit;

  inherited;
end;

class function TParametros.GetInstance: TParametros;
begin
  If not Assigned(Self.FInstance) Then
    Self.FInstance := TParametros.Create();

  Result := FInstance;
end;

class procedure TParametros.ReleaseInstance;
begin
  if Assigned(Self.FInstance) then
  begin
    CanDestroy:= True;
    Self.FInstance.Free;
  end;

end;

{procedure TParametros.SetpermissaoCriar(const Value: Boolean);
begin
  FpermissaoCriar := Value;
end;

procedure TParametros.SetpermissaoEditar(const Value: Boolean);
begin
  FpermissaoEditar := Value;
end;  }


initialization

finalization
  TParametros.ReleaseInstance();

end.
