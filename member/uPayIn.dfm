object fmPayIn: TfmPayIn
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44208#51116#51077#47141'/'#49688#51221
  ClientHeight = 321
  ClientWidth = 355
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
  object Panel4: TPanel
    Left = 8
    Top = 8
    Width = 339
    Height = 305
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 22
      Top = 9
      Width = 68
      Height = 16
      Caption = #54924#48708#51077#47141
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel5: TPanel
      Left = 8
      Top = 30
      Width = 89
      Height = 28
      Caption = #54924#50896#47749'/'#48264#54840
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 6
    end
    object Panel6: TPanel
      Left = 97
      Top = 30
      Width = 232
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 7
      object edtCustName: TcxTextEdit
        Left = 6
        Top = 4
        TabStop = False
        Properties.ReadOnly = True
        Style.Color = clSkyBlue
        TabOrder = 0
        Width = 107
      end
      object edtCustID: TcxTextEdit
        Left = 113
        Top = 4
        TabStop = False
        Properties.ReadOnly = True
        Style.Color = clSkyBlue
        TabOrder = 1
        Width = 115
      end
    end
    object Panel7: TPanel
      Left = 8
      Top = 86
      Width = 89
      Height = 28
      Caption = #44208#51116#51068#51088
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 8
    end
    object Panel8: TPanel
      Left = 97
      Top = 86
      Width = 232
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 0
      object edtPayDate: TcxDateEdit
        Left = 6
        Top = 4
        TabOrder = 0
        Width = 121
      end
    end
    object Panel9: TPanel
      Left = 8
      Top = 114
      Width = 89
      Height = 28
      Caption = #45380#46020'/'#50900#48516
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 9
    end
    object Panel10: TPanel
      Left = 97
      Top = 114
      Width = 232
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 1
      object Label1: TLabel
        Left = 74
        Top = 8
        Width = 26
        Height = 13
        Caption = #45380#46020
      end
      object Label3: TLabel
        Left = 165
        Top = 7
        Width = 26
        Height = 13
        Caption = #50900#48516
      end
      object edtYear: TcxSpinEdit
        Left = 6
        Top = 4
        Properties.MaxValue = 9999.000000000000000000
        Properties.MinValue = 1000.000000000000000000
        TabOrder = 0
        Value = 2013
        Width = 65
      end
      object edtMonth: TcxSpinEdit
        Left = 110
        Top = 4
        Properties.MaxValue = 12.000000000000000000
        Properties.MinValue = 1.000000000000000000
        TabOrder = 1
        Value = 4
        Width = 51
      end
    end
    object Panel11: TPanel
      Left = 8
      Top = 142
      Width = 89
      Height = 28
      Caption = #44552#50529'/'#48169#49885
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 10
    end
    object Panel12: TPanel
      Left = 97
      Top = 142
      Width = 232
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 2
      object edtPay: TcxCurrencyEdit
        Left = 6
        Top = 4
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.DisplayFormat = True
        Properties.UseDisplayFormatWhenEditing = True
        Properties.UseThousandSeparator = True
        TabOrder = 0
        Width = 94
      end
      object edtPayKind: TComboBox
        Left = 110
        Top = 4
        Width = 65
        Height = 22
        Style = csOwnerDrawFixed
        ImeName = 'Microsoft IME 2010'
        ItemIndex = 0
        TabOrder = 1
        Text = #54788#44552
        Items.Strings = (
          #54788#44552
          #52852#46300
          #51060#52404
          #44592#53440)
      end
    end
    object Panel13: TPanel
      Left = 8
      Top = 170
      Width = 89
      Height = 59
      Caption = #48708#44256#49324#54637
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 11
    end
    object Panel14: TPanel
      Left = 97
      Top = 170
      Width = 232
      Height = 59
      BevelOuter = bvLowered
      TabOrder = 3
      object edtBigo: TcxMemo
        Left = 6
        Top = 3
        TabOrder = 0
        Height = 52
        Width = 222
      end
    end
    object BitBtn2: TBitBtn
      Left = 90
      Top = 249
      Width = 75
      Height = 25
      Caption = #51200#51109
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 171
      Top = 249
      Width = 75
      Height = 25
      Caption = #52712#49548
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object Panel1: TPanel
      Left = 8
      Top = 58
      Width = 89
      Height = 28
      Caption = #44053#51032#47749
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 12
    end
    object Panel2: TPanel
      Left = 97
      Top = 58
      Width = 232
      Height = 28
      BevelOuter = bvLowered
      TabOrder = 13
      object edtLectureName: TcxTextEdit
        Left = 6
        Top = 4
        TabStop = False
        Properties.ReadOnly = True
        Style.Color = clSkyBlue
        TabOrder = 0
        Width = 222
      end
    end
  end
end
