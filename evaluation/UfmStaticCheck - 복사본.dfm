object fmStaticCheck: TfmStaticCheck
  Left = 0
  Top = 0
  Caption = #51221#51201#54217#44032
  ClientHeight = 665
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMember: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 665
    Align = alLeft
    TabOrder = 0
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
      TabOrder = 0
      Height = 97
      Width = 197
      object Panel10: TPanel
        Left = 3
        Top = 16
        Width = 60
        Height = 23
        Caption = #54924#50896#47749
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 3
        Top = 39
        Width = 60
        Height = 23
        Caption = #50672#46973#52376
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
      end
      object pnlName: TPanel
        Left = 63
        Top = 16
        Width = 127
        Height = 23
        Cursor = crHandPoint
        Hint = #53364#47533#54616#50668' '#54924#50896#49440#53469'...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object EditName: TEdit
          Left = 1
          Top = 1
          Width = 90
          Height = 21
          Align = alLeft
          ImeMode = imSHanguel
          TabOrder = 0
        end
        object btnFindMember: TBitBtn
          Left = 91
          Top = 1
          Width = 35
          Height = 21
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
        end
      end
      object pnlNo: TPanel
        Left = 63
        Top = 39
        Width = 127
        Height = 23
        Cursor = crHandPoint
        Hint = #53364#47533#54616#50668' '#54924#50896#49440#53469'...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object btnCustInfo: TBitBtn
        Left = 4
        Top = 63
        Width = 31
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
        ShowHint = False
        TabOrder = 4
      end
      object btnHistory: TBitBtn
        Left = 34
        Top = 63
        Width = 31
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
        ShowHint = False
        TabOrder = 5
      end
      object btnFavorite: TBitBtn
        Left = 64
        Top = 63
        Width = 31
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
      end
    end
    object pnlThumbnail: TPanel
      Left = 1
      Top = 616
      Width = 199
      Height = 48
      Align = alBottom
      TabOrder = 1
      OnResize = pnlThumbnailResize
      object ImageEnMView: TImageEnMView
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 195
        Height = 44
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
        object ImageEnVectCapture: TImageEnVect
          Left = 807
          Top = 27
          Width = 145
          Height = 121
          Background = clBtnFace
          ParentCtl3D = False
          AutoFit = True
          AutoStretch = True
          EnableInteractionHints = True
          Visible = False
          TabOrder = 0
        end
      end
    end
  end
  object Panel14: TPanel
    Left = 373
    Top = 0
    Width = 984
    Height = 665
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 201
    ExplicitWidth = 926
    object Splitter2: TSplitter
      Left = 425
      Top = 27
      Height = 638
      Align = alRight
      Color = clAppWorkSpace
      ParentColor = False
      ExplicitLeft = 368
      ExplicitTop = 208
      ExplicitHeight = 100
    end
    object Panel15: TPanel
      Left = 0
      Top = 0
      Width = 984
      Height = 27
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 926
      object Label4: TLabel
        Left = 11
        Top = 6
        Width = 89
        Height = 13
        Caption = #51221#51201' '#51088#49464#54217#44032
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object chkStaticFit: TCheckBox
        Left = 136
        Top = 3
        Width = 81
        Height = 17
        Caption = #54868#47732#47582#52644
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkStaticFitClick
      end
      object chkShowDraw: TCheckBox
        Left = 225
        Top = 3
        Width = 96
        Height = 17
        Caption = #46300#47196#51081' '#54252#54632
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object btnAdd: TBitBtn
        Left = 456
        Top = 2
        Width = 31
        Height = 24
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 2
        Visible = False
        OnClick = btnAddClick
      end
      object btnDeltree: TBitBtn
        Left = 486
        Top = 2
        Width = 31
        Height = 24
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 3
        Visible = False
        OnClick = btnDeltreeClick
      end
      object btnAnalyse: TBitBtn
        Left = 333
        Top = 1
        Width = 117
        Height = 24
        Hint = #52769#51221#48169#48277
        Caption = #48516#49437#52285' '#50676#44592
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADA000000000000000D088888888888880A080808080808080D000000000000
          000AA0EEEEEEEE0DADADD0E0000EE0DADADAA0E0A0EE00ADADADD0E00EE0D00A
          DADAA0E0EE0DA000ADADD0EEE0DAD0B70ADAA0EE0DADA0B80DADD0E0DADADA0B
          70DAA00DADADAD0B00ADD0DADADADAD0110AADADADADADA000AD}
        TabOrder = 4
        OnClick = btnAnalyseClick
      end
      object btnPracticeMake: TBitBtn
        Left = 728
        Top = 2
        Width = 75
        Height = 24
        Caption = #52376#48169#49373#49457
        TabOrder = 5
        Visible = False
        OnClick = btnPracticeMakeClick
      end
    end
    object Panel1: TPanel
      Left = 428
      Top = 27
      Width = 556
      Height = 638
      Align = alRight
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 370
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 237
        Height = 638
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 237
          Height = 26
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          object btnViewPos: TBitBtn
            Left = 2
            Top = 0
            Width = 80
            Height = 26
            Hint = #52769#51221#48169#48277
            Caption = #46020#50880#47568
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
              DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
              FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
              FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
              FF0A444444444444444D444444444444444A444444444444444D}
            TabOrder = 0
            OnClick = btnViewPosClick
          end
          object btnResultSelect: TcxButton
            Tag = 1
            Left = 114
            Top = 0
            Width = 38
            Height = 24
            Hint = #51088#47308#52628#44032
            Caption = #44221#48120
            Colors.Default = clYellow
            LookAndFeel.SkinName = ''
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btnResultSelectClick
          end
          object cxButton1: TcxButton
            Tag = 2
            Left = 153
            Top = 0
            Width = 38
            Height = 24
            Hint = #51088#47308#52628#44032
            Caption = #51473#46321
            Colors.Default = clGreen
            Colors.DefaultText = clWhite
            LookAndFeel.SkinName = ''
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btnResultSelectClick
          end
          object cxButton2: TcxButton
            Tag = 3
            Left = 192
            Top = 0
            Width = 38
            Height = 24
            Hint = #51088#47308#52628#44032
            Caption = #49900#44033
            Colors.Default = clRed
            Colors.DefaultText = clWhite
            LookAndFeel.SkinName = ''
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btnResultSelectClick
          end
        end
        object ItemTreeView: TdxDBTreeView
          Left = 0
          Top = 26
          Width = 237
          Height = 612
          Cursor = crHandPoint
          ImeName = 'Microsoft IME 2010'
          ShowNodeHint = True
          DeletingConfirmationMessage = '"%s"'#51012' '#49325#51228#54624#44620#50836'?'
          HotTrack = True
          RowSelect = True
          DataSource = d_check_item_tree
          DisplayField = 'ITEM_NAME'
          ImageIndexField = 'IMAGE_ID'
          KeyField = 'ID'
          ListField = 'ITEM_NAME'
          ParentField = 'PARENT_ID'
          RootValue = Null
          SeparatedSt = ' - '
          RaiseOnError = True
          ReadOnly = True
          Indent = 22
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548#52404
          Font.Style = [fsBold]
          Color = 16776176
          ParentColor = False
          Options = [trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
          SelectedIndex = -1
          TabOrder = 1
          OnDblClick = ItemTreeViewDblClick
          ParentFont = False
          Images = cxImageList1
          IsConfirmationAssigned = True
        end
      end
      object Panel4: TPanel
        Left = 237
        Top = 0
        Width = 319
        Height = 638
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 319
          Height = 262
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 319
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            object btnSaveResult: TcxButton
              Left = 211
              Top = 1
              Width = 30
              Height = 24
              Hint = #54217#44032#44208#44284#51312#54924
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000020000000B000000120000000C00000003000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000200000010071334970F276AFF0A193B970000000B000000000000
                00007B5043B8AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFBE91
                82FFC9ACA3FF5F617FFF417CB9FF70C7FFFF265198FF00000010000000000000
                0000AD735FFFFDFBF9FFFBF5F2FFF7F2EEFFF3EDE9FFEFE9E5FFECE5E1FFE6DE
                DAFF707E9FFF4C83BCFF83CFFFFF5694CEFF142B4D930000000A000000000000
                0000B07762FFFDFBFAFFF7F3F0FFE2D8D2FFA5816CFF8E5E42FF8C5D41FF7A5E
                54FF577EA6FF92D4FAFF619CD0FF727F9BFF0000000E00000002000000000000
                0000B07966FFFBF9F9FFE1D5CEFF936346FFC8A37FFFEFD7B2FFF0DAB8FFC7A6
                88FF895D43FF6891B2FF849DB9FFCCB0A7FF0000000200000000000000000000
                0000B37C69FFFAF8F7FFAD8975FFC7A07BFFF7D39CFFF5CD93FFF7D39BFFF9DD
                B2FFC7A688FF84695DFFE8E2DEFFC29888FF0000000000000000000000000000
                0000B67F6CFFF9F8F7FF98694CFFF1D4A7FFFAE5C0FFFBEACAFFF7D6A0FFF6D3
                9BFFF2DBBBFF8F5D42FFF0E9E7FFB27A66FF0000000000000000000000000000
                0000B98371FFFAF9F8FF9D6E51FFF2D4A5FFFDF6E2FFFDF3DCFFFBEACAFFF5CE
                92FFF1DAB5FF936245FFF2EDE9FFB47D6AFF0000000000000000000000000000
                0000BC8877FFFCFCFBFFB99783FFCDA77EFFF9E0B5FFFEF7E5FFFBE5C1FFF6D4
                9DFFCAA681FFAF8C77FFF5F1EEFFB6806DFF0000000000000000000000000000
                0000BF8C7AFFFDFDFCFFEDE4DFFFA87A5DFFCEA77FFFEFD2A3FFEFD2A5FFCCA7
                80FFA17356FFE4DAD4FFFAF6F3FFB98371FF0000000000000000000000000000
                0000C18F7FFFFEFEFEFFFDFCFBFFEDE4DFFFBE9C87FFAA7E62FFA97D60FFBB98
                82FFEADFD8FFFBF8F6FFFDF9F8FFBD8774FF0000000000000000000000000000
                0000C49382FFFFFEFEFFFEFEFDFFFBF6F4FFFAF5F3FFF9F3F0FFF9F3F0FFFAF2
                F0FFFAF4F0FFFDFBF9FFFDFBF9FFBF8C7BFF0000000000000000000000000000
                0000C79985FFFFFEFEFFFFFEFEFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFCFFFEFC
                FCFFFEFCFBFFFEFCFAFFFDFCFAFFC28F7FFF0000000000000000000000000000
                0000C99A89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFE
                FDFFFEFEFDFFFEFDFDFFFEFDFDFFC49382FF0000000000000000000000000000
                0000967467BDCA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A
                88FFC99987FFC79887FFC89886FF927163BD0000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = btnSaveResultClick
            end
            object btnCapture: TcxButton
              Left = 110
              Top = 1
              Width = 30
              Height = 24
              Hint = #49324#51652#52237#44592
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888888888888880000000000000080BBBBBBBBBBBBBB00BBBBBBB0000
                BBB00BBBBBB088880BB00BBBBBB080080BB00BBBBBB080080BB00B000BB08888
                0BB00B000BBB0000BBB00BBBBBBBBBBBBBB08000000000000008880BBB088888
                8888888000888888888888888888888888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnCaptureClick
            end
            object btnViewPicture: TcxButton
              Left = 141
              Top = 1
              Width = 30
              Height = 24
              Hint = #49324#51652#48372#44592
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00888888888888
                88888888888800C88888888888800C88888888000070C88888888088880B8888
                8888088FFFF00000000008F7F770FFFFFFF008FFFFF0FFFFFFF008F77F70F7FF
                FFF080FFFF0FFFFFFFF08800007F77FFFFF0880FFFFFFFFFFFF0880F7777F77F
                FFF0880FFFFFFFFFFFF088000000000000008888888888888888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = btnViewPictureClick
            end
            object btnComments: TcxButton
              Left = 180
              Top = 1
              Width = 30
              Height = 24
              Hint = #54217#44032#51032#44204
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                00000000000000000000000000000000001F421C11FF30140DEC190A06B30304
                075F0000001B0000000500000000000000000000000000000000000000000000
                00000000000000000000000000000000001E663C2BE7B9C7D2FF7889A2FF2441
                82FF051033AF0000002100000005000000000000000000000000000000000000
                0002000000090000000E0000000F0000002041261BAE879AB2FFC8E3F5FF1F66
                B6FF2B6BA8FF051236AD0000001F000000040000000000000000000000000000
                00088C6657C0C38C7AFFC38C79FFCBA395FFA89894FF488BC3FFDEFEFDFF51B4
                E3FF1F68B7FF3173AEFF061538AA0000001C0000000400000000000000000000
                000CC5917EFFFDFBFAFFFCF8F6FFFAF7F5FFECEAE9FF7CA3BFFF479FD2FFDEFE
                FDFF59BFE9FF216BB9FF367BB3FF07173AA70000001A00000004000000000000
                000CC79481FFFEFBFAFFF9F0EAFFF8F0EAFFF7F0EBFFE8E4E1FF7EA4BFFF4BA5
                D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF081A3DA300000018000000000000
                000BC99786FFFEFCFBFFF9F2EDFFF9F2EDFFF9F0EBFFF8F2EDFFEBE7E5FF82A7
                C2FF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F9E000000000000
                000ACB9C8BFFFEFDFCFFFAF3EFFFFAF4EEFFFAF3EEFFFAF1ECFFF8F2EEFFEDE9
                E7FF85ABC7FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF000000000000
                0009CFA08DFFFEFEFDFFFBF5F1FFFBF5F0FFFBF4F0FFFAF3EFFFFAF3EFFFF8F4
                EFFFEFECE9FF89AECAFF54B1DCFFDEFEFDFF4FA6D4FF102C4E93000000000000
                0009D0A393FFFEFEFDFFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5F0FFFAF4
                EFFFFAF6F1FFF3EFEDFF83A0B8FF357FBCFF173A598F0000000C000000000000
                0008D3A897FFFEFEFEFFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4F2FFFBF5
                F1FFFBF5F0FFFAF6F3FFE2CCC4FF000000160000000600000001000000000000
                0007D3AB9AFFFFFEFEFFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
                F3FFFCF6F2FFFBF6F1FFD1A494FF0000000C0000000000000000000000000000
                0006D8AE9DFFFFFFFEFFFDF9F7FFFDF9F7FFFCF8F7FFFCF8F6FFFCF7F5FFFBF7
                F5FFFBF7F4FFFCF7F3FFD3A897FF0000000B0000000000000000000000000000
                0006D8B0A0FFFFFFFFFFFDFAF9FFFDFAF8FFFDFAF8FFFDF9F7FFFCF8F7FFFBF8
                F6FFFBF7F6FFFCF7F5FFD4AC9BFF0000000A0000000000000000000000000000
                0005D9B3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFEFEFEFFFFFE
                FEFFFEFEFEFFFEFEFEFFD7AE9EFF000000090000000000000000000000000000
                0003A3867AC0DBB5A5FFDAB5A4FFDAB5A4FFDAB4A4FFD9B3A3FFD9B3A3FFD9B3
                A2FFD9B2A2FFD8B2A2FFA08377C2000000060000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = btnCommentsClick
            end
            object btnLeft: TcxButton
              Tag = 1
              Left = 3
              Top = 0
              Width = 30
              Height = 24
              Hint = #51340#52769
              Colors.Default = 16776176
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888888888888888888889888888888888889988888888888889998888
                8888888899998888888888899999888888888899999988888888899999999999
                9999889999998888888888899999888888888888999988888888888889998888
                8888888888998888888888888889888888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = btnLeftClick
            end
            object btnRight: TcxButton
              Tag = 2
              Left = 34
              Top = 0
              Width = 30
              Height = 24
              Hint = #50864#52769
              Colors.Default = 16776176
              Colors.DefaultText = clBlack
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888889888888888888888998888888888888899988888888888889999
                8888888888889999988888888888999999889999999999999998888888889999
                9988888888889999988888888888999988888888888899988888888888889988
                8888888888889888888888888888888888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = btnRightClick
            end
            object btnBoth: TcxButton
              Tag = 3
              Left = 66
              Top = 0
              Width = 30
              Height = 24
              Hint = #50577#52769
              Colors.Default = 16776176
              Colors.DefaultText = clBlack
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                0400000000008000000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
                8888888888988988888888888998899888888888999889998888888999988999
                9888889999988999998889999998899999989999999999999999899999988999
                9998889999988999998888899998899998888888999889998888888889988998
                8888888888988988888888888888888888888888888888888888}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = btnBothClick
            end
            object btnChangeLevel: TcxButton
              Left = 244
              Top = 1
              Width = 30
              Height = 24
              Hint = #44396#48516#48320#44221
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                00000000000000000001000000050000000D0000000F00000005000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000A170F093B72472CC3A1643DFF00000010000000000000
                0000000000000000000000000000000000000000000000000000000000010000
                00060604031955382594AB754CF9D5A670FFA56942FF00000022000000110000
                000D000000080000000300000000000000000000000000000000000000053525
                195F9A6A48E5CB9C6DFFE8C089FFE8C189FFA86F48FF88512EFC724125E4532E
                17B92F1A0D7B090502270000000700000001000000000000000000000008BD8D
                64FFECD4B3FFF1D8ACFFEBCA95FFEAC68FFFE7CBA4FFF2DBB9FFE1C39EFFC59D
                74FFA16F47FF512C16BE1B0E065200000008000000010000000000000004392C
                1F59A8815EE2DBBB97FFF3DFBDFFF0D4A6FFC69C74FFBB8B62FFC49870FFD3AE
                89FFE0C29BFFB78A60FF5C351CCB120A043E0000000400000000000000010000
                000407050415614B378CC39D76F9E7CEADFFC1936AFF060503242B21174E644A
                359AB48F6BECD7B891FFAB7E56FF3C2110970000000A00000000000000020000
                00080000000B0000000F1A140F328A6C4FBBC79A70FF0000000C000000040000
                000C56412F86D2AD87FFD8BD9DFF60351CD50000000F00000000000000062379
                49F9237B4AFF247A4AFF030A06220000000900000009000000060000000A0000
                000B100C0927C5996FFFC4986EFFAE7C57F90000000D0000000000000005246E
                49CE5BC49EFF308E62FF0D311C7E00000008000000030000000A247B4AFF0A37
                1ABF020B053900000015000000110000000D000000030000000000000003194B
                32885BB691FF6DC3A6FF2F7A54EA103B229107190F470104021C267F4DFF34A5
                78FF17633BF9092B169101030218000000060000000100000000000000010919
                112F2C7451C07AC8AAFF8BD7BFFF56A886FF33875DFF207345FF3A976AFF6ADA
                BBFF4BC89FFF30966AFF145530E5061D0F5F0000000600000000000000000000
                00020E251A41266C4BB263BB96FF8AD3BAFFA8E7D6FFBAF3E7FFA4E4D2FF89EA
                D5FF77E1C6FF75DDBDFF80D7BCFF278551FF0000000A00000000000000000000
                000000000002050D091A17412D6A276D4CAD338E64DF3AA06FFB3AA271FF9EF0
                E0FFB4F1E5FF6EC5A3FF348B60E1102E1F5A0000000500000000000000000000
                000000000000000000010000000200000004000000050000000C3EA977FF9AE0
                C9FF4CAC82F81E52398902060415000000040000000100000000000000000000
                000000000000000000000000000000000000000000000000000541AF7DFF2D79
                56B70816102B0000000500000001000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = btnChangeLevelClick
            end
            object btnDelResult: TcxButton
              Left = 276
              Top = 1
              Width = 30
              Height = 24
              Hint = #49440#53469#51088#47308#49325#51228
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000001000000030000
                0007000000060000000300000006000000080000000400000001000000000000
                00000000000000000000000000000000000000000000000000030B082C4D2619
                99EA110A58A2010003160F0855A3160C7EEA0603244F00000004000000000000
                0001000000060000000A0000000B0000000B0000000B000000112E23A2EA6F85
                EAFF4150CBFF1F1689E63B48C9FF5C74E4FF180E82E700000007000000000000
                000680574CBDB37B69FFB37A68FFB37A68FFB27968FFDCC6BEFF756BC0FF7780
                DDFF6D8BEFFF5872E5FF6381EDFF6972D8FF1A13659F00000005000000000000
                0008B57D6BFFFBF7F3FFFBF6F3FFFBF6F3FFFBF5F2FFFAF5F3FFEFECEFFF4D46
                BDFF6A85EBFF7494F2FF6079E7FF262094E40101041300000002000000000000
                0008B67F6DFFFCF8F5FFF8EFECFFF7EEEAFFF7EEEAFFF9F5F3FF807DD4FF6B7E
                E2FF93B0F6FFA0B3F2FF8AA6F4FF5D6EDBFF1C186AA000000004000000000000
                0008B8826FFFFCF9F6FFF8F0ECFFF8F0ECFFF7EFECFFFAF8F7FF6261D8FFB1C3
                F6FF8D99EAFF5F5DD2FF8995E7FFA6B8F3FF3B35AEE300000004000000000000
                0007BA8473FFFDF9F8FFF8F1EEFFF8F0EDFFF8F0ECFFFAF5F3FFCECDEEFF6564
                DEFF9291E2FFF2F1F3FF8982D3FF4340BCE71212334600000002000000000000
                0007BB8776FFFDFBF9FFF9F1EFFFF9F2EEFFF8F1EEFFF8F0EDFFFAF5F3FFFAF8
                F7FFFAF7F6FFFCF9F8FFE3CFC9FF0000000C0000000200000000000000000000
                0006BD8A78FFFDFBFAFFF9F2F0FFF9F2F0FFF8F2EFFFF9F1EFFFF8F1EEFFF9F1
                EEFFF8F0EDFFFDFAF8FFBB8675FF000000080000000000000000000000000000
                0006BF8D7BFFFEFCFBFFFAF4F1FFFAF4F1FFFAF2F1FFFAF2F0FFF9F2EFFFF9F2
                EEFFF8F1EEFFFDFBF9FFBD8978FF000000080000000000000000000000000000
                0005C39381FFFEFDFDFFFBF6F4FFFBF5F4FFFBF4F2FFFAF4F2FFFAF4F1FFF9F3
                F1FFFAF3F1FFFEFCFBFFC18F7EFF000000070000000000000000000000000000
                0004C69887FFFFFEFEFFFBF7F6FFFCF6F6FFFBF6F5FFFBF6F4FFFBF5F4FFFAF5
                F3FFFAF5F3FFFEFDFDFFC59684FF000000060000000000000000000000000000
                0003C99B8AFFFFFEFEFFFBF7F6FFFCF7F6FFFCF6F5FFFBF6F5FFFCF6F5FFFBF5
                F5FFFBF6F4FFFFFEFEFFC79887FF000000050000000000000000000000000000
                0003CA9E8DFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
                FEFFFFFEFEFFFFFEFEFFC99B8AFF000000040000000000000000000000000000
                00029B7F74BFD0AB9CFFD0AB9CFFD0AA9CFFCFA99BFFCFA99AFFCFA999FFCFA8
                99FFCEA899FFCFA898FF997B71C0000000030000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              Visible = False
            end
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 26
            Width = 319
            Height = 236
            Align = alClient
            BevelKind = bkFlat
            TabOrder = 1
            LookAndFeel.SkinName = 'DevExpressStyle'
            object gridResults: TcxGridDBTableView
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
              OnCellDblClick = gridResultsCellDblClick
              OnFocusedRecordChanged = gridResultsFocusedRecordChanged
              DataController.DataSource = dmDBCommon.d_NSTATIC_CHECK_RESULT
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsSelection.CellSelect = False
              OptionsView.ScrollBars = ssVertical
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object gridResultsID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object gridResultsDATA_ID: TcxGridDBColumn
                DataBinding.FieldName = 'DATA_ID'
                Visible = False
              end
              object gridResultsITEM_MAIN: TcxGridDBColumn
                Caption = #52769#51221#48512#50948
                DataBinding.FieldName = 'ITEM_MAIN'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'ITEM_NAME'
                  end>
                Properties.ListSource = d_CHECK_ITEM_TREE_BODY_SEL
                Width = 92
              end
              object gridResultsDIRECTION_KIND: TcxGridDBColumn
                Caption = #51340'/'#50864
                DataBinding.FieldName = 'DIRECTION_KIND'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = ImageList1
                Properties.Items = <
                  item
                    Value = 0
                  end
                  item
                    Description = #51340#52769
                    ImageIndex = 10
                    Value = 1
                  end
                  item
                    Description = #50864#52769
                    ImageIndex = 11
                    Value = 2
                  end
                  item
                    Description = #50577#52769
                    ImageIndex = 12
                    Value = 3
                  end>
                Properties.ShowDescriptions = False
                HeaderAlignmentHorz = taCenter
                Width = 37
              end
              object gridResultsRESULT_VALUE: TcxGridDBColumn
                Caption = #52769#51221#44208#44284
                DataBinding.FieldName = 'RESULT_VALUE'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'ITEM_NAME'
                  end>
                Properties.ListSource = d_CHECK_ITEM_TREE_RESULT_SEL
                Width = 126
              end
              object gridResultsPRACTICE_ID: TcxGridDBColumn
                Caption = #50868#46041#52376#48169
                DataBinding.FieldName = 'PRACTICE_ID'
                Visible = False
                Width = 152
              end
              object gridResultsRESULT_LEVEL: TcxGridDBColumn
                Caption = #44396#48516
                DataBinding.FieldName = 'RESULT_LEVEL'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = #44221#48120
                    ImageIndex = 0
                    Value = 1
                  end
                  item
                    Description = #51473#46321
                    Value = 2
                  end
                  item
                    Description = #49900#44033
                    Value = 3
                  end>
                OnCustomDrawCell = gridResultsRESULT_LEVELCustomDrawCell
                HeaderAlignmentHorz = taCenter
                Width = 44
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = gridResults
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 262
          Width = 319
          Height = 376
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 319
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #44404#47548
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            object lbl1: TLabel
              Left = 66
              Top = 6
              Width = 61
              Height = 13
              Caption = #50868#46041#52376#48169':'
            end
            object btnSelect: TcxButton
              Tag = 1
              Left = 5
              Top = 1
              Width = 30
              Height = 24
              Hint = #49440#53469'/'#54644#51228'('#45908#48660#53364#47533')'
              Colors.Default = 16776176
              Enabled = False
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
              OnClick = btnSelectClick
            end
            object btnPracticeMethod: TcxButton
              Tag = 1
              Left = 249
              Top = 1
              Width = 30
              Height = 24
              Hint = #50868#46041#52376#48169#45236#50857
              Colors.Default = 16776176
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                000000000000000000000000000000000010421C11FF31140CE2190A069A0304
                07450000000E0000000200000000000000000000000000000000000000000000
                0002000000080000000C0000000D0000001B663C2BDEB9C7D2FF7889A2FF2441
                82FF051033980000001100000002000000000000000000000000000000000000
                0007295B8FBF357DC6FF337AC5FF528CC7FF696573FF879AB2FFC8E3F5FF1F66
                B6FF2B6BA8FF0512369700000010000000020000000000000000000000000000
                000A3C83CAFF8ACCF1FF66B9EBFF7AC0EAFF7AAAC9FF488BC3FFDEFEFDFF51B4
                E3FF1F68B7FF3173AEFF061538960000000F0000000200000000000000000000
                000A3F85CCFF93D1F2FF4690D2FF4F93D2FF6BA2D2FF5291C2FF479FD2FFDEFE
                FDFF59BFE9FF216BB9FF367BB3FF07173A940000000D00000002000000000000
                000A4389CEFF9CD5F3FF4A92D4FFFAF7F3FFF6F1EBFFEEE9E7FF8BB1CCFF4BA5
                D5FFDEFEFDFF61CAEFFF246FBCFF3B83B9FF08193D920000000C000000000000
                0009468CD0FFA3D9F4FF4F97D5FFFBF8F6FFF6F0EBFFF6F1ECFFEFEBE8FF8DB3
                CEFF4EAAD7FFDEFEFDFF68D4F4FF2875BEFF3F8BBEFF091B3F8F000000000000
                00094A8FD2FFABDDF5FF5399D6FFFCFAF8FFF6F1ECFFF6F0ECFFF7F1EEFFF0ED
                E8FF5695C7FF51AEDAFFDEFEFDFF6EDDF8FF2C7BC2FF18448BFF000000000000
                00084D92D3FFB2E0F7FF569CD8FFFDFBFAFFF7F2EDFFF7F1ECFFF7F1EDFFF7F2
                EFFF72A6D6FF62A3D0FF54B1DCFFDEFEFDFF4FA6D4FF102C4E89000000000000
                00075094D6FFBAE4F7FF5B9FDAFFFDFCFBFFF8F2EEFFF8F2EEFFF7F2EDFFF0E8
                E3FF639DD4FF8DC3E6FF4D8EC4FF357FBCFF173A598700000006000000000000
                00075398D7FFBFE7F9FF5EA3DCFFFEFDFDFFF8F3F0FFF8F3F0FFEDE5E0FFE2D6
                D0FF458BCCFF7FBBE6FF5890CBFF0000000D0000000300000001000000000000
                0006559AD9FFC5E9F9FF62A6DEFFFEFEFEFFF9F4F1FFEAE1DCFFDCCDC7FFDCCD
                C7FF478BCCFF67ADDEFF377BC2FF000000090000000000000000000000000000
                0006589DDAFFCAEBFAFF66A9E0FFFFFFFEFFD0BEB7FFBBA298FFBBA199FFBBA1
                98FF4081C3FF66A9DBFF377BC2FF000000080000000000000000000000000000
                00055BA0DDFFCDEDFBFF69ACE1FFAC8E83FF946C5DFF926A5CFF91685AFF9A76
                69FF3D7DC0FF65A6D8FF397CC1FF000000070000000000000000000000000000
                00034678A5C05C9FDCFF599EDCFFB38D7EFFF1E9E2FFE2D2C6FFE1D0C3FF9971
                63FF4386CAFF498DD1FF33689AC1000000040000000000000000000000000000
                0001000000030000000400000005866A5FBEB58F80FFB58F80FFB48E7FFF8569
                5EBF000000060000000600000004000000010000000000000000}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = btnPracticeMethodClick
            end
            object btnPlayVideo: TcxButton
              Tag = 1
              Left = 280
              Top = 1
              Width = 30
              Height = 24
              Hint = #50689#49345#48372#44592
              Colors.Default = 16776176
              Enabled = False
              LookAndFeel.SkinName = 'DevExpressStyle'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000020000
                000A0000000F0000001100000011000000110000001100000012000000120000
                0012000000120000001300000013000000120000000C00000003000000097B54
                30C1AA7442FFA97340FFA8713EFFA7703DFFA66E3CFFA56D3BFFA46C3AFFA46B
                38FFA26A37FFA16936FFA16735FFA16634FF734925C30000000B0000000DAD77
                45FFE1B67EFFDAA768FFD9A768FFBA7F47FFC1884FFFD29D5FFFDAA668FFDAA7
                68FFD9A668FFDAA668FFDAA668FFDAA667FFA06635FF000000100000000EAE78
                46FFE3BA86FFDCAB6FFFDBAB6EFFC0864EFFF1E4D7FFCFA47AFFC68F56FFD5A2
                66FFDCAA6EFFDCAA6EFFDBAA6EFFDCAB6EFFA16735FF000000110000000DAF79
                47FFE4C08FFFDDB077FFDEB076FFC48C55FFFFFFFFFFFFFFFFFFF2E5D9FFD5AD
                85FFCA955CFFD8A86EFFDDB076FFDDB076FFA26836FF000000100000000CB07B
                49FFE7C699FFE0B67FFFE0B67FFFC9935BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE7D0B8FFCA945DFFDFB67FFFE0B67FFFA36937FF0000000F0000000BB27C
                4BFFE9CCA6FFE4BF8FFFE5C395FFCC9860FFFFFFFFFFFFFFFFFFF4E8DBFFD9B1
                88FFD3A36DFFDFB889FFE4BF90FFE2BC8BFFA46B38FF0000000E0000000AB27E
                4CFFF0DBBCFFEACDA5FFEBCEA5FFCF9C65FFF3E7D9FFDCB58AFFD6A975FFE4C2
                96FFEBCEA5FFEACDA5FFEACEA5FFEACDA5FFA46C39FF0000000E00000009B47F
                4DFFF2E1C6FFEDD4B1FFEDD4B1FFD2A068FFD9AD7AFFE7C8A0FFEDD4B1FFEDD4
                B1FFEDD4B1FFEDD4B1FFEDD4B1FFEDD4B1FFA66D3BFF0000000D00000008AB72
                5FFFA7907FFF6A4F45FF684E43FF836754FF9E8265FF9D8064FF806551FF6349
                3EFF62473DFF7D614DFF987A5EFF96795DFFA36753FF0000000C00000008AE77
                64FFF9F4F2FFB4A39BFF705449FF6E5348FFB1A098FFF6EFEBFFF6EFEBFFB09F
                98FF674C43FF674B41FFAD9C95FFF6EFEBFFA56956FF0000000B00000007B27B
                69FFFAF6F4FFF8F1EEFFB8A7A0FF755A4FFF73584DFFB4A39DFFF7F2EEFFF8F2
                EEFFB3A39CFF6D5147FF6B5045FFB09F98FFA86D59FF0000000A00000006B681
                6EFF9F8C85FF745F55FF735E54FF604C44FF5F4C44FF5E4B43FF675349FF6A55
                4AFF67544AFF5C4840FF5B4840FF5A473FFF916354FF0000000900000005B985
                73FFFDFAF9FFFBF8F5FFC0AFA9FF85675CFF83675AFFBFAFA8FFFAF7F6FFFBF8
                F6FFBBACA5FF7B5F53FF795E52FFBAABA4FFAE7563FF0000000800000004BD8B
                79FFFDFCFAFFDACFCAFFB19A8FFFAE968DFFD7CCC7FFFEFBFBFFFDFBFBFFD0C4
                C0FF9F867BFF9C8378FFCDC0BAFFFCFBF9FFB27A68FF00000007000000038F6B
                5EC0967366FF6D584FFF6C574EFF947163FFBC8A77FFBC8876FF926D60FF6954
                4CFF68534BFF8F6B5DFFB7826FFFB6806EFF865F51C100000004}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = btnPlayVideoClick
            end
            object rbSelected: TcxRadioButton
              Left = 130
              Top = 5
              Width = 56
              Height = 17
              Hint = #52404#53356#46108' '#50868#46041#47564'...'
              Caption = #49440#53469
              Checked = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              TabStop = True
              LookAndFeel.SkinName = 'DevExpressStyle'
            end
            object rbAll: TcxRadioButton
              Left = 187
              Top = 5
              Width = 56
              Height = 17
              Hint = #51204#52404#51088#47308
              Caption = #51204#52404
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              LookAndFeel.SkinName = 'DevExpressStyle'
            end
          end
          object cxGrid4: TcxGrid
            Left = 0
            Top = 26
            Width = 319
            Height = 350
            Align = alClient
            BevelKind = bkFlat
            TabOrder = 1
            LookAndFeel.SkinName = 'DevExpressStyle'
            object gridPractice: TcxGridDBTableView
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
              OnCellDblClick = gridPracticeCellDblClick
              OnFocusedRecordChanged = gridPracticeFocusedRecordChanged
              DataController.DataSource = ds_NSTATIC_RESULT_PRACTICE_SEL
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsSelection.CellSelect = False
              OptionsView.ScrollBars = ssVertical
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object gridPracticeID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object gridPracticeRESULT_ID: TcxGridDBColumn
                DataBinding.FieldName = 'RESULT_ID'
                Visible = False
              end
              object gridPracticeIS_SELECTED: TcxGridDBColumn
                Caption = #49440#53469
                DataBinding.FieldName = 'IS_SELECTED'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 48
              end
              object gridPracticePRACTICE_ID: TcxGridDBColumn
                Caption = #50868#46041#47749
                DataBinding.FieldName = 'PRACTICE_ID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'P_NAME'
                  end>
                Properties.ListSource = dmDBCommon.d_NPRACTICE_look
                Width = 251
              end
              object gridPracticeDATA_ID: TcxGridDBColumn
                DataBinding.FieldName = 'DATA_ID'
                Visible = False
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = gridPractice
            end
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 27
      Width = 425
      Height = 638
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 367
      object cxPageControl1: TcxPageControl
        Left = 0
        Top = 0
        Width = 425
        Height = 638
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.SkinName = 'Black'
        ExplicitWidth = 367
        ClientRectBottom = 633
        ClientRectLeft = 2
        ClientRectRight = 420
        ClientRectTop = 25
        object cxTabSheet1: TcxTabSheet
          Caption = #51088#49464'1'
          ImageIndex = 0
          ExplicitWidth = 360
          object ImageEnVect1: TImageEnVect
            Left = 0
            Top = 0
            Width = 418
            Height = 608
            Cursor = crHandPoint
            Background = clInactiveCaptionText
            Ctl3D = False
            ParentCtl3D = False
            BorderStyle = bsNone
            ZoomFilter = rfLanczos3
            MouseInteract = [miZoom]
            AutoFit = True
            AutoStretch = True
            AutoShrink = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnDblClick = ImageEnVect2DblClick
            ExplicitWidth = 360
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = #51088#49464'2'
          ImageIndex = 1
          ExplicitWidth = 590
          object ImageEnVect2: TImageEnVect
            Left = 0
            Top = 0
            Width = 418
            Height = 608
            Cursor = crHandPoint
            Background = clInactiveCaptionText
            Ctl3D = False
            ParentCtl3D = False
            BorderStyle = bsNone
            ZoomFilter = rfLanczos3
            MouseInteract = [miZoom]
            AutoFit = True
            AutoStretch = True
            AutoShrink = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnDblClick = ImageEnVect2DblClick
            ExplicitWidth = 590
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = #51088#49464'3'
          ImageIndex = 2
          ExplicitWidth = 590
          object ImageEnVect3: TImageEnVect
            Left = 0
            Top = 0
            Width = 418
            Height = 608
            Cursor = crHandPoint
            Background = clInactiveCaptionText
            Ctl3D = False
            ParentCtl3D = False
            BorderStyle = bsNone
            ZoomFilter = rfLanczos3
            MouseInteract = [miZoom]
            AutoFit = True
            AutoStretch = True
            AutoShrink = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnDblClick = ImageEnVect2DblClick
            ExplicitWidth = 590
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = #51088#49464'4'
          ImageIndex = 3
          ExplicitWidth = 590
          object ImageEnVect4: TImageEnVect
            Left = 0
            Top = 0
            Width = 418
            Height = 608
            Cursor = crHandPoint
            Background = clInactiveCaptionText
            Ctl3D = False
            ParentCtl3D = False
            BorderStyle = bsNone
            ZoomFilter = rfLanczos3
            MouseInteract = [miZoom]
            AutoFit = True
            AutoStretch = True
            AutoShrink = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnDblClick = ImageEnVect2DblClick
            ExplicitWidth = 590
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = #51088#49464'5'
          ImageIndex = 4
          ExplicitWidth = 590
          object ImageEnVect5: TImageEnVect
            Left = 0
            Top = 0
            Width = 418
            Height = 608
            Cursor = crHandPoint
            Background = clInactiveCaptionText
            Ctl3D = False
            ParentCtl3D = False
            BorderStyle = bsNone
            ZoomFilter = rfLanczos3
            MouseInteract = [miZoom]
            AutoFit = True
            AutoStretch = True
            AutoShrink = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnDblClick = ImageEnVect2DblClick
            ExplicitWidth = 590
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = #51088#49464'6'
          ImageIndex = 5
          ExplicitWidth = 590
          object ImageEnVect6: TImageEnVect
            Left = 0
            Top = 0
            Width = 418
            Height = 608
            Cursor = crHandPoint
            Background = clInactiveCaptionText
            Ctl3D = False
            ParentCtl3D = False
            BorderStyle = bsNone
            ZoomFilter = rfLanczos3
            MouseInteract = [miZoom]
            AutoFit = True
            AutoStretch = True
            AutoShrink = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnDblClick = ImageEnVect2DblClick
            ExplicitWidth = 590
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = #51088#49464'7'
          ImageIndex = 6
          ExplicitWidth = 590
          object ImageEnVect7: TImageEnVect
            Left = 0
            Top = 0
            Width = 418
            Height = 608
            Cursor = crHandPoint
            Background = clInactiveCaptionText
            Ctl3D = False
            ParentCtl3D = False
            BorderStyle = bsNone
            ZoomFilter = rfLanczos3
            MouseInteract = [miZoom]
            AutoFit = True
            AutoStretch = True
            AutoShrink = True
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 0
            OnDblClick = ImageEnVect2DblClick
            ExplicitWidth = 590
          end
        end
      end
    end
  end
  object pnlProcess: TPanel
    Left = 280
    Top = 204
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
  object Panel12: TPanel
    Left = 201
    Top = 0
    Width = 172
    Height = 665
    Align = alLeft
    Caption = 'Panel12'
    TabOrder = 3
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 2
      Top = 2
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Alignment = alTopCenter
      Caption = #54217#44032'/'#49324#51652' '#45936#51060#53552
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      ExplicitTop = 100
      ExplicitWidth = 197
      ExplicitHeight = 515
      Height = 661
      Width = 168
      object cxGrid3: TcxGrid
        Left = 3
        Top = 41
        Width = 162
        Height = 610
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        ExplicitTop = 15
        ExplicitWidth = 191
        ExplicitHeight = 226
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
          OnFocusedRecordChanged = gridCheckFocusedRecordChanged
          DataController.DataSource = dmDBCommon.d_NSTATIC_CHECK_DATA
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
          object gridCheckID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridCheckCUSTOMER_UID: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER_UID'
            Visible = False
          end
          object gridCheckC_IDX: TcxGridDBColumn
            Caption = #52264#49688
            DataBinding.FieldName = 'C_IDX'
            HeaderAlignmentHorz = taCenter
            Width = 52
          end
          object gridCheckC_DATE: TcxGridDBColumn
            Caption = #54217#44032#51068#51088
            DataBinding.FieldName = 'C_DATE'
            Width = 111
          end
        end
        object cxL2: TcxGridLevel
          GridView = gridCheck
        end
      end
      object Panel13: TPanel
        Left = 3
        Top = 15
        Width = 162
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 200
        object btnAddData: TcxButton
          Left = 67
          Top = 1
          Width = 29
          Height = 23
          Hint = #52769#51221#45936#51060#53552#49373#49457
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000051543
            30BC1D5D42FF1D5D42FF15422FBD000000050000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000061E65
            48FF63DBB3FF2FCB95FF1B5F43FF000000070000000000000000000000010000
            00050000000A0000000D0000000F00000011000000130000001300000015216E
            4FFF6EDEBAFF36D09CFF1E6649FF0000000D00000007000000050000000B1122
            386522416DB3284F86D53060A1FA6A8CBCFF387D72FE237556FF237152FF2475
            56FF41D5A4FF40D2A4FF216E50FF1F6448FF1E6246FF154531BC274A76B86295
            C5FF9CC0DFFFC7DCEEFFA1E3F8FF9BDFF2FF298663FF88E8CBFF4EDAADFF4CDA
            ACFF4BD9ACFF48D9AAFF47D7ABFF46D6AAFF45D6A6FF216F50FF3C72B1FFB9EA
            F9FFD3F0FBFFEBF9FFFFA4E6FAFF9BDFF2FF2C8E6BFF90EBD0FF8EEACFFF8DEA
            CFFF8BE9CDFF52DEB3FF51DCB2FF86E7C9FF83E7C9FF247757FF3F75B3FFB9EA
            F9FFD3F0FBFFEBF9FFFFA4E6FAFF97DFF3FF47A28FFF2E926EFF2E906DFF2D8E
            6BFF92EBD3FF59E0B8FF2A8764FF298362FF288260FF1D5E46C0437AB6FFB9EA
            F9FFD3F0FBFFEBF9FFFFA4E6FAFF79D8F2FF83CBEBFF7EAEDDFF7AA8D9FF2F95
            71FF9BEED7FF5FE4BEFF2D8F6CFF000000080000000400000003467EB9FFB9EA
            F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF7CAADBFF329B
            77FF9EF0DAFF9DEFDAFF2F9572FF0000000400000000000000004883BCFFB9EA
            F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF77A7DCFF4BAA
            98FF34A07BFF339E78FF257358BF0000000200000000000000004C86C0FFB9EA
            F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF4E8ED3FF82C0
            EBFF7A9EC8FF0000000B000000020000000000000000000000004F8BC2FFB9EA
            F9FFD3F0FBFFEBF9FFFFA4E6FAFF6ED5F1FF5ABCE7FF438BD2FF3F84CFFF58AC
            E6FF4077B4FF0000000800000000000000000000000000000000518EC4FFC8EF
            FBFFE9FAFFFFE5F9FFFFDDF7FFFFD6F4FEFFCBF0FCFFABD9F4FF8FC7EDFF76C0
            EDFF437BB7FF00000007000000000000000000000000000000005493C7FFE8FA
            FFFFE5F9FFFFDFF7FFFFD8F4FEFFCFF2FEFFC6EEFEFFBDEBFDFFB3E8FCFFABE5
            FBFF4780BAFF0000000600000000000000000000000000000000406E93BD82B3
            DAFFA2CAE6FFB0D6EDFFBAE1F3FFC8EFFEFFABDAF2FF95CBEAFF82BCE1FF67A2
            D1FF38638EC30000000400000000000000000000000000000000000000031B2F
            3E5330536F913C688CB44579A5D45491C6FF4377A2D4386388B52C4D6B92182A
            3B54000000040000000100000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btnAddDataClick
        end
        object btnChangeDate: TcxButton
          Left = 97
          Top = 1
          Width = 29
          Height = 23
          Hint = #45216#51676#48320#44221
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000003C3C3CFF2D2D2DBE00000000000000001E1E1E7E3C3C3CFF0000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000002D2D2DBE040404101E1E1E811E1E1E81000000001E1E1E7E0000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            000000000000040404101E1E1E813C3C3CFF3C3C3CFF1E1E1E81000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
            00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000001A1A
            1A703C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
            000000000000000000003C3C3CFF3C3C3CFF00000000000000001A1A1A703C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E7E040404100000000000000000000000003C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000353535E03C3C
            3CFF3C3C3CFF1A1A1A700A0A0A2C000000000000000000000000000000003C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000001A1A1A703535
            35E01A1A1A700A0A0A2C3C3C3CFF000000000000000000000000000000003C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnChangeDateClick
        end
        object btnOpenImage: TcxButton
          Left = 127
          Top = 1
          Width = 29
          Height = 23
          Hint = #49324#51652#50676#44592
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000080000
            000C0000000E0000000E0000000E0000000E0000000F0000000F0000000F0000
            0010000000100000000F0000000A000000020000000000000000815A4DBFB57D
            6BFFB57C6BFFB47D6BFFB47C6BFFB47C6AFFB37B69FFB37B6AFFB37B6AFFB47B
            69FFB37A69FFB37A68FF81584CC10000000A0000000000000000B6806EFFF9F0
            EBFFF8F0EAFFF8F0EAFFF8EFE9FFF8EFE9FFF7EFE9FFF8EEE8FFF7EEE9FFF7EE
            E8FFF7EEE9FFFAF4F1FFB47C6BFF0000000E0000000000000000B98271FFF9F1
            ECFF39B78FFF36AE86FF2A8B67FF257F5DFF309F79FF32A17AFF298361FF3198
            74FF257F5CFFFBF6F3FFB67F6DFF0000000E0000000000000000BB8574FFFAF3
            EEFF41C097FF35A07DFF6AC6B1FF37AA85FF246B73FF2B5EB6FF287378FF2D8E
            6AFF298764FFFCF8F5FFB88270FF0000000D0000000000000000C08E7EFFFBF5
            F1FF53CCA6FF43AC8AFF3978B1FF366BB8FF3469B3FF71C2EEFF336BB4FF3367
            B1FF306DA7FFFCF9F7FFBA8573FF0000000C0000000000000000C49585FFFAF7
            F3FF5DD3ADFF53C09EFF467BBCFF8ED5F4FF66A5E1FF76D6F9FF599EDEFF69C6
            F2FF3E75BBFFFDFAF9FFBD8776FF0000000B0000000000000000C89A8AFFFBF7
            F5FF62D4B1FF55ACADFF558ECAFF71B1E5FF5E9DD0FF335EA8FF5295CCFF60A7
            E2FF4882C4FFFEFBFAFFBE8B79FF0000000A0000000000000000CA9F90FFFCF9
            F7FFEAD5ABFF6590CEFF96D5F4FFAAECFEFF3E77BBFF90BCE0FF87A7CFFFB0E6
            F7FF89CFF2FFFEFCFBFFC08E7EFF000000090000000000000000CEA394FFFDFA
            F8FFF2E3C3FFBABEBDFF7EA8D6FF8FC8EFFF6FB6E2FF96B7D9FFA28775FFA8B6
            BAFFA9C1DCFFFAF9F9FFD6BFB7FF000000130000000400000001D1A899FFFFFE
            FEFFF9EDD3FFECE0C8FF89B2DAFFACE7FBFF9ED5F4FFCEEBF3FFAC744CFF9867
            41FFA39F9FFFE5E4E2FF975D32FF613A1CBC0C07032700000007C99C8BFFFFFE
            FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFF8F7F7FFBD9171FFDBB8
            91FFB07F53FF9B643AFF9F663DFFDBB67EFF8F5C32EE311D0F679B7C70BFD1A7
            96FFD0A796FFD0A696FFD0A695FFD0A695FFCFA594FFE1C8BEFFD3B7A6FFC498
            70FFEAD2B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000010000
            000200000002000000020000000200000003000000030000000300000006382C
            2150987758CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00010000000200000005CAA27AFF846A50AC110D0A1B00000002000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000010000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnOpenImageClick
        end
      end
    end
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
    Left = 632
    Top = 504
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
  object d_result_value: TDataSource
    DataSet = q_result_value
    Left = 632
    Top = 552
  end
  object ImageList1: TImageList
    Left = 760
    Top = 232
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
  object q_delete_result_practice: TUniSQL
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'delete from CUST_STATIC_PRACTICE'
      'where RESULT_ID = :RESULT_ID')
    Left = 1024
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'RESULT_ID'
        ParamType = ptInput
      end>
  end
  object PopupThumb: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageListThumbnail
    Left = 424
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
    Left = 424
    Top = 520
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
    Left = 424
    Top = 568
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
    Left = 424
    Top = 616
  end
  object ActionResult: TActionList
    Images = ImageList1
    Left = 1048
    Top = 136
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
      Caption = #50868#46041#52376#48169
      ImageIndex = 5
      OnExecute = ActPracticeListExecute
    end
    object ActResultReport: TAction
      Caption = #52769#51221#44208#44284#48372#44256#49436
      ImageIndex = 6
    end
  end
  object PopupResult: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageList1
    Left = 1048
    Top = 88
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
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 12583592
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
  object CHECK_ITEM_TREE_BODY_SEL: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_BODY_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 856
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_BODY_SEL'
    object CHECK_ITEM_TREE_BODY_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_TREE_BODY_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
  end
  object CHECK_ITEM_TREE_RESULT_SEL: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_RESULT_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 664
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_RESULT_SEL'
    object CHECK_ITEM_TREE_RESULT_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_TREE_RESULT_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
  end
  object d_CHECK_ITEM_TREE_BODY_SEL: TDataSource
    DataSet = CHECK_ITEM_TREE_BODY_SEL
    Left = 864
    Top = 144
  end
  object d_CHECK_ITEM_TREE_RESULT_SEL: TDataSource
    DataSet = CHECK_ITEM_TREE_RESULT_SEL
    Left = 664
    Top = 312
  end
  object q_check_item_tree: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHECK_ITEM_TREE'
      
        '  (ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, HOWTO' +
        '_IMAGE, VIDEO_ID)'
      'VALUES'
      
        '  (:ID, :PARENT_ID, :IMAGE_ID, :ITEM_NAME, :BODY_ID, :RESULT_ID,' +
        ' :HOWTO_IMAGE, :VIDEO_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CHECK_ITEM_TREE'
      'SET'
      
        '  ID = :ID, PARENT_ID = :PARENT_ID, IMAGE_ID = :IMAGE_ID, ITEM_N' +
        'AME = :ITEM_NAME, BODY_ID = :BODY_ID, RESULT_ID = :RESULT_ID, HO' +
        'WTO_IMAGE = :HOWTO_IMAGE, VIDEO_ID = :VIDEO_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CHECK_ITEM_TREE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, H' +
        'OWTO_IMAGE, VIDEO_ID FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CHECK_ITEM_TREE'
      ''
      ') q')
    Connection = dmDBCommon.UniConnCommon
    SQL.Strings = (
      'select * from check_item_tree'
      'order by id')
    Left = 680
    Top = 88
    object q_check_item_treeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_check_item_treePARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object q_check_item_treeIMAGE_ID: TIntegerField
      FieldName = 'IMAGE_ID'
    end
    object q_check_item_treeITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object q_check_item_treeBODY_ID: TIntegerField
      FieldName = 'BODY_ID'
    end
    object q_check_item_treeRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object q_check_item_treeHOWTO_IMAGE: TSmallintField
      FieldName = 'HOWTO_IMAGE'
    end
    object q_check_item_treeVIDEO_ID: TStringField
      FieldName = 'VIDEO_ID'
      Size = 30
    end
  end
  object d_check_item_tree: TDataSource
    DataSet = q_check_item_tree
    Left = 680
    Top = 136
  end
  object ds_NSTATIC_RESULT_PRACTICE_SEL: TDataSource
    DataSet = NSTATIC_RESULT_PRACTICE_SEL
    Left = 840
    Top = 392
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 960
    Top = 72
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
  object NSTATIC_CHECK_RESULTIMG_SEL: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULTIMG_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 776
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'RESULT_IMG'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULTIMG_SEL'
    object NSTATIC_CHECK_RESULTIMG_SELID: TIntegerField
      FieldName = 'ID'
    end
    object NSTATIC_CHECK_RESULTIMG_SELRESULT_IMG: TBlobField
      FieldName = 'RESULT_IMG'
    end
  end
  object NSTATIC_CHECK_RESULTIMG_IU: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULTIMG_IU'
    Connection = dmDBCommon.UniDBConnection
    Left = 776
    Top = 544
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'RESULT_IMG'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULTIMG_IU'
  end
  object q_check_picture: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select id from NSTATIC_CHECK_RESULTIMG'
      'where result_id = :result_id')
    Left = 848
    Top = 208
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
  object NSTATIC_CHECK_DATA_UPD: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_DATA_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 88
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_COMMENTS'
        ParamType = ptInput
        Size = 10240
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_DATA_UPD'
  end
  object NSTATIC_CHECK_RESULT_UPD: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULT_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 976
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DIRECTION_KIND'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULT_UPD'
  end
  object NSTATIC_RESULT_PRACTICE_SEL: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 840
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PRACTICE_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IS_SELECTED'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_SEL'
    object NSTATIC_RESULT_PRACTICE_SELID: TIntegerField
      FieldName = 'ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELPRACTICE_ID: TIntegerField
      FieldName = 'PRACTICE_ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELDATA_ID: TIntegerField
      FieldName = 'DATA_ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELIS_SELECTED: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_SELECTED'
    end
  end
  object NSTATIC_RESULT_PRACTICE_INS: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 1024
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRACTICE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_SELECTED'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_INS'
  end
  object NPRACTICE_ASSIGN_SEL: TUniStoredProc
    StoredProcName = 'NPRACTICE_ASSIGN_SEL'
    Connection = dmDBCommon.UniConnCommon
    Left = 648
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIRECTION_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRACTICE_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'NPRACTICE_ASSIGN_SEL'
    StoredProcIsQuery = True
    object NPRACTICE_ASSIGN_SELPRACTICE_ID: TIntegerField
      FieldName = 'PRACTICE_ID'
    end
  end
  object NSTATIC_RESULT_PRACTICE_DEL: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 1024
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_DEL'
  end
  object NSTATIC_RESULT_PRACTICE_UPD: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 1024
    Top = 600
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_SELECTED'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_UPD'
  end
  object q_update_result: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'UPDATE NSTATIC_CHECK_RESULT SET RESULT_LEVEL = :R_LEVEL'
      'WHERE ID = :ID')
    Left = 976
    Top = 168
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'R_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end
