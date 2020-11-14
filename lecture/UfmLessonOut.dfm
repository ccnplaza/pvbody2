object fmLessonOut: TfmLessonOut
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #53748#44053'('#54872#48520#52376#47532')'
  ClientHeight = 254
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 477
    Height = 248
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel20: TPanel
      Left = 80
      Top = 27
      Width = 89
      Height = 28
      Caption = #54872#48520#51068#51088
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
    end
    object Panel21: TPanel
      Left = 169
      Top = 27
      Width = 224
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 1
      object OUT_DATE: TcxDateEdit
        Left = 6
        Top = 3
        TabOrder = 0
        Width = 121
      end
    end
    object Panel2: TPanel
      Left = 80
      Top = 55
      Width = 89
      Height = 28
      Caption = #54872#48520#44552#50529
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 169
      Top = 55
      Width = 224
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 3
      object OUT_PRICE: TcxCurrencyEdit
        Left = 6
        Top = 3
        TabOrder = 0
        Width = 98
      end
    end
    object Panel4: TPanel
      Left = 80
      Top = 83
      Width = 89
      Height = 28
      Caption = #51648#44553#48169#48277
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 4
    end
    object Panel5: TPanel
      Left = 169
      Top = 83
      Width = 224
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 5
      object OUT_KIND: TcxImageComboBox
        Left = 6
        Top = 3
        EditValue = 1
        Properties.Items = <
          item
            Description = #54788#44552
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #52852#46300
            Value = 1
          end
          item
            Description = #51060#52404
            Value = 2
          end>
        TabOrder = 0
        Width = 91
      end
    end
    object Panel6: TPanel
      Left = 80
      Top = 111
      Width = 89
      Height = 28
      Caption = #48708#44256#49324#54637
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 6
    end
    object Panel7: TPanel
      Left = 169
      Top = 111
      Width = 224
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 7
      object OUT_REASON: TEdit
        Left = 6
        Top = 3
        Width = 211
        Height = 23
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object btnSave: TBitBtn
      Left = 170
      Top = 175
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
      TabOrder = 8
    end
    object btnCancel: TBitBtn
      Left = 251
      Top = 175
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
      TabOrder = 9
    end
  end
end
