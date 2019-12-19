object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Composite'
  ClientHeight = 232
  ClientWidth = 554
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 64
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 64
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 64
    Top = 99
    Width = 121
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 64
    Top = 18
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object pnlItens: TPanel
    Left = 359
    Top = 10
    Width = 185
    Height = 212
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitLeft = 191
    ExplicitTop = 90
    ExplicitHeight = 41
    object lbltotal: TLabel
      Left = 0
      Top = 182
      Width = 185
      Height = 30
      Align = alBottom
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 6
    end
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 185
      Height = 182
      Align = alRight
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitLeft = 303
      ExplicitTop = -14
    end
  end
end
