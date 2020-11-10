object fmCustomerHistory: TfmCustomerHistory
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896' '#44060#51064#44592#47197
  ClientHeight = 502
  ClientWidth = 636
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
    Left = 0
    Top = 0
    Width = 636
    Height = 30
    Align = alTop
    TabOrder = 0
    object btnAdd: TBitBtn
      Left = 213
      Top = 2
      Width = 65
      Height = 25
      Caption = #46321#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnEdit: TBitBtn
      Left = 277
      Top = 2
      Width = 65
      Height = 25
      Caption = #49688#51221
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
        BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
        DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
      TabOrder = 1
      OnClick = btnEditClick
    end
    object btnDel: TBitBtn
      Left = 341
      Top = 2
      Width = 65
      Height = 25
      Caption = #49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
        0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
        BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
        DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
      TabOrder = 2
      OnClick = btnDelClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 636
    Height = 472
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridHistory: TcxGridDBTableView
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
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = dsCUSTOMER_HISTORY_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.ShowHourglassCursor = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ScrollBars = ssVertical
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.Indicator = True
      object gridHistoryID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridHistoryR_DATE: TcxGridDBColumn
        Caption = #45216#51676
        DataBinding.FieldName = 'R_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taTopJustify
        HeaderAlignmentHorz = taCenter
        Width = 90
      end
      object gridHistoryBIGO: TcxGridDBColumn
        Caption = #44592#47197#49324#54637
        DataBinding.FieldName = 'BIGO'
        Options.Editing = False
        Options.Filtering = False
        Options.Sorting = False
        Width = 530
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridHistory
    end
  end
  object CUSTOMER_HISTORY_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_HISTORY_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 96
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'CUSTOMER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'R_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptOutput
        Size = 8192
      end>
    CommandStoredProcName = 'CUSTOMER_HISTORY_SEL'
    object CUSTOMER_HISTORY_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUSTOMER_HISTORY_SELR_DATE: TDateField
      FieldName = 'R_DATE'
    end
    object CUSTOMER_HISTORY_SELBIGO: TStringField
      FieldName = 'BIGO'
      Size = 8192
    end
  end
  object dsCUSTOMER_HISTORY_SEL: TDataSource
    DataSet = CUSTOMER_HISTORY_SEL
    Left = 96
    Top = 208
  end
  object CUSTOMER_HISTORY_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_HISTORY_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 96
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'CUSTOMER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'R_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptInput
        Size = 8192
      end>
    CommandStoredProcName = 'CUSTOMER_HISTORY_INS'
  end
  object CUSTOMER_HISTORY_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_HISTORY_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 96
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'R_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptInput
        Size = 8192
      end>
    CommandStoredProcName = 'CUSTOMER_HISTORY_UPD'
  end
  object CUSTOMER_HISTORY_DEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_HISTORY_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 96
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_HISTORY_DEL'
  end
end
