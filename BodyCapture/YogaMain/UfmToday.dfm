object fmToday: TfmToday
  Left = 0
  Top = 0
  Caption = #51068#51068#53685#44228
  ClientHeight = 629
  ClientWidth = 1057
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1057
    Height = 29
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 7
      Width = 30
      Height = 13
      Caption = #45216#51676':'
    end
    object btnView: TBitBtn
      Left = 147
      Top = 2
      Width = 65
      Height = 25
      Caption = #51312#54924
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADAD00CDADADDADADAD00CDADADAAD000070CDADADADD0DADA0BDADA
        DADA0DAFFFF0000000000AF7F770FFFFFFF00DFFFFF0FFFFFFF00AF77F70F7FF
        FFF0A0FFFF0FFFFFFFF0DA00007F77FFFFF0AD0FFFFFFFFFFFF0DA0F7777F77F
        FFF0AD0FFFFFFFFFFFF0DA00000000000000ADADADADADADADAD}
      TabOrder = 0
      OnClick = btnViewClick
    end
    object cxDateEdit1: TcxDateEdit
      Left = 45
      Top = 4
      Properties.OnCloseUp = cxDateEdit1PropertiesCloseUp
      TabOrder = 1
      Width = 102
    end
    object icbCenter: TcxImageComboBox
      Left = 217
      Top = 4
      Properties.Items = <>
      Properties.OnCloseUp = icbCenterPropertiesCloseUp
      TabOrder = 2
      Width = 80
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 617
    Height = 600
    Align = alLeft
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = #49688#44053#46321#47197#54788#54889
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 598
      Width = 377
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 371
        Height = 573
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridLesson: TcxGridDBTableView
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
          DataController.DataSource = d_LESSON_CUSTOMER_MIXSEL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,'
              Kind = skSum
              Column = gridLessonLEC_PRICE
            end
            item
              Format = '#, '#47749
              Kind = skCount
              Column = gridLessonCNAME
            end>
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
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.Indicator = True
          object gridLessonID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridLessonREG_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'REG_DATE'
            Visible = False
          end
          object gridLessonMEMBER_UID: TcxGridDBColumn
            DataBinding.FieldName = 'MEMBER_UID'
            Visible = False
          end
          object gridLessonSTART_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'START_DATE'
            Visible = False
          end
          object gridLessonEND_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'END_DATE'
            Visible = False
          end
          object gridLessonIS_ACTIVE: TcxGridDBColumn
            DataBinding.FieldName = 'IS_ACTIVE'
            Visible = False
            Width = 51
          end
          object gridLessonLEC_CODE: TcxGridDBColumn
            Caption = #44053#51340#47749
            DataBinding.FieldName = 'LEC_CODE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'L_NAME'
              end>
            Properties.ListSource = dmDBCommon.d_LESSON_SEL_LOOK
            Width = 71
          end
          object gridLessonCOMPANY_ID: TcxGridDBColumn
            DataBinding.FieldName = 'COMPANY_ID'
            Visible = False
          end
          object gridLessonIS_DONE: TcxGridDBColumn
            DataBinding.FieldName = 'IS_DONE'
            Visible = False
          end
          object gridLessonCNAME: TcxGridDBColumn
            Caption = #54924#50896#47749
            DataBinding.FieldName = 'CNAME'
            Width = 66
          end
          object gridLessonSEX: TcxGridDBColumn
            Caption = #49457#48324
            DataBinding.FieldName = 'SEX'
            Width = 37
          end
          object gridLessonM_KIND: TcxGridDBColumn
            DataBinding.FieldName = 'M_KIND'
            Visible = False
          end
          object gridLessonLOCKER_NO: TcxGridDBColumn
            DataBinding.FieldName = 'LOCKER_NO'
            Visible = False
          end
          object gridLessonNEW_OR_RENEW: TcxGridDBColumn
            Caption = #49888'/'#51116
            DataBinding.FieldName = 'NEW_OR_RENEW'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #49888#44508
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #51116#46321#47197
                Value = 1
              end>
            Width = 56
          end
          object gridLessonLEC_PRICE: TcxGridDBColumn
            Caption = #49688#44053#47308
            DataBinding.FieldName = 'LEC_PRICE'
            Width = 82
          end
          object gridLessonPAY_KIND: TcxGridDBColumn
            Caption = #44208#51116
            DataBinding.FieldName = 'PAY_KIND'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #54788#44552
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #52852#46300
                Value = 1
              end
              item
                Description = #51060#52404
                Value = 2
              end>
            Width = 57
          end
          object gridLessonLEC_MONTH: TcxGridDBColumn
            DataBinding.FieldName = 'LEC_MONTH'
            Visible = False
          end
          object gridLessonOUT_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'OUT_DATE'
            Visible = False
          end
          object gridLessonOUT_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'OUT_PRICE'
            Visible = False
          end
          object gridLessonOUT_KIND: TcxGridDBColumn
            DataBinding.FieldName = 'OUT_KIND'
            Visible = False
          end
          object gridLessonOUT_REASON: TcxGridDBColumn
            DataBinding.FieldName = 'OUT_REASON'
            Visible = False
          end
          object gridLessonUSED_CNT: TcxGridDBColumn
            DataBinding.FieldName = 'USED_CNT'
            Visible = False
          end
          object gridLessonLEC_DESC: TcxGridDBColumn
            DataBinding.FieldName = 'LEC_DESC'
            Visible = False
            Width = 66
          end
          object gridLessonCTEL: TcxGridDBColumn
            Caption = #51204#54868#48264#54840
            DataBinding.FieldName = 'CTEL'
            Width = 126
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gridLesson
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 378
      Top = 1
      Align = alRight
      Caption = #54924#50896#52636#49437#54788#54889
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Height = 598
      Width = 238
      object cxGrid2: TcxGrid
        Left = 3
        Top = 15
        Width = 232
        Height = 573
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridAttend: TcxGridDBTableView
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
          DataController.DataSource = d_LESSON_ATTENDANCE_SELDATE
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#, '#47749
              Kind = skCount
              Column = gridAttendCNAME
            end>
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
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.Indicator = True
          object gridAttendID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridAttendATT_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'ATT_DATE'
            Visible = False
          end
          object gridAttendLEC_CODE: TcxGridDBColumn
            DataBinding.FieldName = 'LEC_CODE'
            Visible = False
          end
          object gridAttendIS_ACTIVE: TcxGridDBColumn
            DataBinding.FieldName = 'IS_ACTIVE'
            Visible = False
            Width = 58
          end
          object gridAttendL_NAME: TcxGridDBColumn
            Caption = #44053#51340#47749
            DataBinding.FieldName = 'L_NAME'
            Width = 108
          end
          object gridAttendCNAME: TcxGridDBColumn
            Caption = #54924#50896#47749
            DataBinding.FieldName = 'CNAME'
            Width = 64
          end
          object gridAttendIN_TIME: TcxGridDBColumn
            Caption = #49884#44036
            DataBinding.FieldName = 'IN_TIME'
            Width = 46
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gridAttend
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 617
    Top = 29
    Width = 440
    Height = 600
    Align = alClient
    TabOrder = 2
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = #49345#54408#54032#47588#54788#54889
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 266
      Width = 438
      object cxGrid3: TcxGrid
        Left = 3
        Top = 15
        Width = 432
        Height = 241
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridSale: TcxGridDBTableView
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
          DataController.DataSource = d_PRODUCT_SALE_SEL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,'
              Kind = skSum
              Column = gridSaleT_PRICE
            end
            item
              Format = '#,'
              Kind = skSum
              Column = gridSalePAYED
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          object gridSaleID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridSaleS_DATE: TcxGridDBColumn
            Caption = #54032#47588#51068#51088
            DataBinding.FieldName = 'S_DATE'
            Visible = False
            Width = 94
          end
          object gridSaleITEM_ID: TcxGridDBColumn
            Caption = #49345#54408#47749
            DataBinding.FieldName = 'ITEM_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'PRODUCT_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmDBCommon.d_PRODUCTS_SEL_LOOK
            Width = 125
          end
          object gridSaleS_DESC: TcxGridDBColumn
            Caption = #54032#47588#48708#44256
            DataBinding.FieldName = 'S_DESC'
            Visible = False
            Width = 267
          end
          object gridSaleS_QTY: TcxGridDBColumn
            Caption = #49688#47049
            DataBinding.FieldName = 'S_QTY'
            HeaderAlignmentHorz = taCenter
            Width = 44
          end
          object gridSaleQ_PRICE: TcxGridDBColumn
            Caption = #45800#44032
            DataBinding.FieldName = 'Q_PRICE'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object gridSaleT_PRICE: TcxGridDBColumn
            Caption = #44552#50529
            DataBinding.FieldName = 'T_PRICE'
            HeaderAlignmentHorz = taRightJustify
            Width = 85
          end
          object gridSalePAYED: TcxGridDBColumn
            Caption = #44208#51116#44552#50529
            DataBinding.FieldName = 'PAYED'
            HeaderAlignmentHorz = taRightJustify
            Width = 80
          end
          object gridSalePAY_WAY: TcxGridDBColumn
            Caption = #44208#51116#48169#48277
            DataBinding.FieldName = 'PAY_WAY'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #54788#44552
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #52852#46300
                Value = 1
              end
              item
                Description = #51060#52404
                Value = 2
              end
              item
                Description = #50808#49345
                Value = 3
              end
              item
                Description = #51613#51221
                Value = 4
              end>
            HeaderAlignmentHorz = taCenter
            Width = 67
          end
          object gridSaleCENTER_ID: TcxGridDBColumn
            Caption = #49468#53552#47749
            DataBinding.FieldName = 'CENTER_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'C_NAME'
              end>
            Properties.ListSource = dmDBCommon.d_center
            Width = 53
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gridSale
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 1
      Top = 267
      Align = alClient
      Caption = #49688#51077'/'#51648#52636#54788#54889
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Height = 332
      Width = 438
      object cxGrid4: TcxGrid
        Left = 3
        Top = 15
        Width = 432
        Height = 307
        Align = alClient
        BorderWidth = 1
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridCash: TcxGridDBTableView
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
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
          Navigator.InfoPanel.Visible = True
          DataController.DataSource = d_CASH_INOUT_SELDATE
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,'
              Kind = skSum
            end
            item
              Format = '#,'
              Kind = skSum
            end
            item
              Format = '#,'
              Kind = skSum
              Column = gridCashCASH_IN
            end
            item
              Format = '#,'
              Kind = skSum
              Column = gridCashCASH_OUT
            end
            item
              Format = #54633#44228#44552#50529
              Kind = skCount
              Column = gridCashC_DESC
            end
            item
              Format = #44148#49688':#,'
              Kind = skCount
              Column = gridCashK_CODE
            end
            item
              Format = '#,'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.CellEndEllipsis = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridCashC_DATE: TcxGridDBColumn
            Caption = #45216#51676
            DataBinding.FieldName = 'C_DATE'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 92
          end
          object gridCashK_CODE: TcxGridDBColumn
            Caption = #44228#51221#44284#47785
            DataBinding.FieldName = 'K_CODE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'K_NAME'
              end>
            Properties.ListSource = dmDBCommon.d_CASH_INOUT_KIND_SEL_LOOK
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 77
          end
          object gridCashC_DESC: TcxGridDBColumn
            Caption = #51077#52636#44552' '#45236#50669
            DataBinding.FieldName = 'C_DESC'
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 133
          end
          object gridCashCASH_IN: TcxGridDBColumn
            Caption = #51077#44552
            DataBinding.FieldName = 'CASH_IN'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 84
          end
          object gridCashCASH_OUT: TcxGridDBColumn
            Caption = #52636#44552
            DataBinding.FieldName = 'CASH_OUT'
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 75
          end
          object gridCashLESSON_ID: TcxGridDBColumn
            DataBinding.FieldName = 'LESSON_ID'
            Visible = False
          end
          object gridCashPRODUCT_SALE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PRODUCT_SALE_ID'
            Visible = False
          end
          object gridCashCENTER_ID: TcxGridDBColumn
            Caption = #49468#53552#47749
            DataBinding.FieldName = 'CENTER_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'C_NAME'
              end>
            Properties.ListSource = dmDBCommon.d_center
            Width = 47
          end
        end
        object G3L1: TcxGridLevel
          GridView = gridCash
        end
      end
    end
  end
  object LESSON_CUSTOMER_MIXSEL: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_MIXSEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 146
    Top = 288
    ParamData = <
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MEMBER_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'LEC_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'M_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'NEW_OR_RENEW'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_DESC'
        ParamType = ptOutput
        Size = 1024
      end
      item
        DataType = ftFloat
        Name = 'LEC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'OUT_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'OUT_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'OUT_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'OUT_REASON'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftSmallint
        Name = 'USED_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_MIXSEL'
    object LESSON_CUSTOMER_MIXSELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object LESSON_CUSTOMER_MIXSELMEMBER_UID: TStringField
      FieldName = 'MEMBER_UID'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object LESSON_CUSTOMER_MIXSELEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object LESSON_CUSTOMER_MIXSELLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELIS_DONE: TSmallintField
      Alignment = taCenter
      FieldName = 'IS_DONE'
    end
    object LESSON_CUSTOMER_MIXSELCNAME: TStringField
      FieldName = 'CNAME'
    end
    object LESSON_CUSTOMER_MIXSELSEX: TStringField
      Alignment = taCenter
      FieldName = 'SEX'
      Size = 2
    end
    object LESSON_CUSTOMER_MIXSELCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object LESSON_CUSTOMER_MIXSELM_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'M_KIND'
    end
    object LESSON_CUSTOMER_MIXSELLOCKER_NO: TStringField
      Alignment = taCenter
      FieldName = 'LOCKER_NO'
      Size = 10
    end
    object LESSON_CUSTOMER_MIXSELNEW_OR_RENEW: TSmallintField
      Alignment = taCenter
      FieldName = 'NEW_OR_RENEW'
    end
    object LESSON_CUSTOMER_MIXSELLEC_PRICE: TFloatField
      FieldName = 'LEC_PRICE'
      DisplayFormat = '#,'
    end
    object LESSON_CUSTOMER_MIXSELPAY_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_KIND'
    end
    object LESSON_CUSTOMER_MIXSELLEC_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'LEC_MONTH'
    end
    object LESSON_CUSTOMER_MIXSELOUT_DATE: TStringField
      FieldName = 'OUT_DATE'
      Size = 10
    end
    object LESSON_CUSTOMER_MIXSELOUT_PRICE: TFloatField
      FieldName = 'OUT_PRICE'
      DisplayFormat = '#,'
    end
    object LESSON_CUSTOMER_MIXSELOUT_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_KIND'
    end
    object LESSON_CUSTOMER_MIXSELOUT_REASON: TStringField
      FieldName = 'OUT_REASON'
      Size = 50
    end
    object LESSON_CUSTOMER_MIXSELUSED_CNT: TSmallintField
      Alignment = taCenter
      FieldName = 'USED_CNT'
    end
    object LESSON_CUSTOMER_MIXSELLEC_DESC: TStringField
      FieldName = 'LEC_DESC'
      Size = 1024
    end
    object LESSON_CUSTOMER_MIXSELIS_ACTIVE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_ACTIVE'
    end
  end
  object d_LESSON_CUSTOMER_MIXSEL: TUniDataSource
    DataSet = LESSON_CUSTOMER_MIXSEL
    Left = 146
    Top = 336
  end
  object LESSON_ATTENDANCE_SELDATE: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_SELDATE'
    Connection = dmDBCommon.UniDBConnection
    Left = 528
    Top = 384
    ParamData = <
      item
        DataType = ftDate
        Name = 'A_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'ATT_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptOutput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_ATTENDANCE_SELDATE'
    object LESSON_ATTENDANCE_SELDATEID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELDATEATT_DATE: TDateField
      FieldName = 'ATT_DATE'
    end
    object LESSON_ATTENDANCE_SELDATELEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELDATEIN_TIME: TStringField
      FieldName = 'IN_TIME'
      Size = 5
    end
    object LESSON_ATTENDANCE_SELDATEL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object LESSON_ATTENDANCE_SELDATECNAME: TStringField
      FieldName = 'CNAME'
    end
    object LESSON_ATTENDANCE_SELDATEIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
  end
  object d_LESSON_ATTENDANCE_SELDATE: TDataSource
    DataSet = LESSON_ATTENDANCE_SELDATE
    Left = 528
    Top = 432
  end
  object PRODUCT_SALE_SEL: TUniStoredProc
    StoredProcName = 'PRODUCT_SALE_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 784
    Top = 184
    ParamData = <
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'S_DESC'
        ParamType = ptOutput
        Size = 125
      end
      item
        DataType = ftFloat
        Name = 'S_QTY'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'Q_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'T_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_WAY'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'PAYED'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'PRODUCT_SALE_SEL'
    object PRODUCT_SALE_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object PRODUCT_SALE_SELS_DATE: TDateField
      FieldName = 'S_DATE'
    end
    object PRODUCT_SALE_SELITEM_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ITEM_ID'
    end
    object PRODUCT_SALE_SELS_DESC: TStringField
      FieldName = 'S_DESC'
      Size = 125
    end
    object PRODUCT_SALE_SELS_QTY: TFloatField
      Alignment = taCenter
      FieldName = 'S_QTY'
    end
    object PRODUCT_SALE_SELQ_PRICE: TFloatField
      FieldName = 'Q_PRICE'
      DisplayFormat = '#,'
    end
    object PRODUCT_SALE_SELT_PRICE: TFloatField
      FieldName = 'T_PRICE'
      DisplayFormat = '#,'
    end
    object PRODUCT_SALE_SELPAY_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
    end
    object PRODUCT_SALE_SELPAYED: TFloatField
      FieldName = 'PAYED'
      DisplayFormat = '#,'
    end
    object PRODUCT_SALE_SELCENTER_ID: TIntegerField
      FieldName = 'CENTER_ID'
    end
  end
  object d_PRODUCT_SALE_SEL: TUniDataSource
    DataSet = PRODUCT_SALE_SEL
    Left = 784
    Top = 232
  end
  object CASH_INOUT_SELDATE: TUniStoredProc
    StoredProcName = 'CASH_INOUT_SELDATE'
    Connection = dmDBCommon.UniDBConnection
    Left = 800
    Top = 384
    ParamData = <
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'K_CODE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_DESC'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'CASH_IN'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'CASH_OUT'
        ParamType = ptOutput
      end
      item
        DataType = ftFixedChar
        Name = 'LESSON_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftFixedChar
        Name = 'PRODUCT_SALE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CASH_INOUT_SELDATE'
    object CASH_INOUT_SELDATEK_CODE: TIntegerField
      Alignment = taCenter
      FieldName = 'K_CODE'
    end
    object CASH_INOUT_SELDATEC_DESC: TStringField
      FieldName = 'C_DESC'
      Size = 50
    end
    object CASH_INOUT_SELDATECASH_IN: TFloatField
      FieldName = 'CASH_IN'
      DisplayFormat = '#,'
    end
    object CASH_INOUT_SELDATECASH_OUT: TFloatField
      FieldName = 'CASH_OUT'
      DisplayFormat = '#,'
    end
    object CASH_INOUT_SELDATELESSON_ID: TStringField
      FieldName = 'LESSON_ID'
      FixedChar = True
      Size = 17
    end
    object CASH_INOUT_SELDATEPRODUCT_SALE_ID: TStringField
      FieldName = 'PRODUCT_SALE_ID'
      FixedChar = True
      Size = 17
    end
    object CASH_INOUT_SELDATEID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 17
    end
    object CASH_INOUT_SELDATECENTER_ID: TIntegerField
      FieldName = 'CENTER_ID'
    end
  end
  object d_CASH_INOUT_SELDATE: TUniDataSource
    DataSet = CASH_INOUT_SELDATE
    Left = 800
    Top = 432
  end
end
