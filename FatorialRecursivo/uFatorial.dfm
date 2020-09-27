object frmFatorial: TfrmFatorial
  Left = 0
  Top = 0
  Caption = 'C'#225'lcula Fatorial'
  ClientHeight = 201
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 201
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 29
      Width = 83
      Height = 13
      Caption = 'Insira um n'#250'mero'
    end
    object lbResult: TLabel
      Left = 24
      Top = 102
      Width = 38
      Height = 13
      Caption = 'lbResult'
      Visible = False
    end
    object lblAviso: TLabel
      Left = 24
      Top = 10
      Width = 36
      Height = 13
      Caption = 'lblAviso'
      Visible = False
    end
    object edtInput: TEdit
      Left = 24
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = edtInputKeyPress
    end
    object btnCalcula: TButton
      Left = 24
      Top = 153
      Width = 75
      Height = 25
      Caption = '&C'#225'lcula'
      TabOrder = 1
      OnClick = btnCalculaClick
    end
    object btnLimpar: TButton
      Left = 136
      Top = 153
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = btnLimparClick
    end
  end
end
