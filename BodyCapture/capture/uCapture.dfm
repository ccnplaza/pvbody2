object fmCapture: TfmCapture
  Left = 0
  Top = 0
  Caption = #49324#51652#52897#52432
  ClientHeight = 658
  ClientWidth = 1084
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 658
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 212
      Height = 658
      Align = alLeft
      TabOrder = 0
      object pnlRoot: TPanel
        Left = 1
        Top = 1
        Width = 210
        Height = 656
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
          Height = 96
          Width = 208
          object Panel10: TPanel
            Left = 3
            Top = 15
            Width = 60
            Height = 23
            Caption = #54924#50896#47749
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 0
          end
          object Panel11: TPanel
            Left = 3
            Top = 38
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
            Height = 23
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
            OnClick = pnlNameClick
          end
          object btnCustInfo: TBitBtn
            Left = 6
            Top = 62
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
            Top = 62
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
          Top = 98
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
          Height = 557
          Width = 208
          object cxGrid1: TcxGrid
            Left = 3
            Top = 40
            Width = 202
            Height = 507
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
            Width = 202
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
    end
    object pnlVideo: TPanel
      Left = 212
      Top = 0
      Width = 568
      Height = 658
      Align = alClient
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 1
      object cxPageControl1: TcxPageControl
        Left = 1
        Top = 1
        Width = 566
        Height = 656
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Black'
        ClientRectBottom = 651
        ClientRectLeft = 2
        ClientRectRight = 561
        ClientRectTop = 25
        object cxTabSheet1: TcxTabSheet
          Caption = #49324#51652#52897#52432
          ImageIndex = 0
          object ImageEnVect2: TImageEnVect
            Left = 0
            Top = 0
            Width = 559
            Height = 626
            Background = clBackground
            ParentCtl3D = False
            BorderStyle = bsNone
            DoubleBuffer = False
            EnableInteractionHints = True
            Align = alClient
            PopupMenu = PopupCamera
            TabOrder = 0
            OnMouseDown = ImageEnVect2MouseDown
            OnMouseUp = ImageEnVect2MouseUp
            object ImageEnVect3: TImageEnVect
              Left = 5
              Top = 304
              Width = 169
              Height = 114
              Background = clBtnFace
              ParentCtl3D = False
              SelectionBase = iesbBitmap
              EnableAlphaChannel = False
              EnableInteractionHints = True
              Visible = False
              TabOrder = 0
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = #49324#51652#51312#54924
          ImageIndex = 1
          object ImageEnMView: TImageEnMView
            Left = 0
            Top = 25
            Width = 559
            Height = 601
            Background = clWindowFrame
            ParentCtl3D = False
            BorderStyle = bsNone
            StoreType = ietNormal
            ThumbWidth = 200
            ThumbHeight = 400
            HorizBorder = 4
            VertBorder = 4
            TextMargin = 0
            MouseInteract = [mmiScroll, mmiSelect]
            GridWidth = 0
            SelectionColor = clRed
            Style = iemsACD
            ThumbnailsBackground = clBlack
            ThumbnailsBackgroundSelected = clBlack
            MultiSelectionOptions = []
            ThumbnailsBorderWidth = 0
            ThumbnailsBorderColor = clBlack
            Align = alClient
            TabOrder = 0
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 559
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object btnDelThumb: TBitBtn
              Left = 3
              Top = 0
              Width = 107
              Height = 25
              Caption = #50040#45348#51068#49325#51228
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888888888898888898888888888888899988888889888889998888889
                8888888999888899888888889998899888888888899999888888888888999888
                8888888889999988888888889998898888888899998888998888899998888889
                9888899888888888998888888888888888888888888888888888}
              TabOrder = 0
              OnClick = btnDelThumbClick
            end
          end
        end
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
    TabOrder = 1
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
  object Panel1: TPanel
    Left = 780
    Top = 0
    Width = 304
    Height = 658
    Align = alRight
    TabOrder = 2
    object CategoryPanelGroup1: TCategoryPanelGroup
      Left = 1
      Top = 1
      Width = 302
      Height = 656
      HorzScrollBar.Visible = False
      VertScrollBar.Tracking = True
      VertScrollBar.Visible = False
      Align = alClient
      ChevronHotColor = clRed
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlue
      HeaderFont.Height = -13
      HeaderFont.Name = #44404#47548
      HeaderFont.Style = [fsBold]
      HeaderHeight = 20
      TabOrder = 0
      object CategoryPanel5: TCategoryPanel
        AlignWithMargins = True
        Top = 307
        Height = 346
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #49324#51652#52897#52432
        TabOrder = 0
        object Label4: TLabel
          Left = 32
          Top = 200
          Width = 86
          Height = 13
          Caption = #51060#48120#51648' '#49324#51060#51592':'
        end
        object lblImageSize: TLabel
          Left = 126
          Top = 200
          Width = 7
          Height = 13
          Caption = '0'
        end
        object chkFitSize: TCheckBox
          Left = 23
          Top = 9
          Width = 105
          Height = 17
          Action = ActAutoFit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 0
        end
        object chkCrossGuideLine: TCheckBox
          Left = 145
          Top = 9
          Width = 104
          Height = 17
          Action = ActCameraGuidline
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btnImportPicture: TBitBtn
          Left = 27
          Top = 48
          Width = 116
          Height = 41
          Action = ActOpenImageFile
          Caption = #49324#51652#44032#51256#50724#44592
          TabOrder = 2
        end
        object btnClearScreen: TBitBtn
          Left = 145
          Top = 48
          Width = 116
          Height = 41
          Action = ActClearScreen
          Caption = #54868#47732#51648#50864#44592
          TabOrder = 3
        end
        object btnActClearScreen: TBitBtn
          Left = 145
          Top = 91
          Width = 116
          Height = 41
          Caption = #51060#48120#51648#54924#51204
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADADDADADADADADADADAA000000DA000000DD088880AD055
            550AAD08880DA05550ADDA08880AD05550DAADA0880DA0550DADDAD0880AD055
            0ADAADAD080DA050ADADDADA080AD050DADAADADA00DA00DADADDADAD00AD00A
            DADAADADAD0DA0ADADADDADADADADADADADAADADADADADADADAD}
          TabOrder = 4
          OnClick = btnActClearScreenClick
        end
        object btnMakePicture: TBitBtn
          Left = 27
          Top = 91
          Width = 116
          Height = 41
          Caption = #49324#51652#52897#52432
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF0080008000FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FF00
            FF00FF00FF00FF00FF008000800080008000FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF0000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0080008000800080008000800080008000FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00800080008000800080008000800080008000800080008000FF00FF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            0000FF00FF008000800080008000800080008000800080008000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
            FF0000000000FF00FF008000800080008000FF00FF0080008000000000000000
            000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF0000000000FF00FF00FF00FF0080008000FF00FF0080008000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0080008000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF0080008000FF00FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF0080008000FF00FF00FF00FF00FF00
            FF00000000000000000000000000000000000000000000000000000000000000
            0000FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 5
          OnClick = btnMakePictureClick
        end
        object btnCaptureFace: TBitBtn
          Left = 27
          Top = 134
          Width = 234
          Height = 41
          Caption = #50620#44404#52897#52432'('#54924#50896#51221#48372#50640' '#51200#51109')'
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADAD0ADADA0ADADA5ADA0DA000ADADA55DADD00AD0DADA55
            55DAAD0D000DA555555DD00ADAD0DA5555550000ADA0ADA55D55000ADADA0ADA
            5AD5000DAD00ADADADA500000AD0DADADAD50000000D0DADAD5DD00000000ADA
            DADAAD00000DADADADADDADADADADADADADAADADADADADADADAD}
          TabOrder = 6
          OnClick = btnCaptureFaceClick
        end
      end
      object CategoryPanel3: TCategoryPanel
        AlignWithMargins = True
        Top = 205
        Height = 100
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #52852#47700#46972'3'
        TabOrder = 1
        object Label3: TLabel
          Left = 193
          Top = 56
          Width = 30
          Height = 13
          Caption = #54924#51204':'
        end
        object RecorderCAM3: TVideoGrabber
          Tag = 3
          Left = 2
          Top = 2
          Width = 61
          Height = 76
          Cursor = crHandPoint
          Hint = #52852#47700#46972'3('#54980#47732')|'#54644#45817' '#52852#47700#46972#52285#51012' '#53364#47533#54616#47732' '#53360' '#52852#47700#46972' '#52285#51004#47196' '#48380' '#49688' '#51080#49845#45768#45796'.'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Color = clInactiveCaptionText
          FullRepaint = False
          AspectRatioToUse = -1.000000000000000000
          AudioCompressor = 0
          AutoFileNameDateTimeFormat = 'yymmdd_hhmmss_zzz'
          AutoFilePrefix = 'vg'
          AutoRefreshPreview = True
          BackgroundColor = clInactiveCaptionText
          BurstCount = 0
          Display_AspectRatio = ar_Box
          Cropping_Zoom = 1.000000000000000000
          FrameGrabber = fg_PreviewStream
          ImageOverlayEnabled = False
          ImageOverlay_AlphaBlend = False
          ImageOverlay_AlphaBlendValue = 180
          ImageOverlay_ChromaKey = False
          ImageOverlay_ChromaKeyLeewayPercent = 25
          ImageOverlay_ChromaKeyRGBColor = 0
          ImageOverlay_Height = -1
          ImageOverlay_LeftLocation = 10
          ImageOverlay_StretchToVideoSize = False
          ImageOverlay_TopLocation = 10
          ImageOverlay_Transparent = False
          ImageOverlay_TransparentColorValue = 0
          ImageOverlay_UseTransparentColor = False
          ImageOverlay_Width = -1
          ImageOverlay_TargetDisplay = -1
          LicenseString = 'N/A'
          MotionDetector_Grid = 
            '5555555555 5555555555 5555555555 5555555555 5555555555 555555555' +
            '5 5555555555 5555555555 5555555555 5555555555'
          OnFrameBitmapEventSynchrone = True
          PlayerSpeedRatio = 1.000000000000000000
          Reencoding_StartTime = -1
          Reencoding_StartFrame = -1
          Reencoding_StopTime = -1
          Reencoding_StopFrame = -1
          TextOverlay_Enabled = False
          TextOverlay_Font.Charset = DEFAULT_CHARSET
          TextOverlay_Font.Color = clAqua
          TextOverlay_Font.Height = -20
          TextOverlay_Font.Name = 'Arial'
          TextOverlay_Font.Style = []
          TextOverlay_HighResFont = True
          TextOverlay_Left = 0
          TextOverlay_Top = 0
          TextOverlay_Right = -1
          TextOverlay_Scrolling = False
          TextOverlay_ScrollingSpeed = 1
          TextOverlay_Shadow = True
          TextOverlay_ShadowColor = clBlack
          TextOverlay_ShadowDirection = cd_Center
          TextOverlay_BkColor = clWhite
          TextOverlay_Align = tf_Left
          TextOverlay_GradientMode = gm_Disabled
          TextOverlay_GradientColor = clNavy
          TextOverlay_String = 
            'Note: the date/time formats '#13#10'can be easily modified.'#13#10#13#10'system ' +
            'date/time: %sys_time[dd/mm/yy hh:nn:ss]%'#13#10'DV time code: %time_co' +
            'de%'#13#10'DV date/time: %dv_time[dd/mm/yy hh:nn:ss]%'#13#10'frame number: %' +
            'frame_count%'#13#10'time (full): %time_full%'#13#10'time (sec): %time_sec%'#13#10 +
            'time (ns): %time_100ns%'
          TextOverlay_TargetDisplay = -1
          TextOverlay_Transparent = True
          VideoCompression_Quality = 1.000000000000000000
          VideoCompressor = 0
          VideoFromImages_TemporaryFile = 'SetOfBitmaps01.dat'
          VideoProcessing_RotationCustomAngle = 45.500000000000000000
          VideoSource_FileOrURL_StartTime = -1
          VideoSource_FileOrURL_StopTime = -1
          OnDblClick = RecorderCAM1DblClick
          OnDeviceArrivalOrRemoval = RecorderCAM3DeviceArrivalOrRemoval
          OnDeviceLost = RecorderCAM3DeviceLost
          OnFrameBitmap = RecorderCAM3FrameBitmap
          OnVideoDeviceSelected = RecorderCAM3VideoDeviceSelected
        end
        object cboVideoDevices3: TComboBox
          Tag = 3
          Left = 64
          Top = 3
          Width = 228
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2010'
          ParentFont = False
          TabOrder = 1
          OnClick = cboVideoDevices1Click
        end
        object cboVideoFormats3: TComboBox
          Tag = 3
          Left = 64
          Top = 26
          Width = 228
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2010'
          ParentFont = False
          TabOrder = 2
          OnClick = cboVideoFormats1Click
        end
        object btnStartPreview3: TcxButton
          Tag = 3
          Left = 66
          Top = 51
          Width = 35
          Height = 23
          Hint = #48120#47532#48372#44592'ON'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnStartPreview1Click
        end
        object btnStopPreview3: TcxButton
          Tag = 3
          Left = 102
          Top = 51
          Width = 35
          Height = 23
          Hint = #48120#47532#48372#44592'OFF'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000009C6128E7AC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF9C6128E7242424460909
            0912000000000000000000000000000000000000000001000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF7A7A7AFF6F6F
            6FFF737373F0535353AD3C3C3C7E2E2E2E602A2A2A5701000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF1D1D1D386F6F
            6FFF6F6F6FFF464646A011111126080808130A0A0A1601000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000000F0F
            0F200F0F0F23313131706C6C6CF86F6F6FFF6F6F6FFE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000000000
            0000636363E36F6F6FFF6D6D6DFF676767FF676767FE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000005C5C
            5CD36F6F6FFF696969FF7C7C7CFFC3C3C3FFCECECEFE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF212121456F6F
            6FFF6B6B6BFF959595FFFFFFFFFFF5F5F5FFDDDDDDFF0D0D0D0D9A6028E5AC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF925B25D8505050A76E6E
            6EFF666666FFFFFFFFFFC8C8C8FF5D5D5DFF646464FF434343910F0F0F0F0202
            0203010101030101010300000000000000000000000000000000666666D66C6C
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnStopPreview1Click
        end
        object cbRotation3: TcxImageComboBox
          Tag = 3
          Left = 226
          Top = 52
          TabStop = False
          EditValue = 0
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = '0'#176
              ImageIndex = 0
              Value = 0
            end
            item
              Description = '90'#176
              Value = 1
            end
            item
              Description = '180'#176
              Value = 2
            end
            item
              Description = '270'#176
              Value = 3
            end>
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cbRotation1PropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 5
          Width = 67
        end
        object cxButton2: TcxButton
          Tag = 3
          Left = 138
          Top = 51
          Width = 35
          Height = 23
          Hint = #52852#47700#46972#49444#51221
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000900000012000000120000
            0009000000020000000000000000000000000000000000000000000000000000
            0000000000030000000A0000000A0000000B2519156F68473BFF67443BFF1D13
            0F700000000C0000000B0000000C000000050000000100000000000000000000
            00030403021A543B33C738251EB30D0907454C362DC4B5A198FFAB958AFF3E29
            23C50D080748311F1AB13A241ECE030202220000000400000000000000000000
            00085A4138C9C7B9B0FFA8958BFF6C4F47FF715044FECABAB0FFC6B5AAFF6142
            37FE6B5047FE9C857AFFA89388FF3B241FCB0000000B00000000000000000000
            00074C3930ABC0AEA7FFE3DBD5FFD2C3BAFFC1AFA6FFCFC0B7FFCEBEB5FFBCAA
            9FFFCAB9AEFFC9B8ADFF9F897FFF36221DB20000000A00000000000000010000
            0007110C0B368D6F65FCEAE3DFFFDACDC6FFD8CCC3FFE3D9D3FFE7E0DAFFE1D6
            D0FFD2C3B9FFCDBCB3FF705449FE0D0907410000000A00000002000000042A1E
            1A6B4C372EBB846356FED9CEC8FFE3DAD5FFCDBEB7FF8E6F62FF947567FFD0C0
            B9FFE3DAD3FFC8B7ADFF6A4940FF47312AC22418147100000007000000088D6D
            60FFD8CCC7FFEEE8E5FFEBE6E0FFEAE3DDFF7F6257FF2219155E241B175E9374
            67FFEBE4DFFFD6C8C0FFD3C6BDFFB9A59BFF78574BFF0000000D000000079373
            64FFD9CECAFFF6F3F2FFFAF7F6FFEFEAE5FF76574DFF1D1411551E1613568869
            5DFFEFE9E6FFDDD2CBFFD8CAC3FFC7B8B1FF7E5B4FFF0000000C000000033428
            245F665046B5937467FEECE6E3FFF0ECE8FFCEC2BDFF856961FF886D65FFD2C7
            C2FFECE4DFFFD9CFC9FF856458FD5A443AB92B201C6102010108000000000000
            000316110F2EA78B7EFDF6F4F1FFF3EFECFFF2EEEAFFF3EFECFFF0EBE7FFEFEA
            E6FFEFEBE7FFECE5E0FF83665BFD110C0B390000000600000001000000000000
            0003685349AADCD1CBFFF8F6F3FFF8F5F3FFEBE4E1FFFDFCFBFFF3EEECFFE2D8
            D3FFFAF9F8FFF9F7F5FFC8B9B3FF4E3931B00000000500000000000000000000
            0002776055BDE5DDD8FFDCD0CBFFAC9183FD9E7E6EFDFBF8F8FFF5F1EEFF9979
            6AFDA3897EFCD7CBC5FFE0D6D1FF6E564CC20000000500000000000000000000
            00010605040D7C6458BF69544BA51713102B6F594EB2E1D7D2FFE0D6D1FF6D57
            4DB314100E2B614D44A4775E53C7050404110000000100000000000000000000
            0000000000000000000100000002000000023B302A5EA68676FFA58375FF3A2F
            295F000000030000000300000003000000010000000000000000000000000000
            0000000000000000000000000000000000000000000100000002000000030000
            0001000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnSet1Click
        end
      end
      object CategoryPanel2: TCategoryPanel
        AlignWithMargins = True
        Top = 103
        Height = 100
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #52852#47700#46972'2'
        TabOrder = 2
        object Label2: TLabel
          Left = 193
          Top = 56
          Width = 30
          Height = 13
          Caption = #54924#51204':'
        end
        object RecorderCAM2: TVideoGrabber
          Tag = 2
          Left = 2
          Top = 2
          Width = 61
          Height = 76
          Cursor = crHandPoint
          Hint = #52852#47700#46972'2('#52769#47732')|'#54644#45817' '#52852#47700#46972#52285#51012' '#53364#47533#54616#47732' '#53360' '#52852#47700#46972' '#52285#51004#47196' '#48380' '#49688' '#51080#49845#45768#45796'.'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Color = clInactiveCaptionText
          FullRepaint = False
          AspectRatioToUse = -1.000000000000000000
          AudioCompressor = 0
          AutoFileNameDateTimeFormat = 'yymmdd_hhmmss_zzz'
          AutoFilePrefix = 'vg'
          AutoRefreshPreview = True
          BackgroundColor = clInactiveCaptionText
          BurstCount = 0
          Display_AspectRatio = ar_Box
          Cropping_Zoom = 1.000000000000000000
          FrameGrabber = fg_PreviewStream
          ImageOverlayEnabled = False
          ImageOverlay_AlphaBlend = False
          ImageOverlay_AlphaBlendValue = 180
          ImageOverlay_ChromaKey = False
          ImageOverlay_ChromaKeyLeewayPercent = 25
          ImageOverlay_ChromaKeyRGBColor = 0
          ImageOverlay_Height = -1
          ImageOverlay_LeftLocation = 10
          ImageOverlay_StretchToVideoSize = False
          ImageOverlay_TopLocation = 10
          ImageOverlay_Transparent = False
          ImageOverlay_TransparentColorValue = 0
          ImageOverlay_UseTransparentColor = False
          ImageOverlay_Width = -1
          ImageOverlay_TargetDisplay = -1
          LicenseString = 'N/A'
          MotionDetector_Grid = 
            '5555555555 5555555555 5555555555 5555555555 5555555555 555555555' +
            '5 5555555555 5555555555 5555555555 5555555555'
          OnFrameBitmapEventSynchrone = True
          PlayerSpeedRatio = 1.000000000000000000
          Reencoding_StartTime = -1
          Reencoding_StartFrame = -1
          Reencoding_StopTime = -1
          Reencoding_StopFrame = -1
          TextOverlay_Enabled = False
          TextOverlay_Font.Charset = DEFAULT_CHARSET
          TextOverlay_Font.Color = clAqua
          TextOverlay_Font.Height = -20
          TextOverlay_Font.Name = 'Arial'
          TextOverlay_Font.Style = []
          TextOverlay_HighResFont = True
          TextOverlay_Left = 0
          TextOverlay_Top = 0
          TextOverlay_Right = -1
          TextOverlay_Scrolling = False
          TextOverlay_ScrollingSpeed = 1
          TextOverlay_Shadow = True
          TextOverlay_ShadowColor = clBlack
          TextOverlay_ShadowDirection = cd_Center
          TextOverlay_BkColor = clWhite
          TextOverlay_Align = tf_Left
          TextOverlay_GradientMode = gm_Disabled
          TextOverlay_GradientColor = clNavy
          TextOverlay_String = 
            'Note: the date/time formats '#13#10'can be easily modified.'#13#10#13#10'system ' +
            'date/time: %sys_time[dd/mm/yy hh:nn:ss]%'#13#10'DV time code: %time_co' +
            'de%'#13#10'DV date/time: %dv_time[dd/mm/yy hh:nn:ss]%'#13#10'frame number: %' +
            'frame_count%'#13#10'time (full): %time_full%'#13#10'time (sec): %time_sec%'#13#10 +
            'time (ns): %time_100ns%'
          TextOverlay_TargetDisplay = -1
          TextOverlay_Transparent = True
          VideoCompression_Quality = 1.000000000000000000
          VideoCompressor = 0
          VideoFromImages_TemporaryFile = 'SetOfBitmaps01.dat'
          VideoProcessing_RotationCustomAngle = 45.500000000000000000
          VideoSource_FileOrURL_StartTime = -1
          VideoSource_FileOrURL_StopTime = -1
          OnDblClick = RecorderCAM1DblClick
          OnDeviceArrivalOrRemoval = RecorderCAM2DeviceArrivalOrRemoval
          OnDeviceLost = RecorderCAM2DeviceLost
          OnFrameBitmap = RecorderCAM2FrameBitmap
          OnVideoDeviceSelected = RecorderCAM2VideoDeviceSelected
        end
        object cboVideoDevices2: TComboBox
          Tag = 2
          Left = 64
          Top = 3
          Width = 228
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2010'
          ParentFont = False
          TabOrder = 1
          OnClick = cboVideoDevices1Click
        end
        object cboVideoFormats2: TComboBox
          Tag = 2
          Left = 64
          Top = 26
          Width = 228
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2010'
          ParentFont = False
          TabOrder = 2
          OnClick = cboVideoFormats1Click
        end
        object btnStartPreview2: TcxButton
          Tag = 2
          Left = 66
          Top = 51
          Width = 35
          Height = 23
          Hint = #48120#47532#48372#44592'ON'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnStartPreview1Click
        end
        object btnStopPreview2: TcxButton
          Tag = 2
          Left = 102
          Top = 51
          Width = 35
          Height = 23
          Hint = #48120#47532#48372#44592'OFF'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000009C6128E7AC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF9C6128E7242424460909
            0912000000000000000000000000000000000000000001000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF7A7A7AFF6F6F
            6FFF737373F0535353AD3C3C3C7E2E2E2E602A2A2A5701000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF1D1D1D386F6F
            6FFF6F6F6FFF464646A011111126080808130A0A0A1601000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000000F0F
            0F200F0F0F23313131706C6C6CF86F6F6FFF6F6F6FFE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000000000
            0000636363E36F6F6FFF6D6D6DFF676767FF676767FE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000005C5C
            5CD36F6F6FFF696969FF7C7C7CFFC3C3C3FFCECECEFE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF212121456F6F
            6FFF6B6B6BFF959595FFFFFFFFFFF5F5F5FFDDDDDDFF0D0D0D0D9A6028E5AC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF925B25D8505050A76E6E
            6EFF666666FFFFFFFFFFC8C8C8FF5D5D5DFF646464FF434343910F0F0F0F0202
            0203010101030101010300000000000000000000000000000000666666D66C6C
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnStopPreview1Click
        end
        object cbRotation2: TcxImageComboBox
          Tag = 2
          Left = 226
          Top = 52
          TabStop = False
          EditValue = 1
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = '0'#176
              ImageIndex = 0
              Value = 0
            end
            item
              Description = '90'#176
              Value = 1
            end
            item
              Description = '180'#176
              Value = 2
            end
            item
              Description = '270'#176
              Value = 3
            end>
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cbRotation1PropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 5
          Width = 67
        end
        object cxButton1: TcxButton
          Tag = 2
          Left = 138
          Top = 51
          Width = 35
          Height = 23
          Hint = #52852#47700#46972#49444#51221
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000900000012000000120000
            0009000000020000000000000000000000000000000000000000000000000000
            0000000000030000000A0000000A0000000B2519156F68473BFF67443BFF1D13
            0F700000000C0000000B0000000C000000050000000100000000000000000000
            00030403021A543B33C738251EB30D0907454C362DC4B5A198FFAB958AFF3E29
            23C50D080748311F1AB13A241ECE030202220000000400000000000000000000
            00085A4138C9C7B9B0FFA8958BFF6C4F47FF715044FECABAB0FFC6B5AAFF6142
            37FE6B5047FE9C857AFFA89388FF3B241FCB0000000B00000000000000000000
            00074C3930ABC0AEA7FFE3DBD5FFD2C3BAFFC1AFA6FFCFC0B7FFCEBEB5FFBCAA
            9FFFCAB9AEFFC9B8ADFF9F897FFF36221DB20000000A00000000000000010000
            0007110C0B368D6F65FCEAE3DFFFDACDC6FFD8CCC3FFE3D9D3FFE7E0DAFFE1D6
            D0FFD2C3B9FFCDBCB3FF705449FE0D0907410000000A00000002000000042A1E
            1A6B4C372EBB846356FED9CEC8FFE3DAD5FFCDBEB7FF8E6F62FF947567FFD0C0
            B9FFE3DAD3FFC8B7ADFF6A4940FF47312AC22418147100000007000000088D6D
            60FFD8CCC7FFEEE8E5FFEBE6E0FFEAE3DDFF7F6257FF2219155E241B175E9374
            67FFEBE4DFFFD6C8C0FFD3C6BDFFB9A59BFF78574BFF0000000D000000079373
            64FFD9CECAFFF6F3F2FFFAF7F6FFEFEAE5FF76574DFF1D1411551E1613568869
            5DFFEFE9E6FFDDD2CBFFD8CAC3FFC7B8B1FF7E5B4FFF0000000C000000033428
            245F665046B5937467FEECE6E3FFF0ECE8FFCEC2BDFF856961FF886D65FFD2C7
            C2FFECE4DFFFD9CFC9FF856458FD5A443AB92B201C6102010108000000000000
            000316110F2EA78B7EFDF6F4F1FFF3EFECFFF2EEEAFFF3EFECFFF0EBE7FFEFEA
            E6FFEFEBE7FFECE5E0FF83665BFD110C0B390000000600000001000000000000
            0003685349AADCD1CBFFF8F6F3FFF8F5F3FFEBE4E1FFFDFCFBFFF3EEECFFE2D8
            D3FFFAF9F8FFF9F7F5FFC8B9B3FF4E3931B00000000500000000000000000000
            0002776055BDE5DDD8FFDCD0CBFFAC9183FD9E7E6EFDFBF8F8FFF5F1EEFF9979
            6AFDA3897EFCD7CBC5FFE0D6D1FF6E564CC20000000500000000000000000000
            00010605040D7C6458BF69544BA51713102B6F594EB2E1D7D2FFE0D6D1FF6D57
            4DB314100E2B614D44A4775E53C7050404110000000100000000000000000000
            0000000000000000000100000002000000023B302A5EA68676FFA58375FF3A2F
            295F000000030000000300000003000000010000000000000000000000000000
            0000000000000000000000000000000000000000000100000002000000030000
            0001000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnSet1Click
        end
      end
      object CategoryPanel1: TCategoryPanel
        AlignWithMargins = True
        Top = 1
        Height = 100
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = #52852#47700#46972'1'
        TabOrder = 3
        object Label1: TLabel
          Left = 193
          Top = 56
          Width = 30
          Height = 13
          Caption = #54924#51204':'
        end
        object RecorderCAM1: TVideoGrabber
          Tag = 1
          Left = 2
          Top = 2
          Width = 61
          Height = 76
          Cursor = crHandPoint
          Hint = #52852#47700#46972'1('#51221#47732')|'#54644#45817' '#52852#47700#46972#52285#51012' '#53364#47533#54616#47732' '#53360' '#52852#47700#46972' '#52285#51004#47196' '#48380' '#49688' '#51080#49845#45768#45796'.'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Color = clInactiveCaptionText
          FullRepaint = False
          AspectRatioToUse = -1.000000000000000000
          AudioCompressor = 0
          AutoFileNameDateTimeFormat = 'yymmdd_hhmmss_zzz'
          AutoFilePrefix = 'vg'
          AutoRefreshPreview = True
          BackgroundColor = clInactiveCaptionText
          BurstCount = 0
          Display_AspectRatio = ar_Box
          Cropping_Zoom = 1.000000000000000000
          FrameGrabber = fg_PreviewStream
          ImageOverlayEnabled = False
          ImageOverlay_AlphaBlend = False
          ImageOverlay_AlphaBlendValue = 180
          ImageOverlay_ChromaKey = False
          ImageOverlay_ChromaKeyLeewayPercent = 25
          ImageOverlay_ChromaKeyRGBColor = 0
          ImageOverlay_Height = -1
          ImageOverlay_LeftLocation = 10
          ImageOverlay_StretchToVideoSize = False
          ImageOverlay_TopLocation = 10
          ImageOverlay_Transparent = False
          ImageOverlay_TransparentColorValue = 0
          ImageOverlay_UseTransparentColor = False
          ImageOverlay_Width = -1
          ImageOverlay_TargetDisplay = -1
          LicenseString = 'N/A'
          MotionDetector_Grid = 
            '5555555555 5555555555 5555555555 5555555555 5555555555 555555555' +
            '5 5555555555 5555555555 5555555555 5555555555'
          OnFrameBitmapEventSynchrone = True
          PlayerSpeedRatio = 1.000000000000000000
          Reencoding_StartTime = -1
          Reencoding_StartFrame = -1
          Reencoding_StopTime = -1
          Reencoding_StopFrame = -1
          TextOverlay_Enabled = False
          TextOverlay_Font.Charset = DEFAULT_CHARSET
          TextOverlay_Font.Color = clAqua
          TextOverlay_Font.Height = -20
          TextOverlay_Font.Name = 'Arial'
          TextOverlay_Font.Style = []
          TextOverlay_HighResFont = True
          TextOverlay_Left = 0
          TextOverlay_Top = 0
          TextOverlay_Right = -1
          TextOverlay_Scrolling = False
          TextOverlay_ScrollingSpeed = 1
          TextOverlay_Shadow = True
          TextOverlay_ShadowColor = clBlack
          TextOverlay_ShadowDirection = cd_Center
          TextOverlay_BkColor = clWhite
          TextOverlay_Align = tf_Left
          TextOverlay_GradientMode = gm_Disabled
          TextOverlay_GradientColor = clNavy
          TextOverlay_String = 
            'Note: the date/time formats '#13#10'can be easily modified.'#13#10#13#10'system ' +
            'date/time: %sys_time[dd/mm/yy hh:nn:ss]%'#13#10'DV time code: %time_co' +
            'de%'#13#10'DV date/time: %dv_time[dd/mm/yy hh:nn:ss]%'#13#10'frame number: %' +
            'frame_count%'#13#10'time (full): %time_full%'#13#10'time (sec): %time_sec%'#13#10 +
            'time (ns): %time_100ns%'
          TextOverlay_TargetDisplay = -1
          TextOverlay_Transparent = True
          VideoCompression_Quality = 1.000000000000000000
          VideoCompressor = 0
          VideoFromImages_TemporaryFile = 'SetOfBitmaps01.dat'
          VideoProcessing_RotationCustomAngle = 45.500000000000000000
          VideoSource_FileOrURL_StartTime = -1
          VideoSource_FileOrURL_StopTime = -1
          OnDblClick = RecorderCAM1DblClick
          OnDeviceArrivalOrRemoval = RecorderCAM1DeviceArrivalOrRemoval
          OnDeviceLost = RecorderCAM1DeviceLost
          OnFrameBitmap = RecorderCAM1FrameBitmap
          OnVideoDeviceSelected = RecorderCAM1VideoDeviceSelected
        end
        object cboVideoDevices1: TComboBox
          Tag = 1
          Left = 64
          Top = 3
          Width = 228
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2010'
          ParentFont = False
          TabOrder = 1
          OnClick = cboVideoDevices1Click
        end
        object cboVideoFormats1: TComboBox
          Tag = 1
          Left = 64
          Top = 26
          Width = 228
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #44404#47548
          Font.Style = []
          ImeName = 'Microsoft IME 2010'
          ParentFont = False
          TabOrder = 2
          OnClick = cboVideoFormats1Click
        end
        object btnStartPreview1: TcxButton
          Tag = 1
          Left = 66
          Top = 51
          Width = 35
          Height = 23
          Hint = #48120#47532#48372#44592'ON'
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
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
          OnClick = btnStartPreview1Click
        end
        object btnStopPreview1: TcxButton
          Tag = 1
          Left = 102
          Top = 51
          Width = 35
          Height = 23
          Hint = #48120#47532#48372#44592'OFF'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000009C6128E7AC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF9C6128E7242424460909
            0912000000000000000000000000000000000000000001000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF7A7A7AFF6F6F
            6FFF737373F0535353AD3C3C3C7E2E2E2E602A2A2A5701000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF1D1D1D386F6F
            6FFF6F6F6FFF464646A011111126080808130A0A0A1601000001AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000000F0F
            0F200F0F0F23313131706C6C6CF86F6F6FFF6F6F6FFE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000000000
            0000636363E36F6F6FFF6D6D6DFF676767FF676767FE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF000000005C5C
            5CD36F6F6FFF696969FF7C7C7CFFC3C3C3FFCECECEFE01010102AC6B2CFFAC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF212121456F6F
            6FFF6B6B6BFF959595FFFFFFFFFFF5F5F5FFDDDDDDFF0D0D0D0D9A6028E5AC6B
            2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFFAC6B2CFF925B25D8505050A76E6E
            6EFF666666FFFFFFFFFFC8C8C8FF5D5D5DFF646464FF434343910F0F0F0F0202
            0203010101030101010300000000000000000000000000000000666666D66C6C
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnStopPreview1Click
        end
        object cbRotation1: TcxImageComboBox
          Tag = 1
          Left = 226
          Top = 52
          TabStop = False
          EditValue = 1
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = '0'#176
              ImageIndex = 0
              Value = 0
            end
            item
              Description = '90'#176
              Value = 1
            end
            item
              Description = '180'#176
              Value = 2
            end
            item
              Description = '270'#176
              Value = 3
            end>
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cbRotation1PropertiesEditValueChanged
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #44404#47548
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 5
          Width = 67
        end
        object btnSet1: TcxButton
          Tag = 1
          Left = 138
          Top = 51
          Width = 35
          Height = 23
          Hint = #52852#47700#46972#49444#51221
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000900000012000000120000
            0009000000020000000000000000000000000000000000000000000000000000
            0000000000030000000A0000000A0000000B2519156F68473BFF67443BFF1D13
            0F700000000C0000000B0000000C000000050000000100000000000000000000
            00030403021A543B33C738251EB30D0907454C362DC4B5A198FFAB958AFF3E29
            23C50D080748311F1AB13A241ECE030202220000000400000000000000000000
            00085A4138C9C7B9B0FFA8958BFF6C4F47FF715044FECABAB0FFC6B5AAFF6142
            37FE6B5047FE9C857AFFA89388FF3B241FCB0000000B00000000000000000000
            00074C3930ABC0AEA7FFE3DBD5FFD2C3BAFFC1AFA6FFCFC0B7FFCEBEB5FFBCAA
            9FFFCAB9AEFFC9B8ADFF9F897FFF36221DB20000000A00000000000000010000
            0007110C0B368D6F65FCEAE3DFFFDACDC6FFD8CCC3FFE3D9D3FFE7E0DAFFE1D6
            D0FFD2C3B9FFCDBCB3FF705449FE0D0907410000000A00000002000000042A1E
            1A6B4C372EBB846356FED9CEC8FFE3DAD5FFCDBEB7FF8E6F62FF947567FFD0C0
            B9FFE3DAD3FFC8B7ADFF6A4940FF47312AC22418147100000007000000088D6D
            60FFD8CCC7FFEEE8E5FFEBE6E0FFEAE3DDFF7F6257FF2219155E241B175E9374
            67FFEBE4DFFFD6C8C0FFD3C6BDFFB9A59BFF78574BFF0000000D000000079373
            64FFD9CECAFFF6F3F2FFFAF7F6FFEFEAE5FF76574DFF1D1411551E1613568869
            5DFFEFE9E6FFDDD2CBFFD8CAC3FFC7B8B1FF7E5B4FFF0000000C000000033428
            245F665046B5937467FEECE6E3FFF0ECE8FFCEC2BDFF856961FF886D65FFD2C7
            C2FFECE4DFFFD9CFC9FF856458FD5A443AB92B201C6102010108000000000000
            000316110F2EA78B7EFDF6F4F1FFF3EFECFFF2EEEAFFF3EFECFFF0EBE7FFEFEA
            E6FFEFEBE7FFECE5E0FF83665BFD110C0B390000000600000001000000000000
            0003685349AADCD1CBFFF8F6F3FFF8F5F3FFEBE4E1FFFDFCFBFFF3EEECFFE2D8
            D3FFFAF9F8FFF9F7F5FFC8B9B3FF4E3931B00000000500000000000000000000
            0002776055BDE5DDD8FFDCD0CBFFAC9183FD9E7E6EFDFBF8F8FFF5F1EEFF9979
            6AFDA3897EFCD7CBC5FFE0D6D1FF6E564CC20000000500000000000000000000
            00010605040D7C6458BF69544BA51713102B6F594EB2E1D7D2FFE0D6D1FF6D57
            4DB314100E2B614D44A4775E53C7050404110000000100000000000000000000
            0000000000000000000100000002000000023B302A5EA68676FFA58375FF3A2F
            295F000000030000000300000003000000010000000000000000000000000000
            0000000000000000000000000000000000000000000100000002000000030000
            0001000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnSet1Click
        end
      end
    end
  end
  object ActionThumbnail: TActionList
    Images = ImageListThumbnail
    OnExecute = ActionThumbnailExecute
    Left = 32
    Top = 544
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
    object ActRetrieveThumbnail: TAction
      Caption = #50040#45348#51068' '#50676#44592
      ImageIndex = 4
      OnExecute = ActRetrieveThumbnailExecute
    end
    object ActAddPictureData: TAction
      Caption = #49324#51652#45936#51060#53552' '#52628#44032
      ImageIndex = 5
      OnExecute = ActAddPictureDataExecute
    end
    object ActDelPictureData: TAction
      Caption = #49324#51652#45936#51060#53552' '#49325#51228
      ImageIndex = 6
      OnExecute = ActDelPictureDataExecute
    end
    object ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage
      Category = 'ImageEnMView'
      Caption = 'Delete'
      Hint = 'Remove the selected image'
      ImageIndex = 5
      ShortCut = 16430
    end
  end
  object ImageListThumbnail: TImageList
    Left = 128
    Top = 512
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000008080800000000000808080008080800000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000080808000808080000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000808080008080800080808000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF00000000008080800000000000FFFFFF000000
      00000000000000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF008080
      80000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000800000008000000000000000000000000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF008080
      80000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000000000
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000000000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0080000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000800000008000000000000000000000000000
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
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
      000000000000000000000000FFFFFF00F000FFFFFFFF0000F00601FFFFFF0000
      F00C01FF00FF0000F01801FF00FF0000F00001FF00FF0000F00001FF00FF0000
      F000FF60001B0000F008FE6000190000F000FC0000000000F000FE6000190000
      D500FF60001B00009BFF01FF00FF000007FF01FF00FF00009FFF01FF00FF0000
      DFFF01FF00FF0000FFFF01FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFBC001
      E00FEAAFEFFF8031E00FFFFFC7F78031E00FEEEFC7EF8031E00FFEFFE3CF8001
      E00FE00FF19F8001E00FE00FF83F8001E00FE00FFC7F8FF1E00FE00FF83F8FF1
      E00FE00FF1BF8FF1FEFFE00FC3CF8FF1EEEFE00F87E78FF1FFFFE00F9FF38FF5
      EAAFE00FFFFF8001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupThumb: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListThumbnail
    Left = 128
    Top = 416
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
    Left = 128
    Top = 560
  end
  object ActionControl: TActionList
    Images = ImageListControl
    Left = 576
    Top = 48
    object ActCameraSetup: TAction
      Caption = #52852#47700#46972#49444#51221
      ImageIndex = 0
    end
    object ActCameraRefresh: TAction
      Caption = #54868#47732#49352#47196#44256#52840
      ImageIndex = 1
    end
    object ActCameraOn: TAction
      Caption = #52852#47700#46972' ON'
    end
    object ActCameraOff: TAction
      Caption = #52852#47700#46972' OFF'
    end
    object ActOpenImageFile: TAction
      Caption = #49324#51652#44032#51256#50724#44592
      ImageIndex = 2
      OnExecute = ActOpenImageFileExecute
    end
    object AcCameraCapture: TAction
      Caption = #49324#51652#52897#52432
      ImageIndex = 3
      OnExecute = AcCameraCaptureExecute
    end
    object ActRequestAnalyse: TAction
      Caption = #48516#49437#50836#52397
      ImageIndex = 4
    end
    object ActSaveConfig: TAction
      Caption = #49444#51221#44050#51200#51109
      ImageIndex = 5
    end
    object ActClearScreen: TAction
      Caption = #54868#47732#51648#50864#44592
      ImageIndex = 6
      OnExecute = ActClearScreenExecute
    end
    object ActAutoFit: TAction
      AutoCheck = True
      Caption = #54868#47732#51088#46041#47582#52644
      Checked = True
      OnExecute = ActAutoFitExecute
    end
    object ActHoldCamera: TAction
      AutoCheck = True
      Caption = #54868#47732#51221#51648
      OnExecute = ActHoldCameraExecute
    end
    object ActCameraGuidline: TAction
      AutoCheck = True
      Caption = #49688#51649'/'#49688#54217#49440
      OnExecute = ActCameraGuidlineExecute
    end
  end
  object ImageListControl: TImageList
    Left = 576
    Top = 96
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C0000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      000000000000FFFFFF0000000000000000000000000080808000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FF00
      0000FF000000000000000000000000FFFF0000FFFF0000000000000000000000
      FF000000FF000000800000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FF00
      0000FF000000800000000000000000FFFF0000FFFF0000808000000000000000
      FF000000FF000000800000000000C0C0C0000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FF00
      0000FF000000800000000000000000FFFF0000FFFF0000808000000000000000
      FF000000FF000000800000000000C0C0C0000000000000000000000000000000
      000000FFFF000000000000FFFF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FF00
      0000FF000000800000000000000000FFFF0000FFFF0000808000000000000000
      FF000000FF000000800000000000C0C0C0000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FF00
      0000FF000000800000000000000000FFFF0000FFFF0000808000000000000000
      FF000000FF000000800000000000C0C0C0000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C00000000000FF00
      0000FF000000800000000000000000FFFF0000FFFF0000808000000000000000
      FF000000FF000000800000000000C0C0C0000000000000000000000000000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0000000
      000000000000000000000000000000FFFF0000FFFF0000808000000000000000
      FF000000FF000000800000000000C0C0C000000000000000000000FFFF000000
      000000FFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000808080000000
      0000C0C0C000C0C0C0000000000000FFFF0000FFFF0000808000000000000000
      FF000000FF000000800000000000C0C0C0000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000808000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C0000000
      0000C0C0C000C0C0C0000000000000FFFF0000FFFF0000808000000000000000
      00000000FF000000800000000000C0C0C000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000008080000080800000000000000000000000
      0000000000000080800000808000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080000000
      0000C0C0C000C0C0C0000000000000FFFF0000FFFF000080800000000000C0C0
      C000000000000000000000000000C0C0C0000000000000000000FFFFFF0000FF
      FF00000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000FFFFFF000000
      0000C0C0C000C0C0C0000000000000FFFF0000FFFF00C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000000000FFFF00FFFF
      FF0000000000FFFFFF0000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000000000000000
      0000C0C0C000C0C0C000C0C0C00000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000808080008080
      8000808080008080800000000000808080008080800000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800000000000000000000000000000000000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008080
      8000808080000000000080808000808080000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800080008000800000000000000000000000000000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000808080008080800080808000808080008080800080808000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000800080008000800080008000000000000000000000000000000000000000
      0000000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFFFF00FFFFFF000080
      0000FFFFFF00FFFFFF000000000000000000000000000000000000FFFF00FFFF
      FF00000000008080800080808000000000008080800000000000000000000000
      000000000000FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800080008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF000080
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000080808000808080000000000000FFFF00000000000000
      0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000800080008000800080008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
      0000FFFFFF00FFFFFF000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800080008000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000800000FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000800000000000000000000000
      000000000000008080000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000800000FFFFFF00FFFFFF000080000000800000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00808080000000
      0000000000008080800000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000000000000
      000000000000008080000080800000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000080000000800000008000000080000000800000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000080
      80000080800000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      800000808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000080
      8000008080000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      800000808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00808080000000
      00000000000080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      800000808000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFCF81FFFFF00008002F81FFFFF0000
      BBBDF81FFFFF0000A663F81F807F0000A222E01FBF3F0000A222E01FBF1F0000
      A222E0009F0F0000A222E008D5070000A2228008EA8300009E228000F5410000
      92228000FAA1000092328000FD510000922E8078FEAD000052208078FF010000
      31E0807AFFFF00001000FC00FFFF0000FFFFC001FFFFFFFFFFFFC0018000FDFF
      9FCFC001800663BB8FAFC001800C9B73C75FC0018018D0E1E2BFC0018030DEC0
      F17FC00180009E20FAFFC00180000F52F47BC00180001CDA0A31C00180000EEE
      0700C0018000009E6781C001800080DDE783C0018000C02FC703C0038000F80F
      FC07C0078000FC1FFE1FC00FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupCamera: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListControl
    Left = 464
    Top = 40
    object N5: TMenuItem
      Action = ActCameraSetup
    end
    object N6: TMenuItem
      Action = ActCameraRefresh
    end
    object ON1: TMenuItem
      Action = ActCameraOn
    end
    object OFF1: TMenuItem
      Action = ActCameraOff
    end
    object N11: TMenuItem
      Action = ActOpenImageFile
    end
    object N12: TMenuItem
      Action = AcCameraCapture
    end
    object N13: TMenuItem
      Action = ActRequestAnalyse
    end
    object N15: TMenuItem
      Action = ActClearScreen
    end
    object N16: TMenuItem
      Action = ActAutoFit
      AutoCheck = True
    end
    object N17: TMenuItem
      Action = ActHoldCamera
      AutoCheck = True
    end
    object N18: TMenuItem
      Action = ActCameraGuidline
      AutoCheck = True
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object N14: TMenuItem
      Action = ActSaveConfig
    end
  end
  object PopupPicture: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListThumbnail
    Left = 72
    Top = 168
    object N7: TMenuItem
      Action = ActRetrieveThumbnail
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Action = ActAddPictureData
    end
    object N9: TMenuItem
      Action = ActDelPictureData
    end
  end
  object PICTURE_DATA_INS: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 72
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CUST_UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'PICTURE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIC_CNT'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CHASU'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PICTURE_DATA_INS'
  end
  object PICTURE_DATA_DEL: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 72
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'PICTURE_DATA_DEL'
  end
  object q_UpdatePictureData: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'Update Picture_data set picture_date = :p_date'
      'where UID = :uid;')
    Left = 168
    Top = 240
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
