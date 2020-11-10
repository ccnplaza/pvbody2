object fmCompareSimulate: TfmCompareSimulate
  Left = 0
  Top = 0
  Caption = #49324#51204'/'#49324#54980#48708#44368
  ClientHeight = 669
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMember: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 669
    Align = alLeft
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 2
      Top = 97
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alTop
      Alignment = alTopCenter
      Caption = #49324#51652#45936#51060#53552
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 288
      Width = 197
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 191
        Height = 263
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
          OnCellClick = gridCheckCellClick
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
    end
    object cxGroupBox2: TcxGroupBox
      AlignWithMargins = True
      Left = 2
      Top = 2
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
      TabOrder = 1
      Height = 94
      Width = 197
      object Panel10: TPanel
        Left = 3
        Top = 16
        Width = 60
        Height = 22
        Caption = #54924#50896#47749
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 3
        Top = 38
        Width = 60
        Height = 22
        Caption = #50672#46973#52376
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
      end
      object pnlName: TPanel
        Left = 63
        Top = 16
        Width = 127
        Height = 22
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = pnlNameClick
      end
      object pnlNo: TPanel
        Left = 63
        Top = 38
        Width = 127
        Height = 22
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = pnlNameClick
      end
      object btnCustInfo: TBitBtn
        Left = 3
        Top = 60
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
        Left = 37
        Top = 60
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
      object btnRefresh: TBitBtn
        Left = 147
        Top = 60
        Width = 43
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
        TabOrder = 6
        OnClick = btnRefreshClick
      end
      object btnFavorite: TBitBtn
        Left = 71
        Top = 60
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
        TabOrder = 7
        OnClick = btnFavoriteClick
      end
    end
    object cxGroupBox4: TcxGroupBox
      AlignWithMargins = True
      Left = 2
      Top = 387
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Alignment = alTopCenter
      Caption = #48708#44368#45936#51060#53552
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 2
      Height = 280
      Width = 197
      object cxGrid2: TcxGrid
        Left = 3
        Top = 41
        Width = 191
        Height = 229
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridComp: TcxGridDBTableView
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
          OnCellClick = gridCompCellClick
          DataController.DataSource = dmDBCommon.d_compare_data
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
          object gridCompID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridCompMEMBER_ID: TcxGridDBColumn
            DataBinding.FieldName = 'MEMBER_ID'
            Visible = False
          end
          object gridCompCOMPARE_NAME: TcxGridDBColumn
            Caption = #48708#44368#51088#47308' '#49444#47749
            DataBinding.FieldName = 'COMPARE_NAME'
          end
          object gridCompIMAGE_CNT: TcxGridDBColumn
            Caption = #49324#51652
            DataBinding.FieldName = 'IMAGE_CNT'
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gridComp
        end
      end
      object Panel3: TPanel
        Left = 3
        Top = 15
        Width = 191
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnAdd: TBitBtn
          Left = 3
          Top = 0
          Width = 35
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
          Left = 37
          Top = 0
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
          Left = 71
          Top = 0
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
        object btnCompare: TBitBtn
          Left = 144
          Top = 0
          Width = 35
          Height = 25
          Hint = #48708#44368#48516#49437
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
          TabOrder = 3
        end
      end
    end
  end
  object pgcCompareFrame: TPanel
    Left = 201
    Top = 0
    Width = 891
    Height = 669
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = pgcCompareFrameResize
    object Splitter1: TSplitter
      Left = 441
      Top = 0
      Height = 669
      Beveled = True
      Color = clLime
      ParentColor = False
      ExplicitLeft = 56
      ExplicitHeight = 100
    end
    object compareRight: TcxGroupBox
      Tag = 1
      Left = 444
      Top = 0
      Align = alClient
      Caption = #49324#51204#49324#54980' '#48708#44368
      Style.BorderColor = clWindowFrame
      Style.LookAndFeel.SkinName = 'Black'
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 669
      Width = 447
      object Panel2: TPanel
        Left = 3
        Top = 15
        Width = 441
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 152
          Top = 6
          Width = 30
          Height = 13
          Caption = #49549#46020':'
        end
        object btnPlay: TcxButton
          Left = 16
          Top = 0
          Width = 65
          Height = 25
          Hint = 'Play'
          Caption = #51116#49373
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00040000000F0000000F00000007000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000EB0683FFF834324E131190D6A000000110000000600000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0011B37045FFDEAF77FFB47247FF773C20D2201009500000000F000000050000
            0001000000000000000000000000000000000000000000000000000000000000
            0010B6764BFFECC38FFFE8BA7DFFD8A66FFFAD693FFF6A371CBE170C06400000
            000D000000040000000100000000000000000000000000000000000000000000
            000FBB7C51FFEFCD9CFFE9BB7FFFE8BC80FFEABE83FFD39D6CFFA7623BFD5B30
            1AA90D07032C0000000B00000003000000010000000000000000000000000000
            000EBE8257FFF1D5ACFFEBC087FFE9BF85FFE8BD81FFE9BF82FFE9C087FFCD97
            65FF9F5933F74E29169408040221000000090000000200000000000000000000
            000DC0855EFFF5DEBBFFEDC68FFFEDC58DFFEBC289FFEAC084FFE8BC80FFE9BD
            82FFE8BB87FFC78E60FF965430EE4223137E0000000900000000000000000000
            000CC59067FFF9E9CFFFF3D4A3FFF2D09FFFF0CC98FFEEC890FFEBC088FFE9BE
            83FFEAC38AFFECC693FFE3B889FFA65B33FF0000000D00000000000000000000
            000BC9956EFFFAEFDAFFF4DAAEFFF5D8AAFFF2D5A6FFF1D1A1FFF1D0A2FFF1D2
            A8FFEDCDA1FFCC956BFF9A5D39E33A2314680000000700000000000000000000
            000ACC9B73FFFCF4E3FFF8E0B7FFF6DDB4FFF6DEB4FFF7E2C0FFF6E1C1FFD9B2
            8CFFB0754EF14D301F7E04030216000000060000000100000000000000000000
            0009CDA077FFFEF7E9FFFBE7C2FFFBEBCCFFFBEFD6FFE3C5A7FFC08B65F96544
            2E960B07051E0000000600000002000000000000000000000000000000000000
            0008D0A47CFFFEFBEFFFFDF4E0FFEEDAC1FFD1A07DFF78553CA717100B2C0000
            0007000000020000000000000000000000000000000000000000000000000000
            0007D2A77FFFF5EADBFFD8B291FF916D50BE261C143C00000007000000020000
            0000000000000000000000000000000000000000000000000000000000000000
            0005D5AA83FFA98462D3372B204F000000070000000200000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000040000000500000002000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnPlayClick
        end
        object btnStopPlay: TcxButton
          Left = 82
          Top = 0
          Width = 64
          Height = 25
          Caption = #51221#51648
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000000000000000000000000000000000008A6153C2B57E
            6CFFB57F6CFF00000000B47E6BFFB47D6BFF00000000B37C6AFFB37C6AFF0000
            0000B27B69FFB27B69FF00000000B27A68FFB17A68FF875D4EC2B7816EFF372D
            1038372D1038372D1038372D1038372D1038372D1038372D1038372D1038372D
            1038372D1038372D1038372D1038372D1038372D1038B27B69FFB78270FF372D
            1038372D1038372D1038372D1038372D1038372D1038372D1038372D1038372D
            1038372D1038372D1038372D1038372D1038372D1038B37B6AFF00000000372D
            1038372D1038372D103A352B103F352A1043352A0F4433290F4433290F443329
            0F44352A0F44352B1040372D103A372D1038372D103800000000B98573FF372D
            1038372D1038352B103E8E613ECEB1754FFFAF734DFFAF714AFFAD6F49FFAC6D
            46FFAB6B45FF875734CF352B103F372D1038372D1038B57E6CFFBA8775FF372D
            1038372D1038362B1041BA835CFFEED6ABFFEDD4AAFFEDD3A8FFECD2A6FFECD0
            A4FFEBD0A3FFB47950FF352A0F42372D1038372D1038B5806EFF00000000372D
            1038372D1038362B1041BF8B64FFF1DDB7FFE8C797FFE7C696FFE7C695FFE7C6
            94FFEFD7AEFFB87F58FF352A0F42372D1038372D103800000000BC8B79FF372D
            1038372D1038352B103FC3936DFFF5E4C0FFEACC9DFFE9CB9CFFEACB9CFFE9CA
            9BFFF2DEB9FFBC8760FF362B1041372D1038372D1038B88371FFBE8D7BFF372D
            1038372D1038352B103EC99C75FFF8EBCBFFF0D8AEFFF0D8AFFFEFD7AEFFEFD5
            ABFFF6E7C4FFC18E68FF352B1040372D1038372D1038B98573FF00000000372D
            1038372D1038352B103DCDA37DFFFAF1D3FFF3DFB8FFF3DEB6FFF2DDB6FFF2DC
            B5FFF9EECFFFC69770FF352B103F372D1038372D103800000000C08F7FFF372D
            1038372D1038362C103CD0A983FFFBF4D7FFFCF3D6FFFBF3D6FFFBF2D5FFFBF2
            D5FFFBF1D4FFCA9E79FF352B103D372D1038372D1038BC8977FFC19281FF372D
            1038372D1038362C103AAB8D6ACED3AD88FFD2AC86FFD2AA85FFD1AA84FFD0A8
            83FFCFA781FFA68663CE362C103B372D1038372D1038BD8A79FF00000000372D
            1038372D1038372D1039372D103A362C103A362C103B362C103B362C103B362C
            103C362C103B362C103A372D1039372D1038372D103800000000C49583FF372D
            1038372D1038372D1038372D1038372D1038372D1038372D1038372D1038372D
            1038372D1038372D1038372D1038372D1038372D1038BF8E7CFFC59786FF372D
            1038372D1038372D1038372D1038372D1038372D1038372D1038372D1038372D
            1038372D1038372D1038372D1038372D1038372D1038C0907EFF977367C2C598
            86FFC69786FF00000000C59785FFC49684FF00000000C39584FFC49583FF0000
            0000C39382FFC29381FF00000000C19280FFC29280FF936E61C2}
          TabOrder = 1
          OnClick = btnStopPlayClick
        end
        object speTime: TcxSpinEdit
          Left = 187
          Top = 2
          Properties.Alignment.Horz = taCenter
          Properties.EditFormat = '#'
          Properties.ImmediatePost = True
          Properties.MaxValue = 10.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.UseLeftAlignmentOnEditing = False
          Properties.OnEditValueChanged = speTimePropertiesEditValueChanged
          TabOrder = 2
          Value = 5
          Width = 47
        end
        object btnDelImage: TcxButton
          Left = 259
          Top = 0
          Width = 64
          Height = 25
          Caption = #49325#51228
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
          TabOrder = 3
          OnClick = btnDelImageClick
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 40
        Width = 441
        Height = 619
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Black'
        ClientRectBottom = 614
        ClientRectLeft = 2
        ClientRectRight = 436
        ClientRectTop = 25
        object cxTabSheet1: TcxTabSheet
          Caption = #50040#45348#51068
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ImageEnMView1: TImageEnMView
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 432
            Height = 587
            Cursor = crHandPoint
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Background = clInactiveCaptionText
            ParentCtl3D = False
            ScrollBars = ssHorizontal
            StoreType = ietNormal
            ThumbWidth = 150
            ThumbHeight = 170
            HorizBorder = 2
            VertBorder = 1
            UpperGap = 2
            TextMargin = 0
            ThumbnailOptionsEx = [ietxCenterThumbnailColumn, ietxShowIconForUnknownFormat, ietxShowIconWhileLoading]
            MouseInteract = [mmiScroll, mmiSelect]
            GridWidth = 25
            SelectionColor = clRed
            DrawImageBackground = True
            TransitionEffect = iettFadeIn
            TransitionDuration = 500
            Style = iemsACD
            ThumbnailsBackground = clWhite
            ThumbnailsBackgroundSelected = clBtnFace
            MultiSelectionOptions = []
            ThumbnailsBorderWidth = 2
            ThumbnailsBorderColor = clInactiveCaptionText
            ThumbnailsInternalBorder = True
            Align = alClient
            TabOrder = 0
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = #51116#49373
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ImageEnView1: TImageEnView
            Left = 0
            Top = 0
            Width = 434
            Height = 589
            Background = clBlack
            ParentCtl3D = False
            AutoFit = True
            AutoStretch = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
    object compareLeft: TcxGroupBox
      Tag = 1
      Left = 0
      Top = 0
      Align = alLeft
      Caption = #49324#51204#49324#54980' '#48708#44368
      Style.BorderColor = clWindowFrame
      Style.LookAndFeel.SkinName = 'Black'
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Height = 669
      Width = 441
      object ImageEnMView: TImageEnMView
        AlignWithMargins = True
        Left = 4
        Top = 41
        Width = 433
        Height = 617
        Cursor = crHandPoint
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Background = clInactiveCaptionText
        ParentCtl3D = False
        ScrollBars = ssHorizontal
        StoreType = ietNormal
        ThumbWidth = 150
        ThumbHeight = 170
        HorizBorder = 2
        VertBorder = 1
        UpperGap = 2
        TextMargin = 0
        MouseInteract = [mmiScroll, mmiSelect]
        GridWidth = 25
        SelectionColor = clRed
        DrawImageBackground = True
        Style = iemsACD
        ThumbnailsBackground = clWhite
        ThumbnailsBackgroundSelected = clBtnFace
        MultiSelectionOptions = []
        ThumbnailsBorderWidth = 2
        ThumbnailsBorderColor = clInactiveCaptionText
        ThumbnailsInternalBorder = True
        Align = alClient
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 3
        Top = 15
        Width = 435
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnAddToCompare: TcxButton
          Left = 230
          Top = 0
          Width = 149
          Height = 25
          Hint = #44592#48376#53356#44592#47196'...'
          Caption = #48708#44368#45936#51060#53552#50640' '#52628#44032
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000090000
            000D0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
            000F0000000F00000010000000100000000F0000000A000000021D5A42C0287D
            5AFF277D5AFF277C5AFF277C59FF277B59FF277B58FF277A58FF267A58FF2678
            57FF267A56FF267856FF267755FF257756FF1B563DC1000000092B825FFF53C8
            A2FF51C7A0FF50C7A0FF4EC69FFF4DC59DFF4CC59DFF4AC49BFF49C39BFF47C3
            99FF45C298FF45C198FF43C096FF42C095FF277B59FF0000000D2C8664FF5DCC
            AAFF43C398FF42C299FF42C298FF43C298FF65CFADFF74D5B6FF4CC59DFF40C0
            95FF3EC095FF3EBF94FF3DBF94FF4BC49CFF297F5CFF0000000E2F8B68FF67D1
            B0FF48C69EFF48C59CFF47C59CFF5FCDABFF25825DFF00673BFF51BA96FF44C3
            9AFF43C399FF43C298FF42C298FF54C9A4FF2B8360FF0000000D31906DFF71D5
            B8FF4DC9A3FF4DC9A1FF60CFADFF3B9372FF87AF9DFFB1CFC1FF26875FFF53CA
            A5FF48C69EFF47C59DFF47C59DFF5DCEABFF2D8865FF0000000C339671FF7ADA
            BFFF52CCA7FF60D1AFFF4BA183FF699782FFF8F1EEFFF9F3EEFF357F5DFF5CBD
            9DFF4EC9A2FF4CC9A2FF4CC8A1FF67D2B2FF2F8C69FF0000000B359A76FF83DE
            C6FF59D0ADFF5AB094FF4F826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1C74
            4FFF69D5B4FF53CDA7FF52CCA6FF72D7B9FF32926EFF0000000B39A07CFF8CE2
            CBFF5FD4B3FF0D6742FFD2D2CBFF6A8F77FF136A43FF73967EFFF1E8E3FF72A2
            8BFF4CA384FF6AD9BAFF5AD2AFFF7BDBC0FF339773FF0000000A3AA681FF97E9
            D5FF69DEBFFF52BC9DFF0B6942FF389B79FF66DABAFF349773FF73967EFFF0EA
            E7FF4F886CFF60B89BFF67DABAFF87E2CAFF359C78FF000000093FAD88FF9FEC
            DAFF6DE1C3FF6DE1C3FF6DE0C2FF6CDFC1FF6BE0C1FF6BDFC0FF2C8966FF698E
            76FFE6E1DCFF176B47FF5FD1B2FF90E7D1FF3CA481FF0000000842B28DFFA5EE
            DDFF70E4C7FF70E4C6FF70E3C6FF6FE3C5FF6FE2C5FF6EE2C4FF6EE2C4FF3C9E
            7DFF1F6D4AFF2D8965FF6CE0C2FF97EAD6FF3DAA86FF0000000744B691FFAAEF
            E0FF73E6C9FF73E6C9FF72E5C9FF72E5C8FF71E5C8FF71E5C8FF71E4C7FF71E4
            C7FF64D3B5FF6DDFC2FF6FE3C6FF9EECDAFF41AF8BFF0000000746B994FFAEF1
            E2FF74E8CBFF74E7CBFF74E7CBFF74E7CAFF74E6CAFF73E6CAFF73E6CAFF73E6
            C9FF73E5C9FF72E5C9FF72E5C8FFA4EEDDFF42B38EFF0000000647BC97FFC5F4
            EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4
            EBFFC5F4EBFFC5F4EBFFC5F4EBFFC5F4EBFF44B792FF00000005348B70BF47BC
            97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BC97FF47BB97FF47BB
            97FF47BB96FF46BB96FF47BA95FF45BA94FF338A6EC000000003}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnAddToCompareClick
        end
      end
    end
  end
  object ImageEnVect1Print: TImageEnVect
    Tag = 1
    Left = 243
    Top = 124
    Width = 70
    Height = 65
    Background = clInactiveCaptionText
    ParentCtl3D = False
    EnableInteractionHints = True
    Visible = False
    TabOrder = 2
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
    ReportOptions.LastChange = 41474.576127372680000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 880
    Top = 504
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
          #54924#50896#48264#54840':')
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
    Left = 880
    Top = 552
  end
  object dxMemData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 880
    Top = 600
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
  object PopupThumb: TPopupMenu
    AutoHotkeys = maManual
    Left = 544
    Top = 472
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
  object ActionThumbnail: TActionList
    Images = ImageListThumbnail
    Left = 544
    Top = 520
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
      OnExecute = actThumbDeleteExecute
    end
    object actThumbSaveAs: TAction
      Caption = #50040#45348#51068' '#51200#51109
      ImageIndex = 3
      ShortCut = 16467
      OnExecute = actThumbSaveAsExecute
    end
    object ActAddLayer: TAction
      Caption = #49464#53944#52628#44032
      ImageIndex = 4
    end
    object ActSaveLayer: TAction
      Caption = #49464#53944#48320#44221#51200#51109
      ImageIndex = 5
    end
    object ActDeleteLayer: TAction
      Caption = #49464#53944#49325#51228
      ImageIndex = 6
      OnExecute = ActDeleteLayerExecute
    end
    object ActClearAll: TAction
      Caption = #49464#53944' '#52488#44592#54868
    end
    object ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage
      Category = 'ImageEnMView'
      Caption = 'Delete'
      Hint = 'Remove the selected image'
      ImageIndex = 5
      ShortCut = 16430
    end
  end
  object SaveImageEnDialog1: TSaveImageEnDialog
    Filter = 
      'JPEG Bitmap (JPG)|*.jpg|CompuServe Bitmap (GIF)|*.gif|TIFF Bitma' +
      'p (TIF)|*.tif|PaintBrush (PCX)|*.pcx|Portable Network Graphics (' +
      'PNG)|*.png|Windows Bitmap (BMP)|*.bmp|OS/2 Bitmap (BMP)|*.bmp|Ta' +
      'rga Bitmap (TGA)|*.tga|Portable PixMap (PXM)|*.pxm|Portable PixM' +
      'ap (PPM)|*.ppm|Portable GreyMap (PGM)|*.pgm|Portable Bitmap (PBM' +
      ')|*.pbm|JPEG2000 (JP2)|*.jp2|JPEG2000 Code Stream (J2K)|*.j2k|Mu' +
      'ltipage PCX (DCX)|*.dcx'
    ExOptions = [sdShowPreview, sdShowAdvanced]
    Left = 544
    Top = 616
  end
  object PopupLayer: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListThumbnail
    Left = 792
    Top = 200
    object N5: TMenuItem
      Action = ActAddLayer
    end
    object N6: TMenuItem
      Action = ActSaveLayer
    end
    object N7: TMenuItem
      Action = ActDeleteLayer
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Action = ActClearAll
    end
  end
  object ImageListThumbnail: TImageList
    Left = 544
    Top = 568
    Bitmap = {
      494C01010B000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000808080008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000000000000000000000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000000000
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000000000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000000000000000000000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008080
      800080808000808080008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFF01FFFFFF0000
      FF8101FF00FF0000FFFF01FF00FF0000FFE101FF00FF0000FFFF01FF00FF0000
      FFE1FF60001B0000FFFFFE6000190000FF81FC0000000000FFFFFE6000190000
      00E1FF60001B000000FF01FF00FF000000E101FF00FF000000FF01FF00FF0000
      FF8101FF00FF0000FFFF01FFFFFF0000FFFFFFFFFFFFFFFFFFFFFC00FFFFFFFF
      FFFFFC00FFFFFF81FFFFFC00FFFFFFFFFC7FFC00FFFFFFE1FC7FFC00FFFFFFFF
      FC7F8000FFFFFFE1E00F0200E00FFFFFE00F0200E00FC381E00F0000E00FC3FF
      FC7F0000FFFF00E1FC7F0000FFFF00FFFC7F1E3FFFFF00E1FFFF1E3FFFFF00FF
      FFFF1E3FFFFFC381FFFF003FFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC001
      E00FEAAFEFFF8031E00FFFFFC7F78031E00FEEEFC7EF8031E00FFEFFE3CF8001
      E00FE00FF19F8001E00FE00FF83F8001E00FE00FFC7F8FF1E00FE00FF83F8FF1
      E00FE00FF1BF8FF1FEFFE00FC3CF8FF1EEEFE00F87E78FF1FFFFE00F9FF38FF5
      EAAFE00FFFFF8001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object CUSTOMER_IMAGE3_SEL_UID: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE3_SEL_UID'
    Connection = dmDBCommon.UniDBConnection
    Left = 336
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
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
        Name = 'CHECK_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CUST_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftDateTime
        Name = 'PICTURE_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'IMAGE_DATA'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE3_SEL_UID'
    object CUSTOMER_IMAGE3_SEL_UIDID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object CUSTOMER_IMAGE3_SEL_UIDCHECK_ID: TStringField
      FieldName = 'CHECK_ID'
      Size = 17
    end
    object CUSTOMER_IMAGE3_SEL_UIDCUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object CUSTOMER_IMAGE3_SEL_UIDIMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
    object CUSTOMER_IMAGE3_SEL_UIDPICTURE_DATE: TDateTimeField
      FieldName = 'PICTURE_DATE'
    end
    object CUSTOMER_IMAGE3_SEL_UIDIMAGE_DATA: TBlobField
      FieldName = 'IMAGE_DATA'
    end
    object CUSTOMER_IMAGE3_SEL_UIDDRAW_DATA: TBlobField
      FieldName = 'DRAW_DATA'
    end
  end
  object CUST_COMPARE_MULTI_INS: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_MULTI_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 336
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDateTime
        Name = 'IMAGE_DATE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUST_COMPARE_MULTI_INS'
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 704
    Top = 232
  end
  object CUST_COMPARE_MULTI_DEL: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_MULTI_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 336
    Top = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUST_COMPARE_MULTI_DEL'
  end
  object q_delete_compare_image: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      
        'delete from CUST_COMPARE_MULTI where data_id = :data_id and imag' +
        'e_id = :image_id;')
    Left = 920
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'data_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'image_id'
        ParamType = ptInput
      end>
  end
end
