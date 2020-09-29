unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastr1: TMenuItem;
    Itens1: TMenuItem;
    Pedidos1: TMenuItem;
    Relatrio1: TMenuItem;
    Item1: TMenuItem;
    Pedido1: TMenuItem;
    procedure Itens1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure Item1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadItens, uCadPedidos, uReportItens, uReportPedidos;

procedure TfrmPrincipal.Item1Click(Sender: TObject);
begin
  frmReportItens.frxReport1.ShowReport();
end;

procedure TfrmPrincipal.Itens1Click(Sender: TObject);
var
 oFormCadItens: TfrmCadItens;
begin

  oFormCadItens := TfrmCadItens.Create(Application);
  oFormCadItens.Show;

end;

procedure TfrmPrincipal.Pedido1Click(Sender: TObject);
begin
  frmReportPedido.frxReport1.ShowReport();
end;

procedure TfrmPrincipal.Pedidos1Click(Sender: TObject);
var
 oFormCadPedido: TfrmCadPedido;
begin

  oFormCadPedido := TfrmCadPedido.Create(Application);
  oFormCadPedido.Show;

end;

end.
