object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 405
  Width = 623
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 96
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 64
    Top = 240
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 64
    Top = 176
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\lucia\Desktop\ViaSoft\AppPedido\CamadaDados\BA' +
        'NCO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 160
    Top = 56
  end
  object qryItem: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from item')
    Left = 272
    Top = 136
  end
  object qryPedidoCab: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pedidocab')
    Left = 272
    Top = 192
  end
  object qryPedidoItem: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pedidoitem')
    Left = 272
    Top = 256
  end
  object dspItem: TDataSetProvider
    DataSet = qryItem
    Left = 200
    Top = 144
  end
  object dspPedidoCab: TDataSetProvider
    DataSet = qryPedidoCab
    Left = 192
    Top = 200
  end
  object dspPedidoItem: TDataSetProvider
    DataSet = qryPedidoItem
    Left = 192
    Top = 264
  end
end
