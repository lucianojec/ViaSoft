program Fatorial;

uses
  Vcl.Forms,
  uFatorial in 'uFatorial.pas' {frmFatorial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmFatorial, frmFatorial);
  Application.Run;
end.
