object fmCashKindView: TfmCashKindView
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44228#51221#44284#47785
  ClientHeight = 413
  ClientWidth = 210
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
    Left = 0
    Top = 0
    Width = 210
    Height = 30
    Align = alTop
    TabOrder = 0
    object btnAddCustLec: TBitBtn
      Left = 10
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
      Left = 74
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
      Left = 138
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
    Width = 210
    Height = 383
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridKind: TcxGridDBTableView
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
      OnCellDblClick = gridKindCellDblClick
      DataController.DataSource = dmDBCommon.d_CASH_INOUT_KIND_SEL
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
      object gridKindID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridKindK_NAME: TcxGridDBColumn
        Caption = #44228#51221#44284#47785
        DataBinding.FieldName = 'K_NAME'
      end
      object gridKindCOMPANY_ID: TcxGridDBColumn
        DataBinding.FieldName = 'COMPANY_ID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridKind
    end
  end
  object CASH_INOUT_KIND_INS: TUniStoredProc
    StoredProcName = 'CASH_INOUT_KIND_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 88
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'K_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftFixedChar
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CASH_INOUT_KIND_INS'
  end
  object CASH_INOUT_KIND_UPD: TUniStoredProc
    StoredProcName = 'CASH_INOUT_KIND_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 88
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'K_NAME'
        ParamType = ptInput
        Size = 20
      end>
    CommandStoredProcName = 'CASH_INOUT_KIND_UPD'
  end
  object CASH_INOUT_KIND_DEL: TUniStoredProc
    StoredProcName = 'CASH_INOUT_KIND_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 88
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CASH_INOUT_KIND_DEL'
  end
end
