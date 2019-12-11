object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Factory Method'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Padding.Left = 10
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object memAtaques: TMemo
    Left = 342
    Top = 0
    Width = 185
    Height = 242
    Align = alRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = []
    Lines.Strings = (
      'memAtaques')
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 176
    ExplicitTop = 96
    ExplicitHeight = 89
  end
  object Elementos: TRadioGroup
    Left = 10
    Top = 0
    Width = 185
    Height = 242
    Align = alLeft
    Caption = 'Elementos'
    Items.Strings = (
      'Fogo'
      #193'gua'
      'Vento')
    TabOrder = 1
    ExplicitLeft = 64
    ExplicitTop = 48
    ExplicitHeight = 105
  end
  object Button1: TButton
    Left = 224
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Atacar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
