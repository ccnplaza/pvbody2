object fmLectureBreak: TfmLectureBreak
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #55092#44053#52376#47532
  ClientHeight = 199
  ClientWidth = 282
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
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 276
    Height = 193
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitHeight = 148
    object Panel20: TPanel
      Left = 16
      Top = 19
      Width = 68
      Height = 28
      Caption = #55092#44053#49884#51089
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 6
    end
    object Panel21: TPanel
      Left = 85
      Top = 19
      Width = 136
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 0
      object START_DATE: TcxDateEdit
        Left = 6
        Top = 4
        TabOrder = 0
        Width = 121
      end
    end
    object Panel2: TPanel
      Left = 16
      Top = 47
      Width = 68
      Height = 28
      Caption = #55092#44053#51333#47308
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 7
    end
    object Panel3: TPanel
      Left = 85
      Top = 47
      Width = 136
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 1
      object END_DATE: TcxDateEdit
        Left = 6
        Top = 3
        TabOrder = 0
        Width = 121
      end
    end
    object btnSave: TBitBtn
      Left = 62
      Top = 140
      Width = 75
      Height = 25
      Caption = #51200#51109
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
        030AA03300000000030DD03333333333330AA03300000000330DD03088888888
        030AA03088888888030DD03088888888030AA03088888888030DD03088888888
        000AA03088888888080DD00000000000000AADADADADADADADAD}
      ModalResult = 1
      TabOrder = 4
    end
    object btnCancel: TBitBtn
      Left = 143
      Top = 140
      Width = 75
      Height = 25
      Caption = #52712#49548
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
        DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
        DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
        0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
      ModalResult = 2
      TabOrder = 5
    end
    object Panel5: TPanel
      Left = 16
      Top = 103
      Width = 68
      Height = 28
      Caption = #55092#44053#49324#50976
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 8
    end
    object Panel7: TPanel
      Left = 85
      Top = 103
      Width = 180
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 3
      object edtReason: TEdit
        Left = 6
        Top = 4
        Width = 166
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 85
      Top = 75
      Width = 136
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 2
      object cbStatus: TcxImageComboBox
        Left = 6
        Top = 4
        Properties.Items = <
          item
            Description = #55092#44053#51473
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #51333#47308
            Value = 0
          end>
        TabOrder = 0
        Width = 91
      end
    end
    object Panel4: TPanel
      Left = 16
      Top = 75
      Width = 68
      Height = 28
      Caption = #55092#44053#49345#53468
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 9
    end
  end
end
