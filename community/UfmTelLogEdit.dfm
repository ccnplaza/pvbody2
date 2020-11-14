object fmTelLogEdit: TfmTelLogEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #53685#54868#44592#47197#48512' '#46321#47197'/'#49688#51221
  ClientHeight = 401
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 5
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Alignment = alTopCenter
    Caption = #53685#54868#44592#47197#48512' '#46321#47197'/'#49688#51221
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = #45208#45588#44256#46357
    Style.Font.Style = []
    Style.LookAndFeel.SkinName = 'Black'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 0
    Height = 391
    Width = 450
    object pnl4: TPanel
      Left = 10
      Top = 59
      Width = 66
      Height = 28
      Caption = #51068#49884
      Color = 16776176
      ParentBackground = False
      TabOrder = 10
    end
    object pnl5: TPanel
      Left = 76
      Top = 59
      Width = 177
      Height = 28
      TabOrder = 0
      object cxDBDateEdit1: TcxDBDateEdit
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        DataBinding.DataField = 'in_date'
        DataBinding.DataSource = ds1
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitHeight = 20
        Width = 114
      end
      object cxDBTextEdit1: TcxDBTextEdit
        AlignWithMargins = True
        Left = 118
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        DataBinding.DataField = 'in_time'
        DataBinding.DataSource = ds1
        TabOrder = 1
        ExplicitLeft = 124
        ExplicitTop = 4
        ExplicitWidth = 49
        ExplicitHeight = 20
        Width = 57
      end
    end
    object pnl10: TPanel
      Left = 259
      Top = 59
      Width = 66
      Height = 28
      Caption = #44396#48516
      Color = 16776176
      ParentBackground = False
      TabOrder = 11
    end
    object pnl11: TPanel
      Left = 325
      Top = 59
      Width = 113
      Height = 28
      TabOrder = 1
      object cxDBImageComboBox1: TcxDBImageComboBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        DataBinding.DataField = 'in_kind'
        DataBinding.DataSource = ds1
        Properties.Items = <
          item
            Description = #51204#54868
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #48169#47928
            Value = 2
          end
          item
            Description = #47700#51068
            Value = 3
          end
          item
            Description = #44592#53440
            Value = 4
          end>
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitWidth = 105
        ExplicitHeight = 20
        Width = 109
      end
    end
    object pnl19: TPanel
      Left = 10
      Top = 149
      Width = 66
      Height = 69
      Caption = #49688#49888#45236#50857
      Color = 16776176
      ParentBackground = False
      TabOrder = 12
    end
    object pnl20: TPanel
      Left = 76
      Top = 149
      Width = 362
      Height = 68
      TabOrder = 5
      object cxDBMemo1: TcxDBMemo
        Left = 1
        Top = 1
        Align = alClient
        DataBinding.DataField = 'receive_desc'
        DataBinding.DataSource = ds1
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        TabOrder = 0
        OnExit = cxDBMemo1Exit
        Height = 66
        Width = 360
      end
    end
    object pnl31: TPanel
      Left = 10
      Top = 292
      Width = 66
      Height = 28
      Caption = #52376#47532#50668#48512
      Color = 16776176
      ParentBackground = False
      TabOrder = 13
    end
    object pnl32: TPanel
      Left = 76
      Top = 292
      Width = 110
      Height = 28
      TabOrder = 7
      object cxDBImageComboBox2: TcxDBImageComboBox
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        DataBinding.DataField = 'is_done'
        DataBinding.DataSource = ds1
        Properties.Items = <
          item
            Description = #54644#45817#50630#51020
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #51652#54665#51473
            Value = 2
          end
          item
            Description = #50756#47308
            Value = 3
          end
          item
            Description = #48372#47448
            Value = 4
          end>
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitWidth = 102
        ExplicitHeight = 20
        Width = 106
      end
    end
    object pnl33: TPanel
      Left = 10
      Top = 92
      Width = 142
      Height = 25
      Caption = #49688#49888#51088'('#48155#51008#49324#46988')'
      Color = 16776176
      ParentBackground = False
      TabOrder = 14
    end
    object pnl34: TPanel
      Left = 10
      Top = 117
      Width = 142
      Height = 28
      TabOrder = 2
      object cxDBTextEdit2: TcxDBTextEdit
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        DataBinding.DataField = 'receiver'
        DataBinding.DataSource = ds1
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        TabOrder = 0
        OnExit = cxDBTextEdit2Exit
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitWidth = 134
        ExplicitHeight = 20
        Width = 138
      end
    end
    object btnSave: TcxButton
      Left = 141
      Top = 332
      Width = 75
      Height = 25
      Caption = #51200#51109
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000040000
        00130000001E0000002000000020000000200000002100000021000000210000
        002200000022000000220000002300000021000000160000000500000012281E
        16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
        3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
        21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
        79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
        24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
        6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
        26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
        EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
        29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
        EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
        2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
        2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
        4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
        32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
        3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
        35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
        CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
        36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
        3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
        39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
        38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
        3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
        36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
        3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
        F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
        2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
        64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
        0002000000030000000400000004000000040000000400000005000000050000
        0005000000050000000500000006000000060000000400000001}
      TabOrder = 8
      OnClick = btnSaveClick
    end
    object btnCancel: TcxButton
      Left = 222
      Top = 332
      Width = 75
      Height = 25
      Cancel = True
      Caption = #52712#49548
      LookAndFeel.SkinName = 'DevExpressStyle'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
        76E4120852AD06031B4D0000000E000000030000000000000000000000000000
        000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
        C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
        03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
        D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
        5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
        BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
        A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
        CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
        BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
        CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
        D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
        D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
        DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
        DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
        D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
        A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
        79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
        BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
        050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
        EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
        000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
        EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
        000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
        B5D040437D951212223000000004000000010000000000000000}
      TabOrder = 9
    end
    object pnl1: TPanel
      Left = 10
      Top = 220
      Width = 66
      Height = 68
      Caption = #47700#47784
      Color = 16776176
      ParentBackground = False
      TabOrder = 15
    end
    object pnl2: TPanel
      Left = 76
      Top = 220
      Width = 362
      Height = 68
      TabOrder = 6
      object cxDBMemo2: TcxDBMemo
        Left = 1
        Top = 1
        Align = alClient
        DataBinding.DataField = 'response_dec'
        DataBinding.DataSource = ds1
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        TabOrder = 0
        OnExit = cxDBMemo1Exit
        Height = 66
        Width = 360
      end
    end
    object pnl3: TPanel
      Left = 153
      Top = 92
      Width = 142
      Height = 25
      Caption = #48156#49888#51088#48264#54840
      Color = 16776176
      ParentBackground = False
      TabOrder = 16
    end
    object pnl6: TPanel
      Left = 153
      Top = 117
      Width = 142
      Height = 28
      TabOrder = 3
      object cxDBTextEdit3: TcxDBTextEdit
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        DataBinding.DataField = 'damdang'
        DataBinding.DataSource = ds1
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        TabOrder = 0
        OnExit = cxDBTextEdit2Exit
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitWidth = 134
        ExplicitHeight = 20
        Width = 138
      end
    end
    object pnl7: TPanel
      Left = 296
      Top = 92
      Width = 142
      Height = 25
      Caption = #48156#49888#51088'('#48169#47928#51088')'
      Color = 16776176
      ParentBackground = False
      TabOrder = 17
    end
    object pnl8: TPanel
      Left = 296
      Top = 117
      Width = 142
      Height = 28
      TabOrder = 4
      object cxDBTextEdit4: TcxDBTextEdit
        AlignWithMargins = True
        Left = 2
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        DataBinding.DataField = 'caller'
        DataBinding.DataSource = ds1
        ImeMode = imSHanguel
        Properties.ImeMode = imSHanguel
        TabOrder = 0
        OnExit = cxDBTextEdit2Exit
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitWidth = 134
        ExplicitHeight = 20
        Width = 138
      end
    end
    object Panel1: TPanel
      Left = 10
      Top = 31
      Width = 66
      Height = 28
      Caption = #49468#53552
      Color = 16776176
      ParentBackground = False
      TabOrder = 18
    end
    object Panel2: TPanel
      Left = 76
      Top = 31
      Width = 362
      Height = 28
      TabOrder = 19
      object icbCenter: TcxImageComboBox
        Left = 4
        Top = 3
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Properties.Items = <>
        TabOrder = 0
        Width = 114
      end
    end
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 400
    Top = 296
    object dxMemData1in_date: TDateField
      FieldName = 'in_date'
    end
    object dxMemData1in_time: TStringField
      Alignment = taCenter
      FieldName = 'in_time'
      Size = 10
    end
    object dxMemData1receiver: TStringField
      FieldName = 'receiver'
      Size = 30
    end
    object dxMemData1damdang: TStringField
      FieldName = 'damdang'
      Size = 30
    end
    object dxMemData1caller: TStringField
      FieldName = 'caller'
      Size = 30
    end
    object dxMemData1in_kind: TIntegerField
      Alignment = taCenter
      FieldName = 'in_kind'
    end
    object dxMemData1receive_desc: TStringField
      FieldName = 'receive_desc'
      Size = 255
    end
    object dxMemData1response_dec: TStringField
      FieldName = 'response_dec'
      Size = 255
    end
    object dxMemData1is_done: TIntegerField
      Alignment = taCenter
      FieldName = 'is_done'
    end
  end
  object ds1: TDataSource
    DataSet = dxMemData1
    Left = 400
    Top = 344
  end
end
