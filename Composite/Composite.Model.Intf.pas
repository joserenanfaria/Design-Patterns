unit Composite.Model.Intf;

interface

uses
  System.Generics.Collections;

type
  IItens = interface;

  IVenda = interface
    ['{40B42CD7-A435-4435-A320-53693B989922}']
    function Add(AValue: IItens) : IVenda;
    function Total : Currency;
    function Itens: TList<IItens>;
  end;

  IItens = interface
    ['{36A59A9D-6455-47D8-AE91-4C2BF7572761}']
    function GetCodigo : String;
    function GetQuantidade: Currency;
    function GetPreco: Currency;

    function SetCodigo(AValue: String):Iitens;
    function SetQuantidade(AValue: Currency): IITens;
    function SetPreco(AValue: Currency) : IItens;

    function GetTotal: Currency;
  end;

implementation

end.
