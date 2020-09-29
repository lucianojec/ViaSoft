object frmDM: TfrmDM
  Left = 0
  Top = 0
  Caption = 'frmDM'
  ClientHeight = 280
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=127.0.0.1'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 128
    Top = 32
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    Connected = True
    SQLConnection = SQLConnection1
    Left = 128
    Top = 88
  end
  object cdsPedidos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidoCab'
    RemoteServer = DSProviderConnection1
    Left = 40
    Top = 144
    object cdsPedidosID_PED: TIntegerField
      FieldName = 'ID_PED'
      Origin = 'ID_PED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPedidosDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
      Origin = 'DTEMISSAO'
    end
    object cdsPedidosNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object cdsPedidosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
  end
  object cdsItem: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItem'
    RemoteServer = DSProviderConnection1
    Left = 123
    Top = 144
    object cdsItemID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Origin = 'ID_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsItemDESC_ITEM: TStringField
      FieldName = 'DESC_ITEM'
      Origin = 'DESC_ITEM'
      Size = 100
    end
    object cdsItemID_PED: TIntegerField
      FieldName = 'ID_PED'
      Origin = 'ID_PED'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsItemID_ITEMSEQ: TIntegerField
      FieldName = 'ID_ITEMSEQ'
      Origin = 'ID_ITEMSEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
end
