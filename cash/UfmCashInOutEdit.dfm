object fmCashInOutEdit: TfmCashInOutEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #51077#52636#44552' '#46321#47197
  ClientHeight = 236
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 553
    Height = 230
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel8: TPanel
      Left = 77
      Top = 85
      Width = 89
      Height = 28
      Caption = #45216#51676
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 10
    end
    object Panel10: TPanel
      Left = 77
      Top = 113
      Width = 89
      Height = 28
      Caption = #51077#44552
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 11
    end
    object Panel11: TPanel
      Left = 166
      Top = 113
      Width = 107
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 3
      object cash_in: TcxCurrencyEdit
        Left = 6
        Top = 3
        TabOrder = 0
        Width = 98
      end
    end
    object BitBtn2: TBitBtn
      Left = 98
      Top = 326
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
      TabOrder = 8
    end
    object BitBtn3: TBitBtn
      Left = 179
      Top = 326
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
    object Panel9: TPanel
      Left = 166
      Top = 85
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 2
      object c_date: TcxDateEdit
        Left = 6
        Top = 3
        TabOrder = 0
        Width = 121
      end
    end
    object Panel12: TPanel
      Left = 77
      Top = 57
      Width = 89
      Height = 28
      Caption = #44228#51221#44284#47785
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 12
    end
    object Panel13: TPanel
      Left = 166
      Top = 57
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 1
      object k_kind: TcxLookupComboBox
        Left = 6
        Top = 3
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'K_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dmDBCommon.d_CASH_INOUT_KIND_SEL_LOOK
        TabOrder = 0
        Width = 187
      end
    end
    object Panel16: TPanel
      Left = 77
      Top = 141
      Width = 89
      Height = 28
      Caption = #51077#52636#44552#45236#50669
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 13
    end
    object Panel18: TPanel
      Left = 166
      Top = 141
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 5
      object C_DESC: TEdit
        Left = 6
        Top = 3
        Width = 288
        Height = 23
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 363
      Top = 113
      Width = 107
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 4
      object cash_out: TcxCurrencyEdit
        Left = 6
        Top = 3
        TabOrder = 0
        Width = 98
      end
    end
    object Panel3: TPanel
      Left = 274
      Top = 113
      Width = 89
      Height = 28
      Caption = #52636#44552
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 14
    end
    object BitBtn1: TBitBtn
      Left = 207
      Top = 186
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
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn4: TBitBtn
      Left = 288
      Top = 186
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
      TabOrder = 7
    end
    object Panel4: TPanel
      Left = 77
      Top = 29
      Width = 89
      Height = 28
      Caption = #49468#53552#47749
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 15
    end
    object Panel14: TPanel
      Left = 166
      Top = 29
      Width = 304
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 0
      object cbCenter: TcxLookupComboBox
        Left = 6
        Top = 3
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 0
        Width = 103
      end
    end
  end
end
