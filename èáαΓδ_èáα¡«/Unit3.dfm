object AboutBox: TAboutBox
  Left = 340
  Top = 303
  BorderStyle = bsDialog
  Caption = 'A propos'
  ClientHeight = 89
  ClientWidth = 141
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 129
    Height = 57
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 8
      Top = 8
      Width = 33
      Height = 33
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF0000FFFF000000FFFF0CCCCCCCCCCCCCCC00FFF00000000FFF0CCCCCCC
        00CCCCCC00FF000FFFF000FF0CCCCCCC00CCCCCC00FF00FFFFFF00FF0CCCCCCC
        00CCCCCC00FF00FFFFFF00FF0CCCCCCC00CCCCCC00FF00FFFFFF00FF0CCCCCCC
        00CCCCCC00FF00FFFFFF00FF0CCCCCCC00CCCCCC00FF00FFFFFF00FF0CCCCCCC
        00CCCCCC00FF00FFFFFF00FF0CCCCCCC00CCCCCC00FF00FFFFFF00FF0CCC00CC
        00CCCCCC00FF000FFFF000FF0CCCC00C00CCCCCC00FFF00000000FFF0CCCCC00
        00CCCCCC00FFFF000000FFFF0CCCCCC000CCCCCC00FFFFFFFFFFFFFF0CCCCCCC
        CCCCCCCC0000000000000000000000000000000000BBBBBBBBBBBBBB0AAAAAAA
        AAAAAAAA00BBBBBBBBBBBBBB0AAAAAAAAAAAAAAA00BBBBBB00BBBBBB0AAAAAAA
        00AAAAAA00BBBBBB00BBBBBB0AAAAAAA00AAAAAA00BBBBBB00BBBBBB0AAAAAAA
        00AAAAAA00BBBBBB00BBBBBB0AAAAAAA00AAAAAA00BBBBBB00BBBBBB0AAAAAAA
        00AAAAAA00BBBBBB00BBBBBB0AAAAAAA00AAAAAA00BBBBBB00BBBBBB0AAAAAAA
        00AAAAAA00BBBBBB00BBBBBB0AAAAAAA00AAAAAA00BB00BB00BBBBBB0AAA00AA
        00AAAAAA00BBB00B00BBBBBB0AAAA00A00AAAAAA00BBBB0000BBBBBB0AAAAA00
        00AAAAAA00BBBBB000BBBBBB0AAAAAA000AAAAAA00BBBBBBBBBBBBBB0AAAAAAA
        AAAAAAAA00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000}
      Stretch = True
      IsControl = True
    end
    object ProductName: TLabel
      Left = 64
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Tableau'
      IsControl = True
    end
    object Version: TLabel
      Left = 64
      Top = 24
      Width = 46
      Height = 13
      Caption = '09/05/11'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 40
      Width = 69
      Height = 13
      Caption = 'Montero-Ribas'
      IsControl = True
    end
  end
  object OKButton: TButton
    Left = 40
    Top = 64
    Width = 65
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
