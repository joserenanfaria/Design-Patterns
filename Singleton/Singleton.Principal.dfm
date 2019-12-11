object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Singleton'
  ClientHeight = 294
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 10
    Top = 10
    Width = 425
    Height = 274
    Align = alClient
    Caption = 'Teste Par'#226'metros'
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Memo1: TMemo
      Left = 12
      Top = 173
      Width = 401
      Height = 89
      Align = alBottom
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitLeft = 96
      ExplicitTop = 58
      ExplicitWidth = 185
    end
    object Button1: TButton
      Left = 13
      Top = 142
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 94
      Top = 142
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 2
    end
  end
end
