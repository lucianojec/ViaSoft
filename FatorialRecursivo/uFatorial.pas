unit uFatorial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmFatorial = class(TForm)
    Panel1: TPanel;
    edtInput: TEdit;
    Label1: TLabel;
    btnCalcula: TButton;
    lbResult: TLabel;
    btnLimpar: TButton;
    lblAviso: TLabel;
    procedure btnCalculaClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtInputKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    function CalculaFatorial(iNumber: EXTENDED): EXTENDED;
    procedure Limpar;
    procedure ValidaEdtNumero(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  end;

var
  frmFatorial: TfrmFatorial;

implementation

{$R *.dfm}

procedure TfrmFatorial.btnCalculaClick(Sender: TObject);
var
  iResultFatorial: Extended;
begin

  if edtInput.Text = '' then
  begin
    lblAviso.Visible := true;
    lblAviso.Caption := 'Favor inserir um número!';
    lblAviso.Font.Color := clRed;
    edtInput.SetFocus;
  end
  else
  begin
    iResultFatorial := CalculaFatorial(StrToFloat(edtInput.Text));

    lbResult.Visible := True;
    lbResult.Caption := 'O fatorial de ' + edtInput.Text + ' é: ' +
      FloatToStrF(iResultFatorial, ffGeneral, 30, 3);
    lblAviso.Visible := false;

  end;
end;

procedure TfrmFatorial.btnLimparClick(Sender: TObject);
begin
  Limpar;
end;

function TfrmFatorial.CalculaFatorial(iNumber: EXTENDED): EXTENDED;
var
  i: EXTENDED;
  n: EXTENDED;
begin
  result := 0;
  n := 1;

  If iNumber = 0 Then
    CalculaFatorial:= 1
  Else
    CalculaFatorial:= iNumber * CalculaFatorial(iNumber-1);

end;

procedure TfrmFatorial.edtInputKeyPress(Sender: TObject; var Key: Char);
begin
  ValidaEdtNumero( Sender, key);
end;

procedure TfrmFatorial.FormShow(Sender: TObject);
begin
 Limpar;
end;

procedure TfrmFatorial.Limpar;
begin
  edtInput.Clear;
  lbResult.Caption := '';
  lbResult.Visible := false;
  lblAviso.Visible := false;
end;

procedure TfrmFatorial.ValidaEdtNumero(Sender: TObject; var Key: Char);
begin
  if not( key in['0'..'9',#08,#13,#27,#42] ) then
    key:=#0;

  if key =#13 then   //Apertei 'ENTER'
  begin
   edtInput.SetFocus;

  end;
  if key =#27 then   //Apertei 'ESC'
   edtInput.Text:='';

end;

end.
