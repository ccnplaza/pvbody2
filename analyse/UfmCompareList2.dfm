object fmCompareList2: TfmCompareList2
  Left = 0
  Top = 0
  Caption = #51088#49464' '#51312#54924'/'#48516#49437
  ClientHeight = 724
  ClientWidth = 1357
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMember: TPanel
    Left = 0
    Top = 0
    Width = 212
    Height = 724
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object gbMember: TcxGroupBox
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
      Width = 210
      object Panel10: TPanel
        Left = 3
        Top = 15
        Width = 60
        Height = 25
        Caption = #54924#50896#47749
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 3
        Top = 40
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
        Height = 25
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object edtName: TEdit
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 102
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          AutoSelect = False
          ImeMode = imSHanguel
          ImeName = 'Microsoft IME 2010'
          TabOrder = 0
        end
        object btnFindMember: TBitBtn
          Left = 105
          Top = 1
          Width = 35
          Height = 23
          Hint = #44160#49353
          Align = alRight
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
            FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
            FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
            FF0A444444444444444D444444444444444A444444444444444D}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnFindMemberClick
        end
      end
      object pnlNo: TPanel
        Left = 63
        Top = 40
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
      end
      object btnCustInfo: TBitBtn
        Left = 6
        Top = 65
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
        Top = 65
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
      object btnFavorite: TBitBtn
        Left = 74
        Top = 65
        Width = 33
        Height = 25
        Hint = #54924#50896#51600#44200#52286#44592
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888880088888880088888090788870908888870900800907888888099707990
          8888888709999907888888870999990788888800999999900888807999999999
          7088000000999000000888888079708888888888870907888888888888090888
          8888888888707888888888888880888888888888888888888888}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = btnFavoriteClick
      end
      object btnRefresh: TBitBtn
        Left = 168
        Top = 65
        Width = 36
        Height = 25
        Hint = #49352#47196#44256#52840
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
        TabOrder = 7
        OnClick = btnRefreshClick
      end
      object btnLatelySelect: TBitBtn
        Left = 106
        Top = 65
        Width = 33
        Height = 25
        Hint = #52572#44540#49440#53469#54924#50896
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADA000000000000ADAD0FFFFFFFFFF0DADA0F00F00000F0ADAD0FFFFFFFFFF0
          DADA0F00F00000F0ADAD0FFFFFFFFFF0DADA0FFFFFFF0FF0ADAD0F00FFF080F0
          DAD40F080F0808000D440FF08080808880440000080808888844DADAD0808888
          8844ADADAD0888888044DADADAD000000A44ADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = btnLatelySelectClick
      end
    end
    object gbPictList: TcxGroupBox
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
      Height = 621
      Width = 210
      object cxGrid1: TcxGrid
        Left = 3
        Top = 40
        Width = 204
        Height = 571
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
          DataController.DataSource = dmDBCommon.ds_IMAGES_SEL_BYDATE
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
            Width = 37
          end
          object gridCheckP_DATE: TcxGridDBColumn
            Caption = #52524#50689#51068#51088
            DataBinding.FieldName = 'P_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 107
          end
          object gridCheckCNT: TcxGridDBColumn
            Caption = #49324#51652
            DataBinding.FieldName = 'CNT'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object gridCheckCUST_ID: TcxGridDBColumn
            DataBinding.FieldName = 'CUST_ID'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxL1: TcxGridLevel
          GridView = gridCheck
        end
      end
      object pnlPictureButton: TPanel
        Left = 3
        Top = 15
        Width = 204
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnDel: TBitBtn
          Left = 3
          Top = -1
          Width = 94
          Height = 25
          Hint = #49325#51228
          Caption = #49440#53469#49325#51228
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
          TabOrder = 0
          OnClick = btnDelClick
        end
        object btnAddMulti: TBitBtn
          Left = 112
          Top = -1
          Width = 88
          Height = 25
          Caption = #49324#51652#46321#47197
          TabOrder = 1
          OnClick = btnAddMultiClick
        end
      end
    end
  end
  object PanelRight: TPanel
    Left = 576
    Top = 0
    Width = 781
    Height = 724
    Align = alRight
    BevelOuter = bvNone
    Locked = True
    TabOrder = 1
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 781
      Height = 724
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      LookAndFeel.SkinName = ''
      OnResize = cxPageControl1Resize
      ClientRectBottom = 724
      ClientRectRight = 781
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'cxTabSheet1'
        ImageIndex = 0
        object cxGroupBox1: TcxGroupBox
          Tag = 1
          AlignWithMargins = True
          Left = 1
          Top = 1
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          Caption = #49324#51204#49324#54980' '#48708#44368
          Style.BorderColor = clWindowFrame
          Style.LookAndFeel.SkinName = 'Black'
          Style.TextStyle = [fsBold]
          StyleDisabled.LookAndFeel.SkinName = 'Black'
          StyleFocused.LookAndFeel.SkinName = 'Black'
          StyleHot.LookAndFeel.SkinName = 'Black'
          TabOrder = 0
          Height = 698
          Width = 779
          object Panel2: TPanel
            Left = 3
            Top = 15
            Width = 773
            Height = 27
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 202
              Top = 3
              Width = 43
              Height = 21
              Margins.Left = 10
              Align = alLeft
              Caption = #53804#47749#46020':'
              Layout = tlCenter
              ExplicitHeight = 13
            end
            object btnDeleteLayerAll: TBitBtn
              AlignWithMargins = True
              Left = 69
              Top = 1
              Width = 60
              Height = 25
              Hint = #51204#52404#49325#51228
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alLeft
              Caption = #51204#52404
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
                DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
                DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
                0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnDeleteLayerAllClick
            end
            object btnReport: TBitBtn
              AlignWithMargins = True
              Left = 728
              Top = 1
              Width = 44
              Height = 25
              Hint = #48708#44368#44208#44284#52636#47141
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alRight
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000010000000000000000084
                840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
                3333330000000000033330313131313010330000000000000103013131355531
                0003031313122213010300000000000001100131313131301010300000000003
                0100330666666660301044446000002203033333066666663033444444000002
                2203333333066666633044444444000000003333333333333333}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnReportClick
            end
            object TrackBar1: TTrackBar
              AlignWithMargins = True
              Left = 251
              Top = 3
              Width = 117
              Height = 21
              Align = alLeft
              Max = 255
              Position = 128
              ShowSelRange = False
              TabOrder = 2
              TickStyle = tsNone
              OnChange = TrackBar1Change
            end
            object btnLayerList: TcxButton
              AlignWithMargins = True
              Left = 1
              Top = 2
              Width = 32
              Height = 23
              Hint = #47532#49828#53944
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 1
              Margins.Bottom = 2
              Align = alLeft
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000060000
                000A0000000A0000000A0000000A0000000B0000000B0000000B0000000B0000
                000B0000000B0000000B0000000B0000000B00000007000000027E5D52BDAF82
                72FFAF8272FFAE8172FFAE8072FFAE8071FFAE8071FFAE8070FFAD8070FFAD7F
                70FFAD7F70FFAC7F6FFFAC7F6FFFAD7E6FFF7C5B4FBE00000007B28577FFFCF8
                F6FFFCF8F5FFFBF7F6FFFBF7F5FFFBF7F5FFFBF7F5FFFBF6F4FFFBF6F4FFFBF6
                F3FFFBF6F3FFFBF6F3FFFAF5F2FFFAF5F2FFAE8072FF0000000AB5897AFFFCF9
                F7FF2672CBFF256EC8FF236BC5FFF8EEEAFFF7EFEAFFFCF7F5FFFBF7F4FFFBF7
                F5FFFBF7F5FFFBF7F4FFF7EFEAFFFBF6F3FFB18475FF0000000AB68C7EFFFDFA
                F8FF3186DAFF4F9DE1FF2875CDFFF8EFEAFFF7EEEAFF966555FFB18475FFB084
                75FFB08475FFB18474FFF7EEE9FFFBF7F5FFB28778FF00000009B98F81FFFDFB
                F9FF3592E2FF338FDEFF2A7FD6FFF7EFEBFFF7EFEBFFF7EFEAFFF7EFEAFFF8EF
                EAFFF8EFEAFFF7EFEAFFF7EFEAFFFBF7F6FFB58A7CFF00000009BB9385FFFDFB
                FAFFF7F0EBFFF8EFEBFFF8F0EBFFF7EFEBFFF7EFEBFFF7F0EBFFF8EFEBFFF7EF
                EAFFF8EFEAFFF7EFEAFFF8EFEBFFFCF9F7FFB88E7FFF00000008BE9688FFFEFC
                FBFFD18D51FFCE874EFFCC844BFFF8EFEBFFF8F0EBFFFBF7F5FFFBF7F5FFFBF7
                F5FFFBF7F5FFFCF7F5FFF8EFEBFFFCF9F8FFBA9183FF00000007C0998BFFFEFC
                FCFFDEA164FFE3B380FFD49053FFF8F0ECFFF8F0ECFF9C6B5DFFB68B7DFFB58B
                7CFFB68A7CFFB58A7CFFF8EFEBFFFDFAF9FFBD9587FF00000007C29C8EFFFEFD
                FCFFE3A86DFFE1A66AFFDA985CFFF8F0ECFFF8F0ECFFF8F0ECFFF8F0ECFFF8F0
                ECFFF8EFECFFF8EFEBFFF8F0ECFFFDFBFAFFC0978AFF00000006C49E91FFFEFE
                FDFFF9F0EDFFF8F1EDFFF9F0EDFFF9F0EDFFF8F1EDFFF8F0EDFFF8F1ECFFF8F0
                EDFFF8F0ECFFF8F0ECFFF8F0ECFFFDFCFBFFC29B8DFF00000006C6A093FFFFFE
                FEFF5865CCFF5661C9FF535DC6FFF8F1EDFFF8F0EDFFFCF8F6FFFCF8F6FFFCF8
                F6FFFCF8F6FFFCF8F6FFF8F0EDFFFEFCFBFFC49E90FF00000005C7A396FFFFFE
                FEFF6A7CDAFF8694E2FF5968CEFFF9F1EDFFF9F1EEFFA27164FFBA9184FFBA91
                83FFB99083FFB99082FFF8F1EDFFFEFDFCFFC5A093FF00000005C8A497FFFFFF
                FFFF6E86E0FF6D82DEFF5F73D6FFF9F2EEFFF9F1EEFFF9F2EEFFF8F1EEFFF8F1
                EEFFF9F1EDFFF8F1EDFFF8F1EDFFFEFDFDFFC7A295FF00000004CAA699FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFE
                FEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFEFEFFC8A497FF00000003967C72BECAA7
                9AFFCAA79AFFCAA79AFFCAA79AFFCAA79AFFCAA699FFCAA699FFCAA699FFCAA6
                99FFCAA699FFCAA699FFCAA699FFCAA699FF967B70BF00000002}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnLayerListClick
            end
            object cxButton7: TcxButton
              AlignWithMargins = True
              Left = 35
              Top = 2
              Width = 32
              Height = 23
              Hint = #47532#49828#53944#51200#51109
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 1
              Margins.Bottom = 2
              Align = alLeft
              LookAndFeel.SkinName = 'DevExpressStyle'
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = cxButton7Click
            end
            object btnDeleteLayer: TBitBtn
              AlignWithMargins = True
              Left = 131
              Top = 1
              Width = 60
              Height = 25
              Hint = #49440#53469#49325#51228
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alLeft
              Caption = #49440#53469
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888888888898888898888888888888899988888889888889998888889
                8888888999888899888888889998899888888888899999888888888888999888
                8888888889999988888888889998898888888899998888998888899998888889
                9888899888888888998888888888888888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = btnDeleteLayerClick
            end
            object btnSaveLayers: TBitBtn
              AlignWithMargins = True
              Left = 371
              Top = 1
              Width = 30
              Height = 25
              Hint = #51060#48120#51648#51200#51109
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB528DCC96BAAB528DCC96
                BACC96BAAB528DAB528DFF00FFFF00FF7B7B7B787878787878787878787878FF
                00FFAB528DAB528DFFFFFFAB528DFFFFFFFFFFFFAB528DAB528DFF00FFFF00FF
                787878CEA985D1AF8DD1AE8DD1AF8DFF00FFAB528DAB528DFFFFFFFEFDFEFFFF
                FFFFFFFFAB528DAB528D7B7B7BFF00FF787878D1AE8CB1763CAF753BB1763CFF
                00FFAB528DAB528DAB528DAB528DAB528DAB528DAB528DAB528D787878FF00FF
                787878D6B696AE7339B0753BAF753BFF00FFAB528DFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFAB528D787878FF00FF787878FBF9F7AC6E30AF753AAC6D30FF
                00FFAB528DFFFFFFA6A6A6A6A6A6A6A6A6A6A6A6FFFFFFAB528D787878FF00FF
                787878FFFFFFEADED0A66524C09264FF00FFAB528DFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFAB528D787878FF00FF787878FFFFFFFFFFFFDFC7B0FEFEFEFF
                00FFAB528DAB528DAB528DAB528DAB528DAB528DAB528DAB528D787878FF00FF
                787878FDFDFEFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF787878FF00FF787878FFFFFFC89F77B37A41B27840B3
                7940B1763EBC8C5CFEFEFDFDFEFFFFFFFFFDFDFD787878FF00FF787878FF00FF
                787878FFFFFFAB6C2EAD7236B0743BAE7339AD7034A66424E6D7C6FEFFFFFCFD
                FDFEFEFE787878FF00FF787878FF00FF787878FFFFFFFFFFFFB2763EAC6D30B3
                7940D1AF8DD0AD8BFFFFFFFDFEFEFFFFFFFDFDFD787878FF00FF787878FF00FF
                787878FDFDFDFFFFFFFBF9F7E8D8C7FAF7F4FFFFFFFFFFFFFEFEFEFEFEFEFDFD
                FDFEFEFE787878FF00FF787878FF00FF7B7B7B78787878787878787878787878
                78787878787878787878787878787878787878787B7B7BFF00FF787878FF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF78787878787878787878787878787878787878787878
                78787878787878787878787878787B7B7BFF00FFFF00FFFF00FF}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = btnSaveLayersClick
            end
            object btnDrawing: TBitBtn
              AlignWithMargins = True
              Left = 491
              Top = 1
              Width = 30
              Height = 25
              Hint = #46020#54805#44536#47532#44592
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                DADAADADADADADADADADDADADAD0DADADADAADADAD0D0DADADADDADAD0DAD0DA
                DADAADAD0DADAD0DADADDAD0DADADAD0DADAAD0DADADADAD0DADD0DADADADADA
                D0DA0DADADADADADAD0D0ADADAD7DADADA0A0DADADA0ADADAD0D70DADA0A0ADA
                D07AA70000ADA00007ADDADADADADADADADAADADADADADADADAD}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = btnDrawingClick
            end
            object btnText: TBitBtn
              AlignWithMargins = True
              Left = 461
              Top = 1
              Width = 30
              Height = 25
              Hint = #53581#49828#53944#51077#47141
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                DADAADADADADADADADADDADADADADADADADAA4444DAD444444ADDA74DADAD744
                7ADAADA44DADA744ADADDAD74ADAD447DADAADAD4444444DADADDADA74DA447A
                DADAADADA44D44ADADADDADAD74447DADADAADADAD444DADADADDADADA747ADA
                DADAADADADA4ADADADADDADADADADADADADAADADADADADADADAD}
              ParentShowHint = False
              ShowHint = True
              Style = bsNew
              TabOrder = 8
              OnClick = btnTextClick
            end
            object btnAngle: TBitBtn
              AlignWithMargins = True
              Left = 521
              Top = 1
              Width = 30
              Height = 25
              Hint = #44033#46020#44536#47532#44592
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888800000000000008880888888808888888708888800888888880888880888
                8888887088800888888888808800888888888887000888888888888808888008
                8888888870880880888888888088088088888888870880088888888888088888
                8888888888708888888888888880888888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnClick = btnAngleClick
            end
            object btnLine: TBitBtn
              AlignWithMargins = True
              Left = 551
              Top = 1
              Width = 30
              Height = 25
              Hint = #46020#54805#44536#47532#44592
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                0000ADADADADADAD0FF0DADADADADADA0FF0ADADADADADAD0000DADADADADAD4
                DADAADADADADAD4DADADDADADADAD4DADADAADADADAD4DADADADDADADAD4DADA
                DADAADADAD4DADADADADDADAD4DADADADADAADAD4DADADADADAD0000DADADADA
                DADA0FF0ADADADADADAD0FF0DADADADADADA0000ADADADADADAD}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              OnClick = btnLineClick
            end
            object btnArrow: TBitBtn
              AlignWithMargins = True
              Left = 401
              Top = 1
              Width = 30
              Height = 25
              Hint = #49440#53469
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                DADAADADADADADADADADDADADADADADADADAADADADADADAD77ADDADADADADA70
                07DAADADADAD70000DADDADADAD000007ADAADADADA70000ADADDADADADA0007
                DADAADADADA0A70DADADDADADA0ADADADADAADADA0ADADADADADDADA0ADADADA
                DADAADA0ADADADADADADDADADADADADADADAADADADADADADADAD}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = btnArrowClick
            end
            object btnSelRect: TBitBtn
              AlignWithMargins = True
              Left = 581
              Top = 1
              Width = 30
              Height = 25
              Hint = #49324#44033#49440#53469
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                DADA000DADADADADA000000AD44444444000000DA4ADADADA000DADAD4DADADA
                DA4AADADA4ADADADAD4DD44444DADADADA4AA4ADA4ADADADAD4DD4DAD4DADADA
                DA4AA4ADA4ADADADAD4DD4DAD4444444444AA4ADADADA4ADADADD4DADADAD4DA
                DADA000DADADA4ADA0000004444444DAD000000DADADADADA000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnClick = btnSelRectClick
            end
            object btnSelCopy: TBitBtn
              AlignWithMargins = True
              Left = 611
              Top = 1
              Width = 30
              Height = 25
              Hint = #49440#53469#48373#49324
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888800000000
                00008888070770770880888800770770880088880F07770880B088880BF070F0
                0BF000000FBF0FBFBFB007070BFBFBF707F000770FBFBFB080B00F070BFBFBF7
                07F00BF00FBFBFBFBFB00FBF0040000000000BFBFBF707F088880FBFBFB080B0
                88880BFBFBF707F088880FBFBFBFBFB088880040000000008888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              OnClick = btnSelCopyClick
            end
            object BitBtn2: TBitBtn
              AlignWithMargins = True
              Left = 431
              Top = 1
              Width = 30
              Height = 25
              Hint = #49440#53469#48373#49324
              Margins.Left = 0
              Margins.Top = 1
              Margins.Right = 0
              Margins.Bottom = 1
              Align = alLeft
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000020000
                000A000000100000001100000011000000110000001200000012000000120000
                0012000000120000001300000013000000120000000C000000030000000A8159
                4CC2B47C69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB37968FFB279
                68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000B0000000EB77F
                6EFFFBF7F4FFF9F0EBFFFBF5F1FFFBF7F4FFFBF7F4FFF9F3EEFFF7EDE7FFFAF4
                EFFFFBF6F3FFFBF6F3FFF9F3EFFFF6ECE5FFB47B69FF000000110000000EB984
                72FFFBF8F5FFDAD0C9FF776258FF563D32FF553D32FFA3948DFFF8F1ECFF806B
                62FF543B31FF543B30FF7E6961FFF7EDE7FFB77F6EFF000000110000000EBC89
                78FFFCF9F7FFAF9F97FF8F7B71FFF8F0EBFFD9CDC7FF573F33FFC3B5AFFFF8EF
                EAFF97867EFF816E64FFF7EEE8FFF8EEE9FFB98472FF000000100000000DC08E
                7DFFFCFAF8FFFAF3EFFFF9F2EEFFFCF9F7FFE7E0DBFF5A4034FFCEC3BBFFF9F1
                ECFF99887FFF837066FFF8EFEAFFF8F1EBFFBC8977FF000000100000000CC394
                82FFFCFBF9FFFBF5F2FFFBF4F1FF5D4336FF725A4FFFB2A39CFFFAF3EFFFFAF2
                EEFF9B8980FF847268FFF9F2EDFFF9F2EEFFC08E7CFF0000000F0000000BC798
                87FFFDFCFAFFFCF8F5FFFDFAF9FFFBF6F2FFBDB0A9FF7F685EFFFAF4F1FFFCF9
                F6FF9D8C84FF877268FFFAF3F0FFFAF4F0FFC49381FF0000000E0000000BC99D
                8CFFFDFCFBFFD3C9C4FF6D5346FFFEFBFAFFBFB3ADFF614639FFF1EAE7FF8974
                6AFF5F4538FF88746AFFFAF5F2FFFAF6F2FFC69886FF0000000D0000000ACDA1
                90FFFEFDFCFFFCF9F8FF8C786DFF65493AFF63483BFFA18E85FFFCF7F6FFFCF7
                F6FFBEB1AAFF8B756AFFFBF6F5FFFBF7F5FFC99D8BFF0000000D00000009CFA5
                94FFFEFDFDFFFDFAF9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
                F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C000000084B53
                C3FF8D9EECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5D6CDEFF5B69
                DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B000000084C55
                C4FF93A4EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6172E0FF5E6F
                DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A000000074D56
                C6FF96A7EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8898EAFF8595
                EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF00000009000000043A40
                93C14D55C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF4249B9FF4046
                B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000010000
                0004000000060000000600000006000000070000000700000007000000070000
                0007000000070000000800000008000000070000000500000001}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
              OnClick = BitBtn2Click
            end
          end
          object LayerWindow: TImageEnView
            Left = 3
            Top = 42
            Width = 773
            Height = 646
            Background = clBtnFace
            BackgroundStyle = iebsChessboard
            Ctl3D = True
            PopupMenus = [ievViewing, ievEditing, ievLayerEditing, ievSelection, ievLayerSelection]
            Center = False
            OnUserInteraction = LayerWindowUserInteraction
            Align = alClient
            TabOrder = 2
            OnDragDrop = LayerWindowDragDrop
            OnDragOver = LayerWindowDragOver
          end
          object ImageEnVect1Print: TImageEnVect
            Tag = 1
            Left = 315
            Top = 540
            Width = 86
            Height = 101
            Background = clInactiveCaptionText
            AutoStretch = True
            AutoShrink = True
            Visible = False
            TabOrder = 1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'cxTabSheet2'
        ImageIndex = 1
        object cxGroupBox3: TcxGroupBox
          AlignWithMargins = True
          Left = 1
          Top = 1
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          Caption = #48708#44368#48516#49437'('#50952#46020#50864')'
          Style.TextStyle = [fsBold]
          TabOrder = 0
          Height = 698
          Width = 779
          object Panel3: TPanel
            Left = 3
            Top = 15
            Width = 773
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object BitBtn1: TBitBtn
              AlignWithMargins = True
              Left = 728
              Top = 1
              Width = 44
              Height = 23
              Hint = #48708#44368#44208#44284#52636#47141
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alRight
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000010000000000000000084
                840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
                3333330000000000033330313131313010330000000000000103013131355531
                0003031313122213010300000000000001100131313131301010300000000003
                0100330666666660301044446000002203033333066666663033444444000002
                2203333333066666633044444444000000003333333333333333}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = BitBtn1Click
            end
            object btnWindowList: TcxButton
              AlignWithMargins = True
              Left = 3
              Top = 1
              Width = 78
              Height = 23
              Hint = #49440#53469#49325#51228
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alLeft
              Caption = #47532#49828#53944
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000060000
                000A0000000A0000000A0000000A0000000B0000000B0000000B0000000B0000
                000B0000000B0000000B0000000B0000000B00000007000000027E5D52BDAF82
                72FFAF8272FFAE8172FFAE8072FFAE8071FFAE8071FFAE8070FFAD8070FFAD7F
                70FFAD7F70FFAC7F6FFFAC7F6FFFAD7E6FFF7C5B4FBE00000007B28577FFFCF8
                F6FFFCF8F5FFFBF7F6FFFBF7F5FFFBF7F5FFFBF7F5FFFBF6F4FFFBF6F4FFFBF6
                F3FFFBF6F3FFFBF6F3FFFAF5F2FFFAF5F2FFAE8072FF0000000AB5897AFFFCF9
                F7FF2672CBFF256EC8FF236BC5FFF8EEEAFFF7EFEAFFFCF7F5FFFBF7F4FFFBF7
                F5FFFBF7F5FFFBF7F4FFF7EFEAFFFBF6F3FFB18475FF0000000AB68C7EFFFDFA
                F8FF3186DAFF4F9DE1FF2875CDFFF8EFEAFFF7EEEAFF966555FFB18475FFB084
                75FFB08475FFB18474FFF7EEE9FFFBF7F5FFB28778FF00000009B98F81FFFDFB
                F9FF3592E2FF338FDEFF2A7FD6FFF7EFEBFFF7EFEBFFF7EFEAFFF7EFEAFFF8EF
                EAFFF8EFEAFFF7EFEAFFF7EFEAFFFBF7F6FFB58A7CFF00000009BB9385FFFDFB
                FAFFF7F0EBFFF8EFEBFFF8F0EBFFF7EFEBFFF7EFEBFFF7F0EBFFF8EFEBFFF7EF
                EAFFF8EFEAFFF7EFEAFFF8EFEBFFFCF9F7FFB88E7FFF00000008BE9688FFFEFC
                FBFFD18D51FFCE874EFFCC844BFFF8EFEBFFF8F0EBFFFBF7F5FFFBF7F5FFFBF7
                F5FFFBF7F5FFFCF7F5FFF8EFEBFFFCF9F8FFBA9183FF00000007C0998BFFFEFC
                FCFFDEA164FFE3B380FFD49053FFF8F0ECFFF8F0ECFF9C6B5DFFB68B7DFFB58B
                7CFFB68A7CFFB58A7CFFF8EFEBFFFDFAF9FFBD9587FF00000007C29C8EFFFEFD
                FCFFE3A86DFFE1A66AFFDA985CFFF8F0ECFFF8F0ECFFF8F0ECFFF8F0ECFFF8F0
                ECFFF8EFECFFF8EFEBFFF8F0ECFFFDFBFAFFC0978AFF00000006C49E91FFFEFE
                FDFFF9F0EDFFF8F1EDFFF9F0EDFFF9F0EDFFF8F1EDFFF8F0EDFFF8F1ECFFF8F0
                EDFFF8F0ECFFF8F0ECFFF8F0ECFFFDFCFBFFC29B8DFF00000006C6A093FFFFFE
                FEFF5865CCFF5661C9FF535DC6FFF8F1EDFFF8F0EDFFFCF8F6FFFCF8F6FFFCF8
                F6FFFCF8F6FFFCF8F6FFF8F0EDFFFEFCFBFFC49E90FF00000005C7A396FFFFFE
                FEFF6A7CDAFF8694E2FF5968CEFFF9F1EDFFF9F1EEFFA27164FFBA9184FFBA91
                83FFB99083FFB99082FFF8F1EDFFFEFDFCFFC5A093FF00000005C8A497FFFFFF
                FFFF6E86E0FF6D82DEFF5F73D6FFF9F2EEFFF9F1EEFFF9F2EEFFF8F1EEFFF8F1
                EEFFF9F1EDFFF8F1EDFFF8F1EDFFFEFDFDFFC7A295FF00000004CAA699FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFE
                FEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFEFEFFC8A497FF00000003967C72BECAA7
                9AFFCAA79AFFCAA79AFFCAA79AFFCAA79AFFCAA699FFCAA699FFCAA699FFCAA6
                99FFCAA699FFCAA699FFCAA699FFCAA699FF967B70BF00000002}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnWindowListClick
            end
            object btnDelWin: TcxButton
              AlignWithMargins = True
              Left = 171
              Top = 1
              Width = 90
              Height = 23
              Hint = #49440#53469#49325#51228
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alLeft
              Caption = #51204#52404#49325#51228
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
                76E4120852AD06031B4D0000000E000000030000000000000000000000000000
                000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
                C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
                03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
                D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
                5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
                BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
                A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
                CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
                BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
                EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
                CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
                E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
                D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
                E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
                D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
                E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
                DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
                EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
                DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
                D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
                D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
                A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
                79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
                BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
                050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
                EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
                000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
                EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
                000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
                B5D040437D951212223000000004000000010000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = btnDelWinClick
            end
            object btnSaveWin: TcxButton
              AlignWithMargins = True
              Left = 87
              Top = 2
              Width = 78
              Height = 21
              Margins.Top = 2
              Margins.Bottom = 2
              Align = alLeft
              Caption = #51200#51109
              LookAndFeel.SkinName = 'DevExpressStyle'
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
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnSaveWinClick
            end
          end
          object pgcCompareFrame: TPanel
            Left = 3
            Top = 40
            Width = 773
            Height = 648
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object pnlCompareFrameLeft: TPanel
              Left = 0
              Top = 0
              Width = 321
              Height = 648
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object cxGroupBox2: TcxGroupBox
                Tag = 1
                Left = 0
                Top = 0
                Align = alClient
                Caption = #48708#44368#54868#47732'1'
                Style.BorderColor = clWindowFrame
                Style.LookAndFeel.SkinName = 'Black'
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Black'
                StyleFocused.LookAndFeel.SkinName = 'Black'
                StyleHot.LookAndFeel.SkinName = 'Black'
                TabOrder = 0
                Height = 307
                Width = 321
                object ImageEnVectComp1: TImageEnVect
                  Tag = 1
                  Left = 3
                  Top = 15
                  Width = 315
                  Height = 282
                  Background = clInactiveCaptionText
                  AutoStretch = True
                  AutoShrink = True
                  Align = alClient
                  TabOrder = 0
                  OnDragDrop = ImageEnVectComp1DragDrop
                  OnDragOver = ImageEnVectComp1DragOver
                end
              end
              object compareGroupLeftBottom: TcxGroupBox
                Tag = 2
                Left = 0
                Top = 307
                Align = alBottom
                Caption = #48708#44368#54868#47732'2'
                Style.LookAndFeel.SkinName = 'Black'
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Black'
                StyleFocused.LookAndFeel.SkinName = 'Black'
                StyleHot.LookAndFeel.SkinName = 'Black'
                TabOrder = 1
                Height = 341
                Width = 321
                object ImageEnVectComp2: TImageEnVect
                  Tag = 2
                  Left = 3
                  Top = 15
                  Width = 315
                  Height = 316
                  Background = clInactiveCaptionText
                  AutoStretch = True
                  AutoShrink = True
                  Align = alClient
                  TabOrder = 0
                  OnDragDrop = ImageEnVectComp1DragDrop
                  OnDragOver = ImageEnVectComp2DragOver
                end
              end
            end
            object pnlCompareFrameRight: TPanel
              Left = 321
              Top = 0
              Width = 452
              Height = 648
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object compareGroupRightTop: TcxGroupBox
                Tag = 3
                Left = 0
                Top = 0
                Align = alClient
                Caption = #48708#44368#54868#47732'3'
                Style.LookAndFeel.SkinName = 'Black'
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Black'
                StyleFocused.LookAndFeel.SkinName = 'Black'
                StyleHot.LookAndFeel.SkinName = 'Black'
                TabOrder = 0
                Height = 307
                Width = 452
                object ImageEnVectComp3: TImageEnVect
                  Tag = 3
                  Left = 3
                  Top = 15
                  Width = 446
                  Height = 282
                  Background = clInactiveCaptionText
                  AutoStretch = True
                  AutoShrink = True
                  Align = alClient
                  TabOrder = 0
                  OnDragDrop = ImageEnVectComp1DragDrop
                  OnDragOver = ImageEnVectComp3DragOver
                end
              end
              object compareGroupRightBottom: TcxGroupBox
                Tag = 4
                Left = 0
                Top = 307
                Align = alBottom
                Caption = #48708#44368#54868#47732'4'
                Style.LookAndFeel.SkinName = 'Black'
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Black'
                StyleFocused.LookAndFeel.SkinName = 'Black'
                StyleHot.LookAndFeel.SkinName = 'Black'
                TabOrder = 1
                Height = 341
                Width = 452
                object ImageEnVectComp4: TImageEnVect
                  Tag = 4
                  Left = 3
                  Top = 15
                  Width = 446
                  Height = 316
                  Background = clInactiveCaptionText
                  AutoStretch = True
                  AutoShrink = True
                  Align = alClient
                  TabOrder = 0
                  OnDragDrop = ImageEnVectComp1DragDrop
                  OnDragOver = ImageEnVectComp4DragOver
                end
              end
            end
            object ImageEnVect3Print: TImageEnVect
              Tag = 1
              Left = 45
              Top = 335
              Width = 70
              Height = 65
              Background = clInactiveCaptionText
              Visible = False
              TabOrder = 2
              OnDragDrop = ImageEnVectComp1DragDrop
            end
            object ImageEnVect2Print: TImageEnVect
              Tag = 1
              Left = 373
              Top = 335
              Width = 70
              Height = 65
              Background = clInactiveCaptionText
              Visible = False
              TabOrder = 3
              OnDragDrop = ImageEnVectComp1DragDrop
            end
            object ImageEnVect4Print: TImageEnVect
              Tag = 1
              Left = 389
              Top = 30
              Width = 70
              Height = 65
              Background = clInactiveCaptionText
              Visible = False
              TabOrder = 4
              OnDragDrop = ImageEnVectComp1DragDrop
            end
          end
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 570
    Top = 0
    Width = 6
    Height = 724
    AlignSplitter = salRight
    AutoSnap = True
    Control = PanelRight
    Color = clGray
    ParentColor = False
  end
  object compareGroupLeftTop: TcxGroupBox
    Tag = 1
    AlignWithMargins = True
    Left = 213
    Top = 1
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    Caption = #51088#49464#49324#51652'('#54200#51665'='#45908#48660#53364#47533')'
    Style.BorderColor = clWindowFrame
    Style.LookAndFeel.SkinName = 'Black'
    Style.TextStyle = []
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 3
    Height = 722
    Width = 356
    object Panel1: TPanel
      Left = 3
      Top = 15
      Width = 350
      Height = 697
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object PanelButtons: TPanel
        Left = 0
        Top = 0
        Width = 350
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 30
          Height = 19
          Align = alLeft
          Caption = #48372#44592':'
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object edtTrackBar: TcxSpinEdit
          AlignWithMargins = True
          Left = 37
          Top = 1
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Properties.ImmediatePost = True
          Properties.Increment = 5.000000000000000000
          Properties.MaxValue = 1000.000000000000000000
          Properties.MinValue = 50.000000000000000000
          Properties.UseCtrlIncrement = True
          Properties.OnChange = edtTrackBarPropertiesChange
          TabOrder = 0
          Value = 100
          Width = 51
        end
        object btnDelete: TcxButton
          AlignWithMargins = True
          Left = 90
          Top = 1
          Width = 40
          Height = 23
          Hint = #49440#53469#49325#51228
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Enabled = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
            76E4120852AD06031B4D0000000E000000030000000000000000000000000000
            000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
            C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
            03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
            D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
            5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
            BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
            A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
            CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
            BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
            EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
            CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
            E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
            D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
            E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
            D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
            E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
            DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
            EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
            DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
            D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
            D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
            A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
            79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
            BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
            050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
            EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
            000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
            EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
            000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
            B5D040437D951212223000000004000000010000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnDeleteClick
        end
        object btnEditImage: TcxButton
          AlignWithMargins = True
          Left = 132
          Top = 1
          Width = 60
          Height = 23
          Hint = #51060#48120#51648#49688#51221
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #54200#51665
          Enabled = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000000000000000000040000000F000000110000000B000000040000
            0001000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000E431B10FF31130BE1190A0598030407420000
            000C000000020000000000000000000000000000000000000000000000000000
            000000000000000000000000000D673C29DCB8C7D2FF7789A3FF224084FF040F
            34960000000F0000000200000000000000000000000000000000000000000000
            0003000000090000000E0000001741251A97869AB3FFC7E3F6FF1B65B9FF286B
            ABFF0412379C0000001D000000120000000D0000000400000000000000000000
            0008285287CA2A60ABFF5D85BDFF8097B7FF458BC6FFDDFEFDFF4DB4E6FF1B67
            BAFF2E73B1FF425C92FF587CB3FF2557A5FF0000000B00000000000000000000
            000B3D77BBFF8FD3F4FF7CC9F0FF76C2E8FF509DCDFF439FD5FFDDFEFDFF55C0
            ECFF1D6ABCFF337BB6FF3D6096FF202B47930000000900000000000000000000
            000B417EBEFF9AD9F5FF85CFF2FF93D4F3FFBAE1F0FF5FA4D0FF48A5D8FFDDFE
            FDFF5DCBF2FF206EBFFF3883BCFF07193E950000000B00000002000000000000
            000A4784C1FFA6DEF7FF8ED5F4FF22529DFF22529CFF71A4CDFF58A3D2FF4BAB
            DAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FF071B418E00000006000000000000
            00094C8AC5FFB0E4F8FF98DAF6FF133D84FF5D91C5FF8FD4F3FF95D2EDFF629C
            C9FF4EAFDDFFDDFEFDFF6BDEFBFF287AC5FF15438DFF00000008000000000000
            0008518FC9FFB8E8FAFFA0DFF7FF598CBFFF9CDCF6FFA6DFF7FF6793C3FF2735
            538C1C44638B51B2DFFFDDFEFDFF4CA7D7FF0F2B4F8800000004000000000000
            00075695CCFFC1EDFBFFA8E3F9FFA6E3F8FFB0E5F9FF6F9BC9FF0D244B880000
            0008000000061B456385327FBFFF163A5A860000000500000001000000000000
            0006599BCFFFC9F0FBFFAFE8FAFFBAEAFBFF77A2CEFF112A4F87000000060000
            0001000000010000000200000004000000030000000100000000000000000000
            000560A0D1FFCFF2FCFFC1EFFCFF7FAAD3FF142F548500000005000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            000463A5D5FFDCF7FDFF86B0D7FF183556840000000400000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000467A9D7FF90B8DBFF1C3A5A83000000030000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00026AADDAFF20405E8200000003000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnEditImageClick
        end
        object btnCompareWin: TcxButton
          AlignWithMargins = True
          Left = 318
          Top = 1
          Width = 68
          Height = 23
          Hint = #48708#44368'('#50952#46020#50864')'
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #48708#44368'2'
          Enabled = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000100000004000000070000000A0000000B0000000D0000000D0000
            000D0000000C0000000A00000007000000020000000000000000000000000000
            0000000000040C2D527E103F74B4114887D2104789DB1250A0FF114C9CFF0D3C
            7FDC0B3777D4092D63B806204789000000080000000000000000000000000000
            0000000000061E6CBCFF429FE5FF3096EAFF208CE9FF1D90F3FF188AF1FF147E
            E2FF1177DDFF0E6CD0FF0E4596FF0000000C0000000000000000000000000000
            0000000000041B5FA1D54AA5E5FF5DBEFAFF54BCFCFF31A3F8FF2599F7FF2194
            F4FF2293F2FF217ED2FF0F3F82DA000000090000000000000000000000090000
            000E00000011040D1530144878A72679C2F856B2EBFF56B4ECFF369DE8FF2E94
            E5FF1B62AFFA0D3565AA020A133800000015000000100000000A0F3761941651
            8FD11F5895D94C7EB7F46C95C9FF638CBAF92F6EAAFC3A6C9FFF316498FF2865
            9FFC618AB8F86B95C7FF497AB3F71A4C89DB0E3E7CD3082751981F71BEFD5FB0
            E9FF49A2E7FF43A2ECFF48A6F0FF7BB1E0FF4671A3FF7DA4CDFF588BC1FF2F5A
            8FFF7CB2DBFF48A6F0FF3D9CEAFF3894E0FF3D95DEFF1351A1FD18548CBE4593
            D5FF74BDEDFF59B4F3FF7CBFF3FF83B6DCFF567DB1FFBDE0F5FF8BC2EBFF345D
            97FF7EAFD1FF72BBF1FF50ADF1FF58A9E7FF2F7AC3FF0F3E77C1000000090C28
            42631E619FD673B6E1FFA4CFE9FF3E6699FF5C80B0FFCAE8F6FF94C6E9FF375D
            95FF466792FFA1CBE5FF67AEDEFF185494D708213B670000000D000000010000
            000608090C2B336097F67890B5FF245597FF4F7CB1FF517CAFFF2C5088FF325D
            98FF1E3F79FF758EB2FF235089F607080B2E0101010700000001000000000202
            0208222E3F706791BFFFA2CFF3FF326BAEFF6C9ED1FF5C8CC1FF76A5D3FF5385
            BEFF214784FFA0CCEFFF3A6DABFF121D2F6E0303030A00000000000000000303
            030C2B4770C98DB4D6FFAFD8F7FF759FCCFF4179B6F63878BAF13174BBFC3A6C
            A6F882A1C3FFB1D8F5FF5288C1FF18315AC20505051100000000000000000303
            030D1B4884FA7DA2C7FF5381B1FF698AB4FF617DA2FC6262626F606060696F8A
            B0FCA2BCD5FF5784B3FF2E5E98FF113B74FB0505061600000000000000000202
            02071F5090F53C70ADFE5790CDFF437FC2FF194989FF04070A1A020202071F50
            90F53C70ADFE5790CDFF437FC2FF194989FF04070A1A00000000000000000000
            00020E223B6121528FD62661A7F71E4F89D80F25407301010103000000020E22
            3B6121528FD62661A7F71E4F89D80F2540730101010300000000000000000000
            0000000000000000000100000001000000010000000100000000000000000000
            0000000000010000000100000001000000010000000000000000}
          TabOrder = 3
          OnClick = btnCompareWinClick
        end
        object btnCompareLayer: TcxButton
          AlignWithMargins = True
          Left = 256
          Top = 1
          Width = 60
          Height = 23
          Hint = #48708#44368#48516#49437
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #48708#44368
          Enabled = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00020000000D000000180000000E000000030000000000000000000000010000
            0004000000070000000A0000000B0000000D0000000D00000010000000160000
            0021271713826D4034FF1E110E810000001B0000000D00000004000000040E38
            297E134F37B414593DD212583BDB126441FF105D3DFF0C462DDD444A39EC5648
            3BED8B6758FDCABAB2FF5C3529FB3B241BC22A1813930000000D00000006278A
            63FF3BAA82FF2FA377FF2B9E73FF2A9E72FF25986AFF1D825BFF7B6F5DFFD5C6
            C0FFE2D8D4FFE0D5CFFFE1D7D4FFAE978EFF4E2F26D50000001000000004267B
            5BD555BB98FF63CDAAFF41BA8FFF33AE83FF30A97BFF2F9F76FF50896DFFAF91
            86FFF1ECE8FF825747FFE5DCD5FF89665AFF1E130F6C0000000C000000010511
            0D201D5D459F339774F85BC2A1FF43B48CFF3EAF87FF45AA87FF867C6AFEDBCC
            C7FFE9E0DDFFFFFFFFFFDDD1CAFFD6C7C1FF603F34D20000000D000000000000
            000100000003040D0A212A705BDA3B7289FF336981FF236E57F9576E5AF97676
            64FFA68574FFEDE5E2FFA48273FE706456E13D2B248400000008000000000000
            00000000000000000013345978DB7DA4CDFF588BC1FF285A7BFF379373FF389D
            79FF558C70FFB08C7DFF52856AFF155D43FD0101011600000001000000000000
            0000000000020203041F5379ACF9BDE0F5FF8BC2EBFF335D97FF4DA489FF49B5
            8FFF4BB18EFF51AA8EFF308567FF144E39C10101010B00000000000000000000
            00000000000517335FC05C80B0FFCAE8F6FF94C6E9FF375D95FF38657FFF77C3
            ADFF6DBEA4FF276B56D70F2A21670101010D0000000200000000000000000000
            000000000006205090F64F7CB1FF517CAFFF2C5088FF325D98FF1B3D77FF355A
            90FF30607BF60A0B0B2E01010107000000010000000000000000000000000000
            000000000003255A9AE66C9DD0FE5C8CC1FF76A5D3FF5385BEFF1F4683FF74B5
            EBFF4374AFFF1621326E0303030A000000000000000000000000000000000000
            0000000000010C1F3249255B92C22E6EB0E62F72B8FA2B5D9BF36990BAFF8BC7
            F2FF5A8EC4FF20385EC205050511000000000000000000000000000000000000
            00000000000000000001000000020000000304040410264F88FA82A5C8FF497A
            ACFF38669DFF1C447AFB06060716000000000000000000000000000000000000
            00000000000000000000000000000000000002020207285795F54577B1FE5F95
            CFFF4C85C5FF24528FFF05080B1A000000000000000000000000000000000000
            0000000000000000000000000000000000000101010211253D61295892D62F68
            AAF726568DD81328437301010103000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnCompareLayerClick
        end
        object btnCapture: TcxButton
          Tag = 1
          AlignWithMargins = True
          Left = 194
          Top = 1
          Width = 60
          Height = 23
          Hint = #52897#52432
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #52897#52432
          Enabled = False
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000AD6A27FF7144
            19A9000000000000000000000000000000000000000000000000242424460909
            0912000000000000000000000000000000000000000000000000AD6A27FFAA67
            26FFAA6726FF79491BB5000000000000000000000000000000007A7A7AFF6F6F
            6FFF737373F0535353AD3C3C3C7E2E2E2E602A2A2A5802020205AD6A27FFAA67
            26FFAA6726FFAA6726FFAA6726FF704319A700000000000000001D1D1D386F6F
            6FFF6F6F6FFF464646A011111126080808130A0A0A1700000000AD6A27FFAA67
            26FFAA6726FFAA6726FFAA6726FFAA6726FFAA6726FF643D1695000000000F0F
            0F200F0F0F23313131706C6C6CF86F6F6FFF6F6F6FFF0505050CAD6A27FFAA67
            26FFAA6726FFAA6726FFAA6726FFAA6726FFAA6726FF55341380000000000000
            0000636363E36F6F6FFF6D6D6DFF676767FF676767FF0505050CAD6A27FFAA67
            26FFAA6726FFAA6726FFAA6726FF613B16910000000000000000000000005C5C
            5CD36F6F6FFF696969FF7C7C7CFFC3C3C3FFCFCFCFFF0808080CAD6A27FFAA67
            26FFAA6726FF6940189E00000000000000000000000000000000212121456F6F
            6FFF6B6B6BFF959595FFFFFFFFFFF5F5F5FFDDDDDDFF13131313AD6A27FF7748
            1BB2000000012121214500000000000000000000000000000000505050A76E6E
            6EFF666666FFFFFFFFFFC8C8C8FF5D5D5DFF646464FF444444951B1B1B1B3434
            344C545454CA6F6F6FFF0707070D000000000000000000000000666666D66C6C
            6CFF8B8B8BFFFFFFFFFF707070FF6E6E6EFF6B6B6BFF656565FFCBCBCBFFE2E2
            E2FF666666FF6F6F6FFF1E1E1E3F000000000000000000000000646464D16C6C
            6CFF838383FFFFFFFFFF727272FFFFFFFFFFB0B0B0FF5D5D5DFFD9D9D9FFDADA
            DAFF666666FF6F6F6FFF1A1A1A37000000000000000000000000464646936F6F
            6FFF626262FFF5F5F5FFEAEAEAFF8B8B8BFF626262FFA3A3A3FFFFFFFFFF9898
            98FF6B6B6BFF6F6F6FFF000000000000000000000000000000001010101F6F6F
            6FFF6D6D6DFF767676FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8B8FF6464
            64FF6F6F6FFF575757B600000000000000000000000000000000000000004848
            48966F6F6FFF6D6D6DFF656565FF898989FF969696FF737373FF666666FF6F6F
            6FFF6F6F6FFF0404040700000000000000000000000000000000000000000000
            00004B4B4B9D6E6E6EFF696969FFEDEDEDFFE8E8E8FFA2A2A2FF6B6B6BFF6E6E
            6EFD0F0F0F1D0000000000000000000000000000000000000000000000000000
            000000000000131313284343439C5E5E5ED96D6D6DE5515151BF2E2E2E6A0000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.ImageIndex = 8
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnCaptureClick
        end
        object btnStaticCheck: TcxButton
          AlignWithMargins = True
          Left = 388
          Top = 1
          Width = 89
          Height = 23
          Hint = #51221#51201#54217#44032
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #51221#51201#54217#44032
          Enabled = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000100000004000000090000000B0000000C0000000C0000
            0009000000050000000100000000000000000000000000000000000000000000
            0000000000020000000936231D63744B3EBD966050EDA46857FF965F50ED734A
            3DBE36221C630000000A00000003000000000000000000000000000000000000
            00040E090722714A3DB8B68576FFDCC4BBFFEFE3DDFFF7EFEAFFEEE2DCFFDCC3
            BAFFB48373FF70473BB80E090723000000040000000000000000000000031810
            0D319B6A59EAD8BDB4FFF6EEEAFFF7F0EBFFF7EFEBFFF7F0EBFFF7EFEAFFF6EF
            EAFFF6EDE9FFD6BAB1FF976554EA0F0A082600000003000000000201010C8C5D
            4ED4E0CAC1FFFBF1E8FFFBF8F5FFF7F0ECFFF7F0ECFFF7F0EBFFF7F0EBFFF6F0
            EBFFFBF8F5FFE4E5F9FFDCC4BBFF734A3DB80000000900000001402B2568C195
            87FFF9EEE5FFE2A568FFEECDACFFF8F1ECFFF7F0ECFFF7F0ECFFF8F1ECFFF7F0
            ECFF9CA2E8FF4855DAFFE4E3F3FFBC8F7FFF39262064000000047D5449BBE2CB
            C5FFEDC8A4FFE1A365FFE8BB90FFF8F1EDFFF7F1EDFFF8F1EDFFF7F1EDFFF8F1
            ECFF7E86E1FF4351DAFF8F97E8FFDDC4BBFF7A5043BC00000007A57362ECF4EC
            E8FFE6B07AFFE3A669FFF4E5D7FFF8F2EEFF8D807CFF2C1C16FF8C807CFFF8F2
            EDFFD9D5EAFF4554DBFF5966E0FFF0E4DEFF9E6A5AEA00000008B6806EFFFAF7
            F5FFE6AE73FFE5AB6FFFFAF3EFFFF9F3EFFF523B33FF674E47FF362420FFF8F2
            EFFFF6F1F1FF4956DDFF4D5CDEFFF6F0ECFFAC7564FA00000008A97769ECF6EE
            EBFFE8B782FFE6AF74FFF9EEE3FFF9F4F0FFA1918BFF4E342DFF48332DFFC8BD
            B9FFF2F1F7FF707BE1FF606CE1FFF2E7E3FFA27060EA00000007845E53B9E5D2
            CBFFF0D1AFFFE8B379FFEFC9A0FFFDFCFBFFFAF6F4FFF9F4F1FFDAD3CEFF624B
            43FFB1A9BAFFC2C1E9FFADAFE9FFE2CDC5FF7F5A4DBA0000000543312B61CCA5
            97FFFBF4ECFFEBBB85FFEAB67FFFF0CBA3FFFAEFE2FFFFFDFCFFFCF8F3FFD8C7
            BAFF634A44FFA69FB6FFF4F0F3FFC79D91FF3E2C266000000003020201089971
            62CFE3CEC5FFF8EADAFFEDBD88FFEBBA84FFECBC83FFECBC83FFEEC292FFF4DF
            CBFFD7C2B1FF675047FFE1C9C1FF7F5B4FB40000000600000000000000011C15
            122AB18675EADEC4BAFFFBF2ECFFF3D7B7FFEFC595FFEDBD88FFEEC595FFF4D9
            BCFFFAF4F1FFDCC1B8FFAC7D6FE9120D0B1F0000000100000000000000000000
            0001100C0A1B846457B2CDA596FFEAD9D3FFF8F1EFFFFEFDFDFFF8F1EFFFEAD9
            D2FFCBA292FF836154B3100C0A1B000000020000000000000000000000000000
            000000000001000000033A2C265073564D9B9A7566CCBE8F7DF99A7365CC7256
            4B9B392B25510000000400000001000000000000000000000000}
          TabOrder = 6
          OnClick = btnStaticCheckClick
        end
      end
      object ImageEnMView1: TImageEnMView
        Left = 0
        Top = 25
        Width = 350
        Height = 672
        Background = clWindowFrame
        GridWidth = -1
        StoreType = ietFastThumb
        ThumbWidth = 250
        ThumbHeight = 400
        TextMargin = 0
        ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
        PopupMenus = [impDefault, impSelection]
        Zoom = 120.000000000000000000
        OnImageSelect = ImageEnMView1ImageSelect
        SelectionWidth = 3
        SelectionColor = clRed
        Style = iemsFlat
        AutoAdjustStyle = True
        ThumbnailsBackground = clBtnShadow
        ThumbnailsBackgroundSelected = clBlue
        ThumbnailsBackgroundHover = clYellow
        MultiSelectionOptions = []
        OnChanged = ImageEnMView1Changed
        OnAfterEvent = ImageEnMView1AfterEvent
        DefaultTopText = iedtNone
        DefaultInfoText = iedtFilename
        DefaultBottomText = iedtImageDimAndSize
        Align = alClient
        ThumbnailResampleFilter = rfNone
        SelectedFontColor = clWhite
        TabOrder = 1
        OnDblClick = ImageEnMView1DblClick
        OnDragDrop = ImageEnMView1DragDrop
        OnDragOver = ImageEnMView1DragOver
        OnEndDrag = ImageEnMView1EndDrag
        OnMouseMove = ImageEnMView1MouseMove
        ThreadPoolSize = 100
      end
      object PanelMessage: TPanel
        Left = 278
        Top = 327
        Width = 241
        Height = 57
        Color = clRed
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 55
          Top = 15
          Width = 141
          Height = 26
          Caption = #45936#51060#53552' '#47196#46377#51473#51077#45768#45796'. '#13#10#51104#49884#47564' '#44592#45796#47140#51452#49464#50836'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object ImageEnView1: TImageEnView
      Left = 232
      Top = 469
      Width = 105
      Height = 105
      Background = clBtnFace
      Visible = False
      TabOrder = 0
    end
  end
  object OpenImageEnDialog1: TOpenImageEnDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 88
    Top = 208
  end
  object ActionResult: TActionList
    Images = ImageList1
    Left = 856
    Top = 168
    object ActNormal: TAction
      Caption = #51221#49345
      ImageIndex = 0
      ShortCut = 116
    end
    object ActSmall: TAction
      Caption = #44221#48120
      ImageIndex = 1
      ShortCut = 117
    end
    object ActMiddle: TAction
      Caption = #51473#46321
      ImageIndex = 2
      ShortCut = 118
    end
    object ActBig: TAction
      Caption = #49900#44033
      ImageIndex = 3
      ShortCut = 119
    end
    object ActResultView: TAction
      Caption = #52769#51221#44208#44284
      ImageIndex = 4
    end
    object ActPracticeList: TAction
      Caption = #50868#46041#52376#48169
      ImageIndex = 5
    end
    object ActResultReport: TAction
      Caption = #52769#51221#44208#44284#48372#44256#49436
      ImageIndex = 6
    end
  end
  object ActionThumbnail: TActionList
    Images = ImageListThumbnail
    Left = 1192
    Top = 528
    object actThumbWindowMax: TAction
      Caption = #50040#45348#51068#52285' '#53356#44172
      ImageIndex = 1
      ShortCut = 121
    end
    object actThumbWindowMin: TAction
      Caption = #50040#45348#51060#52285' '#51089#44172
      ImageIndex = 0
      ShortCut = 120
    end
    object actThumbDelete: TAction
      Caption = #50040#45348#51068' '#49325#51228
      ImageIndex = 2
      ShortCut = 16430
    end
    object actThumbSaveAs: TAction
      Caption = #50040#45348#51068' '#51200#51109
      ImageIndex = 3
      ShortCut = 16467
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 20448456
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000705120D39113D2A9E19593EDD1F6A49FF1E6A48FF1B5D
          3EE313422EAB0717104900000009000000020000000000000000000000000000
          000201020210113C299D20724EFF229A6DFF22B481FF24C78FFF24C890FF23B5
          81FF229C6FFF20724FFF154831B5010503190000000300000000000000010102
          020E174E36C0218A61FF25C58EFF26C992FF44D7ABFF3AD3A1FF28CB94FF26CA
          92FF27CA93FF25C18BFF218860FF19593CD5020503180000000200000005113C
          2995238A63FF27C993FF26CA94FF27CB95FF0D824EFF1F9063FF42D1A5FF31CE
          9AFF29CB95FF27CB95FF29CB95FF238F66FF144731AF00000009040F0B2D2176
          53FA2BC693FF29CB95FF2BCC97FF2FCF9BFF0C804EFFABCBBBFF227F56FF43C0
          98FF42D6A7FF2DCE99FF2ACB96FF2DC996FF247C58FF07191147113A288F2DA1
          78FF2ECD98FF4AD8ACFF59DEB8FF5ADFB8FF0D7F4DFFF8F4F0FFDEEAE5FF4488
          68FF32A077FF52DCB2FF39D3A3FF30CF9BFF30A67DFF154933AF195A3ECA35C1
          93FF38D2A2FF239165FF0C7849FF0D7B4AFF0C7C4BFFF7EFEAFFF9F2EDFFFAFA
          F8FF86B09CFF207B54FF52CFAAFF48D8ACFF36C395FF1C694AE51C6B4AE946D1
          A4FF40D6A8FF0D7143FFFFFFFFFFFFFFFFFFFFFFFFFFF8F4F0FFF9F4F0FFF8F3
          F0FFFBF8F6FFC3D3CAFF296D4CFF35AA81FF49D5ABFF207853FA1D6B4BE35CD8
          B3FF45D9ACFF0C6E42FFDFD0CAFFE0D2CDFFE1D4CEFFF9F6F3FFFAF7F4FFF9F6
          F2FFECE3DFFFAEB9ABFF296D4CFF32AA81FF62DFBBFF227D59FC195E43C367D0
          B1FF50DEB2FF1C895DFF0C6E41FF0C7043FF0B7244FFFAF8F6FFF8F5F2FFE5DD
          D9FF74957FFF1D7651FF48CEA5FF52E0B5FF6CD7B7FF1F7050DF113C2B7D5BB7
          98FF61E3BEFF54E1B9FF57E3BCFF5AE4BFFF0C6E42FFF2EEEAFFC8CAC2FF3A73
          55FF339D77FF59E3BDFF58E3BBFF63E4C0FF65C1A5FF164F399E040E0A1F2C89
          67F58CE8CEFF5BE3BDFF5DE5BFFF5FE8C1FF0C6B3FFF95A797FF1E6948FF50C6
          A4FF61E9C5FF5FE8C1FF5FE5BFFF91EBD4FF2F9670FC07181236000000021242
          307C4CAE8CFF97F0DAFF67E8C4FF62EAC4FF0D673CFF2B8462FF65E5C3FF69ED
          CBFF67EAC8FF6EECC9FF9EF3DCFF52B493FF16543D9A00000005000000000002
          0105195D44A550B393FFA3EDDAFF95F2D9FF86EFD6FF78EED0FF79EFD1FF87F0
          D7FF96F2DDFFA0ECD8FF4CB592FF1C6C4FB80103030C00000001000000000000
          000000000002124633782F9F77F76AC9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1
          C9FF6DCEAFFF30A67DF916563F8F010201080000000100000000000000000000
          00000000000000000001040F0B1B144E3A7E207F5FC226926DDA269670DF2185
          63C816543F850617112900000003000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          001100000011000000100000000B00000003000000000000000017417CCA2159
          A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
          A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
          B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
          E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
          BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
          E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
          D2FF3C87C6FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
          EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
          E6FF4FA0D5FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
          EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
          F5FF75C8EDFF55A3D7FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
          FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
          FEFF97E5FCFF62BBE7FF4AA0D6FF4A9DD5FF91C3E3FF8DBCDCFF8FBDE0FF5FA3
          D6FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
          FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFFBBE6F3FFA68E78FFA6BABDFFB2E1
          F3FFB9E6F7FFB3E0F0FF8EADD1FF000000180000000B00000007398ECBFFD0F8
          FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFD3EDF3FFAD744CFF9A6841FFBEB8
          ADFFD1E1E3FF975D32FF8A6E59FF0C07032E00000007000000013B92CEFFD3F9
          FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF9CC3E0FFAD886CFFDBB891FFB07F
          53FF9B643AFF9F663DFFDBB67EFF8E5D33EF311D0F67000000063D97D1FFE2FC
          FEFFE2FCFEFFE1FCFEFFD3F3FAFF428FC1EC0B111523382A1E58C49870FFEAD2
          B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000082E739DBF3E9A
          D3FF3E99D3FF3E99D3FF3E97D2FF143245590000000200000003382C204E9877
          58CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B00000003000000020000
          0003000000030000000400000003000000020000000000000000000000010000
          000200000005CAA27AFF846A50AC110D0A1B0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090101
          010E010101100101011001010110010101100101011001010111010101110101
          011101010111010101100101010B0000000300000000000000001D4783CA2860
          AFFF2962B1FF2961B1FF2860B0FF285FB0FF275EAFFF275EAEFF275CAEFF275C
          AEFF275BADFF265AADFF2659ABFF214C94E304091129000000022965AFFF3671
          B7FF5C9FD8FF75C1EFFF4BAAE8FF49A7E8FF46A5E7FF44A3E6FF41A3E6FF40A1
          E5FF3D9FE4FF3B9FE5FF3A9EE5FF2E7AC7FF132C528B000000082F6FB8FF4E89
          C4FF4A8FCDFF9FDAF7FF67BDEFFF59B3ECFF56B2ECFF52B0EBFF91C9F0FFA1CE
          EBFF9DC9E6FF9BC8E6FF9DCBEAFF83BBE7FF214D8DD50101010D3376BDFF70AB
          D6FF428DCCFFA2D6F2FF97D7F7FF6AC1F2FF67BEF1FF64BDEFFFAAD5EFFF2B7F
          5FFF046635FF046633FF2C7E61FFA3CFECFF306DBBFF060C162F367BC2FF92CA
          E9FF54A3DAFF83BFE5FFC4EFFDFF7BCCF5FF78CBF5FF76C9F4FFB1D9EEFF067B
          45FF2FD19DFF23CD94FF057A44FFA9D4EBFF4690CFFF153052813982C5FFB1E4
          F6FF78CBF0FF5AA7DCFFD3F5FEFFE8F9FDFFE2F2F7FFDDF0F4FFD4E7ECFF077D
          48FF36D6A5FF27D199FF067C47FFC1DBE7FFB9D6E8FF7692B4E13C88CAFFC9F6
          FFFF9AE7FEFF66BFEBFF50A4DBFFA3CCE6FF05723FFF05713EFF05703DFF087F
          4AFF3EDBACFF2DD49FFF077D48FF046C39FF046C39FF046B38FF3B8ECEFFCEF8
          FFFFA9EDFFFF9FEAFFFF95E5FDFFC5EDFAFF469B7FFF6BB498FF4DDCB1FF34D9
          A9FF36D9A9FF34D9A9FF30D6A3FF40D7A8FF63AA8EFF04391CB53E93D0FFD1F9
          FFFFB1F1FFFFADEFFFFFA9EEFFFFC2F1FEFFCEECEEFF2D966CFF8BD1BAFF58E3
          BEFF5CE6C0FF5BE5BEFF51DFB7FF7DCCB2FF0E633BE40006031A4097D3FFD4FA
          FFFFB8F4FFFFB5F2FEFFB3F3FFFFBBEEFBFF98C4E3FF7AB3C0FF359C71FF9DE5
          D2FF6EEDCBFF6DECC9FF91E2CAFF2E895EFD021A0E4700000003429CD6FFE2FC
          FEFFE2FCFEFFE1FCFEFFD4F5FBFF4793C6EC080E121E0303030C0B472F8964B4
          94FF96EDD7FF8BEAD2FF5CA98AFF053A228A00000005000000013276A0BF439F
          D8FF439ED8FF439ED8FF439CD7FF16344759000000020000000000020107136F
          4AC791CCB6FF8BC9B2FF0A6039CB000101090000000100000000000000020000
          0003000000030000000400000003000000020000000000000000000000010313
          0D252D956CF321875AF501100A27000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010A35245D052F1D6000000002000000000000000000000000}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 856
    Top = 224
    PixelsPerInch = 96
    object cxStyleNormal: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clRed
    end
  end
  object ImageList1: TImageList
    Left = 856
    Top = 336
    Bitmap = {
      494C01010D001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008080800000000000000000000000000000000000000000000080
      8000000000000080800000000000008080000000000000808000000000000000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000FFFF0000FFFF00000000000000
      00000000FF000000800000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008000
      0000800000008000000080000000000000000000000000808000000000000080
      800000000000008080000000000000FFFF0000FFFF0000FFFF00000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000000000000000000000000000000000000008080000000
      0000008080000000000000808000808080008080800080808000008080000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008080000080800000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00000000008080
      8000808080008080800000000000808080008080800080808000800000008000
      0000000000000000000000000000000000000000000000808000000000000080
      8000000000000080800000000000008080000000000000808000000000000000
      0000008080000000000000808000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00008080000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00808080008080800080000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000080808000808080008080800080808000808080008080800000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000808000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00808080008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000080808000FFFFFF0080808000808080000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080008080800000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000008080800080808000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808000008080000080800000808000008080000080800000808000008080
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      FF00000000008080800000000000000000000000000080808000000000000000
      FF00000000000000000000000000000000000000000000000000808080008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080800000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000008080800000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000008080800000000000000000000000000000000000808080000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      0000808080000000000000000000000000000000000000000000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF008080800000000000808080000000FF000000FF000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000808080000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000FF000000FF000000FF000000FF000000FF00000000008080
      8000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000FF000000FF000000FF000000FF000000FF00000000008080
      8000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000008080
      800000000000FF000000FF000000FF000000FF000000FF000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00808080000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00008080800000000000FF000000FF000000FF00000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000FF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000008080800000000000FF0000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000FF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080800000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808000008080000080800000808000008080000080800000808000008080
      0000808080000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FDBF000000000000
      F99F000000000000F18F000000000000E187000000000000C183000000000000
      818100000000000000000000000000008181000000000000C183000000000000
      E187000000000000F18F000000000000F99F000000000000FDBF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFBDFFBFFFFFF7F
      FFF99FF9FEFFFF3F80000000FCFFFF1FFFF99FF9F8FFFF0FFFFBDFFBF0FFFF07
      E1C7E01FE0FFFF03F18FF18FC0FF0001F18FF18F8000FF03F18FF18FC0FFFF07
      F01FF01FE0FFFF0FF18FF18FF0FFFF1FF18FF18FF8FFFF3FF18FF18FFCFFFF7F
      E01FE01FFEFFFFFFFFFFFFFFFFFFFFFFC001FFCFFFFFFFFFC000FFC7C007DFFF
      D000FFC3AAA39FFFE000000100010001F00100012A219FFFF0013FC35411DFFF
      00011DC70000E007000122072AA0F1FB000100078010F1FF002F3027C008F1FF
      000F00470005F1FF001F3867F00BF1FF001F00870001F1FF001F3CE7FC06F1FF
      001F00070000E1FF001F0007FFFFFFFFF81FFFFFFFFFFFFFE007FFFF8003CFE7
      C00300008003C387800100008003C10780010000C007E00F00000000C007E00F
      00000000E00FE00F00000000E00FC00700000000F01F800300000000F01F0001
      00000000F83FF83F80010000F83FF83F80010000FC7FFC7FC0030000FC7FFC7F
      E0070000FEFFFEFFF81FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageListThumbnail: TImageList
    Left = 1192
    Top = 576
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00800000008000000080000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000FFFFFF008000000080000000800000008000000080000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008000000080000000800000008000000080000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00800000008000000080000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFBC001
      E00FEAAFEFFF8031E00FFFFFC7F78031E00FEEEFC7EF8031E00FFEFFE3CF8001
      E00FE00FF19F8001E00FE00FF83F8001E00FE00FFC7F8FF1E00FE00FF83F8FF1
      E00FE00FF1BF8FF1FEFFE00FC3CF8FF1EEEFE00F87E78FF1FFFFE00F9FF38FF5
      EAAFE00FFFFF8001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupResult: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageList1
    Left = 856
    Top = 112
    object N5: TMenuItem
      Action = ActNormal
    end
    object N6: TMenuItem
      Action = ActSmall
    end
    object N7: TMenuItem
      Action = ActMiddle
    end
    object N8: TMenuItem
      Action = ActBig
    end
    object N9: TMenuItem
      Action = ActResultView
    end
    object N10: TMenuItem
      Action = ActPracticeList
    end
    object N11: TMenuItem
      Action = ActResultReport
    end
  end
  object PopupThumb: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListThumbnail
    Left = 1192
    Top = 480
    object N1: TMenuItem
      Action = actThumbWindowMin
    end
    object N2: TMenuItem
      Action = actThumbWindowMax
    end
    object N4: TMenuItem
      Action = actThumbSaveAs
    end
  end
  object q_check_picture: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select id from NSTATIC_CHECK_RESULTIMG'
      'where result_id = :result_id')
    Left = 856
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result_id'
        ParamType = ptInput
      end>
    object q_check_pictureID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object q_delete_result_practice: TUniSQL
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'delete from CUST_STATIC_PRACTICE'
      'where RESULT_ID = :RESULT_ID')
    Left = 1288
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'RESULT_ID'
        ParamType = ptInput
      end>
  end
  object q_result_value: TUniQuery
    UpdatingTable = 'CUST_STATIC_RESULT_VALUE'
    SQLInsert.Strings = (
      'INSERT INTO CUST_STATIC_RESULT_VALUE'
      
        '  (ID, STATIC_RESULT_ID, CHECK_POINT_ID, CHECK_VALUE, CUSTOMER_I' +
        'D, COMPANY_ID, CHECK_BODY_ID)'
      'VALUES'
      
        '  (:ID, :STATIC_RESULT_ID, :CHECK_POINT_ID, :CHECK_VALUE, :CUSTO' +
        'MER_ID, :COMPANY_ID, :CHECK_BODY_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CUST_STATIC_RESULT_VALUE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CUST_STATIC_RESULT_VALUE'
      'SET'
      
        '  ID = :ID, STATIC_RESULT_ID = :STATIC_RESULT_ID, CHECK_POINT_ID' +
        ' = :CHECK_POINT_ID, CHECK_VALUE = :CHECK_VALUE, CUSTOMER_ID = :C' +
        'USTOMER_ID, COMPANY_ID = :COMPANY_ID, CHECK_BODY_ID = :CHECK_BOD' +
        'Y_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CUST_STATIC_RESULT_VALUE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, STATIC_RESULT_ID, CHECK_POINT_ID, CHECK_VALUE, CUSTOM' +
        'ER_ID, COMPANY_ID, CHECK_BODY_ID FROM CUST_STATIC_RESULT_VALUE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from CUST_STATIC_RESULT_VALUE'
      'where static_result_id = :static_result_id')
    Left = 1288
    Top = 512
    ParamData = <
      item
        DataType = ftString
        Name = 'static_result_id'
        ParamType = ptInput
      end>
    object q_result_valueID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_result_valueSTATIC_RESULT_ID: TStringField
      FieldName = 'STATIC_RESULT_ID'
      Size = 17
    end
    object q_result_valueCHECK_POINT_ID: TStringField
      FieldName = 'CHECK_POINT_ID'
      Size = 17
    end
    object q_result_valueCHECK_VALUE: TIntegerField
      FieldName = 'CHECK_VALUE'
    end
    object q_result_valueCUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 17
    end
    object q_result_valueCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object q_result_valueCHECK_BODY_ID: TStringField
      FieldName = 'CHECK_BODY_ID'
      Size = 17
    end
    object q_result_valuePRACTICE_ID: TStringField
      FieldName = 'PRACTICE_ID'
      Size = 17
    end
  end
  object SaveImageEnDialog1: TSaveImageEnDialog
    Left = 1192
    Top = 624
  end
  object frxReport: TfrxReport
    Version = '5.1.9'
    DataSet = frxDBDataset
    DataSetName = 'frxDBDataset'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41473.429093263900000000
    ReportOptions.LastChange = 44126.890637696760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 808
    Top = 432
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Memo1: TfrxMemoView
        Left = 411.968770000000000000
        Top = 6.574830000000000000
        Width = 234.330860000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #51088#49464#54217#44032' '#48708#44368#54868#47732)
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        Left = 1.440940000000000000
        Top = 112.590600000000000000
        Width = 245.669450000000000000
        Height = 529.134200000000000000
        Center = True
        DataField = 'Image1'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture2: TfrxPictureView
        Left = 248.787570000000000000
        Top = 112.590600000000000000
        Width = 245.669279130000000000
        Height = 529.134200000000000000
        Center = True
        DataField = 'Image3'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture3: TfrxPictureView
        Left = 529.913730000000000000
        Top = 112.590600000000000000
        Width = 245.669450000000000000
        Height = 529.134200000000000000
        Center = True
        DataField = 'Image2'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture4: TfrxPictureView
        Left = 777.819420000000000000
        Top = 112.590600000000000000
        Width = 245.669279130000000000
        Height = 529.134200000000000000
        Center = True
        DataField = 'Image4'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object frxDBDatasetImage1Date: TfrxMemoView
        Left = 3.338590000000000000
        Top = 645.504330000000000000
        Width = 241.889920000000000000
        Height = 18.897650000000000000
        DataField = 'Image1Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image1Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage2Date: TfrxMemoView
        Left = 531.031850000000000000
        Top = 645.504330000000000000
        Width = 241.889920000000000000
        Height = 18.897650000000000000
        DataField = 'Image2Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image2Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage3Date: TfrxMemoView
        Left = 249.685220000000000000
        Top = 645.504330000000000000
        Width = 241.889920000000000000
        Height = 18.897650000000000000
        DataField = 'Image3Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image3Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage4Date: TfrxMemoView
        Left = 778.819420000000000000
        Top = 645.504330000000000000
        Width = 241.889783310000000000
        Height = 18.897650000000000000
        DataField = 'Image4Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image4Date"]')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Top = 37.795300000000000000
        Width = 1046.929810000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo2: TfrxMemoView
        Left = 29.559060000000000000
        Top = 47.574830000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #54924#50896#47749':')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 208.078850000000000000
        Top = 47.574830000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #51204#54868#48264#54840':')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 865.512370000000000000
        Top = 19.118120000000000000
        Width = 52.913420000000000000
        Height = 15.118120000000000000
        Memo.UTF8W = (
          #52636#47141#51068':')
      end
      object Line2: TfrxLineView
        Top = 75.590600000000000000
        Width = 1046.929810000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo5: TfrxMemoView
        Left = 3.252010000000000000
        Top = 85.929190000000000000
        Width = 241.889920000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #51088#49464#48708#44368'('#51204')')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 250.260050000000000000
        Top = 85.149660000000000000
        Width = 241.889920000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #51088#49464#48708#44368'('#54980')')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 531.165740000000000000
        Top = 85.149660000000000000
        Width = 241.889920000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #51088#49464#48708#44368'('#51204')')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 778.835190000000000000
        Top = 85.149660000000000000
        Width = 241.889920000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          #51088#49464#48708#44368'('#54980')')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Left = 922.764380000000000000
        Top = 18.897650000000000000
        Width = 94.488250000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object frxDBDatasetmember_name: TfrxMemoView
        Left = 96.488250000000000000
        Top = 47.133890000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        DataField = 'member_name'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset."member_name"]')
        ParentFont = False
      end
      object frxDBDatasetmember_no: TfrxMemoView
        Left = 294.803340000000000000
        Top = 47.133890000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        DataField = 'member_no'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset."member_no"]')
        ParentFont = False
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = dxMemData
    BCDToCurrency = False
    Left = 808
    Top = 480
  end
  object dxMemData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 808
    Top = 528
    object dxMemDataImage1: TBlobField
      FieldName = 'Image1'
    end
    object dxMemDataImage2: TBlobField
      FieldName = 'Image2'
    end
    object dxMemDataImage3: TBlobField
      FieldName = 'Image3'
    end
    object dxMemDataImage4: TBlobField
      FieldName = 'Image4'
    end
    object dxMemDataImage1Date: TStringField
      DisplayWidth = 50
      FieldName = 'Image1Date'
      Size = 50
    end
    object dxMemDataImage2Date: TStringField
      DisplayWidth = 50
      FieldName = 'Image2Date'
      Size = 50
    end
    object dxMemDataImage3Date: TStringField
      DisplayWidth = 50
      FieldName = 'Image3Date'
      Size = 50
    end
    object dxMemDataImage4Date: TStringField
      DisplayWidth = 50
      FieldName = 'Image4Date'
      Size = 50
    end
    object dxMemDatamember_name: TStringField
      FieldName = 'member_name'
      Size = 30
    end
    object dxMemDatamember_no: TStringField
      FieldName = 'member_no'
      Size = 30
    end
  end
  object BMDThread1: TBMDThread
    UpdateEnabled = False
    OnExecute = BMDThread1Execute
    OnStart = BMDThread1Start
    OnTerminate = BMDThread1Terminate
    Left = 88
    Top = 280
  end
end