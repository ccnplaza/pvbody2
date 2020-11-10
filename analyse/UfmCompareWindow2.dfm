object fmCompareWindow2: TfmCompareWindow2
  Left = 0
  Top = 0
  Caption = #49324#51204'/'#49324#54980#48708#44368
  ClientHeight = 767
  ClientWidth = 1357
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
  object Splitter1: TSplitter
    Left = 520
    Top = 0
    Height = 767
    Color = clWindowFrame
    ParentColor = False
    ExplicitLeft = 515
    ExplicitTop = -6
    ExplicitHeight = 773
  end
  object pnlMember: TPanel
    Left = 0
    Top = 0
    Width = 210
    Height = 767
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      AlignWithMargins = True
      Left = 1
      Top = 542
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alBottom
      Caption = #48708#44368#45936#51060#53552
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 224
      Width = 208
      object Panel7: TPanel
        Left = 3
        Top = 15
        Width = 202
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btnAdd: TBitBtn
          Left = 0
          Top = 0
          Width = 75
          Height = 25
          Hint = #49888#44508#46321#47197
          Caption = #49352#47196#46321#47197
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnAddClick
        end
        object btnSave: TBitBtn
          Left = 74
          Top = 0
          Width = 72
          Height = 25
          Hint = #48320#44221#51200#51109
          Caption = #50629#45936#51060#53944
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnSaveClick
        end
        object btnDel: TBitBtn
          Left = 145
          Top = 0
          Width = 56
          Height = 25
          Hint = #49440#53469#49325#51228
          Caption = #49325#51228
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnDelClick
        end
      end
      object cxGrid3: TcxGrid
        Left = 3
        Top = 42
        Width = 202
        Height = 172
        Align = alClient
        PopupMenu = PopupLayer
        TabOrder = 1
        LookAndFeel.SkinName = 'Black'
        object gridCompareWin: TcxGridDBTableView
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
          OnCellDblClick = gridCompareWinCellDblClick
          DataController.DataSource = ds_IMAGE_LAYERS_SEL
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridCompareWinID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridCompareWinMEMBER_ID: TcxGridDBColumn
            DataBinding.FieldName = 'MEMBER_ID'
            Visible = False
          end
          object gridCompareWinP_DATE: TcxGridDBColumn
            Caption = #48708#44368#51068#51088
            DataBinding.FieldName = 'P_DATE'
            Width = 83
          end
          object gridCompareWinC_NAME: TcxGridDBColumn
            Caption = #48708#44368#47749
            DataBinding.FieldName = 'C_NAME'
            Width = 105
          end
          object gridCompareWinC_COMMENT: TcxGridDBColumn
            DataBinding.FieldName = 'C_COMMENT'
            Visible = False
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = gridCompareWin
        end
      end
    end
    object cxGroupBox3: TcxGroupBox
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
      Height = 438
      Width = 208
      object cxGrid1: TcxGrid
        Left = 3
        Top = 40
        Width = 202
        Height = 388
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
        Width = 202
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn1: TBitBtn
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
          OnClick = BitBtn1Click
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
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
      TabOrder = 2
      Height = 100
      Width = 208
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
  end
  object PanelThumb: TPanel
    Left = 210
    Top = 0
    Width = 310
    Height = 767
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 310
      Height = 767
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
    end
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 1
      Top = 1
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Caption = #51088#49464#49324#51652
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.SkinName = 'Black'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Height = 765
      Width = 308
      object ImageEnMView1: TImageEnMView
        Left = 3
        Top = 42
        Width = 302
        Height = 713
        Background = clWindowFrame
        GridWidth = -1
        StoreType = ietNormal
        ThumbWidth = 130
        ThumbHeight = 250
        HorizBorder = 6
        VertBorder = 5
        BottomGap = 3
        UpperGap = 5
        LeftGap = 3
        TextMargin = 4
        ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
        PopupMenus = []
        SelectionColor = clRed
        Style = iemsFlat
        AutoAdjustStyle = True
        ThumbnailsBackground = clGray
        ThumbnailsBackgroundSelected = clBlue
        ThumbnailsBackgroundHover = clYellow
        MultiSelectionOptions = []
        DefaultTopText = iedtFilename
        DefaultInfoText = iedtFilename
        DefaultBottomText = iedtImageDimensions
        Align = alClient
        ThumbnailResampleFilter = rfNone
        SelectedFontColor = clWhite
        TabOrder = 0
        OnDblClick = ImageEnMView1DblClick
      end
      object Panel3: TPanel
        Left = 3
        Top = 15
        Width = 302
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 5
          Top = 5
          Width = 52
          Height = 13
          Caption = #52285' '#53356#44592':'
        end
        object icbThumbSize: TcxImageComboBox
          Left = 59
          Top = 1
          EditValue = 2
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Description = '1'#52972#47100
              ImageIndex = 0
              Value = 1
            end
            item
              Description = '2'#52972#47100
              Value = 2
            end
            item
              Description = '3'#52972#47100
              Value = 3
            end>
          Properties.OnChange = icbThumbSizePropertiesChange
          TabOrder = 0
          Width = 67
        end
      end
    end
  end
  object pgcCompareFrame: TPanel
    Left = 523
    Top = 0
    Width = 834
    Height = 767
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object compareGroupLeftTop: TcxGroupBox
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
      OnClick = compareGroupLeftTopClick
      Height = 765
      Width = 832
      object ImageEnVect1: TImageEnVect
        Left = 3
        Top = 42
        Width = 826
        Height = 713
        Background = clBtnFace
        AutoStretch = True
        AutoShrink = True
        Align = alClient
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 3
        Top = 15
        Width = 826
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          AlignWithMargins = True
          Left = 376
          Top = 3
          Width = 91
          Height = 21
          Margins.Left = 10
          Align = alLeft
          Caption = #53804#47749#46020'(0~255):'
          Layout = tlCenter
          ExplicitHeight = 13
        end
        object CheckBox1: TCheckBox
          AlignWithMargins = True
          Left = 10
          Top = 1
          Width = 73
          Height = 25
          Margins.Left = 10
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #51088#46041#47582#52644
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBox1Click
        end
        object btnDeleteLayer: TBitBtn
          AlignWithMargins = True
          Left = 177
          Top = 1
          Width = 90
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #49440#53469#49325#51228
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADADDADADADAD0FFFFFAADADADAD0FF0FFFFDADADAD0FF0F
            FFFFADADADA000FFFFFFDADADA008FF0FFFFADADA08FFF0F0FFFD0000FFF00F0
            F0F00330FF00FF0F0F0D0FF0F03300F0F00A0F0000000000030D0FF3F3F3F3F3
            F30A0F0000000000030D0FF3F3F3F3F3F80AA0000000000000AD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnDeleteLayerClick
        end
        object btnDeleteLayerAll: TBitBtn
          AlignWithMargins = True
          Left = 269
          Top = 1
          Width = 96
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #51204#52404#49325#51228
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
          TabOrder = 2
          OnClick = btnDeleteLayerAllClick
        end
        object btnAutoAlign: TBitBtn
          AlignWithMargins = True
          Left = 85
          Top = 1
          Width = 90
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #51088#46041#51221#47148
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADADDADADADAD0FFFFFAADADADAD0FF0FFFFDADADAD0FF0F
            FFFFADADADA000FFFFFFDADADA008FF0FFFFADADA08FFF0F0FFFD0000FFF00F0
            F0F00330FF00FF0F0F0D0FF0F03300F0F00A0F0000000000030D0FF3F3F3F3F3
            F30A0F0000000000030D0FF3F3F3F3F3F80AA0000000000000AD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Visible = False
          OnClick = btnAutoAlignClick
        end
        object btnReport: TBitBtn
          AlignWithMargins = True
          Left = 689
          Top = 1
          Width = 136
          Height = 25
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alRight
          Caption = #48708#44368#44208#44284#52636#47141
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000084
            840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
            3333330000000000033330313131313010330000000000000103013131355531
            0003031313122213010300000000000001100131313131301010300000000003
            0100330666666660301044446000002203033333066666663033444444000002
            2203333333066666633044444444000000003333333333333333}
          TabOrder = 4
          OnClick = btnReportClick
        end
        object TrackBar1: TTrackBar
          AlignWithMargins = True
          Left = 473
          Top = 3
          Width = 150
          Height = 21
          Align = alLeft
          Max = 255
          Position = 128
          ShowSelRange = False
          TabOrder = 5
          TickStyle = tsNone
          OnChange = TrackBar1Change
        end
      end
      object ImageEnVect1Print: TImageEnVect
        Tag = 1
        Left = 707
        Top = 548
        Width = 70
        Height = 65
        Background = clInactiveCaptionText
        Visible = False
        TabOrder = 2
      end
    end
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
      Caption = #50040#45348#51068#52285' '#51089#44172
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
  object IMAGE_LAYERS_DEL: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_DEL'
    Connection = dmDBCommon.UniConnImageDB
    Left = 688
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_DEL'
  end
  object IMAGE_LAYERS_INS: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_INS'
    Connection = dmDBCommon.UniConnImageDB
    Left = 688
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftMemo
        Name = 'C_COMMENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'C_IMAGE'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_INS'
  end
  object IMAGE_LAYERS_UPD: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_UPD'
    Connection = dmDBCommon.UniConnImageDB
    Left = 688
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftMemo
        Name = 'C_COMMENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'C_IMAGE'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_UPD'
  end
  object IMAGE_LAYERS_SEL: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_SEL'
    Connection = dmDBCommon.UniConnImageDB
    Left = 688
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'M_ID'
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
        Name = 'MEMBER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftMemo
        Name = 'C_COMMENT'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_SEL'
    object IMAGE_LAYERS_SELID: TIntegerField
      FieldName = 'ID'
    end
    object IMAGE_LAYERS_SELMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 17
    end
    object IMAGE_LAYERS_SELP_DATE: TDateField
      FieldName = 'P_DATE'
    end
    object IMAGE_LAYERS_SELC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 50
    end
    object IMAGE_LAYERS_SELC_COMMENT: TMemoField
      FieldName = 'C_COMMENT'
      BlobType = ftMemo
    end
  end
  object IMAGE_LAYERS_SEL_IMAGE: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_SEL_IMAGE'
    Connection = dmDBCommon.UniConnImageDB
    Left = 688
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'C_IMAGE'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_SEL_IMAGE'
    object IMAGE_LAYERS_SEL_IMAGEC_IMAGE: TBlobField
      FieldName = 'C_IMAGE'
    end
  end
  object ds_IMAGE_LAYERS_SEL: TDataSource
    DataSet = IMAGE_LAYERS_SEL
    Left = 688
    Top = 512
  end
  object ds_IMAGE_LAYERS_SEL_IMAGE: TDataSource
    DataSet = IMAGE_LAYERS_SEL_IMAGE
    Left = 688
    Top = 608
  end
end
