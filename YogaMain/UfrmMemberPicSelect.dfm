object frmMemberPicSelect: TfrmMemberPicSelect
  Left = 0
  Top = 0
  Width = 520
  Height = 649
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 211
    Height = 649
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
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
      Width = 209
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
      Height = 546
      Width = 209
      object cxGrid1: TcxGrid
        Left = 3
        Top = 40
        Width = 203
        Height = 496
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
            Width = 107
          end
          object gridCheckID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridCheckIMAGE_NAME1: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGE_NAME1'
            Visible = False
            VisibleForCustomization = False
          end
          object gridCheckIMAGE_NAME2: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGE_NAME2'
            Visible = False
            VisibleForCustomization = False
          end
          object gridCheckIMAGE_NAME3: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGE_NAME3'
            Visible = False
            VisibleForCustomization = False
          end
          object gridCheckIMAGE_NAME4: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGE_NAME4'
            Visible = False
            VisibleForCustomization = False
          end
          object gridCheckIMAGE_NAME5: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGE_NAME5'
            Visible = False
            VisibleForCustomization = False
          end
          object gridCheckIMAGE_NAME6: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGE_NAME6'
            Visible = False
            VisibleForCustomization = False
          end
          object gridCheckIMAGE_NAME7: TcxGridDBColumn
            DataBinding.FieldName = 'IMAGE_NAME7'
            Visible = False
            VisibleForCustomization = False
          end
          object gridCheckPIC_CNT: TcxGridDBColumn
            Caption = #49324#51652
            DataBinding.FieldName = 'PIC_CNT'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
        end
        object cxL1: TcxGridLevel
          GridView = gridCheck
        end
      end
      object pnlPictureButton: TPanel
        Left = 3
        Top = 15
        Width = 203
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnAdd: TBitBtn
          Left = 3
          Top = -1
          Width = 66
          Height = 25
          Hint = #52628#44032
          Caption = #52628#44032
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
          Left = 68
          Top = -1
          Width = 65
          Height = 25
          Hint = #49325#51228
          Caption = #49325#51228
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
      end
    end
  end
  object compareGroupLeftTop: TcxGroupBox
    Tag = 1
    AlignWithMargins = True
    Left = 212
    Top = 1
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 0
    Align = alLeft
    Caption = #51088#49464#49324#51652'('#51204#52404')'
    Style.BorderColor = clWindowFrame
    Style.LookAndFeel.SkinName = 'Black'
    Style.TextStyle = [fsBold]
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 1
    Height = 648
    Width = 305
    object ImageEnMView1: TImageEnMView
      Left = 3
      Top = 40
      Width = 299
      Height = 598
      Background = clGray
      GridWidth = -1
      StoreType = ietNormal
      ThumbWidth = 130
      ThumbHeight = 200
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
      ThumbnailsBackground = clBlack
      ThumbnailsBackgroundSelected = clBlue
      ThumbnailsBackgroundHover = clYellow
      MultiSelectionOptions = []
      DefaultTopText = iedtNone
      DefaultInfoText = iedtNone
      DefaultBottomText = iedtFilename
      Align = alClient
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 3
      Top = 15
      Width = 299
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 104
        Top = -1
        Width = 75
        Height = 25
        Caption = #52628#44032
        TabOrder = 0
        OnClick = btnAddClick
      end
    end
  end
  object UniQuery1: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      
        'select uid, cname, ctel, sex from customer where cname like :nam' +
        'e;')
    Left = 32
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptInput
      end>
    object UniQuery1UID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 40
    end
    object UniQuery1CNAME: TStringField
      FieldName = 'CNAME'
    end
    object UniQuery1CTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object UniQuery1SEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 32
    Top = 224
  end
  object UniAlerter1: TUniAlerter
    Connection = dmDBCommon.UniDBConnection
    Events = 'CUSTOMER_IMAGE_AIUD0'
    OnEvent = UniAlerter1Event
    Left = 128
    Top = 184
  end
end
