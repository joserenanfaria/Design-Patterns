unit Bridge.Model.SPED.C100;

interface

uses
  Bridge.Intf, System.Classes;

type

  TModelSPEDC100 = Class(TInterfacedObject, IExport<Tvenda>)
  private
    FArquivo: TStringList;
  public
    Constructor Create;
    Destructor Destroy; Override;

    function GerarRegistros(Value: Tvenda): IExport<Tvenda>;
    Class function New: IExport<Tvenda>;
  End;

const
  ARQUIVO = 'SPED.TXT';

implementation

uses
  System.SysUtils;

{ TModelSPEDC100 }

constructor TModelSPEDC100.Create;
begin
  FArquivo := TStringList.Create;

  if FileExists(ARQUIVO) then
    FArquivo.LoadFromFile(ARQUIVO);

  FArquivo.Add('C100|0|1|');
end;

destructor TModelSPEDC100.Destroy;
begin

  inherited;
end;

function TModelSPEDC100.GerarRegistros(Value: Tvenda): IExport<Tvenda>;
begin
  Result := Self;
  FArquivo.Add(Format(
    'C100|%d|%d|%f|',
    [Value.COO, Value.Itens, Value.Total]
    ));
  FArquivo.SaveToFile(ARQUIVO);
end;

class function TModelSPEDC100.New: IExport<Tvenda>;
begin
  Result := Self.Create;
end;

end.
