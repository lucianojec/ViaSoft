unit uReportItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, frxClass,
  frxDBSet;

type
  TfrmReportItens = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportItens: TfrmReportItens;

implementation

{$R *.dfm}

uses uDM;

end.
