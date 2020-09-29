unit uReportPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  TfrmReportPedido = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportPedido: TfrmReportPedido;

implementation

{$R *.dfm}

uses uDM;

end.
