object frmMemberSelect: TfrmMemberSelect
  Left = 0
  Top = 0
  Width = 209
  Height = 426
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object pnlRoot: TPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 426
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      AlignWithMargins = True
      Left = 1
      Top = 1
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alTop
      Alignment = alTopCenter
      Caption = #54924#50896#51221#48372
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 100
      Width = 207
      object Panel10: TPanel
        Left = 3
        Top = 15
        Width = 60
        Height = 27
        Caption = #54924#50896#47749
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 3
        Top = 42
        Width = 60
        Height = 23
        Caption = #50672#46973#52376
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
      end
      object pnlName: TPanel
        Left = 63
        Top = 15
        Width = 141
        Height = 27
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object edtName: TEdit
          Left = 3
          Top = 3
          Width = 135
          Height = 21
          AutoSelect = False
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2010'
          TabOrder = 0
          OnExit = edtNameExit
        end
      end
      object pnlNo: TPanel
        Left = 63
        Top = 42
        Width = 141
        Height = 23
        Cursor = crHandPoint
        Alignment = taLeftJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = pnlNoClick
      end
      object btnCustInfo: TBitBtn
        Left = 6
        Top = 66
        Width = 35
        Height = 25
        Hint = #51064#51201#49324#54637
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD08800080ADADADDAD00FF00ADADADAADAD0F000DADADAD00000FFFF000
          000A7FF000FFF0FFFF0D7F000FFFFF00000A7F000FFF00FF0E0D7F00000FF0FF
          000A7F0000000F0F0B0D7F700000000F000A7F7F00000FFF0D0D7F7FFF70F77F
          000A7F7F77F0FFFF0A0D777FFF087FFF000AAD77778887777DAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnCustInfoClick
      end
      object btnHistory: TBitBtn
        Left = 40
        Top = 66
        Width = 35
        Height = 25
        Hint = #44592#47197#49324#54637
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00D77777777777
          777700000000000000070FFFFFFFFFFFFF070F00000000000F070FFFFFFFFFFF
          FF070F00000000000F070FFFFFFFFFFFFF070F00000000000F070FFFFFFFFFFF
          FF070F000F000F000F070FF08F80FFFFFF070FF80008FF000F070FFF777FFFFF
          FF070FFFF0FFFF000F070FFFFFFFFFFFFF07000000000000000D}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnHistoryClick
      end
    end
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 1
      Top = 102
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Alignment = alTopCenter
      Caption = #49324#51652#45936#51060#53552
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Height = 323
      Width = 207
      object cxGrid1: TcxGrid
        Left = 3
        Top = 40
        Width = 201
        Height = 273
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridCheck: TcxGridDBTableView
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
          OnFocusedRecordChanged = gridCheckFocusedRecordChanged
          DataController.DataSource = dmDBCommon.d_picture_data
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ScrollBars = ssVertical
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridCheckColumn1: TcxGridDBColumn
            Caption = 'No'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnGetDisplayText = gridCheckColumn1GetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 34
          end
          object gridCheckUID: TcxGridDBColumn
            DataBinding.FieldName = 'UID'
            Visible = False
          end
          object gridCheckCUST_UID: TcxGridDBColumn
            DataBinding.FieldName = 'CUST_UID'
            Visible = False
          end
          object gridCheckPICTURE_DATE: TcxGridDBColumn
            Caption = #52524#50689#51068#51088
            DataBinding.FieldName = 'PICTURE_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object gridCheckPIC_CNT: TcxGridDBColumn
            Caption = #49324#51652
            DataBinding.FieldName = 'PIC_CNT'
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
        end
        object cxL1: TcxGridLevel
          GridView = gridCheck
        end
      end
      object pnlPictureButton: TPanel
        Left = 3
        Top = 15
        Width = 201
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnAdd: TBitBtn
          Left = 3
          Top = -1
          Width = 35
          Height = 25
          Hint = #52628#44032
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
            DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
            DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnAddClick
        end
        object btnDel: TBitBtn
          Left = 71
          Top = -1
          Width = 35
          Height = 25
          Hint = #49325#51228
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
            DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
            DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnDelClick
        end
        object btnEdit: TBitBtn
          Left = 37
          Top = -1
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
          TabOrder = 2
          OnClick = btnEditClick
        end
      end
    end
  end
  object q_UpdatePictureData: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'Update Picture_data set picture_date = :p_date'
      'where UID = :uid;')
    Left = 88
    Top = 232
    ParamData = <
      item
        DataType = ftDate
        Name = 'p_date'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'uid'
        ParamType = ptInput
      end>
  end
end
