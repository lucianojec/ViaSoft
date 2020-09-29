object frmCadItens: TfrmCadItens
  Left = 0
  Top = 0
  Caption = 'Cadastro de Item'
  ClientHeight = 402
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnIncluir: TBitBtn
    Left = 24
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 0
    OnClick = btnIncluirClick
  end
  object btnAlterar: TBitBtn
    Left = 105
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 1
    OnClick = btnAlterarClick
  end
  object btnExcluir: TBitBtn
    Left = 186
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 2
  end
  object btnSalvar: TBitBtn
    Left = 267
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object edtDescricao: TLabeledEdit
    Left = 24
    Top = 80
    Width = 417
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Descri'#231#227'o'
    TabOrder = 4
  end
  object edtCodigo: TLabeledEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'digo'
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 170
    Width = 503
    Height = 232
    Align = alBottom
    TabOrder = 6
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 501
      Height = 230
      Align = alClient
      DataSource = dsItem
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_ITEM'
          Title.Caption = 'C'#243'digo'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_ITEM'
          Title.Caption = 'Descri'#231#227'o'
          Width = 296
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_PED'
          Title.Caption = 'C'#243'digo Pedido'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_ITEMSEQ'
          Visible = False
        end>
    end
  end
  object dsItem: TDataSource
    DataSet = frmDM.cdsItem
    Left = 424
    Top = 40
  end
end
