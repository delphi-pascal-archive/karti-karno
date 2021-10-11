object Form1: TForm1
  Left = 244
  Top = 129
  Width = 905
  Height = 654
  VertScrollBar.Visible = False
  Caption = 'TABLEAU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 443
    Top = 158
    Width = 3
    Height = 16
  end
  object Label2: TLabel
    Left = 10
    Top = 0
    Width = 67
    Height = 16
    Caption = 'Expression'
    Color = clLime
    ParentColor = False
  end
  object Label3: TLabel
    Left = 10
    Top = 158
    Width = 49
    Height = 16
    Caption = 'Resultat'
    Color = clYellow
    ParentColor = False
  end
  object Label4: TLabel
    Left = 10
    Top = 197
    Width = 51
    Height = 16
    Caption = 'Tableau'
  end
  object Memo1: TMemo
    Left = 0
    Top = 30
    Width = 887
    Height = 109
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 226
    Top = 148
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 1
    OnKeyUp = Edit1KeyUp
  end
  object Edit2: TEdit
    Left = 198
    Top = 571
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 2
    OnKeyUp = Edit2KeyUp
  end
  object Edit3: TEdit
    Left = 187
    Top = 148
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 3
    OnKeyUp = Edit3KeyUp
  end
  object Edit4: TEdit
    Left = 159
    Top = 571
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 4
    OnKeyUp = Edit4KeyUp
  end
  object Edit5: TEdit
    Left = 148
    Top = 148
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 5
    OnKeyUp = Edit5KeyUp
  end
  object Edit7: TEdit
    Left = 108
    Top = 148
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 6
    OnKeyUp = Edit7KeyUp
  end
  object Edit8: TEdit
    Left = 80
    Top = 571
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 7
    OnKeyUp = Edit8KeyUp
  end
  object Edit9: TEdit
    Left = 89
    Top = 10
    Width = 798
    Height = 28
    Color = clLime
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnKeyUp = Edit9KeyUp
  end
  object StringGrid1: TStringGrid
    Left = 79
    Top = 187
    Width = 710
    Height = 366
    ColCount = 17
    DefaultColWidth = 32
    DefaultRowHeight = 16
    RowCount = 17
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
    ScrollBars = ssNone
    TabOrder = 9
    OnClick = StringGrid1Click
    OnMouseMove = StringGrid1MouseMove
  end
  object Edit6: TEdit
    Left = 119
    Top = 571
    Width = 37
    Height = 21
    MaxLength = 3
    TabOrder = 10
    OnKeyUp = Edit6KeyUp
  end
  object MainMenu1: TMainMenu
    OwnerDraw = True
    Left = 352
    Top = 40
    object Fichier1: TMenuItem
      Caption = 'Fichier'
      object pressepapier1: TMenuItem
        Caption = 'Presse papier'
        OnClick = pressepapier1Click
      end
      object Nouveau1: TMenuItem
        Caption = 'Nouveau'
        OnClick = Nouveau1Click
      end
      object Ouvrir1: TMenuItem
        Caption = 'Ouvrir...'
        OnClick = Ouvrir1Click
      end
      object Enregistrersous1: TMenuItem
        Caption = 'Enregistrer sous...'
        OnClick = Enregistrersous1Click
      end
      object Quitter1: TMenuItem
        Caption = 'Quitter'
        OnClick = Quitter1Click
      end
    end
    object Inverser1: TMenuItem
      Caption = 'Inverser'
      OnClick = Inverser1Click
    end
    object Evaluation1: TMenuItem
      Caption = 'Evaluer l'#39'expression'
      OnClick = Evaluation1Click
    end
    object Monmeprcdent1: TMenuItem
      Caption = 'Monome precedent'
      OnClick = Monmeprcdent1Click
    end
    object Monmesuivant1: TMenuItem
      Caption = 'Monome suivant'
      OnClick = Monmesuivant1Click
    end
    object Apropos1: TMenuItem
      Caption = 'A propos'
      OnClick = Apropos1Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.kaw'
    Filter = 'Tableau|*.kaw'
    Left = 408
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.kaw'
    Filter = 'Tableau|*.kaw'
    Left = 288
    Top = 40
  end
end
