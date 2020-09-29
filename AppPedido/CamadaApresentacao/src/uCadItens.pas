unit uCadItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Vcl.DBCtrls,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.DSConnect, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCadItens = class(TForm)
    dsItem: TDataSource;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    edtDescricao: TLabeledEdit;
    edtCodigo: TLabeledEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
  private
    procedure LimpaCampos;
    { Private declarations }
  public
    { Public declarations }
    function ValidaCamposObrigatorios: Boolean;
  end;

var
  frmCadItens: TfrmCadItens;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmCadItens.btnAlterarClick(Sender: TObject);
begin
  frmDM.cdsItem.Edit;
end;

procedure TfrmCadItens.btnIncluirClick(Sender: TObject);
begin

  if ValidaCamposObrigatorios then
  begin

    frmDM.cdsItem.Append;
    frmDM.cdsItem.FieldByName('ID_ITEM').Value := edtCodigo.Text;
    frmDM.cdsItem.FieldByName('DESC_ITEM').Value := edtDescricao.Text;
    frmDM.cdsItem.FieldByName('ID_PED').Value := edtCodigo.Text;
    frmDM.cdsItem.FieldByName('ID_ITEMSEQ').Value := edtCodigo.Text;

  end
  else
  begin

    ShowMessage('Favor informar os campos!');
    edtCodigo.SetFocus;

  end;
end;

procedure TfrmCadItens.btnSalvarClick(Sender: TObject);
begin

  if frmDM.cdsItem.State in dsEditModes then
  begin
    frmDM.cdsItem.Post;
    frmDM.cdsItem.ApplyUpdates(-1);
    LimpaCampos;
  end;

end;

procedure TfrmCadItens.btnVoltarClick(Sender: TObject);
begin
  frmDM.cdsItem.Prior;
end;

function TfrmCadItens.ValidaCamposObrigatorios: Boolean;
begin

  Result := true;
  if (edtCodigo.Text = '') and ( edtDescricao.Text = '') then
    Result := false;


end;

procedure TfrmCadItens.LimpaCampos;
begin

  edtCodigo.Clear;
  edtDescricao.Clear;



end;



procedure TfrmCadItens.btnAvancarClick(Sender: TObject);
begin
  frmDM.cdsItem.Next;
end;


end.
