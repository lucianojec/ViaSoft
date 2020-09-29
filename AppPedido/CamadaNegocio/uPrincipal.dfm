object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Servidor'
  ClientHeight = 201
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
  object Selecion: TLabel
    Left = 88
    Top = 37
    Width = 97
    Height = 13
    Caption = 'Seleciona Porta'
  end
  object edtPorta: TEdit
    Left = 88
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '211'
  end
  object btnIniciar: TButton
    Left = 216
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 1
    OnClick = btnIniciarClick
  end
end
