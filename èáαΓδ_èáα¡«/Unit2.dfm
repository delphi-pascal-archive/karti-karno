object Form2: TForm2
  Left = 598
  Top = 336
  Width = 299
  Height = 125
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 273
    Height = 41
    Caption = 'Combien de variables ?'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 8
      Top = 16
      Width = 33
      Height = 17
      Caption = '2'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 40
      Top = 16
      Width = 33
      Height = 17
      Caption = '3'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 72
      Top = 16
      Width = 33
      Height = 17
      Caption = '4'
      TabOrder = 2
    end
    object RadioButton4: TRadioButton
      Left = 104
      Top = 16
      Width = 33
      Height = 17
      Caption = '5'
      TabOrder = 3
    end
    object RadioButton5: TRadioButton
      Left = 136
      Top = 16
      Width = 33
      Height = 17
      Caption = '6'
      TabOrder = 4
    end
    object RadioButton6: TRadioButton
      Left = 168
      Top = 16
      Width = 41
      Height = 17
      Caption = '7'
      TabOrder = 5
    end
    object RadioButton7: TRadioButton
      Left = 200
      Top = 16
      Width = 41
      Height = 17
      Caption = '8'
      TabOrder = 6
    end
  end
  object Button1: TButton
    Left = 96
    Top = 56
    Width = 97
    Height = 25
    Caption = 'Validez'
    TabOrder = 1
    OnClick = Button1Click
  end
end
