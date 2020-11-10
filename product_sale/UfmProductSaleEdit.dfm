object fmProductSaleEdit: TfmProductSaleEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49345#54408#54032#47588
  ClientHeight = 287
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 490
    Height = 281
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel12: TPanel
      Left = 53
      Top = 82
      Width = 89
      Height = 28
      Caption = #51228#54408#47749
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 11
    end
    object Panel8: TPanel
      Left = 53
      Top = 54
      Width = 89
      Height = 28
      Caption = #54032#47588#51068#51088
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 12
    end
    object Panel10: TPanel
      Left = 53
      Top = 110
      Width = 89
      Height = 28
      Caption = #49688#47049
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 13
    end
    object Panel16: TPanel
      Left = 53
      Top = 194
      Width = 89
      Height = 28
      Caption = #48708#44256#49324#54637
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 14
    end
    object Panel13: TPanel
      Left = 142
      Top = 82
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 2
      object product_name: TcxLookupComboBox
        Left = 6
        Top = 4
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'PRODUCT_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmDBCommon.d_PRODUCTS_SEL_LOOK
        TabOrder = 0
        Width = 163
      end
      object BitBtn2: TBitBtn
        Left = 186
        Top = 2
        Width = 101
        Height = 25
        Caption = #51228#54408#46321#47197
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
    object Panel9: TPanel
      Left = 142
      Top = 54
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 1
      object c_date: TcxDateEdit
        Left = 6
        Top = 4
        TabOrder = 0
        Width = 120
      end
    end
    object Panel11: TPanel
      Left = 142
      Top = 110
      Width = 107
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 3
      object QTY: TcxCurrencyEdit
        Left = 6
        Top = 4
        TabOrder = 0
        Width = 98
      end
    end
    object Panel3: TPanel
      Left = 250
      Top = 110
      Width = 89
      Height = 28
      Caption = #45800#44032
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 15
    end
    object Panel2: TPanel
      Left = 339
      Top = 110
      Width = 107
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 4
      object UPRICE: TcxCurrencyEdit
        Left = 6
        Top = 4
        TabOrder = 0
        Width = 98
      end
    end
    object Panel18: TPanel
      Left = 142
      Top = 194
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 8
      object BIGO: TEdit
        Left = 6
        Top = 3
        Width = 288
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object BitBtn4: TBitBtn
      Left = 250
      Top = 233
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
      TabOrder = 10
    end
    object btnSave: TBitBtn
      Left = 169
      Top = 233
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
      TabOrder = 9
      OnClick = btnSaveClick
    end
    object Panel4: TPanel
      Left = 53
      Top = 166
      Width = 89
      Height = 28
      Caption = #44208#51116#44552#50529
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 16
    end
    object Panel5: TPanel
      Left = 142
      Top = 166
      Width = 107
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 6
      object PAYED: TcxCurrencyEdit
        Left = 6
        Top = 4
        TabOrder = 0
        Width = 98
      end
    end
    object Panel6: TPanel
      Left = 53
      Top = 138
      Width = 89
      Height = 28
      Caption = #54633#44228#44552#50529
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 17
    end
    object Panel7: TPanel
      Left = 142
      Top = 138
      Width = 107
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 5
      object cxCurrencyEdit3: TcxCurrencyEdit
        Left = 270
        Top = 108
        TabOrder = 0
        Width = 98
      end
      object TPRICE: TcxCurrencyEdit
        Left = 6
        Top = 4
        TabOrder = 1
        Width = 98
      end
    end
    object Panel14: TPanel
      Left = 250
      Top = 166
      Width = 89
      Height = 28
      Caption = #44208#51116#48169#48277
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 18
    end
    object Panel15: TPanel
      Left = 339
      Top = 166
      Width = 107
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 7
      object PAY_KIND: TcxImageComboBox
        Left = 6
        Top = 4
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
          end
          item
            Description = #50808#49345
            Value = 3
          end
          item
            Description = #51613#51221
            Value = 4
          end>
        TabOrder = 0
        Width = 91
      end
    end
    object Panel17: TPanel
      Left = 53
      Top = 26
      Width = 89
      Height = 28
      Caption = #49468#53552#47749
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 19
    end
    object Panel19: TPanel
      Left = 142
      Top = 26
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 0
      object cbCenter: TcxLookupComboBox
        Left = 6
        Top = 4
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmDBCommon.ds_REGISTED_CENTER_LOOK
        TabOrder = 0
        Width = 103
      end
    end
  end
end
