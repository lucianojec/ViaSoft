object frmCadPedido: TfrmCadPedido
  Left = 0
  Top = 0
  Caption = 'Cadastro Pedidos'
  ClientHeight = 572
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 227
    Width = 560
    Height = 345
    Align = alBottom
    TabOrder = 0
    object dbgCadPedidos: TDBGrid
      Left = 1
      Top = 1
      Width = 558
      Height = 343
      Align = alClient
      DataSource = dsPedidos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PED'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Caption = 'Cliente'
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTEMISSAO'
          Title.Caption = 'Data Emiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end>
    end
  end
  object btnIncluir: TBitBtn
    Left = 15
    Top = 182
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 1
    OnClick = btnIncluirClick
  end
  object btnAlterar: TBitBtn
    Left = 96
    Top = 182
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 2
    OnClick = btnAlterarClick
  end
  object btnExcluir: TBitBtn
    Left = 177
    Top = 182
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnSalvar: TBitBtn
    Left = 311
    Top = 182
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
  object edtCdPedido: TLabeledEdit
    Left = 32
    Top = 20
    Width = 58
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo'
    TabOrder = 5
  end
  object edtCliente: TLabeledEdit
    Left = 32
    Top = 61
    Width = 342
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Cliente'
    TabOrder = 6
  end
  object edtDTEmissao: TLabeledEdit
    Left = 32
    Top = 106
    Width = 121
    Height = 21
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = 'DataEmiss'#227'o'
    TabOrder = 7
  end
  object edtNumero: TLabeledEdit
    Left = 32
    Top = 150
    Width = 121
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#250'mero'
    TabOrder = 8
  end
  object dsPedidos: TDataSource
    DataSet = frmDM.cdsPedidos
    Left = 408
    Top = 152
  end
end
