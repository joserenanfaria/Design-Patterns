unit Bridge.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    GerarSPED: TButton;
    procedure GerarSPEDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Bridge.Intf, Bridge.Model.SPED.C100, Bridge.Model.SPED.C190,
  Bridge.Model.Venda;

procedure TfrmPrincipal.GerarSPEDClick(Sender: TObject);
begin
  TModelVenda.New
  .Exportar(
    TModelSPEDC100.New)
  .Exportar(
    TModelSPEDC190.New);
end;

end.
