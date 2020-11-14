object fmViewLecture: TfmViewLecture
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44053#51340#44288#47532
  ClientHeight = 407
  ClientWidth = 330
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 30
    Align = alTop
    TabOrder = 0
    object btnAddCustLec: TBitBtn
      Left = 73
      Top = 2
      Width = 65
      Height = 25
      Caption = #46321#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      TabOrder = 0
      OnClick = btnAddCustLecClick
    end
    object btnEditCustLec: TBitBtn
      Left = 137
      Top = 2
      Width = 65
      Height = 25
      Caption = #49688#51221
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
        BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
        DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
      TabOrder = 1
      OnClick = btnEditCustLecClick
    end
    object btnDelLecMember: TBitBtn
      Left = 201
      Top = 2
      Width = 65
      Height = 25
      Caption = #49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
        0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
        BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
        DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
      TabOrder = 2
      OnClick = btnDelLecMemberClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 330
    Height = 377
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridLecture: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      OnCellDblClick = gridLectureCellDblClick
      DataController.DataSource = d_LESSON_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object gridLectureID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridLectureL_NAME: TcxGridDBColumn
        Caption = #44053#51340#47749
        DataBinding.FieldName = 'L_NAME'
        Width = 89
      end
      object gridLectureL_DESC: TcxGridDBColumn
        Caption = #44053#51340#49444#47749
        DataBinding.FieldName = 'L_DESC'
        Width = 225
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridLecture
    end
  end
  object LESSON_INS: TUniStoredProc
    StoredProcName = 'LESSON_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 160
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'L_DESC'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'LESSON_INS'
  end
  object LESSON_UPD: TUniStoredProc
    StoredProcName = 'LESSON_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 160
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'L_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'L_DESC'
        ParamType = ptInput
        Size = 100
      end>
    CommandStoredProcName = 'LESSON_UPD'
  end
  object LESSON_DEL: TUniStoredProc
    StoredProcName = 'LESSON_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 160
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'LESSON_DEL'
  end
  object LESSON_SEL: TUniStoredProc
    StoredProcName = 'LESSON_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 48
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'L_DESC'
        ParamType = ptOutput
        Size = 100
      end>
    CommandStoredProcName = 'LESSON_SEL'
    object LESSON_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_SELL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object LESSON_SELL_DESC: TStringField
      FieldName = 'L_DESC'
      Size = 100
    end
  end
  object d_LESSON_SEL: TUniDataSource
    DataSet = LESSON_SEL
    Left = 48
    Top = 224
  end
end
