unit uPrincipal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Selecion: TLabel;
    edtPorta: TEdit;
    btnIniciar: TButton;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ServerContainerUnit1;

procedure TfrmPrincipal.btnIniciarClick(Sender: TObject);
begin

  if btnIniciar.Caption = 'Iniciar' then
  begin
    ServerContainer1.DSTCPServerTransport1.Port := StrToInt(edtPorta.Text);
    ServerContainer1.DSServer1.Start;

    if ServerContainer1.DSServer1.Started then
      btnIniciar.Caption := 'Parar'
  end
    else
    begin
      ServerContainer1.DSServer1.Stop;
      if not ServerContainer1.DSServer1.Started then
        btnIniciar.Caption := 'Iniciar';
    end;



end;

end.

