object fmMovementCheck: TfmMovementCheck
  Left = 0
  Top = 0
  Caption = #46041#51201#48516#49437
  ClientHeight = 676
  ClientWidth = 1074
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 484
    Width = 1074
    Height = 2
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnShadow
    ParentColor = False
    ExplicitTop = 485
  end
  object pnlThumbnail: TPanel
    Left = 0
    Top = 486
    Width = 1074
    Height = 190
    Align = alBottom
    TabOrder = 0
    OnResize = pnlThumbnailResize
    object ImageEnMView: TImageEnMView
      Left = 1
      Top = 1
      Width = 1072
      Height = 188
      Cursor = crHandPoint
      Background = clInactiveCaptionText
      ParentCtl3D = False
      BorderStyle = bsNone
      ScrollBars = ssNone
      StoreType = ietNormal
      ThumbWidth = 150
      ThumbHeight = 185
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
      PopupMenu = PopupThumb
      TabOrder = 0
      OnDblClick = ImageEnMViewDblClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1074
    Height = 484
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlMember: TPanel
      Left = 0
      Top = 0
      Width = 201
      Height = 484
      Align = alLeft
      TabOrder = 0
      object cxGroupBox1: TcxGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 78
        Align = alClient
        Alignment = alTopCenter
        Caption = #49324#51652#45936#51060#53552
        Style.LookAndFeel.SkinName = 'Black'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 0
        Height = 402
        Width = 193
        object cxGrid1: TcxGrid
          Left = 2
          Top = 18
          Width = 189
          Height = 357
          Align = alClient
          TabOrder = 0
          LookAndFeel.SkinName = 'Black'
          object gridCheck: TcxGridDBTableView
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
            OnCellClick = gridCheckCellClick
            OnCellDblClick = gridCheckCellDblClick
            DataController.DataSource = dmDBCommon.d_picture_data
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
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
        object Panel2: TPanel
          Left = 2
          Top = 375
          Width = 189
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object btnAddData: TBitBtn
            Left = 1
            Top = 1
            Width = 91
            Height = 25
            Caption = #54637#47785#49373#49457
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0A0A0A0A
              DADAADADADADAD00ADADDADA0000000B0ADAADAD0FFFFF0B0DADDADA0F99990B
              B0DAADAD0FFFFFF0B0ADDADFFFF99990BB0AADAF4FFFFFFF0000FFFF44F9999F
              01104444444FFFFF000D44444444FF0007DA444444444F0F0DAD44444444FF00
              DADA4444444F000DADADDADA44FADADADADAADAD4FADADADADAD}
            TabOrder = 0
            OnClick = btnAddDataClick
          end
          object btnOpenImage: TBitBtn
            Left = 92
            Top = 1
            Width = 91
            Height = 25
            Caption = #49324#51652#50676#44592
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
              DADAADADAD0DADADADAD0AD000DAD0DAD5DAA00DA0AD0DAD55ADDA0A0000DAD5
              555AAD0DADA0AD555555D00ADAD000D555550000ADAD0D0D55A5000ADA00DA0A
              D5D50000ADA0ADA0ADA500000000D00ADAD5A0000000AD0DAD5DDA00000000D0
              DADAADADA0000000ADADDADADA00000ADADAADADADADADADADAD}
            TabOrder = 1
            OnClick = btnOpenImageClick
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
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
        Height = 71
        Width = 193
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
          Width = 126
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
          Width = 126
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
      end
    end
    object Panel16: TPanel
      Left = 763
      Top = 0
      Width = 311
      Height = 484
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Alignment = alTopCenter
        Caption = #46041#51201#51088#49464#54217#44032#54637#47785
        Style.LookAndFeel.SkinName = 'Black'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 0
        Height = 391
        Width = 311
        object cxGrid3: TcxGrid
          Left = 2
          Top = 18
          Width = 307
          Height = 371
          Align = alClient
          PopupMenu = PopupResult
          TabOrder = 0
          LookAndFeel.SkinName = 'Black'
          object gridStaticResults: TcxGridDBTableView
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
            DataController.DataSource = d_result_value
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.InvertSelect = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object gridStaticResultsID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object gridStaticResultsMOVEMENT_RESULT_ID: TcxGridDBColumn
              DataBinding.FieldName = 'MOVEMENT_RESULT_ID'
              Visible = False
            end
            object gridStaticResultsCHECK_ITEM_ID: TcxGridDBColumn
              Caption = #52769#51221#46041#51089
              DataBinding.FieldName = 'CHECK_ITEM_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'UID'
              Properties.ListColumns = <
                item
                  FieldName = 'ITEM_NAME'
                end>
              Properties.ListSource = d_item_text
              Options.CellMerging = True
              Width = 125
            end
            object gridStaticResultsCHECK_POINT_ID: TcxGridDBColumn
              Caption = #52769#51221#54252#51064#53944
              DataBinding.FieldName = 'CHECK_POINT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'UID'
              Properties.ListColumns = <
                item
                  FieldName = 'ITEM_QUESTION'
                end>
              Properties.ListSource = d_item_question_text
              Width = 109
            end
            object gridStaticResultsCHECK_VALUE: TcxGridDBColumn
              Caption = #44208#44284
              DataBinding.FieldName = 'CHECK_VALUE'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = ImageList1
              Properties.Items = <
                item
                  Value = 0
                end
                item
                  Description = #51221#49345
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = #44221#48120
                  ImageIndex = 1
                  Value = 2
                end
                item
                  Description = #51473#46321
                  ImageIndex = 2
                  Value = 3
                end
                item
                  Description = #49900#44033
                  ImageIndex = 3
                  Value = 4
                end>
              Width = 60
            end
            object gridStaticResultsCUSTOMER_ID: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER_ID'
              Visible = False
            end
            object gridStaticResultsCOMPANY_ID: TcxGridDBColumn
              DataBinding.FieldName = 'COMPANY_ID'
              Visible = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gridStaticResults
          end
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 391
        Align = alBottom
        Alignment = alTopCenter
        Caption = #46041#51201#51088#49464' '#54032#51221
        Style.LookAndFeel.SkinName = 'Black'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 1
        Height = 93
        Width = 311
        object btnNormal: TcxButton
          Tag = 1
          Left = 65
          Top = 16
          Width = 44
          Height = 41
          Action = ActNormal
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888880000008
            8888888006666660088888076666666670888076666666666708806666666666
            6608066666666666666006666666666666600666666666666660066666666666
            6660066666666666666006666666666666608066666666666608807666666666
            6708880766666666708888800666666008888888800000088888}
          OptionsImage.Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object btnSmall: TcxButton
          Tag = 2
          Left = 110
          Top = 16
          Width = 44
          Height = 41
          Action = ActSmall
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888800000000000000000BBBBBBBBBBBBBB00BBBBBBBBBBB
            BBB00BBBBBBBBBBBBBB00BBBBBBBBBBBBBB00BBBBBBBBBBBBBB00BBBBBBBBBBB
            BBB00BBBBBBBBBBBBBB00BBBBBBBBBBBBBB00BBBBBBBBBBBBBB00BBBBBBBBBBB
            BBB00BBBBBBBBBBBBBB000000000000000008888888888888888}
          OptionsImage.Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object btnMiddle: TcxButton
          Tag = 3
          Left = 155
          Top = 16
          Width = 44
          Height = 41
          Action = ActMiddle
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888800000000000008880CCCCCCCCCCC088870CCCCCCCCC0788880CCCCCCCCC
            08888870CCCCCCC078888880CCCCCCC0888888870CCCCC07888888880CCCCC08
            8888888870CCC0788888888880CCC08888888888870C078888888888880C0888
            8888888888707888888888888880888888888888888888888888}
          OptionsImage.Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object btnBig: TcxButton
          Tag = 4
          Left = 200
          Top = 16
          Width = 44
          Height = 41
          Action = ActBig
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888880088888880088888090788870908888870900800907888888099707990
            8888888709999907888888870999990788888800999999900888807999999999
            7088000000999000000888888079708888888888870907888888888888090888
            8888888888707888888888888880888888888888888888888888}
          OptionsImage.Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object btnMoveReport: TcxButton
          Left = 53
          Top = 58
          Width = 103
          Height = 25
          Action = ActResultView
          LookAndFeel.SkinName = 'Seven'
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DA0000000000
            000AAD07FFFFFFFFFF70DA08007000700077ADA00C00BB009107DADA0C40BB30
            910AADAD0C40BB30910D00000C40BB30910A0FFF0000BB30910D0F77FFF0BB30
            000A0F77F000BB80ADAD0FFFFFFF0000DADA0F77FFFFFF0DADAD0F77F0000F0A
            DADA0FFFFFFFFF0DADAD44444444444ADADA44444444444DADAD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object btnMoveGuide: TcxButton
          Left = 157
          Top = 58
          Width = 103
          Height = 25
          Action = ActPracticeList
          LookAndFeel.SkinName = 'Seven'
          OptionsImage.Glyph.Data = {
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
          TabOrder = 5
        end
      end
    end
    object Panel6: TPanel
      Left = 201
      Top = 0
      Width = 562
      Height = 484
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object Panel19: TPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 20
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 11
          Top = 3
          Width = 89
          Height = 13
          Caption = #46041#51201' '#51088#49464#54217#44032
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object chkMoveFit: TCheckBox
          Left = 113
          Top = 1
          Width = 81
          Height = 17
          Caption = #54868#47732#47582#52644
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkMoveFitClick
        end
        object chkShowDraw: TCheckBox
          Left = 225
          Top = 1
          Width = 96
          Height = 17
          Caption = #46300#47196#51081' '#54252#54632
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chkMoveFitClick
        end
      end
      object ImageEnVect4: TImageEnVect
        Left = 0
        Top = 20
        Width = 562
        Height = 464
        Cursor = crHandPoint
        Background = clInactiveCaptionText
        ParentCtl3D = False
        MouseInteract = [miZoom]
        EnableInteractionHints = True
        Align = alClient
        TabOrder = 1
      end
    end
  end
  object pnlProcess: TPanel
    Left = 384
    Top = 183
    Width = 217
    Height = 49
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = clBlue
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = [fsBold]
    ParentBackground = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    Visible = False
    object lblCount: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 27
      Width = 205
      Height = 13
      Margins.Top = 0
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = '0/10'
      EllipsisPosition = epEndEllipsis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 14
      ExplicitWidth = 217
    end
    object lblMessage: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 11
      Width = 205
      Height = 13
      Margins.Top = 10
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = #51089#50629#51473'...'
      EllipsisPosition = epEndEllipsis
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 14
      ExplicitWidth = 217
    end
  end
  object q_result_value: TUniQuery
    UpdatingTable = 'CUST_MOVEMENT_RESULT_VALUE'
    SQLInsert.Strings = (
      'INSERT INTO CUST_MOVEMENT_RESULT_VALUE'
      
        '  (ID, MOVEMENT_RESULT_ID, CHECK_POINT_ID, CHECK_VALUE, CUSTOMER' +
        '_ID, COMPANY_ID, CHECK_ITEM_ID)'
      'VALUES'
      
        '  (:ID, :MOVEMENT_RESULT_ID, :CHECK_POINT_ID, :CHECK_VALUE, :CUS' +
        'TOMER_ID, :COMPANY_ID, :CHECK_ITEM_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CUST_MOVEMENT_RESULT_VALUE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CUST_MOVEMENT_RESULT_VALUE'
      'SET'
      
        '  ID = :ID, MOVEMENT_RESULT_ID = :MOVEMENT_RESULT_ID, CHECK_POIN' +
        'T_ID = :CHECK_POINT_ID, CHECK_VALUE = :CHECK_VALUE, CUSTOMER_ID ' +
        '= :CUSTOMER_ID, COMPANY_ID = :COMPANY_ID, CHECK_ITEM_ID = :CHECK' +
        '_ITEM_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CUST_MOVEMENT_RESULT_VALUE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, MOVEMENT_RESULT_ID, CHECK_POINT_ID, CHECK_VALUE, CUST' +
        'OMER_ID, COMPANY_ID, CHECK_ITEM_ID FROM CUST_MOVEMENT_RESULT_VAL' +
        'UE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from CUST_MOVEMENT_RESULT_VALUE'
      'where MOVEMENT_RESULT_ID = :Result_id')
    Left = 904
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'Result_id'
        ParamType = ptInput
      end>
    object q_result_valueID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_result_valueMOVEMENT_RESULT_ID: TStringField
      FieldName = 'MOVEMENT_RESULT_ID'
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
    object q_result_valueCHECK_ITEM_ID: TStringField
      FieldName = 'CHECK_ITEM_ID'
      Size = 17
    end
  end
  object d_result_value: TDataSource
    DataSet = q_result_value
    Left = 904
    Top = 160
  end
  object t_item_text: TUniTable
    TableName = 'CHECK_ITEM_TXT'
    Connection = dmDBCommon.UniDBConnection
    Left = 536
    Top = 512
    object t_item_textUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 17
    end
    object t_item_textITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 30
    end
    object t_item_textIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
  object t_item_question_text: TUniTable
    TableName = 'CHECK_ITEM_QUESTION_TXT'
    Connection = dmDBCommon.UniDBConnection
    Left = 632
    Top = 512
    object t_item_question_textUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 17
    end
    object t_item_question_textITEM_UID: TStringField
      FieldName = 'ITEM_UID'
      Size = 17
    end
    object t_item_question_textITEM_QUESTION: TStringField
      FieldName = 'ITEM_QUESTION'
      Size = 255
    end
    object t_item_question_textIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
  object d_item_text: TDataSource
    DataSet = t_item_text
    Left = 536
    Top = 568
  end
  object d_item_question_text: TDataSource
    DataSet = t_item_question_text
    Left = 632
    Top = 568
  end
  object ImageList1: TImageList
    Left = 792
    Top = 240
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000080808000808080000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000FFFF0000FFFF00000000000000
      00000000FF0000008000000000008080800000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF00000080000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000FF00FFFFFF000000800000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00000000008080
      8000000000008080800080808000000000000000800000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF000000800000000000000000000000000000000000808080000000
      0000FFFF000080808000FFFFFF008080800000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF00008080000000
      00000000FF00000080000000000000000000000000000000000000000000FFFF
      0000000000008080800000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00008080000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      FF00FFFF000080808000FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF008080800000000000808080000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008080
      8000FFFF0000808080008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00C001FFFF00000000C000FFCF00000000
      D000000100000000E000000100000000F001000100000000F001083100000000
      000110010000000000012A79000000000001010100000000002F027900000000
      000F000100000000001F21F100000000001F000100000000001F000100000000
      001F000100000000001F000100000000F81FFFFFFFFFFFFFE007FFFF8003CFE7
      C00300008003C387800100008003C10780010000C007E00F00000000C007E00F
      00000000E00FE00F00000000E00FC00700000000F01F800300000000F01F0001
      00000000F83FF83F80010000F83FF83F80010000FC7FFC7FC0030000FC7FFC7F
      E0070000FEFFFEFFF81FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupThumb: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListThumbnail
    Left = 384
    Top = 480
    object N1: TMenuItem
      Action = actThumbWindowMin
    end
    object N2: TMenuItem
      Action = actThumbWindowMax
    end
    object N3: TMenuItem
      Action = actThumbDelete
    end
    object N4: TMenuItem
      Action = actThumbSaveAs
    end
  end
  object ActionThumbnail: TActionList
    Images = ImageListThumbnail
    Left = 384
    Top = 528
    object actThumbWindowMax: TAction
      Caption = #50040#45348#51068#52285' '#53356#44172
      ImageIndex = 1
      ShortCut = 121
      OnExecute = actThumbWindowMaxExecute
    end
    object actThumbWindowMin: TAction
      Caption = #50040#45348#51060#52285' '#51089#44172
      ImageIndex = 0
      ShortCut = 120
      OnExecute = actThumbWindowMinExecute
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
      OnExecute = actThumbSaveAsExecute
    end
  end
  object ImageListThumbnail: TImageList
    Left = 384
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
    Left = 384
    Top = 624
  end
  object ActionResult: TActionList
    Images = ImageList1
    Left = 792
    Top = 192
    object ActNormal: TAction
      Caption = #51221#49345
      ImageIndex = 0
      ShortCut = 116
      OnExecute = ActNormalExecute
    end
    object ActSmall: TAction
      Caption = #44221#48120
      ImageIndex = 1
      ShortCut = 117
      OnExecute = ActSmallExecute
    end
    object ActMiddle: TAction
      Caption = #51473#46321
      ImageIndex = 2
      ShortCut = 118
      OnExecute = ActMiddleExecute
    end
    object ActBig: TAction
      Caption = #49900#44033
      ImageIndex = 3
      ShortCut = 119
      OnExecute = ActBigExecute
    end
    object ActResultView: TAction
      Caption = #52769#51221#44208#44284
      ImageIndex = 4
      OnExecute = ActResultViewExecute
    end
    object ActPracticeList: TAction
      Caption = #44032#51060#46300#48372#44592
      ImageIndex = 5
      OnExecute = ActPracticeListExecute
    end
  end
  object PopupResult: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageList1
    Left = 792
    Top = 144
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
  end
end
