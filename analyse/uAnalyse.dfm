object fmAnalyse: TfmAnalyse
  Left = 0
  Top = 0
  Caption = #51088#49464#48516#49437
  ClientHeight = 701
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopClient: TPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 701
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlMember: TPanel
      Left = 0
      Top = 0
      Width = 210
      Height = 701
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
        Align = alClient
        Alignment = alTopCenter
        Caption = #49324#51652#45936#51060#53552
        Style.LookAndFeel.SkinName = 'Black'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 0
        Height = 412
        Width = 206
        object cxGrid1: TcxGrid
          Left = 3
          Top = 15
          Width = 200
          Height = 387
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
            OnCellDblClick = gridCheckCellDblClick
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
        Width = 206
        object Panel10: TPanel
          Left = 6
          Top = 16
          Width = 60
          Height = 22
          Caption = #54924#50896#47749
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
        end
        object Panel11: TPanel
          Left = 6
          Top = 38
          Width = 60
          Height = 22
          Caption = #50672#46973#52376
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
        end
        object pnlName: TPanel
          Left = 66
          Top = 16
          Width = 135
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
          Left = 66
          Top = 38
          Width = 135
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
          Left = 5
          Top = 60
          Width = 33
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
          Width = 33
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
          Left = 109
          Top = 60
          Width = 92
          Height = 25
          Hint = #49352#47196#44256#52840
          Caption = #49352#47196#44256#52840
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
          Left = 69
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
      object pnlThumbnail: TPanel
        Left = 1
        Top = 510
        Width = 208
        Height = 190
        Align = alBottom
        TabOrder = 2
        object ImageEnMView: TImageEnMView
          AlignWithMargins = True
          Left = 2
          Top = 27
          Width = 204
          Height = 161
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Background = clInactiveCaptionText
          ParentCtl3D = False
          BorderStyle = bsNone
          ScrollBars = ssHorizontal
          StoreType = ietNormal
          ThumbWidth = 150
          ThumbHeight = 185
          HorizBorder = 2
          VertBorder = 1
          UpperGap = 2
          TextMargin = 0
          OnImageSelect = ImageEnMViewImageSelect
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
          Left = 1
          Top = 1
          Width = 206
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object btnPicView: TBitBtn
            Left = 102
            Top = 0
            Width = 93
            Height = 25
            Caption = #52285#50676#44592
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
            ShowHint = False
            TabOrder = 0
            OnClick = btnPicViewClick
          end
        end
      end
    end
    object PanelComment: TPanel
      Left = 210
      Top = 0
      Width = 185
      Height = 701
      Align = alLeft
      TabOrder = 1
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 183
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Caption = #52404#54805#48320#54805' '#48276#47168
        TabOrder = 0
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 23
        Width = 183
        Height = 475
        Align = alTop
        TabOrder = 1
        LookAndFeel.SkinName = 'Black'
        object gridDescript: TcxGridDBTableView
          DragMode = dmAutomatic
          OnStartDrag = gridDescriptStartDrag
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
          DataController.DataSource = dsCUSTOMER_IMAGE_DESCRIPT_SEL
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.Indicator = True
          object gridDescriptID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridDescriptID_NO: TcxGridDBColumn
            Caption = 'No'
            DataBinding.FieldName = 'ID_NO'
            HeaderAlignmentHorz = taCenter
            Width = 43
          end
          object gridDescriptDESCRIPT_NAME: TcxGridDBColumn
            Caption = #49444#47749
            DataBinding.FieldName = 'DESCRIPT_NAME'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRIPTS'
              end>
            Properties.ListSource = dmDBCommon.dsIMAGE_DESCRIPT_LIST
            Width = 126
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gridDescript
        end
      end
      object pnlBottom: TPanel
        Left = 1
        Top = 498
        Width = 183
        Height = 202
        Align = alClient
        TabOrder = 2
        object Label1: TLabel
          Left = 16
          Top = 72
          Width = 142
          Height = 13
          Caption = #48276#47168#45716' '#52572#45824' 15'#44060' '#44620#51648'...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = []
          ParentFont = False
        end
        object btnAdd: TBitBtn
          Left = 2
          Top = 2
          Width = 61
          Height = 25
          Caption = #48276#47168#46321#47197
          TabOrder = 0
          OnClick = btnAddClick
        end
        object btnEdit: TBitBtn
          Left = 62
          Top = 2
          Width = 60
          Height = 25
          Caption = #48276#47168#49688#51221
          TabOrder = 1
          OnClick = btnEditClick
        end
        object btnDel: TBitBtn
          Left = 121
          Top = 2
          Width = 59
          Height = 25
          Caption = #48276#47168#49325#51228
          TabOrder = 2
        end
        object btnComments: TBitBtn
          Left = 26
          Top = 33
          Width = 127
          Height = 25
          Caption = #51333#54633#48516#49437' '#53076#47704#53944
          TabOrder = 3
          OnClick = btnCommentsClick
        end
      end
    end
    inline frmImageEditor21: TfrmImageEditor2
      Left = 395
      Top = 0
      Width = 705
      Height = 701
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 395
      ExplicitWidth = 705
      ExplicitHeight = 701
      inherited pnl1: TPanel
        Width = 705
        Height = 701
        ExplicitWidth = 705
        ExplicitHeight = 701
        inherited pnlTools: TPanel
          Left = 523
          Height = 701
          ExplicitLeft = 523
          ExplicitHeight = 701
          inherited cxPageControl1: TcxPageControl
            Height = 701
            ExplicitHeight = 701
            ClientRectBottom = 696
            inherited cxTabSheet1: TcxTabSheet
              ExplicitLeft = 2
              ExplicitTop = 25
              ExplicitWidth = 175
              ExplicitHeight = 671
              inherited pnl2: TPanel
                Height = 671
                ExplicitHeight = 671
                inherited cxGroupBox1: TcxGroupBox
                  inherited colorLine: TdxColorEdit
                    Style.IsFontAssigned = True
                  end
                  inherited cbbPenStyle: TcxImageComboBox
                    Style.IsFontAssigned = True
                  end
                  inherited colorBrush: TdxColorEdit
                    Style.IsFontAssigned = True
                  end
                  inherited cbbBrushStyle: TcxImageComboBox
                    Style.IsFontAssigned = True
                  end
                  inherited efontColor: TdxColorEdit
                    Style.IsFontAssigned = True
                  end
                end
              end
            end
            inherited cxTabSheet3: TcxTabSheet
              ExplicitLeft = 2
              ExplicitTop = 25
              ExplicitWidth = 175
              ExplicitHeight = 655
            end
          end
        end
        inherited pnl5: TPanel
          Width = 523
          Height = 701
          ExplicitWidth = 523
          ExplicitHeight = 701
          inherited pnl6: TPanel
            Width = 523
            ExplicitWidth = 523
            inherited CheckBox1: TCheckBox
              OnClick = frmImageEditor21CheckBox1Click
            end
          end
          inherited Panel1: TPanel
            Width = 523
            Height = 675
            ExplicitWidth = 523
            ExplicitHeight = 675
            inherited Splitter1: TSplitter
              Left = 343
              Height = 673
              ExplicitLeft = 343
              ExplicitHeight = 673
            end
            inherited Splitter2: TSplitter
              Height = 673
              ExplicitHeight = 673
            end
            inherited ImageEnVect1: TImageEnVect
              Width = 163
              Height = 673
              ExplicitWidth = 163
              ExplicitHeight = 673
            end
            inherited ImageEnView1: TImageEnView
              Height = 673
              ExplicitHeight = 673
            end
            inherited ImageEnView2: TImageEnView
              Left = 346
              Height = 673
              ExplicitLeft = 346
              ExplicitHeight = 673
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
  object OpenImageEnDialog1: TOpenImageEnDialog
    Filter = 
      'All graphics|*.tif;*.tiff;*.jpg;*.jpeg;*.jpe;*.pcx;*.bmp;*.dib;*' +
      '.rle;*.ico;*.cur;*.png;*.wmf;*.emf;*.tga;*.targa;*.vda;*.icb;*.v' +
      'st;*.pix;*.pxm;*.ppm;*.pgm;*.pbm;*.avi|TIFF Bitmap (TIF;TIFF)|*.' +
      'tif;*.tiff|JPEG Bitmap (JPG;JPEG;JPE)|*.jpg;*.jpeg;*.jpe|PaintBr' +
      'ush (PCX)|*.pcx|Windows Bitmap (BMP;DIB;RLE)|*.bmp;*.dib;*.rle|W' +
      'indows Icon (ICO)|*.ico|Windows Cursor (CUR)|*.cur|Portable Netw' +
      'ork Graphics (PNG)|*.png|Windows Metafile (WMF)|*.wmf|Enhanced W' +
      'indows Metafile (EMF)|*.emf|Targa Bitmap (TGA;TARGA;VDA;ICB;VST;' +
      'PIX)|*.tga;*.targa;*.vda;*.icb;*.vst;*.pix|Portable Pixmap, Grey' +
      'Map, BitMap (PXM;PPM;PGM;PBM)|*.pxm;*.ppm;*.pgm;*.pbm|Video for ' +
      'Windows (AVI)|*.avi'
    Left = 756
    Top = 458
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
    FilterDefault = 0
    ExOptions = [sdShowAdvanced]
    Left = 755
    Top = 408
  end
  object PopupThumb: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListThumbnail
    Left = 104
    Top = 536
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
    Left = 104
    Top = 584
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
      OnExecute = actThumbDeleteExecute
    end
    object actThumbSaveAs: TAction
      Caption = #50040#45348#51068' '#51200#51109
      ImageIndex = 3
      ShortCut = 16467
      OnExecute = actThumbSaveAsExecute
    end
    object ActSaveDrawing: TAction
      Caption = #46300#47196#51081#51200#51109
      ImageIndex = 4
      OnExecute = ActSaveDrawingExecute
    end
    object ActClearScreen: TAction
      Caption = #54868#47732#49325#51228
      ImageIndex = 5
    end
    object ActSaveImage: TAction
      Caption = #51060#48120#51648#51200#51109
      ImageIndex = 6
    end
    object ActSaveSetting: TAction
      Caption = #49444#51221#44050#51200#51109
      ImageIndex = 7
    end
  end
  object ImageListThumbnail: TImageList
    Left = 200
    Top = 536
    Bitmap = {
      494C010108000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000000000000000000000000000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      00000000000000000000FFFF0000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000808080008080
      8000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      000000000000FFFF0000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000008080
      8000808080000000000000000000000000000000000000FFFF0000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
      0000808080008080800080808000000000000000000000FFFF0000FFFF000000
      00000000000000000000000000000000000000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000000000000000000000
      0000000000000080800000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000000000000000000000000000000000000000000000FFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000008080800000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000000000000
      0000000000000080800000808000000000000000000000000000FFFF0000FFFF
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF008080800000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000FFFF00000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000008080800080808000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF0001FFFFFC00FFFF
      7FFDFFFFFC009FCF5555807FFC008FAF0001BF3FFC00C75F801FBF1FFC00E2BF
      803F9F0F8000F17F883FD5070200FAFF809FEA830200F47B818FF54100000A31
      8387FAA1000007008797FD51000067818FC3FEAD1E3FE7839FC3FF011E3FC703
      BFE1FFFF1E3FFC07FFE3FFFF003FFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFBC001
      E00FEAAFEFFF8031E00FFFFFC7F78031E00FEEEFC7EF8031E00FFEFFE3CF8001
      E00FE00FF19F8001E00FE00FF83F8001E00FE00FFC7F8FF1E00FE00FF83F8FF1
      E00FE00FF1BF8FF1FEFFE00FC3CF8FF1EEEFE00F87E78FF1FFFFE00F9FF38FF5
      EAAFE00FFFFF8001FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object SaveImageEnDialog2: TSaveImageEnDialog
    Filter = 
      'JPEG Bitmap (JPG)|*.jpg|CompuServe Bitmap (GIF)|*.gif|TIFF Bitma' +
      'p (TIF)|*.tif|PaintBrush (PCX)|*.pcx|Portable Network Graphics (' +
      'PNG)|*.png|Windows Bitmap (BMP)|*.bmp|OS/2 Bitmap (BMP)|*.bmp|Ta' +
      'rga Bitmap (TGA)|*.tga|Portable PixMap (PXM)|*.pxm|Portable PixM' +
      'ap (PPM)|*.ppm|Portable GreyMap (PGM)|*.pgm|Portable Bitmap (PBM' +
      ')|*.pbm|JPEG2000 (JP2)|*.jp2|JPEG2000 Code Stream (J2K)|*.j2k|Mu' +
      'ltipage PCX (DCX)|*.dcx'
    ExOptions = [sdShowPreview, sdShowAdvanced]
    Left = 200
    Top = 584
  end
  object PopupMenu1: TPopupMenu
    Images = ImageListThumbnail
    Left = 488
    Top = 296
    object N5: TMenuItem
      Action = ActSaveDrawing
    end
    object N6: TMenuItem
      Action = ActClearScreen
    end
    object N7: TMenuItem
      Action = ActSaveImage
    end
    object N8: TMenuItem
      Action = ActSaveSetting
    end
  end
  object CUSTOMER_IMAGE_DESCRIPT_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_DESCRIPT_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 336
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'IMG_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ID_NO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DESCRIPT_NAME'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_DESCRIPT_SEL'
    object CUSTOMER_IMAGE_DESCRIPT_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUSTOMER_IMAGE_DESCRIPT_SELID_NO: TIntegerField
      Alignment = taCenter
      FieldName = 'ID_NO'
    end
    object CUSTOMER_IMAGE_DESCRIPT_SELDESCRIPT_NAME: TIntegerField
      FieldName = 'DESCRIPT_NAME'
    end
  end
  object dsCUSTOMER_IMAGE_DESCRIPT_SEL: TDataSource
    DataSet = CUSTOMER_IMAGE_DESCRIPT_SEL
    Left = 336
    Top = 352
  end
  object CUSTOMER_IMAGE_DESCRIPT_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_DESCRIPT_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 336
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DESCRIPT_NAME'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_DESCRIPT_INS'
  end
  object CUSTOMER_IMAGE_DESCRIPT_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_DESCRIPT_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 336
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DESCRIPT_NAME'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_DESCRIPT_UPD'
  end
  object CUSTOMER_IMAGE_COMMENT_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_COMMENT_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 720
    Top = 544
    ParamData = <
      item
        DataType = ftString
        Name = 'IMAGE_ID'
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
        Name = 'IMAGE_COMMET'
        ParamType = ptOutput
        Size = 1024
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_COMMENT_SEL'
    object CUSTOMER_IMAGE_COMMENT_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET: TStringField
      FieldName = 'IMAGE_COMMET'
      Size = 1024
    end
  end
  object dsCUSTOMER_IMAGE_COMMENT_SEL: TDataSource
    DataSet = CUSTOMER_IMAGE_COMMENT_SEL
    Left = 720
    Top = 592
  end
  object CUSTOMER_IMAGE_COMMENT_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_COMMENT_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 512
    Top = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE_COMMET'
        ParamType = ptInput
        Size = 1024
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_COMMENT_INS'
  end
  object CUSTOMER_IMAGE_COMMENT_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_COMMENT_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 512
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMAGE_COMMET'
        ParamType = ptInput
        Size = 1024
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_COMMENT_UPD'
  end
end
