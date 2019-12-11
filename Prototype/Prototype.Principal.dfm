object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Prototype'
  ClientHeight = 264
  ClientWidth = 528
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
  object Memo1: TMemo
    Left = 333
    Top = 10
    Width = 185
    Height = 244
    Align = alRight
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 10
    Width = 185
    Height = 244
    Align = alLeft
    Caption = 'Venda'
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = 40
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 32
      Top = 21
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 32
      Top = 67
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Edit1: TEdit
      Left = 32
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 32
      Top = 86
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 32
      Top = 136
      Width = 121
      Height = 25
      Caption = 'Vender Item'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 32
      Top = 167
      Width = 121
      Height = 25
      Caption = 'Repertir Ultimo Item'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
end
