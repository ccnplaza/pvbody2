object fmCenter: TfmCenter
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49468#53552#44288#47532
  ClientHeight = 253
  ClientWidth = 217
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
    Width = 217
    Height = 30
    Align = alTop
    TabOrder = 0
    object btnAdd: TBitBtn
      Left = 10
      Top = 2
      Width = 33
      Height = 25
      Hint = #46321#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnEdit: TBitBtn
      Left = 42
      Top = 2
      Width = 35
      Height = 25
      Hint = #49688#51221
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
        BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
        DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnEditClick
    end
    object btnDel: TBitBtn
      Left = 76
      Top = 2
      Width = 35
      Height = 25
      Hint = #49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
        0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
        BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
        DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnDelClick
    end
    object btnSelect: TBitBtn
      Left = 117
      Top = 2
      Width = 76
      Height = 25
      Caption = #49468#53552#49440#53469
      ModalResult = 1
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 217
    Height = 223
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridCenter: TcxGridDBTableView
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
      OnCellDblClick = gridCenterCellDblClick
      DataController.DataSource = dmDBCommon.ds_REGISTED_CENTER_SEL
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.Indicator = True
      object gridCenterID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        OnGetDataText = gridCenterIDGetDataText
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object gridCenterC_NAME: TcxGridDBColumn
        Caption = #49468#53552#47749
        DataBinding.FieldName = 'C_NAME'
        Width = 147
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridCenter
    end
  end
end
