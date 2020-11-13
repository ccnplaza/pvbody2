object fmMuscleView: TfmMuscleView
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44540#50977' '#48143' '#44264#44201
  ClientHeight = 638
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 337
    Height = 610
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 638
    object cxGrid2: TcxGrid
      Left = 0
      Top = 0
      Width = 337
      Height = 610
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'Black'
      ExplicitLeft = 177
      ExplicitTop = 30
      ExplicitWidth = 312
      ExplicitHeight = 663
      object gridMuscleImage: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        OnFocusedRecordChanged = gridMuscleImageFocusedRecordChanged
        DataController.DataSource = ds_MUSCLE_IMAGES_SEL_ALL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridMuscleImageID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 46
        end
        object gridMuscleImageM_IDX: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'M_IDX'
          HeaderAlignmentHorz = taCenter
          Width = 47
        end
        object gridMuscleImageM_KIND: TcxGridDBColumn
          Caption = #51088#49464
          DataBinding.FieldName = 'M_KIND'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #51204#47732
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #51340#52769
              Value = 2
            end
            item
              Description = #50864#52769
              Value = 3
            end
            item
              Description = #54980#47732
              Value = 4
            end>
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object gridMuscleImageM_NAME: TcxGridDBColumn
          Caption = #44540#50977'/'#44264#44201' '#47749#52845
          DataBinding.FieldName = 'M_NAME'
          HeaderAlignmentHorz = taCenter
          Width = 166
        end
        object gridMuscleImageM_POINT: TcxGridDBColumn
          DataBinding.FieldName = 'M_POINT'
          Visible = False
        end
        object gridMuscleImageM_SEX: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'M_SEX'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #44540#50977
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #44264#44201
              Value = 2
            end>
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object gridMuscleImageM_IMAGE: TcxGridDBColumn
          DataBinding.FieldName = 'M_IMAGE'
          Visible = False
        end
        object gridMuscleImageM_DESC: TcxGridDBColumn
          DataBinding.FieldName = 'M_DESC'
          Visible = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = gridMuscleImage
      end
    end
  end
  object Panel2: TPanel
    Left = 337
    Top = 28
    Width = 597
    Height = 610
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 350
    ExplicitTop = -25
    ExplicitWidth = 584
    ExplicitHeight = 663
    object ImageEnView1: TImageEnView
      Left = 1
      Top = 1
      Width = 595
      Height = 408
      Cursor = crHandPoint
      Background = clBtnFace
      AutoStretch = True
      AutoShrink = True
      Align = alTop
      TabOrder = 0
      OnDblClick = ImageEnView1DblClick
      ExplicitWidth = 582
    end
    object IERichEdit1: TIERichEdit
      Left = 1
      Top = 438
      Width = 595
      Height = 138
      RTFText = 
        '{\rtf1\ansi\ansicpg949\deff0{\fonttbl{\f0\fnil\fcharset129 \'#39'b3\' +
        #39'aa\'#39'b4\'#39'ae\'#39'b8\'#39'ed\'#39'c1\'#39'b6;}}'#13#10'\viewkind4\uc1\pard\lang1042\f0\' +
        'fs24\par'#13#10'}'#13#10#0
      Align = alClient
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #45208#45588#47749#51312
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 582
      ExplicitHeight = 191
    end
    object IERichEditToolbar1: TIERichEditToolbar
      Left = 1
      Top = 409
      Width = 595
      Height = 29
      ButtonHeight = 30
      ButtonWidth = 31
      Caption = 'IERichEditToolbar1'
      TabOrder = 2
      ExplicitWidth = 582
    end
    object Panel4: TPanel
      Left = 1
      Top = 576
      Width = 595
      Height = 33
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 629
      ExplicitWidth = 582
      object btnSave: TcxButton
        Left = 210
        Top = 3
        Width = 126
        Height = 25
        Caption = #48320#44221#45236#50857' '#51200#51109
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
        OnClick = btnSaveClick
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 28
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 30
      Height = 20
      Align = alLeft
      Caption = #54637#47785':'
      Layout = tlCenter
      ExplicitLeft = 16
      ExplicitTop = 6
      ExplicitHeight = 13
    end
    object lcMain: TcxLookupComboBox
      AlignWithMargins = True
      Left = 38
      Top = 2
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'M_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmDBCommon.ds_MUSCLE_MAIN_SEL
      Properties.OnCloseUp = lcMainPropertiesCloseUp
      TabOrder = 0
      ExplicitLeft = 52
      ExplicitTop = 3
      ExplicitHeight = 21
      Width = 101
    end
    object btnView: TcxButton
      AlignWithMargins = True
      Left = 141
      Top = 2
      Width = 56
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #54869#51064
      TabOrder = 1
      OnClick = btnViewClick
      ExplicitLeft = 349
      ExplicitHeight = 23
    end
    object btnImageEdit: TcxButton
      AlignWithMargins = True
      Left = 541
      Top = 2
      Width = 120
      Height = 24
      Margins.Left = 20
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Caption = #51060#48120#51648#49688#51221
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001F421C11FF30140DEC190A06B30304
        075F0000001B0000000500000000000000000000000000000000000000000000
        00000000000000000000000000000000001E663C2BE7B9C7D2FF7889A2FF2441
        82FF051033AF0000002100000005000000000000000000000000000000000000
        0002000000090000000E0000000F0000002041261BAE879AB2FFC8E3F5FF1F66
        B6FF2B6BA8FF051236AD0000001F000000040000000000000000000000000000
        00088C6657C0C38C7AFFC38C79FFCBA395FFA89894FF488BC3FFDEFEFDFF51B4
        E3FF1F68B7FF3173AEFF061538AA0000001C0000000400000000000000000000
        000CC5917EFFFDFBFAFFFCF8F6FFFAF7F5FFECEAE9FF7CA3BFFF479FD2FFDEFE
        FDFF59BFE9FF216BB9FF367BB3FF07173AA70000001A00000004000000000000
        000CC79481FFFEFBFAFFF9F0EAFFF8F0EAFFF7F0EBFFE8E4E1FF7EA4BFFF4BA5
        D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF081A3DA300000018000000000000
        000BC99786FFFEFCFBFFF9F2EDFFF9F2EDFFF9F0EBFFF8F2EDFFEBE7E5FF82A7
        C2FF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F9E000000000000
        000ACB9C8BFFFEFDFCFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF8F2EEFFEDE9
        E7FF85ABC7FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF000000000000
        0009CFA08DFFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF8F4
        EFFFEFECE9FF89AECAFF54B1DCFFDEFEFDFF4FA6D4FF102C4E93000000000000
        0009D0A393FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
        EFFFFAF6F1FFF3EFEDFF83A0B8FF357FBCFF173A598F0000000C000000000000
        0008D3A897FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
        F1FFFBF5F0FFFAF6F3FFE2CCC4FF000000160000000600000001000000000000
        0007D3AB9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
        F3FFFCF6F2FFFBF6F1FFD1A494FF0000000C0000000000000000000000000000
        0006D8AE9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7
        F5FFFBF7F4FFFCF7F3FFD3A897FF0000000B0000000000000000000000000000
        0006D8B0A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8
        F6FFFBF7F6FFFCF7F5FFD4AC9BFF0000000A0000000000000000000000000000
        0005D9B3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFE
        FEFFFEFEFEFFFEFEFEFFD7AE9EFF000000090000000000000000000000000000
        0003A3867AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3
        A2FFD9B2A2FFD8B2A2FFA08377C2000000060000000000000000}
      TabOrder = 2
      OnClick = btnImageEditClick
    end
  end
  object MUSCLE_IMAGES_SEL_ALL: TUniStoredProc
    StoredProcName = 'MUSCLE_IMAGES_SEL_ALL'
    Connection = dmDBCommon.UniDBConnection
    Left = 200
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MPOINT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'M_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftBlob
        Name = 'M_IMAGE'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'M_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftMemo
        Name = 'M_DESC'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'M_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'M_POINT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'M_SEX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'MUSCLE_IMAGES_SEL_ALL'
    StoredProcIsQuery = True
    object MUSCLE_IMAGES_SEL_ALLID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object MUSCLE_IMAGES_SEL_ALLM_NAME: TStringField
      Alignment = taCenter
      FieldName = 'M_NAME'
      Size = 50
    end
    object MUSCLE_IMAGES_SEL_ALLM_IMAGE: TBlobField
      Alignment = taCenter
      FieldName = 'M_IMAGE'
    end
    object MUSCLE_IMAGES_SEL_ALLM_KIND: TIntegerField
      Alignment = taCenter
      FieldName = 'M_KIND'
    end
    object MUSCLE_IMAGES_SEL_ALLM_DESC: TMemoField
      Alignment = taCenter
      FieldName = 'M_DESC'
      BlobType = ftMemo
    end
    object MUSCLE_IMAGES_SEL_ALLM_IDX: TIntegerField
      Alignment = taCenter
      FieldName = 'M_IDX'
    end
    object MUSCLE_IMAGES_SEL_ALLM_POINT: TIntegerField
      Alignment = taCenter
      FieldName = 'M_POINT'
    end
    object MUSCLE_IMAGES_SEL_ALLM_SEX: TIntegerField
      Alignment = taCenter
      FieldName = 'M_SEX'
    end
    object MUSCLE_IMAGES_SEL_ALLM_DRAW: TBlobField
      FieldName = 'M_DRAW'
    end
  end
  object ds_MUSCLE_IMAGES_SEL_ALL: TDataSource
    DataSet = MUSCLE_IMAGES_SEL_ALL
    Left = 200
    Top = 264
  end
  object MUSCLE_IMAGES_UPD_DESC: TUniStoredProc
    StoredProcName = 'MUSCLE_IMAGES_UPD_DESC'
    Connection = dmDBCommon.UniDBConnection
    Left = 200
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'M_DESC'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'MUSCLE_IMAGES_UPD_DESC'
  end
  object MUSCLE_IMAGES_UPD_DRAW: TUniStoredProc
    StoredProcName = 'MUSCLE_IMAGES_UPD_DRAW'
    Connection = dmDBCommon.UniDBConnection
    Left = 200
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftMemo
        Name = 'M_DRAW'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'MUSCLE_IMAGES_UPD_DRAW'
  end
end
