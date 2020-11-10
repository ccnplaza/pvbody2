object fmUserManager: TfmUserManager
  Left = 0
  Top = 0
  Caption = #49324#50857#51088#44288#47532
  ClientHeight = 639
  ClientWidth = 982
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 639
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 0
      Top = 306
      Width = 982
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 0
      ExplicitWidth = 472
    end
    object Panel3: TPanel
      Left = 0
      Top = 309
      Width = 982
      Height = 139
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 982
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btnDeleteUser: TBitBtn
          Left = 177
          Top = 2
          Width = 65
          Height = 25
          Caption = #49325#51228
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
            0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
            BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
            DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = btnDeleteUserClick
        end
        object btnEditUser: TBitBtn
          Left = 113
          Top = 2
          Width = 65
          Height = 25
          Caption = #49688#51221
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
            0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
            BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
            DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btnEditUserClick
        end
        object btnAddUser: TBitBtn
          Left = 49
          Top = 2
          Width = 65
          Height = 25
          Caption = #46321#47197
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
            0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
            BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
            DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = btnAddUserClick
        end
        object btnChangeApproved: TBitBtn
          Left = 490
          Top = 2
          Width = 97
          Height = 25
          Caption = #49324#50857#49849#51064#48320#44221
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btnChangeApprovedClick
        end
        object btnChangeUser: TBitBtn
          Left = 587
          Top = 2
          Width = 104
          Height = 25
          Caption = #49324#50857#51088#48320#44221
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = btnChangeUserClick
        end
        object btnChangeAnalyzer: TBitBtn
          Left = 691
          Top = 2
          Width = 103
          Height = 25
          Caption = #48516#49437#44032' '#51648#51221
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 5
          OnClick = btnChangeAnalyzerClick
        end
        object btnActivateUser: TBitBtn
          Left = 270
          Top = 2
          Width = 118
          Height = 25
          Caption = 'Activation'
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
            DADAADADAD00ADADADADDADAD0E00000DADAADAD0EEEEEE0ADADDAD70EEEEEE0
            DADAAD04C0E00000ADADD0CCC200C40ADADA74CCC2202C470DAD7CCCC22226C7
            00DA7CC2222200000E0D7C2222240EEEEEE07C8224220EEEEEE077CF8CCC0000
            0E0AA7F8F222220D00ADDA77682220DA0ADAADA777777DADADAD}
          ParentDoubleBuffered = False
          TabOrder = 6
          OnClick = btnActivateUserClick
        end
        object btnChangeUserPay: TBitBtn
          Left = 388
          Top = 2
          Width = 102
          Height = 25
          Caption = #44208#51116#48169#49885#48320#44221
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 7
          OnClick = btnChangeUserPayClick
        end
        object btnPayIn: TBitBtn
          Left = 797
          Top = 2
          Width = 75
          Height = 25
          Caption = 'PAY'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 8
          OnClick = btnPayInClick
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 29
        Width = 982
        Height = 110
        Align = alClient
        BevelKind = bkFlat
        TabOrder = 1
        LookAndFeel.SkinName = 'Black'
        object cxGridDBTableView1: TcxGridDBTableView
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
          OnCellClick = cxGridDBTableView1CellClick
          DataController.DataSource = d_login_user
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGridDBTableView1REG_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'REG_DATE'
            Width = 88
          end
          object cxGridDBTableView1USER_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'USER_NAME'
            Width = 85
          end
          object cxGridDBTableView1LOGIN_ID: TcxGridDBColumn
            DataBinding.FieldName = 'LOGIN_ID'
            Width = 85
          end
          object cxGridDBTableView1USER_KIND: TcxGridDBColumn
            DataBinding.FieldName = 'USER_KIND'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #49324#50857#51088
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #44288#47532#51088
                Value = 1
              end
              item
                Description = #49884#49828#53596
                Value = 2
              end>
            Width = 81
          end
          object cxGridDBTableView1APPROVED: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVED'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #48708#49849#51064
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #49849#51064
                Value = 1
              end>
            Width = 63
          end
          object cxGridDBTableView1LOGIN_PASS: TcxGridDBColumn
            DataBinding.FieldName = 'LOGIN_PASS'
            Visible = False
          end
          object cxGridDBTableView1LOGIN_PASS2: TcxGridDBColumn
            DataBinding.FieldName = 'LOGIN_PASS2'
            Visible = False
          end
          object cxGridDBTableView1COMP_ID: TcxGridDBColumn
            DataBinding.FieldName = 'COMP_ID'
            Visible = False
          end
          object cxGridDBTableView1IS_ANALYZER: TcxGridDBColumn
            Caption = #48516#49437#44032
            DataBinding.FieldName = 'IS_ANALYZER'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #48516#49437#44032
                Value = 1
              end>
            Width = 63
          end
          object cxGridDBTableView1EMAIL: TcxGridDBColumn
            Caption = #51060#47700#51068
            DataBinding.FieldName = 'EMAIL'
            Width = 164
          end
          object cxGridDBTableView1REMARK: TcxGridDBColumn
            Caption = #48708#44256
            DataBinding.FieldName = 'REMARK'
            Visible = False
            Width = 250
          end
          object cxGridDBTableView1CONFIRMED: TcxGridDBColumn
            DataBinding.FieldName = 'CONFIRMED'
            Visible = False
          end
          object cxGridDBTableView1PAY_WAY: TcxGridDBColumn
            Caption = #44208#51116#48169#49885
            DataBinding.FieldName = 'PAY_WAY'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Items = <
              item
                Description = #44396#47588
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #54624#48512
                Value = 1
              end>
          end
          object cxGridDBTableView1SYSTEM_SERIAL: TcxGridDBColumn
            Caption = #54616#46300#50920#50612' '#49884#47532#50620
            DataBinding.FieldName = 'SYSTEM_SERIAL'
            Width = 165
          end
          object cxGridDBTableView1ACTIVATION_CODE: TcxGridDBColumn
            DataBinding.FieldName = 'ACTIVATION_CODE'
            Visible = False
            Width = 228
          end
          object cxGridDBTableView1ACTIVATION_DATE: TcxGridDBColumn
            Caption = #52572#51333#47196#44536#51064
            DataBinding.FieldName = 'ACTIVATION_DATE'
            Width = 155
          end
          object cxGridDBTableView1ACTIVATION_CNT: TcxGridDBColumn
            Caption = #54943#49688
            DataBinding.FieldName = 'ACTIVATION_CNT'
            Width = 55
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object pnlMessage: TPanel
        Left = 388
        Top = 57
        Width = 185
        Height = 50
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        object Label4: TLabel
          Left = 22
          Top = 11
          Width = 146
          Height = 26
          Caption = #47700#51068#51012' '#48372#45236#44256' '#51080#49845#45768#45796'. '#51104#49884#47564' '#44592#45796#47140' '#51452#49464#50836'.'
          WordWrap = True
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 982
      Height = 306
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 982
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btnEdit: TBitBtn
          Left = 113
          Top = 1
          Width = 65
          Height = 25
          Caption = #49688#51221
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
            0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
            BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
            DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = btnEditClick
        end
        object btnDel: TBitBtn
          Left = 177
          Top = 1
          Width = 65
          Height = 25
          Caption = #49325#51228
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
            0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
            BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
            DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btnDelClick
        end
        object btnAddComp: TBitBtn
          Left = 49
          Top = 1
          Width = 65
          Height = 25
          Caption = #46321#47197
          DoubleBuffered = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
            0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
            BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
            DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = btnAddCompClick
        end
        object btnCompApprove: TBitBtn
          Left = 381
          Top = 1
          Width = 97
          Height = 25
          Caption = #49324#50857#49849#51064#48320#44221
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btnCompApproveClick
        end
        object btnChangePayway: TBitBtn
          Left = 478
          Top = 1
          Width = 95
          Height = 25
          Caption = #44208#51116#48169#49885#48320#44221
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = btnChangePaywayClick
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 27
        Width = 982
        Height = 279
        Align = alClient
        BevelKind = bkFlat
        TabOrder = 1
        LookAndFeel.SkinName = 'Black'
        object cxGridDBTableView2: TcxGridDBTableView
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
          OnCellClick = cxGridDBTableView2CellClick
          OnCellDblClick = cxGridDBTableView2CellDblClick
          DataController.DataSource = d_company_general
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridDBTableView2COMP_ID: TcxGridDBColumn
            DataBinding.FieldName = 'COMP_ID'
            Visible = False
          end
          object cxGridDBTableView2REG_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'REG_DATE'
            Width = 83
          end
          object cxGridDBTableView2COMP_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'COMP_NAME'
            Width = 137
          end
          object cxGridDBTableView2CHIEF_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'CHIEF_NAME'
            Width = 76
          end
          object cxGridDBTableView2COMP_KIND: TcxGridDBColumn
            DataBinding.FieldName = 'COMP_KIND'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #50836#44032
                ImageIndex = 0
                Value = 1
              end
              item
                Description = #53468#44428#46020
                Value = 2
              end
              item
                Description = #54764#49828
                Value = 3
              end
              item
                Description = #44592#53440
                Value = 4
              end>
            Width = 63
          end
          object cxGridDBTableView2APPROVED: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVED'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #48708#49849#51064
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #49849#51064
                Value = 1
              end>
            Width = 61
          end
          object cxGridDBTableView2PAY_WAY: TcxGridDBColumn
            Caption = #44208#51116#48169#49885
            DataBinding.FieldName = 'PAY_WAY'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = #44396#47588
                ImageIndex = 0
                Value = 0
              end
              item
                Description = #54624#48512
                Value = 1
              end>
            Width = 60
          end
          object cxGridDBTableView2BUS_ID: TcxGridDBColumn
            DataBinding.FieldName = 'BUS_ID'
            Width = 116
          end
          object cxGridDBTableView2TEL_NO: TcxGridDBColumn
            DataBinding.FieldName = 'TEL_NO'
            Width = 115
          end
          object cxGridDBTableView2FAX_NO: TcxGridDBColumn
            DataBinding.FieldName = 'FAX_NO'
            Width = 150
          end
          object cxGridDBTableView2ADDR: TcxGridDBColumn
            DataBinding.FieldName = 'ADDR'
            Width = 243
          end
          object cxGridDBTableView2LOCATION_AREA: TcxGridDBColumn
            DataBinding.FieldName = 'LOCATION_AREA'
            Width = 81
          end
          object cxGridDBTableView2BANK_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'BANK_NAME'
            Width = 128
          end
          object cxGridDBTableView2BANK_NO: TcxGridDBColumn
            DataBinding.FieldName = 'BANK_NO'
            Width = 138
          end
          object cxGridDBTableView2BANK_OWNER: TcxGridDBColumn
            DataBinding.FieldName = 'BANK_OWNER'
            Width = 76
          end
          object cxGridDBTableView2REMARK: TcxGridDBColumn
            DataBinding.FieldName = 'REMARK'
            Visible = False
            Width = 327
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 448
      Width = 982
      Height = 191
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 982
        Height = 191
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object cxGrid1DBTableView1: TcxGridDBTableView
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
          DataController.DataSource = d_payment
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGrid1DBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object cxGrid1DBTableView1COMPANY_ID: TcxGridDBColumn
            DataBinding.FieldName = 'COMPANY_ID'
            Visible = False
          end
          object cxGrid1DBTableView1PAY_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'PAY_DATE'
            Width = 89
          end
          object cxGrid1DBTableView1PAY_MONTH: TcxGridDBColumn
            DataBinding.FieldName = 'PAY_MONTH'
            Width = 71
          end
          object cxGrid1DBTableView1PAY_AMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'PAY_AMOUNT'
            Width = 87
          end
          object cxGrid1DBTableView1BIGO: TcxGridDBColumn
            DataBinding.FieldName = 'BIGO'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object q_login_user: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY'
      
        '  (ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KIND, ' +
        'APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_ANALYZ' +
        'ER, PAY_WAY, SYSTEM_SERIAL, ACTIVATION_CODE, ACTIVATION_DATE, AC' +
        'TIVATION_CNT)'
      'VALUES'
      
        '  (:ID, :USER_NAME, :LOGIN_ID, :LOGIN_PASS, :LOGIN_PASS2, :USER_' +
        'KIND, :APPROVED, :REG_DATE, :COMP_ID, :REMARK, :EMAIL, :CONFIRME' +
        'D, :IS_ANALYZER, :PAY_WAY, :SYSTEM_SERIAL, :ACTIVATION_CODE, :AC' +
        'TIVATION_DATE, :ACTIVATION_CNT)')
    SQLDelete.Strings = (
      'DELETE FROM COMPANY'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE COMPANY'
      'SET'
      
        '  ID = :ID, USER_NAME = :USER_NAME, LOGIN_ID = :LOGIN_ID, LOGIN_' +
        'PASS = :LOGIN_PASS, LOGIN_PASS2 = :LOGIN_PASS2, USER_KIND = :USE' +
        'R_KIND, APPROVED = :APPROVED, REG_DATE = :REG_DATE, COMP_ID = :C' +
        'OMP_ID, REMARK = :REMARK, EMAIL = :EMAIL, CONFIRMED = :CONFIRMED' +
        ', IS_ANALYZER = :IS_ANALYZER, PAY_WAY = :PAY_WAY, SYSTEM_SERIAL ' +
        '= :SYSTEM_SERIAL, ACTIVATION_CODE = :ACTIVATION_CODE, ACTIVATION' +
        '_DATE = :ACTIVATION_DATE, ACTIVATION_CNT = :ACTIVATION_CNT'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KI' +
        'ND, APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_AN' +
        'ALYZER, PAY_WAY, SYSTEM_SERIAL, ACTIVATION_CODE, ACTIVATION_DATE' +
        ', ACTIVATION_CNT FROM COMPANY'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from company'
      'where comp_id = :comp_id')
    Left = 88
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'comp_id'
        ParamType = ptInput
      end>
    object q_login_userID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_login_userUSER_NAME: TStringField
      DisplayLabel = #49457#47749
      FieldName = 'USER_NAME'
      Size = 10
    end
    object q_login_userLOGIN_ID: TStringField
      DisplayLabel = #47196#44536#51064'ID'
      FieldName = 'LOGIN_ID'
      Size = 10
    end
    object q_login_userLOGIN_PASS: TStringField
      DisplayLabel = #48708#48128#48264#54840
      FieldName = 'LOGIN_PASS'
      Size = 10
    end
    object q_login_userLOGIN_PASS2: TStringField
      DisplayLabel = #48708#48128#48264#54840'2'
      FieldName = 'LOGIN_PASS2'
      Size = 10
    end
    object q_login_userUSER_KIND: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49324#50857#51088#44396#48516
      FieldName = 'USER_KIND'
    end
    object q_login_userAPPROVED: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49324#50857#44428#54620
      FieldName = 'APPROVED'
    end
    object q_login_userREG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'REG_DATE'
    end
    object q_login_userCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Size = 17
    end
    object q_login_userREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object q_login_userEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object q_login_userCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
    object q_login_userIS_ANALYZER: TSmallintField
      FieldName = 'IS_ANALYZER'
    end
    object q_login_userPAY_WAY: TSmallintField
      FieldName = 'PAY_WAY'
    end
    object q_login_userSYSTEM_SERIAL: TStringField
      FieldName = 'SYSTEM_SERIAL'
      Size = 50
    end
    object q_login_userACTIVATION_CODE: TStringField
      FieldName = 'ACTIVATION_CODE'
      Size = 50
    end
    object q_login_userACTIVATION_CNT: TSmallintField
      FieldName = 'ACTIVATION_CNT'
    end
    object q_login_userACTIVATION_DATE: TDateTimeField
      FieldName = 'ACTIVATION_DATE'
    end
  end
  object d_login_user: TDataSource
    DataSet = q_login_user
    Left = 160
    Top = 368
  end
  object q_company_general: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY_GENARAL'
      
        '  (COMP_ID, CHIEF_NAME, TEL_NO, FAX_NO, ADDR, LOCATION_AREA, BUS' +
        '_ID, BANK_NAME, BANK_NO, BANK_OWNER, REMARK, COMP_KIND, COMP_NAM' +
        'E, APPROVED, REG_DATE, CONFIRMED, PAY_WAY)'
      'VALUES'
      
        '  (:COMP_ID, :CHIEF_NAME, :TEL_NO, :FAX_NO, :ADDR, :LOCATION_ARE' +
        'A, :BUS_ID, :BANK_NAME, :BANK_NO, :BANK_OWNER, :REMARK, :COMP_KI' +
        'ND, :COMP_NAME, :APPROVED, :REG_DATE, :CONFIRMED, :PAY_WAY)')
    SQLDelete.Strings = (
      'DELETE FROM COMPANY_GENARAL'
      'WHERE'
      '  COMP_ID = :Old_COMP_ID')
    SQLUpdate.Strings = (
      'UPDATE COMPANY_GENARAL'
      'SET'
      
        '  COMP_ID = :COMP_ID, CHIEF_NAME = :CHIEF_NAME, TEL_NO = :TEL_NO' +
        ', FAX_NO = :FAX_NO, ADDR = :ADDR, LOCATION_AREA = :LOCATION_AREA' +
        ', BUS_ID = :BUS_ID, BANK_NAME = :BANK_NAME, BANK_NO = :BANK_NO, ' +
        'BANK_OWNER = :BANK_OWNER, REMARK = :REMARK, COMP_KIND = :COMP_KI' +
        'ND, COMP_NAME = :COMP_NAME, APPROVED = :APPROVED, REG_DATE = :RE' +
        'G_DATE, CONFIRMED = :CONFIRMED, PAY_WAY = :PAY_WAY'
      'WHERE'
      '  COMP_ID = :Old_COMP_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY_GENARAL'
      'WHERE'
      'COMP_ID = :Old_COMP_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT COMP_ID, CHIEF_NAME, TEL_NO, FAX_NO, ADDR, LOCATION_AREA,' +
        ' BUS_ID, BANK_NAME, BANK_NO, BANK_OWNER, REMARK, COMP_KIND, COMP' +
        '_NAME, APPROVED, REG_DATE, CONFIRMED, PAY_WAY FROM COMPANY_GENAR' +
        'AL'
      'WHERE'
      '  COMP_ID = :COMP_ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from COMPANY_GENARAL')
    Left = 80
    Top = 112
    object q_company_generalCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object q_company_generalCHIEF_NAME: TStringField
      DisplayLabel = #45824#54364#51088#47749
      FieldName = 'CHIEF_NAME'
    end
    object q_company_generalTEL_NO: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'TEL_NO'
      Size = 50
    end
    object q_company_generalFAX_NO: TStringField
      DisplayLabel = #54057#49828#48264#54840
      FieldName = 'FAX_NO'
      Size = 50
    end
    object q_company_generalADDR: TStringField
      DisplayLabel = #51452#49548
      FieldName = 'ADDR'
      Size = 100
    end
    object q_company_generalLOCATION_AREA: TStringField
      DisplayLabel = #51648#50669#47749
      FieldName = 'LOCATION_AREA'
    end
    object q_company_generalBUS_ID: TStringField
      DisplayLabel = #49324#50629#51088#48264#54840
      FieldName = 'BUS_ID'
    end
    object q_company_generalBANK_NAME: TStringField
      DisplayLabel = #51008#54665#47749
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object q_company_generalBANK_NO: TStringField
      DisplayLabel = #44228#51340#48264#54840
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_company_generalBANK_OWNER: TStringField
      DisplayLabel = #50696#44552#51452
      FieldName = 'BANK_OWNER'
    end
    object q_company_generalREMARK: TStringField
      DisplayLabel = #48708#44256#49324#54637
      FieldName = 'REMARK'
      Size = 200
    end
    object q_company_generalCOMP_KIND: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = #45800#52404#44396#48516
      FieldName = 'COMP_KIND'
    end
    object q_company_generalCOMP_NAME: TStringField
      DisplayLabel = #49345#54840'('#45800#52404')'#47749
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object q_company_generalAPPROVED: TSmallintField
      Alignment = taCenter
      DisplayLabel = #49849#51064#50668#48512
      FieldName = 'APPROVED'
    end
    object q_company_generalREG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'REG_DATE'
    end
    object q_company_generalCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
    object q_company_generalPAY_WAY: TIntegerField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
    end
  end
  object d_company_general: TDataSource
    DataSet = q_company_general
    Left = 80
    Top = 160
  end
  object q_payment: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY_MONTHLY_PAY'
      '  (ID, COMPANY_ID, PAY_DATE, PAY_AMOUNT, BIGO, PAY_MONTH)'
      'VALUES'
      '  (:ID, :COMPANY_ID, :PAY_DATE, :PAY_AMOUNT, :BIGO, :PAY_MONTH)')
    SQLDelete.Strings = (
      'DELETE FROM COMPANY_MONTHLY_PAY'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE COMPANY_MONTHLY_PAY'
      'SET'
      
        '  ID = :ID, COMPANY_ID = :COMPANY_ID, PAY_DATE = :PAY_DATE, PAY_' +
        'AMOUNT = :PAY_AMOUNT, BIGO = :BIGO, PAY_MONTH = :PAY_MONTH'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY_MONTHLY_PAY'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, COMPANY_ID, PAY_DATE, PAY_AMOUNT, BIGO, PAY_MONTH FRO' +
        'M COMPANY_MONTHLY_PAY'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from COMPANY_MONTHLY_PAY'
      'where company_id = :company_id'
      'order by pay_date')
    OnNewRecord = q_paymentNewRecord
    Left = 80
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'company_id'
      end>
    object q_paymentID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_paymentCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object q_paymentPAY_DATE: TDateField
      FieldName = 'PAY_DATE'
    end
    object q_paymentPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
    end
    object q_paymentBIGO: TStringField
      FieldName = 'BIGO'
      Size = 100
    end
    object q_paymentPAY_MONTH: TStringField
      FieldName = 'PAY_MONTH'
      FixedChar = True
      Size = 6
    end
  end
  object d_payment: TDataSource
    DataSet = q_payment
    Left = 80
    Top = 552
  end
end
