program ClientePedido;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadItens in 'uCadItens.pas' {frmCadItens},
  uCadPedidos in 'uCadPedidos.pas' {frmCadPedido},
  uReportItens in 'uReportItens.pas' {frmReportItens},
  uDM in 'uDM.pas' {frmDM},
  uReportPedidos in 'uReportPedidos.pas' {frmReportPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmReportItens, frmReportItens);
  Application.CreateForm(TfrmDM, frmDM);
  Application.CreateForm(TfrmReportPedido, frmReportPedido);
  Application.Run;
end.
