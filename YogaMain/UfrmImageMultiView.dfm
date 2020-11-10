object frmImageMultiView: TfrmImageMultiView
  Left = 0
  Top = 0
  Width = 1338
  Height = 714
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnResize = FrameResize
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1338
    Height = 714
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelButtons: TPanel
      Left = 0
      Top = 0
      Width = 1338
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 73
        Height = 13
        Align = alLeft
        Caption = #50040#45348#51068' '#53356#44592':'
        Layout = tlCenter
      end
      object edtTrackBar: TcxSpinEdit
        AlignWithMargins = True
        Left = 142
        Top = 3
        Align = alLeft
        Properties.ImmediatePost = True
        Properties.MaxValue = 1000.000000000000000000
        Properties.MinValue = 100.000000000000000000
        Properties.UseCtrlIncrement = True
        Properties.OnChange = edtTrackBarPropertiesChange
        TabOrder = 0
        Value = 250
        Width = 51
      end
      object btnDelete: TcxButton
        AlignWithMargins = True
        Left = 199
        Top = 1
        Width = 106
        Height = 23
        Hint = #54028#51068#47196' '#51200#51109
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #49440#53469#49325#51228
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
        Left = 311
        Top = 1
        Width = 101
        Height = 23
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #51060#48120#51648#49688#51221
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
        TabOrder = 2
        OnClick = btnEditImageClick
      end
      object btnRotate: TcxButton
        AlignWithMargins = True
        Left = 418
        Top = 1
        Width = 101
        Height = 23
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alLeft
        Caption = #51060#48120#51648#54924#51204
        OptionsImage.Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00888888888888
          8888888874444478888888844444444488888844488888444888874488888884
          4788844888822887448884488822228844888448882222884488844888822888
          8888844788888888448887448848888888888844484488847888888444444888
          8888888874444888888888888844888888888888884888888888}
        TabOrder = 3
        OnClick = btnRotateClick
      end
      object icbThumbSize: TcxImageComboBox
        AlignWithMargins = True
        Left = 80
        Top = 1
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alLeft
        EditValue = 1
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = #51089#44172
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #48372#53685
            Value = 1
          end
          item
            Description = #53356#44172
            Value = 2
          end>
        Properties.OnChange = icbThumbSizePropertiesChange
        TabOrder = 4
        Width = 58
      end
    end
    object ImageEnMView1: TImageEnMView
      Left = 0
      Top = 25
      Width = 1338
      Height = 689
      Background = clWindowFrame
      GridWidth = -1
      StoreType = ietFastThumb
      ThumbWidth = 250
      ThumbHeight = 400
      TextMargin = 0
      ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
      PopupMenus = []
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
  end
  object ImageEnView1: TImageEnView
    Left = 608
    Top = 56
    Width = 105
    Height = 105
    Background = clBtnFace
    Visible = False
    TabOrder = 1
  end
  object PanelMessage: TPanel
    Left = 608
    Top = 336
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
