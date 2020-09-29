unit uCadPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient,
  Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCadPedido = class(TForm)
    Panel1: TPanel;
    dbgCadPedidos: TDBGrid;
    dsPedidos: TDataSource;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    edtCdPedido: TLabeledEdit;
    edtCliente: TLabeledEdit;
    edtDTEmissao: TLabeledEdit;
    edtNumero: TLabeledEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
  private
    function ValidaCamposObrigatorios: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPedido: TfrmCadPedido;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadPedido.btnAlterarClick(Sender: TObject);
begin
  frmDM.cdsPedidos.Edit;
end;

procedure TfrmCadPedido.btnExcluirClick(Sender: TObject);
begin
  frmDM.cdsPedidos.Delete;
end;

procedure TfrmCadPedido.btnIncluirClick(Sender: TObject);
begin
    if ValidaCamposObrigatorios then
  begin

    frmDM.cdsPedidos.Append;
    frmDM.cdsPedidos.FieldByName('ID_PED').Value := edtCdPedido.Text;
    frmDM.cdsPedidos.FieldByName('CLIENTE').Value := edtCliente.Text;
    frmDM.cdsPedidos.FieldByName('DTEMISSAO').Value := edtDTEmissao.Text;
    frmDM.cdsPedidos.FieldByName('NUMERO').Value := edtNumero.Text;

  end
  else
  begin

    ShowMessage('Favor informar os campos!');
    edtCdPedido.SetFocus;

  end;
end;


procedure TfrmCadPedido.btnSalvarClick(Sender: TObject);
begin
  if frmDM.cdsPedidos.State in dsEditModes then
  begin
    frmDM.cdsPedidos.Post;
    frmDM.cdsPedidos.ApplyUpdates(-1);
  end;
end;

function TfrmCadPedido.ValidaCamposObrigatorios: Boolean;
begin

  Result := true;
  if (edtCdPedido.Text = '')
    and ( edtCliente.Text = '')
    and ( edtDTEmissao.Text = '')
    and ( edtNumero.Text = '') then
    Result := false;


end;


procedure TfrmCadPedido.btnVoltarClick(Sender: TObject);
begin
  frmDM.cdsPedidos.Prior;
end;

procedure TfrmCadPedido.btnAvancarClick(Sender: TObject);
begin
  frmDM.cdsPedidos.Next;
end;

end.
