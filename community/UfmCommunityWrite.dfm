object fmCommunityWrite: TfmCommunityWrite
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44544#50416#44592
  ClientHeight = 537
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 80
    Height = 29
    Caption = #51089#49457#51068#51088
    TabOrder = 6
  end
  object Panel3: TPanel
    Left = 88
    Top = 8
    Width = 144
    Height = 29
    TabOrder = 0
    object edtWdate: TDateTimePicker
      Left = 6
      Top = 4
      Width = 118
      Height = 21
      Date = 41418.663019259260000000
      Time = 41418.663019259260000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 232
    Top = 8
    Width = 80
    Height = 29
    Caption = #52852#53580#44256#47532
    TabOrder = 7
  end
  object Panel5: TPanel
    Left = 456
    Top = 8
    Width = 224
    Height = 29
    TabOrder = 8
  end
  object Panel2: TPanel
    Left = 8
    Top = 39
    Width = 80
    Height = 29
    Caption = #44544#51228#47785
    TabOrder = 9
  end
  object Panel6: TPanel
    Left = 89
    Top = 39
    Width = 592
    Height = 29
    TabOrder = 2
    object EditSubject: TEdit
      Left = 6
      Top = 4
      Width = 579
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel8: TPanel
    Left = 312
    Top = 8
    Width = 144
    Height = 29
    TabOrder = 1
    object ComboBox1: TComboBox
      Left = 4
      Top = 4
      Width = 132
      Height = 22
      Style = csOwnerDrawFixed
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 0
      Text = #44277#51648#49324#54637
      Items.Strings = (
        #44277#51648#49324#54637
        #49324#51652#52524#50689
        #51088#49464#48516#49437
        #50868#46041#52376#48169
        #49444#52824'/'#49324#50857#48277
        #44592#53440'/'#50868#50689)
    end
  end
  object Panel9: TPanel
    Left = 88
    Top = 70
    Width = 592
    Height = 415
    TabOrder = 3
    object Memo1: TMemo
      Left = 6
      Top = 4
      Width = 579
      Height = 405
      ImeName = 'Microsoft IME 2010'
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel10: TPanel
    Left = 8
    Top = 70
    Width = 80
    Height = 29
    Caption = #44544#51228#47785
    TabOrder = 10
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 491
    Width = 75
    Height = 25
    Caption = #51200#51109
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 345
    Top = 491
    Width = 75
    Height = 25
    Caption = #54869#51064
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 5
  end
end
