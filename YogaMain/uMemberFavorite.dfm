object fmMemberFavorite: TfmMemberFavorite
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896' '#51600#44200#52286#44592
  ClientHeight = 494
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 532
    Height = 29
    Align = alTop
    TabOrder = 0
    object btnSelect: TBitBtn
      Left = 259
      Top = 2
      Width = 75
      Height = 25
      Caption = #49440#53469
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnSelectClick
    end
    object btnCancel: TBitBtn
      Left = 335
      Top = 2
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 1
    end
    object btnAddNew: TBitBtn
      Left = 118
      Top = 2
      Width = 120
      Height = 25
      Caption = #51600#44200#52286#44592#49325#51228
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
      OnClick = btnAddNewClick
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 2
      Width = 116
      Height = 25
      Caption = #51600#44200#52286#44592#52628#44032
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 532
    Height = 465
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridMember: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      OnCellDblClick = gridMemberCellDblClick
      DataController.DataSource = dmDBCommon.d_CUSTOMER_FAVORITE_SELECT
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridMemberUID: TcxGridDBColumn
        DataBinding.FieldName = 'UID'
        Visible = False
      end
      object gridMemberIS_ACTIVE: TcxGridDBColumn
        Caption = #49468#53552#47749
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object gridMemberCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 88
      end
      object gridMemberSEX: TcxGridDBColumn
        Caption = #49457#48324
        DataBinding.FieldName = 'SEX'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = #45224#51088
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = #50668#51088
            Value = '1'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 39
      end
      object gridMemberCTEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'CTEL'
        Width = 118
      end
      object gridMemberJOBKIND: TcxGridDBColumn
        Caption = #51649#50629
        DataBinding.FieldName = 'JOBKIND'
        Width = 110
      end
      object gridMemberREG_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'REG_DATE'
        Width = 112
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMember
    end
  end
  object CUSTOMER_BASIC_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_BASIC_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 184
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CBIGO'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_BASIC_INS'
  end
end
