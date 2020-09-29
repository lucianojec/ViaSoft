object frmReportPedido: TfrmReportPedido
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Pedido'
  ClientHeight = 386
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxReport1: TfrxReport
    Version = '6.6.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44103.035804317100000000
    ReportOptions.LastChange = 44103.063636053240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 101
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID_PED: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PED'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID_PED"]')
        end
        object frxDBDataset1CLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLIENTE"]')
        end
        object frxDBDataset1DTEMISSAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DTEMISSAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DTEMISSAO"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PED=ID_PED'
      'DTEMISSAO=DTEMISSAO'
      'NUMERO=NUMERO'
      'CLIENTE=CLIENTE')
    DataSet = frmDM.cdsPedidos
    BCDToCurrency = False
    Left = 88
    Top = 85
  end
end
