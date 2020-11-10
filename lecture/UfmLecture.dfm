object fmLecture: TfmLecture
  Left = 0
  Top = 0
  Caption = #44053#51032'/'#49688#44053
  ClientHeight = 731
  ClientWidth = 1363
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1363
    Height = 731
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel6: TPanel
      Left = 0
      Top = 27
      Width = 1363
      Height = 704
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 704
        Align = alClient
        BorderWidth = 1
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridLectureCust: TcxGridDBTableView
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
          OnCellClick = gridLectureCustCellClick
          OnCellDblClick = gridLectureCustCellDblClick
          OnFocusedRecordChanged = gridLectureCustFocusedRecordChanged
          DataController.DataSource = dmDBCommon.d_LESSON_CUSTOMER_MIXSEL
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '#, ('#47749')'
              Kind = skCount
              Column = gridLectureCustCNAME
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,'
              Kind = skSum
            end
            item
              Format = '#,'
              Kind = skSum
              Column = gridLectureCustLEC_PRICE
            end
            item
              Format = '#,'
              Kind = skSum
              Column = gridLectureCustOUT_PRICE
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #44160#49353#54624' '#52972#47100#50640' '#44050#51012' '#51077#47141#54616#49464#50836
          FilterRow.SeparatorColor = clBlue
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.OnGetContentStyle = gridLectureCustStylesGetContentStyle
          object gridLectureCustID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridLectureCustREG_DATE: TcxGridDBColumn
            Caption = #46321#47197#51068#51088
            DataBinding.FieldName = 'REG_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yy-mm-dd'
            Width = 65
          end
          object gridLectureCustCENTER_ID: TcxGridDBColumn
            Caption = #49468#53552#47749
            DataBinding.FieldName = 'CENTER_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'C_NAME'
              end>
            Properties.ListSource = dmDBCommon.ds_REGISTED_CENTER_LOOK
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
          object gridLectureCustIS_ACTIVE: TcxGridDBColumn
            Caption = #49468#53552#47749
            DataBinding.FieldName = 'IS_ACTIVE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'C_NAME'
              end>
            Visible = False
            Width = 49
          end
          object gridLectureCustMEMBER_UID: TcxGridDBColumn
            Caption = #54924#50896#44256#50976#48264#54840
            DataBinding.FieldName = 'MEMBER_UID'
            Visible = False
          end
          object gridLectureCustLEC_CODE: TcxGridDBColumn
            Caption = #44053#51340#47749
            DataBinding.FieldName = 'LEC_CODE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'L_NAME'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dmDBCommon.d_LESSON_SEL_LOOK
            Width = 57
          end
          object gridLectureCustCNAME: TcxGridDBColumn
            Caption = #54924#50896#47749
            DataBinding.FieldName = 'CNAME'
            Width = 66
          end
          object gridLectureCustCTEL: TcxGridDBColumn
            Caption = #51204#54868#48264#54840
            DataBinding.FieldName = 'CTEL'
            Width = 107
          end
          object gridLectureCustM_KIND: TcxGridDBColumn
            Caption = #44396#48516
            DataBinding.FieldName = 'M_KIND'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #44592#44036
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #50672#44036
                Value = 1
              end
              item
                Description = #54217#49373
                Value = 2
              end
              item
                Description = #54943#49688
                Value = 3
              end>
            OnCustomDrawCell = gridLectureCustM_KINDCustomDrawCell
            HeaderAlignmentHorz = taCenter
            Width = 40
          end
          object gridLectureCustSTART_DATE: TcxGridDBColumn
            Caption = #49884#51089#51068#51088
            DataBinding.FieldName = 'START_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yy-mm-dd'
            Width = 65
          end
          object gridLectureCustEND_DATE: TcxGridDBColumn
            Caption = #51333#47308#51068#51088
            DataBinding.FieldName = 'END_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yy-mm-dd'
            Width = 65
          end
          object gridLectureCustCOMPANY_ID: TcxGridDBColumn
            Caption = #44144#47000#52376#53076#46300
            DataBinding.FieldName = 'COMPANY_ID'
            Visible = False
          end
          object gridLectureCustLEC_MONTH: TcxGridDBColumn
            Caption = #50900'/'#54924
            DataBinding.FieldName = 'LEC_MONTH'
            HeaderAlignmentHorz = taCenter
            Width = 41
          end
          object gridLectureCustUSED_CNT: TcxGridDBColumn
            Caption = #54943#49688
            DataBinding.FieldName = 'USED_CNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',#.;-,#.'
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object gridLectureCustLEC_PRICE: TcxGridDBColumn
            Caption = #49688#44053#47308
            DataBinding.FieldName = 'LEC_PRICE'
            HeaderAlignmentHorz = taRightJustify
            Width = 90
          end
          object gridLectureCustPAY_KIND: TcxGridDBColumn
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
            HeaderAlignmentHorz = taCenter
            Width = 45
          end
          object gridLectureCustLOCKER_NO: TcxGridDBColumn
            Caption = #46973#52964'No'
            DataBinding.FieldName = 'LOCKER_NO'
            Width = 54
          end
          object gridLectureCustNEW_OR_RENEW: TcxGridDBColumn
            Caption = #49888#44508'/'#51116
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
            HeaderAlignmentHorz = taCenter
            Width = 56
          end
          object gridLectureCustIS_DONE: TcxGridDBColumn
            Caption = #49345#53468
            DataBinding.FieldName = 'IS_DONE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #49688#44053
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #51333#47308
                Value = 1
              end
              item
                Description = #54872#48520
                Value = 2
              end
              item
                Description = #55092#44053
                Value = 3
              end>
            OnCustomDrawCell = gridLectureCustIS_DONECustomDrawCell
            HeaderAlignmentHorz = taCenter
            Width = 42
          end
          object gridLectureCustBREAK_START: TcxGridDBColumn
            Caption = #55092#44053#49884#51089
            DataBinding.FieldName = 'BREAK_START'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yy-mm-dd'
            Width = 63
          end
          object gridLectureCustBREAK_END: TcxGridDBColumn
            Caption = #55092#44053#51333#47308
            DataBinding.FieldName = 'BREAK_END'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yy-mm-dd'
            Width = 63
          end
          object gridLectureCustOUT_PRICE: TcxGridDBColumn
            Caption = #54872#48520#44552#50529
            DataBinding.FieldName = 'OUT_PRICE'
            Visible = False
          end
          object gridLectureCustOUT_KIND: TcxGridDBColumn
            Caption = #54872#48520#44396#48516
            DataBinding.FieldName = 'OUT_KIND'
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
            Visible = False
            Width = 59
          end
          object gridLectureCustOUT_DATE: TcxGridDBColumn
            Caption = #54872#48520#51068#51088
            DataBinding.FieldName = 'OUT_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DisplayFormat = 'yy-mm-dd'
            Visible = False
            Width = 63
          end
          object gridLectureCustLEC_DESC: TcxGridDBColumn
            Caption = #48708#44256#49324#54637
            DataBinding.FieldName = 'LEC_DESC'
            Visible = False
            Width = 309
          end
          object gridLectureCustOUT_REASON: TcxGridDBColumn
            Caption = #54872#48520#49324#50976
            DataBinding.FieldName = 'OUT_REASON'
            Visible = False
            Width = 172
          end
          object gridLectureCustSMS_YESNO: TcxGridDBColumn
            Caption = 'SMS'
            DataBinding.FieldName = 'SMS_YESNO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #49688#49888
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #44144#48512
                Value = 1
              end>
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
        end
        object G3L1: TcxGridLevel
          GridView = gridLectureCust
        end
      end
      object Panel1: TPanel
        Left = 778
        Top = 0
        Width = 400
        Height = 704
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Alignment = alTopCenter
          Caption = #48708#44256#49324#54637
          Style.LookAndFeel.SkinName = 'Black'
          StyleDisabled.LookAndFeel.SkinName = 'Black'
          StyleFocused.LookAndFeel.SkinName = 'Black'
          StyleHot.LookAndFeel.SkinName = 'Black'
          TabOrder = 0
          Height = 153
          Width = 400
          object Panel2: TPanel
            Left = 3
            Top = 15
            Width = 394
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object btnSaveChange: TButton
              Left = 319
              Top = 0
              Width = 75
              Height = 25
              Align = alRight
              Caption = #48320#44221#51200#51109
              TabOrder = 0
              OnClick = btnSaveChangeClick
            end
          end
          object Memo1: TMemo
            Left = 3
            Top = 40
            Width = 394
            Height = 103
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 1
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 544
          Align = alBottom
          Alignment = alTopCenter
          Caption = #55092#44053#54788#54889
          TabOrder = 1
          Height = 160
          Width = 400
          object cxGrid1: TcxGrid
            Left = 3
            Top = 15
            Width = 394
            Height = 135
            Align = alClient
            TabOrder = 0
            LookAndFeel.SkinName = 'Black'
            object gridBreak: TcxGridDBTableView
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
              DataController.DataSource = d_LESSON_CUSTOMER_BREAK_SEL
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsSelection.CellSelect = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object gridBreakID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object gridBreakLECTURE_ID: TcxGridDBColumn
                DataBinding.FieldName = 'LECTURE_ID'
                Visible = False
              end
              object gridBreakSTART_DATE: TcxGridDBColumn
                Caption = #49884#51089#51068
                DataBinding.FieldName = 'START_DATE'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yy-mm-dd'
                HeaderAlignmentHorz = taCenter
                Width = 66
              end
              object gridBreakEND_DATE: TcxGridDBColumn
                Caption = #51333#47308#51068
                DataBinding.FieldName = 'END_DATE'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yy-mm-dd'
                HeaderAlignmentHorz = taCenter
                Width = 77
              end
              object gridBreakREASONS: TcxGridDBColumn
                Caption = #49324#50976
                DataBinding.FieldName = 'REASONS'
                Width = 196
              end
              object gridBreakBREAK_STATUS: TcxGridDBColumn
                Caption = #49345#53468
                DataBinding.FieldName = 'BREAK_STATUS'
                HeaderAlignmentHorz = taCenter
                Width = 41
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = gridBreak
            end
          end
        end
        object cxGroupBox3: TcxGroupBox
          AlignWithMargins = True
          Left = 1
          Top = 328
          Margins.Left = 1
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          Align = alBottom
          Alignment = alTopCenter
          Caption = #44053#51032#46321#47197' '#54788#54889
          Style.LookAndFeel.SkinName = 'Black'
          Style.Shadow = False
          StyleDisabled.LookAndFeel.SkinName = 'Black'
          StyleFocused.LookAndFeel.SkinName = 'Black'
          StyleHot.LookAndFeel.SkinName = 'Black'
          TabOrder = 2
          Height = 216
          Width = 398
          object cxGrid4: TcxGrid
            Left = 3
            Top = 15
            Width = 392
            Height = 191
            Align = alClient
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Black'
            object gridCLRegist: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Visible = False
              Navigator.Buttons.Next.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Enabled = False
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
              DataController.DataSource = d_LESSON_CUSTOMER_SEL_BYUSER
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,0'
                  Kind = skSum
                  Column = gridCLRegistLEC_PRICE
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsSelection.HideFocusRectOnExit = False
              OptionsSelection.UnselectFocusedRecordOnExit = False
              OptionsView.ScrollBars = ssVertical
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object gridCLRegistID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object gridCLRegistREG_DATE: TcxGridDBColumn
                Caption = #46321#47197#51068#51088
                DataBinding.FieldName = 'REG_DATE'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yy-mm-dd'
                Width = 71
              end
              object gridCLRegistLEC_CODE: TcxGridDBColumn
                Caption = #44053#51032#47749
                DataBinding.FieldName = 'LEC_CODE'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'L_NAME'
                  end>
                Properties.ListSource = dmDBCommon.d_LESSON_SEL_LOOK
                Width = 98
              end
              object gridCLRegistMEMBER_UID: TcxGridDBColumn
                DataBinding.FieldName = 'MEMBER_UID'
                Visible = False
              end
              object gridCLRegistSTART_DATE: TcxGridDBColumn
                Caption = #49884#51089#51068#51088
                DataBinding.FieldName = 'START_DATE'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'yy-mm-dd'
                Width = 69
              end
              object gridCLRegistEND_DATE: TcxGridDBColumn
                DataBinding.FieldName = 'END_DATE'
                Visible = False
              end
              object gridCLRegistLEC_MONTH: TcxGridDBColumn
                Caption = #44060#50900
                DataBinding.FieldName = 'LEC_MONTH'
                Width = 34
              end
              object gridCLRegistPAY_KIND: TcxGridDBColumn
                Caption = #44208#51116
                DataBinding.FieldName = 'PAY_KIND'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
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
                HeaderAlignmentHorz = taCenter
                Width = 36
              end
              object gridCLRegistLEC_PRICE: TcxGridDBColumn
                Caption = #49688#44053#47308
                DataBinding.FieldName = 'LEC_PRICE'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.;-,0.'
                Properties.UseThousandSeparator = True
                HeaderAlignmentHorz = taCenter
                Width = 70
              end
              object gridCLRegistLEC_DESC: TcxGridDBColumn
                DataBinding.FieldName = 'LEC_DESC'
                Visible = False
              end
              object gridCLRegistCOMPANY_ID: TcxGridDBColumn
                DataBinding.FieldName = 'COMPANY_ID'
                Visible = False
              end
              object gridCLRegistIS_DONE: TcxGridDBColumn
                DataBinding.FieldName = 'IS_DONE'
                Visible = False
              end
              object gridCLRegistM_KIND: TcxGridDBColumn
                DataBinding.FieldName = 'M_KIND'
                Visible = False
              end
              object gridCLRegistLOCKER_NO: TcxGridDBColumn
                DataBinding.FieldName = 'LOCKER_NO'
                Visible = False
              end
              object gridCLRegistNEW_OR_RENEW: TcxGridDBColumn
                DataBinding.FieldName = 'NEW_OR_RENEW'
                Visible = False
              end
            end
            object G4L1: TcxGridLevel
              GridView = gridCLRegist
            end
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 153
          Align = alClient
          Alignment = alTopCenter
          Caption = #54924#50896#51060#47141#49324#54637
          Style.LookAndFeel.SkinName = 'Black'
          StyleDisabled.LookAndFeel.SkinName = 'Black'
          StyleFocused.LookAndFeel.SkinName = 'Black'
          StyleHot.LookAndFeel.SkinName = 'Black'
          TabOrder = 3
          Height = 175
          Width = 400
          object Panel5: TPanel
            Left = 3
            Top = 15
            Width = 394
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object btnAdd: TBitBtn
              Left = 21
              Top = 0
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
              Left = 85
              Top = 0
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
              Left = 149
              Top = 0
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
          object cxGrid2: TcxGrid
            Left = 3
            Top = 40
            Width = 394
            Height = 125
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
                Properties.DisplayFormat = 'yy-mm-dd'
                HeaderAlignmentHorz = taCenter
                Width = 70
              end
              object gridHistoryBIGO: TcxGridDBColumn
                Caption = #44592#47197#49324#54637
                DataBinding.FieldName = 'BIGO'
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 310
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = gridHistory
            end
          end
        end
      end
      object Panel4: TPanel
        Left = 1178
        Top = 0
        Width = 185
        Height = 704
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Alignment = alTopCenter
          Caption = #52636#49437#54788#54889
          Style.LookAndFeel.SkinName = 'Black'
          StyleDisabled.LookAndFeel.SkinName = 'Black'
          StyleFocused.LookAndFeel.SkinName = 'Black'
          StyleHot.LookAndFeel.SkinName = 'Black'
          TabOrder = 0
          Height = 704
          Width = 185
          object cxGrid5: TcxGrid
            Left = 3
            Top = 15
            Width = 179
            Height = 679
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
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              DataController.DataSource = d_LESSON_ATTENDANCE_SEL_LEC
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#, ('#51068')'
                  Kind = skCount
                  Column = gridAttendATT_DATE
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
              OptionsView.ScrollBars = ssVertical
              OptionsView.ColumnAutoWidth = True
              OptionsView.FooterAutoHeight = True
              OptionsView.GroupByBox = False
              OptionsView.GroupByHeaderLayout = ghlHorizontal
              OptionsView.Indicator = True
              object gridAttendID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object gridAttendATT_DATE: TcxGridDBColumn
                Caption = #52636#49437#51068#51088
                DataBinding.FieldName = 'ATT_DATE'
                HeaderAlignmentHorz = taCenter
                Width = 102
              end
              object gridAttendIN_TIME: TcxGridDBColumn
                Caption = #49884#44036
                DataBinding.FieldName = 'IN_TIME'
                HeaderAlignmentHorz = taCenter
                Width = 63
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = gridAttend
            end
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 1363
      Height = 27
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        AlignWithMargins = True
        Left = 47
        Top = 4
        Width = 30
        Height = 19
        Align = alLeft
        Caption = #51312#54924':'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 656
        Top = 4
        Width = 39
        Height = 19
        Align = alLeft
        Caption = #51333#47308#51068
        Layout = tlCenter
        ExplicitLeft = 711
        ExplicitHeight = 13
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 371
        Top = 4
        Width = 30
        Height = 19
        Align = alLeft
        Caption = #44160#49353':'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object btnView: TBitBtn
        AlignWithMargins = True
        Left = 269
        Top = 2
        Width = 35
        Height = 23
        Hint = #51312#54924
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000200000006000000090000000A0000000A0000
          000B0000000B0000000B0000000B0000000B0000000700000002000000000000
          000000000000000000000000000579462CBDA7613EFFA7623DFFA7623DFFA661
          3DFFA6623CFFA8613DFFA7623DFFA7613EFF78462BBF00000007000000090000
          000E0000000F0000000F00000017A96440FFCE8A5BFFCB8454FFC77F50FFC785
          59FFC37C4EFFC98151FFCB8354FFC98153FFA9643FFF0000000A7D5345C0A96E
          5CFFA86D5AFFA76B58FFBD9589FFAB6641FFCF8C62FFC67C4FFFCD9371FFFFEA
          E0FFF7DAD0FFC2764AFFC67E51FFCA8358FFAB6641FF0000000AB17865FFF9F3
          EFFFF8F1ECFFF8F1ECFFF3EDEAFFAE6844FFD19066FFC77F53FFCD9575FFFFEA
          E3FFF9E0D6FFC27B4EFFC98055FFCB885BFFAE6843FF0000000AB37C6BFFF9F5
          F0FFF5EFE9FFF6EEE8FFF2ECE8FFB16B45FFD2946CFFCB8458FFC37D51FFBF81
          59FFBC784FFFC68054FFCA8459FFCD8B5FFFB16B46FF00000009B78371FFFAF5
          F1FFC69F8FFFC69E90FFD3B9B0FFB36E49FFD79F79FFD19268FFC9895FFFE9CA
          BAFFDEB9A3FFC38258FFCE8C63FFD19169FFB36E48FF00000009BB8876FFFAF7
          F3FFF7F1ECFFF7F0ECFFF4EFECFFB6714BFFD9A784FFCD936AFFC2855DFFE4C6
          B4FFFFF0EDFFDFBEABFFC98F6BFFD59D76FFB6714BFF00000008BF8C7BFFFBF8
          F4FFC8A294FFC8A193FFD5BBB1FFBA7750FFD6A782FFE0BFA9FFE8CEC0FFC08B
          69FFFEF2EDFFFFF4EFFFE4C7B4FFD49D76FFB9744DFF00000008C29281FFFCF9
          F7FFF9F4F0FFF9F3F0FFF6F2F0FFC07F58FFD9AC89FFE5CAB9FFFFF7F2FFD0A9
          93FFFAECE7FFFFF4F1FFE7CBBDFFD6A27CFFC07F58FF00000007C59787FFFCF9
          F7FFCAA697FFC9A597FFD8BEB5FFC4845DFFE3BA98FFD09F79FFECD7CAFFFFF8
          F4FFFFF8F4FFE8CFC1FFCF9D78FFDDB18BFFC4845DFF00000006CA9C8CFFFCF9
          F9FFFAF6F4FFFBF6F3FFF8F5F3FFC78861FFE8C3A1FFDCAF86FFD6A47CFFCF9F
          77FFD09F77FFD7A57CFFDEB087FFE4BA93FFC68860FF00000006CDA293FFFDFB
          FAFFCCA89AFFCCA79AFFD9C2B9FFCA8C65FFEBC8A8FFEAC8A7FFE9C8A8FFE8C7
          A5FFE9C6A5FFEAC7A6FFEAC6A5FFEAC6A4FFCA8C65FF00000005D0A797FFFDFC
          FBFFFCF8F7FFFBF8F7FFFAF8F7FFD8A98CFFCE8F69FFCE8F69FFCC8F69FFCE8F
          69FFCC8F69FFCE8F69FFCC8F68FFCE8F69FF976A4EC000000003D3AB9CFFFEFC
          FBFFFEFCFBFFFEFCFBFFFEFDFCFFFDFCFBFFFCFBFAFFFBFAF9FFFAFAF8FFFAFA
          F9FFD0ACA1FF0000000E000000040000000400000003000000019F8277C2D5AE
          9FFFD3AC9CFFD2AA9AFFD1A898FFCFA695FFCEA293FFCCA191FFCA9E8DFFC99C
          8BFF947166C30000000700000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnViewClick
      end
      object btnAddCustLec: TBitBtn
        AlignWithMargins = True
        Left = 556
        Top = 2
        Width = 32
        Height = 23
        Hint = #46321#47197
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
          BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
          DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnAddCustLecClick
        ExplicitLeft = 611
      end
      object btnEditCustLec: TBitBtn
        AlignWithMargins = True
        Left = 588
        Top = 2
        Width = 32
        Height = 23
        Hint = #49688#51221
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnEditCustLecClick
        ExplicitLeft = 643
      end
      object btnDelLecMember: TBitBtn
        AlignWithMargins = True
        Left = 620
        Top = 2
        Width = 32
        Height = 23
        Hint = #49325#51228
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
          0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
          BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
          DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnDelLecMemberClick
        ExplicitLeft = 675
      end
      object s_date: TDateTimePicker
        AlignWithMargins = True
        Left = 82
        Top = 3
        Width = 93
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        Date = 41963.425637268520000000
        Time = 41963.425637268520000000
        ImeName = 'Microsoft IME 2010'
        TabOrder = 4
        OnChange = s_dateChange
      end
      object e_date: TDateTimePicker
        AlignWithMargins = True
        Left = 176
        Top = 3
        Width = 93
        Height = 21
        Margins.Left = 1
        Margins.Top = 2
        Margins.Right = 0
        Margins.Bottom = 2
        Align = alLeft
        Date = 41963.425637268520000000
        Time = 41963.425637268520000000
        ImeName = 'Microsoft IME 2010'
        TabOrder = 5
        OnChange = e_dateChange
      end
      object seLimit: TcxSpinEdit
        AlignWithMargins = True
        Left = 699
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Properties.Alignment.Horz = taCenter
        Properties.ImmediatePost = True
        Properties.MaxValue = 31.000000000000000000
        Properties.MinValue = 1.000000000000000000
        Properties.UseLeftAlignmentOnEditing = False
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 6
        Value = 5
        ExplicitLeft = 754
        Width = 42
      end
      object btnExcelActive: TBitBtn
        AlignWithMargins = True
        Left = 1080
        Top = 2
        Width = 29
        Height = 23
        Hint = #50641#49472#51200#51109
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF0000000000000000000000003C3C3CFF0000
          0000000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
          1E8000000000000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = btnExcelActiveClick
        ExplicitLeft = 1135
      end
      object btnLecture: TBitBtn
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 41
        Height = 23
        Hint = #44053#51340#44288#47532
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00002B2B2BB73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF000000000000000000000000000000003C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF00000000000000003C3C3CFF3C3C3CFF3C3C3CFF000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF00000000000000003C3C3CFF3C3C3CFF0B0B0B2F000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0B0B0B2F00000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
          000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          00003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF0000000000000000000000000000
          00002C2C2CBD3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF000000003C3C3CFF2C2C2CBD0000000000000000000000000000
          0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btnLectureClick
      end
      object btnOut: TBitBtn
        AlignWithMargins = True
        Left = 982
        Top = 2
        Width = 31
        Height = 23
        Hint = #54872#48520#52376#47532
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000A0000000F0000001000000010000000100000001100000011000000110000
          001100000011000000100000000B000000030000000000000000000000094633
          2CC160453BFF644A41FFB87D4EFFB97A4AFFB47444FFB06C3DFFA76436FFA764
          36FF583D36FF5B3E37FF3B2821C20000000A00000000000000000000000D6F53
          47FF947869FF6A4F46FFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
          6AFF5D413AFF684B41FF543931FF0000000E00000000000000000000000C7357
          4AFF987D6EFF70564BFFFFFFFFFFF6EFEAFFF6EFE9FFF6EEE9FFF5EEE9FFF6EE
          E8FF62473FFF715348FF573B33FF0000000F00000000000000000000000B785C
          4EFF9D8273FF765C50FFFFFFFFFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
          EAFF684E44FF72554BFF593E35FF0000000E00000000000000000000000A7C60
          50FFA28777FF7B6154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6E5349FF74574CFF5C4138FF0000000C0000000000000000000000097F63
          54FFA78E7DFF977A6AFF967969FF957967FF82685BFF6B5145FF6F564BFF6E55
          4BFF6E534AFF6D5249FF584035FF0000001C0000000C00000003000000088367
          57FFAB9382FF634A41FF614740FF5E463DFF584139FF3A2774FF33218EFF3320
          8DFF33208DFF331F8DFF331F8CFF2816A0FF1C1073C40000000B00000007866A
          59FFAF9788FF674E44FFF3EAE4FFE7D5C8FFD9C8BAFF3021A8FF2637D4FF1B2B
          D0FF1B2AD0FF1A29D0FF1A2ACFFF1929CFFF2D1DA5FF0000001000000006886D
          5CFFB39C8CFF6B5248FFF4ECE6FFE9D9CDFFDBCBBFFF372AAEFF3546D8FFF9F4
          EFFF5662DAFF5561D9FFF8F3EDFF2131D2FF3426AAFF00000010000000058B70
          5EFFB7A091FF70564DFFF6EFEAFFECDDD3FFDECFC5FF4035B4FF4557DEFF6E75
          D9FFFAF5F1FFF9F5F0FF6C74D9FF2B3CD6FF3C30B1FF0000000F000000048E72
          60FFBBA595FF755A50FFF7F1ECFFF6F0EBFFE9E3DEFF483EBBFF5566E2FF7781
          E2FFFBF7F4FFFAF7F3FF747FE0FF3748D9FF4439B7FF0000000D000000026A56
          49BF8F7361FF795E54FF765D52FF745A50FF6E554BFF5048C2FF6779E6FFFCFA
          F7FF7C84DEFF7B84DEFFFBF8F5FF4356DDFF4C43BEFF0000000C000000010000
          0002000000030000000300000003000000040000000C605DCBFF98ADF1FF899C
          E8FF8EA2EDFF899DECFF7D8EE4FF8397ECFF5953C6FF0000000A000000000000
          000000000000000000000000000000000000000000054C4B9AC26766D0FF6564
          D0FF6663D0FF6362CFFF6460CFFF625FCDFF474597C200000006000000000000
          0000000000000000000000000000000000000000000100000004000000060000
          0007000000070000000700000007000000070000000500000001}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = btnOutClick
        ExplicitLeft = 1037
      end
      object btnDelCancel: TBitBtn
        AlignWithMargins = True
        Left = 1015
        Top = 2
        Width = 32
        Height = 23
        Hint = #54872#48520#52712#49548
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E7E00000000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B
          2BB71A1A1A700707071D00000000000000000000000000000000000000003C3C
          3CFF1E1E1E7E0D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929B00D0D0D39000000000000000000000000000000003C3C
          3CFF3C3C3CFF333333D73C3C3CFF2D2D2DBF181818660707071F0707071F1818
          18662D2D2DBF3C3C3CFF292929B00707071D0000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF343434DF0C0C0C330000000000000000000000000000
          00000C0C0C332D2D2DBF3C3C3CFF1A1A1A700000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          00001A1A1A703C3C3CFF2D2D2DBF0C0C0C330000000000000000000000000000
          00000C0C0C33343434DF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
          00000707071D292929B03C3C3CFF2D2D2DBF181818660707071F0707071F1818
          18662D2D2DBF3C3C3CFF333333D73C3C3CFF3C3C3CFF00000000000000000000
          0000000000000D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF292929B00D0D0D391E1E1E7E3C3C3CFF00000000000000000000
          000000000000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B
          2BB71A1A1A700707071D00000000000000001E1E1E7E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = btnDelCancelClick
        ExplicitLeft = 1070
      end
      object btnCountDown: TBitBtn
        AlignWithMargins = True
        Left = 741
        Top = 2
        Width = 32
        Height = 23
        Hint = '1'#54924#52264#44048
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          04000000000000020000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F0FFFF000000FFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFF0
          00FFFFFF00FFFFFFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFFFFFFFFF000
          00FFFFFF00FFFFFFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFFFFFFFFFFFFFFF0
          00FFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF0000FFFFFFFFFFFFFFFFFFFFFF
          F0FFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = btnCountDownClick
        ExplicitLeft = 796
      end
      object btnCountUp: TBitBtn
        AlignWithMargins = True
        Left = 773
        Top = 2
        Width = 32
        Height = 23
        Hint = '1'#54924#52628#44032
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          04000000000000020000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FF0FFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFF
          00FFFF000FFFFFFFFFFFFFFFFFFFFFFF00FFFF0000FFFFFFFFFFFFFFFFFFFFFF
          00FFFF00000FFFFFFFFFFFFFFFFFFFFF00FFFF0000FFFFFFFFFFFFFFFFFFFFFF
          00FFFF000FFFFFFFFFFFFFFFFFFFFF0000FFFF00FFFFFFFFFFFFFFFFFFFFFFF0
          00FFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = btnCountUpClick
        ExplicitLeft = 828
      end
      object btnCustInfo: TBitBtn
        AlignWithMargins = True
        Left = 916
        Top = 2
        Width = 34
        Height = 23
        Hint = #51064#51201#49324#54637#51312#54924
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
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
        TabOrder = 13
        OnClick = btnCustInfoClick
        ExplicitLeft = 971
      end
      object btnFindEnder: TBitBtn
        AlignWithMargins = True
        Left = 805
        Top = 2
        Width = 37
        Height = 23
        Hint = #47564#44592#51088#51312#54924
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B19
          617D000000000000000000000000000000000B18627F00000000000000000000
          00000000000000000000000000000000000000000000000000000C1A65801733
          C5FF1733C5FF00000000000000001733C5FF1733C5FF0B18617E686868FF6868
          68FF686868FF686868FF686868FF686868FF686868FF31313179000000001733
          C5FF1733C5FF152FB5EA142DAEE11733C5FF1733C5FF00000000696969FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC5E5E5E5E0000
          0000142DACDF1733C5FF1733C5FF142CACDE0000000000000000696969FFFCFC
          FCFFFFFFFFFFFCFCFCFFFFFFFFFF95B763FFC7D7AAFFFCFCFCFC5D5D5D5E0000
          0000142DAFE21733C5FF1733C5FF152FB5EA0000000000000000696969FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF62951AFF548D02FF78787878000000001733
          C5FF1733C5FF142DACDF142DAEE11733C5FF1733C5FF00000000696969FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF80A841FF79A438FF494D44570C1A68841733
          C5FF1733C5FF00000000000000001733C5FF1733C5FF0B185F7B696969FFC4D6
          A8FFC6DAAAFFFAFDFAFFD6E3C1FF8BB154FFDAE7C9FF749A3EE92D2D2D2D0C1A
          6783000000003844265E4D51455E000000000C1A648000000000696969FF719D
          2DFF74A031FF85AB4AFFC0D3A1FF94B561FFFFFFFFFF528B01FFE2E3E1E92536
          0E5870736C797EA541FC64941DFC313131780000000000000000696969FFFFFF
          FFFFFFFFFFFF88B054FF548C05FFC8DAACFFFFFFFFFFA4C179FFA7C57EFF73A0
          30FFFFFFFFFFFFFFFFFFFFFFFFFF696969FF0000000000000000696969FFFCFC
          FCFFFFFFFFFFFAFAFAFF65971EFFFFFFFFFFFFFFFFFFE8EFDDFF609113FFAFC8
          89FFFFFFFFFFFFFFFFFFFCFCFCFF696969FF0000000000000000696969FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BA73FFFD5E2
          C0FFFFFFFFFFFFFFFFFFFFFFFFFF696969FF0000000000000000696969FFFCFC
          FCFFFFFFFFFFFCFCFCFFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFFD6E3C5FFFFFF
          FFFFFCFCFDFFFFFFFFFFFCFCFCFF696969FF0000000000000000B2783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000AA723BF2B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFAB733BF40000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnClick = btnFindEnderClick
        ExplicitLeft = 860
      end
      object btnReport: TBitBtn
        AlignWithMargins = True
        Left = 1049
        Top = 2
        Width = 29
        Height = 23
        Hint = #52636#47141
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000030000000C000000120000001400000014000000150000
          0015000000140000000D00000003000000000000000000000000000000000000
          00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
          78FFBE8978FF876356C30000000B000000000000000000000000000000030000
          000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
          E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
          42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
          72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
          6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
          76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
          71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
          35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
          78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
          DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
          7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
          32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
          86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
          42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
          8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
          DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
          84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
          E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
          2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
          E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
          0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
          E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
          00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
          EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
          00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
          FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
          000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
          91FFCDA391FF98786BC100000004000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = btnReportClick
        ExplicitLeft = 1104
      end
      object btnEndUpdate: TBitBtn
        AlignWithMargins = True
        Left = 1111
        Top = 2
        Width = 35
        Height = 23
        Hint = #51333#44053#51088#47308' '#44081#49888
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADAD7444447DADADDAD444444444DADAAD444DADAD444DADD744DADADAD4
          47DAA44DADA22DA744ADD44ADA2222DA44DAA44DAD2222AD44ADD44ADAD22ADA
          DADAA447ADADADAD44ADD744DA4ADADADADAAD444D44ADA47DADDAD444444ADA
          DADAADAD74444DADADADDADADA44DADADADAADADAD4DADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnClick = btnEndUpdateClick
        ExplicitLeft = 1166
      end
      object btnSMSSending: TBitBtn
        AlignWithMargins = True
        Left = 844
        Top = 2
        Width = 35
        Height = 23
        Hint = #47928#51088#51204#49569
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006596
          1EFA000100010000000000000000000000000000000000000000060402088357
          2CBDB1763CFFB1763CFFB1763CFFB0763CFC402A165B0000000067991FFF6799
          1FFF67991FFF00000000000000000000000000000000000000008D5E30CBB176
          3CFFB1763CFFB1763CFFE4D3C3FC5E5E5E5E0000000067991FFF67991FFF6799
          1FFF67991FFF67991FFF00000000000000000000000000000000B1763CFFB176
          3CFFB1763CFFB37A41FF837A70910000000067991FFF67991FFF67991FFF0000
          00005E8B1CE867991FFF67991FFF000000000000000000000000B1763CFFB176
          3CFFB1763CFFB37A41FF6E49259E0000000067991FFF67991FFF00000000150E
          071E0000000062921EF367991FFF67991FFF0000000000000000B0763CFEB176
          3CFFFEFDFDFFFEFDFDFFFDFDFDFE67676767000000000608020C48484848F6F5
          F5F7472F18660000000065951EF967991FFF67991FFF00000000B1763CFFB176
          3CFFFEFDFDFFFEFDFDFFFEFEFEFFFEFEFEFE8E8E8E8F7E7E7E7EF6F6F6F7FEFD
          FDFFB0763CFE442E17620000000066981FFD67991FFF65961EFAB1763CFFB176
          3CFFFEFDFDFFFEFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFD
          FDFFB1763CFFB1763DFD000000000000000067991FFF04050109B1763CFFB176
          3CFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
          3CFFFEFDFDFFFEFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFD
          FDFFB1763CFFB2773DFF00000000000000000000000000000000B2773DFFB277
          3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB2773DFFB2773DFF00000000000000000000000000000000B1763CFFB176
          3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
          3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
          3CFFB1763CFFB37A41FFB1763CFFB1763CFFB1763CFFB1763CFFB1763CFFB176
          3CFFB1763CFFB1763CFF000000000000000000000000000000008D5E30CBB176
          3CFFB1763CFFB1763CFFE7D6C5FFFFFFFFFFFFFFFFFFE7D6C5FFB1763CFFB176
          3CFFB1763CFF8B5D30C700000000000000000000000000000000060402088357
          2CBDB1763CFFB1763CFFB1763CFFB2773DFFB2773DFFB1763CFFB1763CFFB176
          3CFF80562CB90604020800000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnClick = btnSMSSendingClick
        ExplicitLeft = 899
      end
      object btnNoSMS: TBitBtn
        AlignWithMargins = True
        Left = 879
        Top = 2
        Width = 35
        Height = 23
        Hint = #49688#49888#44144#48512
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000608161C1C2A
          718D283B9EC6283B9EC61C2A718D0608161C000000000000000085592EBDB278
          3EFEB3783EFFB3783EFFB07337FF955F2ADA01010002111944552D43B5E2334C
          CCFF334CCCFF334CCCFF334CCCFF2D43B5E21119445500000000B3783EFFB378
          3EFFB3783EFFAD6D2FFFD2AF8DFF3C3A383E0608161C2D43B5E2334CCCFF334C
          CCFF334CCCFF334CCCFF334CCCFF334CCCFF2D43B5E20608161CB3783EFFB378
          3EFFB07236FFD6B99BFFDCDCDCDC0B0B0B0B1C2A718D334CCCFF334CCCFF334C
          CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF1C2A718DB3783EFFB378
          3EFFAD6D2FFFFFFFFFFFDCDCDCDC02010003283B9EC6334CCCFFADB8EAFFADB8
          EAFFADB8EAFFADB8EAFFADB8EAFFADB8EAFF334CCCFF283B9EC6B3783EFFB378
          3EFFAD6D2FFFFFFFFFFFDCDCDCDC00000000283B9EC6334CCCFFF4F6FCFFF4F6
          FCFFF4F6FCFFF4F6FCFFF4F6FCFFF4F6FCFF334CCCFF283B9EC6B3783EFFB378
          3EFFB07236FFD6B99BFFDCDCDCDC030303031C2A718D334CCCFF334CCCFF334C
          CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF1C2A718DB3783EFFB378
          3EFFB3783EFFAD6D2FFFD2AF8DFF363433380608161C2D43B5E2334CCCFF334C
          CCFF334CCCFF334CCCFF334CCCFF334CCCFF2D43B5E20608161CB3783EFFB378
          3EFFB3783EFFB3783EFFB07337FF96602ADC01000001111944552D43B5E2334C
          CCFF334CCCFF334CCCFF334CCCFF2D43B5E21119445500000000B3783EFFB479
          40FFB3783EFFB3783EFFB3783EFFB3783EFF724D28A3010000010608161C1C2A
          718D283B9EC6283B9EC61C2A718D0608161C0000000000000000B3783EFFB378
          3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D72F2F2F2F0202
          0202000000000100000100000000000000000000000000000000B3783EFFB378
          3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDC
          DCDC9A6835DC9A6835DC00000000000000000000000000000000B3783EFFB378
          3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB3783EFFB3783EFF01000001000000000000000000000000B3783EFFB378
          3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB3783EFFB3783EFF01000001000000000000000000000000B3783EFFB379
          3FFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFF0100000100000000000000000000000081572DB8AE75
          3CF8AE753CF8AE753CF8AE753CF8AE753CF8AE753CF8AE753CF8AE753CF8AE75
          3CF8AE753CF87E542CB300000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = btnNoSMSClick
        ExplicitLeft = 934
      end
      object btnBreak: TBitBtn
        AlignWithMargins = True
        Left = 951
        Top = 2
        Width = 29
        Height = 23
        Hint = #55092#44053#52376#47532
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009D632AE7AD6D
          2EFF9D632AE700000000000000009D632AE7AD6D2EFF9D632AE7000000000000
          000000000000424242A35F5F5FEA090909150000000001000001AD6D2EFFAD6D
          2EFFAD6D2EFF0100000101000001AD6D2EFFAD6D2EFFAD6D2EFF000000000000
          0000000000003C3C3C94666666FB484848B00202020501000001AD6D2EFFAD6D
          2EFFAD6D2EFF0100000101000001AD6D2EFFAD6D2EFFAD6D2EFF000000000000
          0000000000000000000016161634616161EE474747AF01000001AD6D2EFFAD6D
          2EFFAD6D2EFF0100000101000001AD6D2EFFAD6D2EFFAD6D2EFF000000007070
          70F0777777FF777777FF777777FF777777FF777777FE01010102AD6D2EFFAD6D
          2EFFAD6D2EFF0101010201000001AD6D2EFFAD6D2EFFAD6D2EFF020202057B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE02010102AD6D2EFFAD6D
          2EFFAD6D2EFF0201010201010102AD6D2EFFAD6D2EFFAD6D2EFF020202057B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFE02010102AD6D2EFFAD6D
          2EFFAD6D2EFF0201010201010102AD6D2EFFAD6D2EFFAD6D2EFF020202057B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFF85AD4BFFA2C177FF0C0C0B0D9B6229E5AD6D
          2EFF935C27D8101010100606060D9B6229E5AD6D2EFF935C27D8020202057B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFF85AD4BFF85AD4BFF4C622B910A0C080F0303
          030312121212A6A6A6A647474791000000000000000000000000020202057B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFF85AD4BFF85AD4BFF85AD4BFF85AD4BFF8BB1
          55FFF6F9F1FFFFFFFFFF7C7C7CFF030303070000000000000000020202057B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFF85AD4BFF85AD4BFF88AF4FFFB9D097FFF3F7
          EEFFFFFFFFFFFFFFFFFF7C7C7CFF0303030700000000000000000505050A7B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFF85AD4BFFB2CB8DFFEFF4E8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7C7C7CFF0707070E0000000000000000030202057B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7C7C7CFF040303070000000000000000A8713BF1B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFA5703AED0000000000000000B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFF0000000000000000AD743CF7B378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFAC733CF50000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnClick = btnBreakClick
        ExplicitLeft = 1006
      end
      object edtFind: TEdit
        AlignWithMargins = True
        Left = 405
        Top = 3
        Width = 94
        Height = 21
        Margins.Left = 1
        Margins.Top = 2
        Margins.Right = 1
        Margins.Bottom = 2
        Align = alLeft
        ImeMode = imSHanguel
        TabOrder = 20
      end
      object btnFilter: TcxButton
        Left = 500
        Top = 1
        Width = 28
        Height = 25
        Align = alLeft
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000D000000190000001A0000
          000E000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
          478D0000000E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
          A5FF000000190000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
          A3FF0000001B0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
          A2FF000000190000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
          A1FF0000001E0000000200000000000000000000000000000000000000000000
          00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
          A1FF081E3F8D0001021800000006000000010000000000000000000000000000
          000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
          C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
          0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
          CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
          000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
          D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
          34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
          D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
          7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
          DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
          B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
          FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
          C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
          C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
          455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
          FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
          000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
          A5DE286298D11D4872A410284164020509150000000400000001}
        TabOrder = 21
        OnClick = btnFilterClick
      end
      object btnFilterClear: TcxButton
        Left = 528
        Top = 1
        Width = 27
        Height = 25
        Align = alLeft
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000203110C50961910
          74DB0504172D000000000504172D181071DB100B4E9600000203000000000000
          000000000000000000040000000D0000001100000011120D55A1414FC0FF4762
          D6FF252390EE09062C5223238FEE415CD4FF3949BCFF110C539C000000000000
          0000000000000000000C3B73B7FF2C5CA8FF87A2CEFF312C99FF8596E1FF5B7C
          E6FF4F6DDEFF2F34A7FE4C6ADDFF5574E4FF7486DDFF1A1276DB000000000000
          0000000000000000000F255FA9FFC1E6F5FF9FD1EFFF7C92C6FF38369AEF8EA1
          E8FF5E7FE7FF5B7BE5FF5B7BE6FF8397E6FF312F93ED0504172A000000000000
          0000000000000000000E235CA7FFABE2F6FF5EB3E7FF86A4CDFF0B09305C4348
          B3FE83A0F1FF84A1F2FF829FF0FF4145B0FE0A082F5200000000000000000000
          0000000000010000000E225BA6FF8FD6F4FF96CCEEFF798EC3FF2F3191EF87A1
          EDFF97B2F6FFC1D0F8FF96B1F6FF859EECFF2D2E8EEE0403172D000000000000
          0001000000060B162549225AA6FF77CAEEFF90C9ECFF3333A9FFA8B7EFFFA4BC
          F8FFCAD3F5FF6261BBFEC7D1F4FFA2BBF8FFA6B5EEFF1F1A88E1000000010000
          000611233A633C75B7FB67A5D8FF7FC9EBFF94D1EDFF525FBEFF9C9CDAFFD6D9
          F3FF4744AAEF0C0B34534542A8EED1D5F1FF9597D6FF1613649F000000041123
          395E4885C3FF84CBEEFFC3EAF9FF8EDAF2FF81D0EEFF9DC7E9FF5867C5FF3738
          B3FF343F67910000000507061E2D221F92DE1614609300000203020406133468
          A5E882C8EBFFBAE9F9FFE2F7FDFF90DEF5FF4BC0E8FF79B7E4FF8AB2E0FF90BB
          E4FF809FC6F10305071500000001000000000000000000000000162C456A5797
          CEFF99E1F7FFDFF7FDFFF5FCFFFF8BDFF5FF4DC5EAFF4CA6DEFF2D74C6FF337E
          CCFF4083C6FF1428436C00000004000000000000000000000000284F7DB284C2
          E6FFC3EDFAFFE6F7FDFFE2F5FCFFDFF6FCFFDEF6FCFFD7F5FBFFB7DCF2FF8FC0
          E7FF5EA6DCFF254979B3000000060000000000000000000000003975B3F4D5EF
          FAFF9BB8DDFF648AC7FF1348A7FF114AA9FF144FADFF1856B1FF6698D1FF99C2
          E5FFC5ECF9FF3468AAEF000000060000000000000000000000001A3450735A91
          C5F9AAD2EBFFCEEAF7FFDCF1FAFFE2F5FBFFE0F5FBFFD6F2FBFFC2E7F6FF9CCC
          EAFF538CC2F918314D740000000300000000000000000000000000000003070D
          14211D3B597E2D5C8BBE32669BD53D7BBDFF3D7ABCFF31639AD52B5888BF1C38
          587F070E16250000000300000001000000000000000000000000}
        TabOrder = 22
        OnClick = btnFilterClearClick
      end
      object icbCenter: TcxImageComboBox
        AlignWithMargins = True
        Left = 306
        Top = 2
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        Properties.Items = <>
        Properties.OnCloseUp = icbCenterPropertiesCloseUp
        TabOrder = 23
        Width = 61
      end
    end
  end
  object LESSON_CUSTOMER_INS: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MEMBER_UID'
        ParamType = ptInput
        Size = 17
      end
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
        DataType = ftSmallint
        Name = 'LEC_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'M_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'NEW_OR_RENEW'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LEC_DESC'
        ParamType = ptInput
        Size = 1024
      end
      item
        DataType = ftFloat
        Name = 'LEC_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CENTER_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_INS'
  end
  object LESSON_CUSTOMER_UPD: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
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
        DataType = ftSmallint
        Name = 'LEC_MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'M_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'NEW_OR_RENEW'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LEC_DESC'
        ParamType = ptInput
        Size = 1024
      end
      item
        DataType = ftFloat
        Name = 'LEC_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CENTER_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_UPD'
  end
  object LESSON_CUSTOMER_DEL: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_DEL'
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid3
    PopupMenus = <>
    Left = 896
    Top = 504
  end
  object LESSON_CUSTOMER_END_UPD: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_END_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 264
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
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_END_UPD'
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 488
    Top = 144
    PixelsPerInch = 96
    object cxStyleRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clRed
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyleDefault: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
    end
    object cxStyleGreen: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
    end
    object cxStyleGreenRed: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyleGreenBlue: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clBlue
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
    end
    object cxStyleYellowRed: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object cxStyleYellowBlue: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clBlue
    end
  end
  object UniAlerter1: TUniAlerter
    Connection = dmDBCommon.UniDBConnection
    Events = 'LESSON_CUSTOMER_AIUD0'
    Active = True
    OnEvent = UniAlerter1Event
    Left = 128
    Top = 376
  end
  object GET_CASH_INOUT_LESSONID: TUniStoredProc
    StoredProcName = 'GET_CASH_INOUT_LESSONID'
    Connection = dmDBCommon.UniDBConnection
    Left = 696
    Top = 264
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LESSON_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftFixedChar
        Name = 'CASH_INOUT_ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'GET_CASH_INOUT_LESSONID'
    object GET_CASH_INOUT_LESSONIDCASH_INOUT_ID: TStringField
      FieldName = 'CASH_INOUT_ID'
      FixedChar = True
      Size = 17
    end
  end
  object d_GET_CASH_INOUT_LESSONID: TUniDataSource
    DataSet = GET_CASH_INOUT_LESSONID
    Left = 696
    Top = 312
  end
  object LOCKER_DATA_UPD_BYUSER: TUniStoredProc
    StoredProcName = 'LOCKER_DATA_UPD_BYUSER'
    Connection = dmDBCommon.UniDBConnection
    Left = 272
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'LOCKER_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'LOCKER_USER'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'LOCKER_DATA_UPD_BYUSER'
  end
  object CUSTOMER_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 272
    Top = 272
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
        Name = 'CAGE'
        ParamType = ptInput
        Size = 3
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
        Name = 'HOBBY'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BLOOD'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BLOOD_PRESSURE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BODY_STATUS'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'FOOD_KIND'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_MUCH'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_OFTEN'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME_ETC'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_ETC'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_DESC'
        ParamType = ptInput
        Size = 255
      end>
    CommandStoredProcName = 'CUSTOMER_UPD'
  end
  object LESSON_CUSTOMER_UPD_CANCEL: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_UPD_CANCEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OUT_DATE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'OUT_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'OUT_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OUT_REASON'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_UPD_CANCEL'
  end
  object CASH_INOUT_DEL_BY_LESSON_DATE: TUniStoredProc
    StoredProcName = 'CASH_INOUT_DEL_BY_LESSON_DATE'
    Connection = dmDBCommon.UniDBConnection
    Left = 272
    Top = 416
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LESSON_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CASH_INOUT_DEL_BY_LESSON_DATE'
  end
  object LESSON_CUSTOMER_UPD_BYID: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_UPD_BYID'
    Connection = dmDBCommon.UniDBConnection
    Left = 696
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'CURRENT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'UPDOWN_KIND'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_UPD_BYID'
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 816
    Top = 560
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid3
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 44137.926735150460000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      BuiltInReportLink = True
    end
  end
  object LESSON_CUSTOMER_UPD_BREAK: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_UPD_BREAK'
    Connection = dmDBCommon.UniDBConnection
    Left = 696
    Top = 440
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'BREAK_START'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'BREAK_END'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_DONE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_UPD_BREAK'
  end
  object LESSON_CUSTOMER_BREAKDONE: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_BREAKDONE'
    Connection = dmDBCommon.UniDBConnection
    Left = 696
    Top = 488
    ParamData = <
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_BREAKDONE'
  end
  object LESSON_CUSTOMER_END_UPD2: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_END_UPD2'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ISDONE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_END_UPD2'
  end
  object LESSON_CUSTOMER_UPD_ENDSTATUS: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_UPD_ENDSTATUS'
    Connection = dmDBCommon.UniDBConnection
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 272
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'S_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'EDATE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_UPD_ENDSTATUS'
  end
  object LESSON_CUSTOMER_BREAK_SEL: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_BREAK_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 992
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'L_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LECTURE_ID'
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
        DataType = ftString
        Name = 'REASONS'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'BREAK_STATUS'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_BREAK_SEL'
    object LESSON_CUSTOMER_BREAK_SELID: TIntegerField
      FieldName = 'ID'
    end
    object LESSON_CUSTOMER_BREAK_SELLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object LESSON_CUSTOMER_BREAK_SELSTART_DATE: TDateField
      Alignment = taCenter
      FieldName = 'START_DATE'
    end
    object LESSON_CUSTOMER_BREAK_SELEND_DATE: TDateField
      Alignment = taCenter
      FieldName = 'END_DATE'
    end
    object LESSON_CUSTOMER_BREAK_SELREASONS: TStringField
      FieldName = 'REASONS'
      Size = 30
    end
    object LESSON_CUSTOMER_BREAK_SELBREAK_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'BREAK_STATUS'
    end
  end
  object d_LESSON_CUSTOMER_BREAK_SEL: TDataSource
    DataSet = LESSON_CUSTOMER_BREAK_SEL
    Left = 992
    Top = 416
  end
  object LESSON_CUSTOMER_SEL_BYUSER: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_SEL_BYUSER'
    Connection = dmDBCommon.UniDBConnection
    Left = 488
    Top = 552
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'USER_UID'
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
        DataType = ftDate
        Name = 'REG_DATE'
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
        DataType = ftFloat
        Name = 'LEC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_DESC'
        ParamType = ptOutput
        Size = 1024
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
        DataType = ftSmallint
        Name = 'PAY_KIND'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_SEL_BYUSER'
    object LESSON_CUSTOMER_SEL_BYUSERID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERMEMBER_UID: TStringField
      FieldName = 'MEMBER_UID'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object LESSON_CUSTOMER_SEL_BYUSEREND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'LEC_MONTH'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_PRICE: TFloatField
      FieldName = 'LEC_PRICE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_DESC: TStringField
      FieldName = 'LEC_DESC'
      Size = 50
    end
    object LESSON_CUSTOMER_SEL_BYUSERCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERIS_DONE: TSmallintField
      FieldName = 'IS_DONE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERM_KIND: TSmallintField
      FieldName = 'M_KIND'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLOCKER_NO: TStringField
      FieldName = 'LOCKER_NO'
      Size = 10
    end
    object LESSON_CUSTOMER_SEL_BYUSERNEW_OR_RENEW: TSmallintField
      FieldName = 'NEW_OR_RENEW'
    end
    object LESSON_CUSTOMER_SEL_BYUSERPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
    end
  end
  object d_LESSON_CUSTOMER_SEL_BYUSER: TDataSource
    DataSet = LESSON_CUSTOMER_SEL_BYUSER
    Left = 488
    Top = 600
  end
  object UniQuery1: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'update lesson_customer set lec_desc = :l_desc'
      'where id = :l_id;')
    Left = 1008
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'l_desc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'l_id'
        ParamType = ptInput
      end>
  end
  object CUSTOMER_HISTORY_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_HISTORY_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 816
    Top = 120
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
    Left = 816
    Top = 168
  end
  object CUSTOMER_HISTORY_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_HISTORY_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 816
    Top = 240
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
    Left = 816
    Top = 288
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
    Left = 816
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_HISTORY_DEL'
  end
  object LESSON_ATTENDANCE_SEL_LEC: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_SEL_LEC'
    Connection = dmDBCommon.UniDBConnection
    Left = 1208
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'M_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'SDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'EDATE'
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
    CommandStoredProcName = 'LESSON_ATTENDANCE_SEL_LEC'
    object LESSON_ATTENDANCE_SEL_LECID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_ATTENDANCE_SEL_LECATT_DATE: TDateField
      Alignment = taCenter
      FieldName = 'ATT_DATE'
    end
    object LESSON_ATTENDANCE_SEL_LECLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_ATTENDANCE_SEL_LECIN_TIME: TStringField
      Alignment = taCenter
      FieldName = 'IN_TIME'
      Size = 5
    end
  end
  object d_LESSON_ATTENDANCE_SEL_LEC: TDataSource
    DataSet = LESSON_ATTENDANCE_SEL_LEC
    Left = 1208
    Top = 552
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = cxGrid3
    PopupMenus = <>
    Left = 288
    Top = 600
  end
end
