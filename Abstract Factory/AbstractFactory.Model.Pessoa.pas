unit AbstractFactory.Model.Pessoa;

interface

uses AbstractFactory.Intf;

type

  TPessoa = class(TInterfacedObject, IPessoa)
    private
      FID: Integer;
      FNome: String;

      procedure SetID(val: Integer);
      procedure SetNome(val: String);

      function GetNome(): String;
      function GetID(): Integer;
    public
      property Nome: String read GetNome write SetNome;
      property ID: Integer read GetID write SetID;

      constructor Create;
      destructor Destroy; override;
      class function New : IPessoa;
  end;

implementation


{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

function TPessoa.GetID: Integer;
begin
  Result := FID;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome
end;

class function TPessoa.New: IPessoa;
begin
  Result := TPessoa.Create;
end;

procedure TPessoa.SetID(val: Integer);
begin
  FID := val;
end;

procedure TPessoa.SetNome(val: String);
begin
  FNome := val;
end;

end.
