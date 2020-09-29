unit uDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr;

type
  TfrmDM = class(TForm)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    cdsPedidos: TClientDataSet;
    cdsPedidosID_PED: TIntegerField;
    cdsPedidosDTEMISSAO: TDateField;
    cdsPedidosNUMERO: TIntegerField;
    cdsPedidosCLIENTE: TStringField;
    cdsItem: TClientDataSet;
    cdsItemID_ITEM: TIntegerField;
    cdsItemDESC_ITEM: TStringField;
    cdsItemID_PED: TIntegerField;
    cdsItemID_ITEMSEQ: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDM: TfrmDM;

implementation

{$R *.dfm}

end.
