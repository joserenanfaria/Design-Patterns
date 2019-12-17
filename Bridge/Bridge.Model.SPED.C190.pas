unit Bridge.Model.SPED.C190;

interface

uses
  Bridge.Intf, System.Classes;

type

  TModelSPEDC190 = Class(TInterfacedObject, IExport<Tvenda>)
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

{ TModelSPEDC190 }

constructor TModelSPEDC190.Create;
begin
  FArquivo := TStringList.Create;

  if FileExists(ARQUIVO) then
    FArquivo.LoadFromFile(ARQUIVO);

  FArquivo.Add('C190|0|1|');
end;

destructor TModelSPEDC190.Destroy;
begin

  inherited;
end;

function TModelSPEDC190.GerarRegistros(Value: Tvenda): IExport<Tvenda>;
begin
  Result := Self;
  FArquivo.Add(Format(
    'C190|0|0|UN|%d|%d|%f|0|0|',
    [Value.COO, Value.Itens, Value.Total]
    ));
  FArquivo.SaveToFile(ARQUIVO);
end;

class function TModelSPEDC190.New: IExport<Tvenda>;
begin
  Result := Self.Create;
end;

end.
