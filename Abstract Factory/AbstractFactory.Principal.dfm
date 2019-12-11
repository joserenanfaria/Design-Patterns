object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Abstract Factory'
  ClientHeight = 432
  ClientWidth = 464
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
    Width = 444
    Height = 200
    Align = alTop
    Caption = ' Pessoa '
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 460
    object Edit1: TEdit
      Left = 40
      Top = 40
      Width = 121
      Height = 21
      MaxLength = 5
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'Integer'
    end
    object Edit2: TEdit
      Left = 40
      Top = 67
      Width = 121
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TextHint = 'String'
    end
    object Button1: TButton
      Left = 40
      Top = 94
      Width = 121
      Height = 27
      Caption = 'Button1'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 10
    Top = 210
    Width = 444
    Height = 200
    Align = alTop
    Caption = ' Nota Fiscal '
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 200
    ExplicitWidth = 460
    object Edit3: TEdit
      Left = 48
      Top = 75
      Width = 121
      Height = 21
      MaxLength = 5
      NumbersOnly = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TextHint = 'Integer'
    end
    object Button2: TButton
      Left = 48
      Top = 102
      Width = 121
      Height = 27
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
