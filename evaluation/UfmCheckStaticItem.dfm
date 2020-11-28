object fmCheckStaticItem: TfmCheckStaticItem
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #51221#51201#54217#44032
  ClientHeight = 638
  ClientWidth = 825
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
  object gbCheckItem: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Caption = #52769#51221#48512#50948
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 0
    Height = 638
    Width = 200
    object ImageEnMView1: TImageEnMView
      Left = 3
      Top = 17
      Width = 194
      Height = 611
      Background = clWindowFrame
      GridWidth = -1
      StoreType = ietNormal
      ThumbWidth = -1
      ThumbHeight = 160
      TextMargin = 0
      ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
      PopupMenus = []
      OnImageSelect = ImageEnMView1ImageSelect
      SelectionWidth = 3
      SelectionColor = clRed
      Style = iemsFlat
      AutoAdjustStyle = False
      ThumbnailsBackground = clBtnShadow
      ThumbnailsBackgroundSelected = clBlue
      ThumbnailsBackgroundHover = clYellow
      MultiSelectionOptions = []
      DefaultTopText = iedtNone
      DefaultInfoText = iedtNone
      DefaultBottomText = iedtNone
      Align = alClient
      SelectedFontColor = clWhite
      BottomTextFont.Charset = DEFAULT_CHARSET
      BottomTextFont.Color = clWindowText
      BottomTextFont.Height = -16
      BottomTextFont.Name = #45208#45588#44256#46357
      BottomTextFont.Style = [fsBold]
      TabOrder = 0
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 200
    Top = 0
    Align = alLeft
    Caption = #52769#51221#54637#47785'('#45908#48660#53364#47533'='#49345#49464#52285')'
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 1
    Height = 638
    Width = 200
    object ImageEnMView2: TImageEnMView
      Left = 3
      Top = 17
      Width = 194
      Height = 611
      Background = clWindowFrame
      GridWidth = -1
      StoreType = ietNormal
      ThumbWidth = -1
      ThumbHeight = 160
      TextMargin = 0
      ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
      PopupMenus = []
      OnImageSelect = ImageEnMView2ImageSelect
      SelectionWidth = 3
      SelectionColor = clRed
      Style = iemsFlat
      AutoAdjustStyle = False
      ThumbnailsBackground = clBtnShadow
      ThumbnailsBackgroundSelected = clBlue
      ThumbnailsBackgroundHover = clYellow
      MultiSelectionOptions = []
      DefaultTopText = iedtNone
      DefaultInfoText = iedtNone
      DefaultBottomText = iedtNone
      Align = alClient
      SelectedFontColor = clWhite
      BottomTextFont.Charset = DEFAULT_CHARSET
      BottomTextFont.Color = clWindowText
      BottomTextFont.Height = -16
      BottomTextFont.Name = #45208#45588#44256#46357
      BottomTextFont.Style = [fsBold]
      TabOrder = 0
      OnDblClick = ImageEnMView2DblClick
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 400
    Top = 0
    Align = alClient
    Caption = #52769#51221#44208#44284
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 2
    Height = 638
    Width = 425
    object Label1: TLabel
      Left = 73
      Top = 144
      Width = 264
      Height = 15
      Caption = #44221#48120', '#51473#46321', '#49900#44033' '#51473' '#54644#45817#54616#45716' '#44208#44284#47484' '#49440#53469#54616#49464#50836'.'
    end
    object btnResultSel: TcxButton
      Tag = 1
      Left = 40
      Top = 87
      Width = 107
      Height = 51
      Caption = #44221#48120
      Colors.Normal = clYellow
      LookAndFeel.SkinName = ''
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = btnResultSelClick
    end
    object cxButton8: TcxButton
      Tag = 2
      Left = 158
      Top = 87
      Width = 107
      Height = 51
      Caption = #51473#46321
      Colors.Normal = clBlue
      Colors.NormalText = clWhite
      LookAndFeel.SkinName = ''
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = btnResultSelClick
    end
    object cxButton9: TcxButton
      Tag = 3
      Left = 276
      Top = 87
      Width = 107
      Height = 51
      Caption = #49900#44033
      Colors.Normal = clRed
      Colors.NormalText = clWhite
      LookAndFeel.SkinName = ''
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = btnResultSelClick
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 176
      Width = 411
      Height = 451
      Caption = #52769#51221#46020#50880#47568
      TabOrder = 3
      object edtComment: TIERichEdit
        AlignWithMargins = True
        Left = 5
        Top = 50
        Width = 401
        Height = 367
        TabStop = False
        RTFText = 
          '{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset129 \'#39'b3\'#39'aa\'#39'b4\'#39'ae' +
          '\'#39'b0\'#39'ed\'#39'b5\'#39'f1;}}'#13#10'\viewkind4\uc1\pard\lang1042\f0\fs22\par'#13#10'}' +
          #13#10#0
        WordSelection = False
        Align = alClient
        Ctl3D = False
        Color = clInactiveBorder
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #45208#45588#44256#46357
        Font.Style = []
        HideSelection = False
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WantTabs = True
      end
      object IERichEditToolbar1: TIERichEditToolbar
        Left = 2
        Top = 17
        Width = 407
        Height = 30
        AutoSize = True
        ButtonHeight = 30
        ButtonWidth = 31
        Caption = 'IERichEditToolbar1'
        Customizable = True
        List = True
        ParentShowHint = False
        AllowTextButtons = True
        ShowHint = True
        TabOrder = 1
        AlwaysSetRedraw = True
        Buttons = [irbRichEditFont, irbRichEditFontStyle, irbRichEditAlignment, irbRichEditBullets]
        AttachedRichEdit = edtComment
      end
      object Panel1: TPanel
        Left = 2
        Top = 420
        Width = 407
        Height = 29
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object cxButton1: TcxButton
          AlignWithMargins = True
          Left = 10
          Top = 1
          Width = 75
          Height = 27
          Margins.Left = 10
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #51200#51109'&s'
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
          TabOrder = 0
          OnClick = cxButton1Click
        end
      end
    end
    object rgDirection: TcxRadioGroup
      Left = 18
      Top = 17
      Caption = #48169#54693#49440#53469
      ParentFont = False
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = #54644#45817#50630#51020
        end
        item
          Caption = #51340#52769
        end
        item
          Caption = #50864#52769
        end
        item
          Caption = #50577#52769
        end>
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = #45208#45588#44256#46357
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 64
      Width = 391
    end
  end
  object d_CHECK_ITEM_TREE_SEL: TDataSource
    DataSet = CHECK_ITEM_TREE_SEL
    Left = 280
    Top = 352
  end
  object d_CHECK_ITEM_SUB_SEL: TDataSource
    DataSet = CHECK_ITEM_SUB_SEL
    Left = 464
    Top = 360
  end
  object CHECK_ITEM_TREE_SEL: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 280
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PARENT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'BODY_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'CHECK_IMAGE'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_SEL'
    object CHECK_ITEM_TREE_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_TREE_SELPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object CHECK_ITEM_TREE_SELIMAGE_ID: TIntegerField
      FieldName = 'IMAGE_ID'
    end
    object CHECK_ITEM_TREE_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object CHECK_ITEM_TREE_SELBODY_ID: TIntegerField
      FieldName = 'BODY_ID'
    end
    object CHECK_ITEM_TREE_SELRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object CHECK_ITEM_TREE_SELCHECK_IMAGE: TBlobField
      FieldName = 'CHECK_IMAGE'
    end
  end
  object CHECK_ITEM_SUB_SEL: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 464
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PARENT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'BODY_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'CHECK_IMAGE'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'CHECK_COMMENT'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_SEL'
    object CHECK_ITEM_SUB_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_SUB_SELPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object CHECK_ITEM_SUB_SELIMAGE_ID: TIntegerField
      FieldName = 'IMAGE_ID'
    end
    object CHECK_ITEM_SUB_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object CHECK_ITEM_SUB_SELBODY_ID: TIntegerField
      FieldName = 'BODY_ID'
    end
    object CHECK_ITEM_SUB_SELRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object CHECK_ITEM_SUB_SELCHECK_IMAGE: TBlobField
      FieldName = 'CHECK_IMAGE'
    end
    object CHECK_ITEM_SUB_SELCHECK_COMMENT: TBlobField
      FieldName = 'CHECK_COMMENT'
    end
  end
  object CHECK_ITEM_TREE_COMMENT: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_COMMENT'
    Connection = dmDBCommon.UniDBConnection
    Left = 464
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CHECK_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'CHECK_COMMENT'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_COMMENT'
    object CHECK_ITEM_TREE_COMMENTID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_TREE_COMMENTCHECK_COMMENT: TBlobField
      FieldName = 'CHECK_COMMENT'
    end
  end
  object d_CHECK_ITEM_TREE_COMMENT: TDataSource
    DataSet = CHECK_ITEM_TREE_COMMENT
    Left = 464
    Top = 472
  end
  object q_update_comment: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'update check_item_tree set check_comment = :new_comment'
      'where id = :id;')
    Left = 656
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'new_comment'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
end
