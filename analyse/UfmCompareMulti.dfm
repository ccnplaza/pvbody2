object fmCompareMulti: TfmCompareMulti
  Left = 0
  Top = 0
  Caption = #51088#49464#48708#44368#48516#49437
  ClientHeight = 641
  ClientWidth = 1114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object compareGroupLeftTop: TcxGroupBox
    Tag = 1
    Left = 0
    Top = 0
    Align = alClient
    Caption = #51088#49464#49324#51652'('#54200#51665'='#45908#48660#53364#47533')'
    Style.BorderColor = clWindowFrame
    Style.LookAndFeel.SkinName = 'Black'
    Style.TextStyle = [fsBold]
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 0
    Height = 641
    Width = 1114
    object ScrollBox1: TScrollBox
      Left = 3
      Top = 41
      Width = 1108
      Height = 590
      HorzScrollBar.Smooth = True
      HorzScrollBar.Tracking = True
      VertScrollBar.Visible = False
      Align = alClient
      DoubleBuffered = True
      Color = clWindowFrame
      ParentColor = False
      ParentDoubleBuffered = False
      TabOrder = 0
      object imgPanel1: TPanel
        Left = 0
        Top = 0
        Width = 200
        Height = 586
        Align = alLeft
        ParentBackground = False
        TabOrder = 0
        Visible = False
        object ImageEnVect1: TImageEnVect
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 194
          Height = 560
          Cursor = crHandPoint
          Hint = 'Image1'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ParentCustomHint = False
          Background = clWindowFrame
          MouseInteractGeneral = [miZoom, miScroll]
          AutoStretch = True
          AutoShrink = True
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
          object ImageEnVect1Print: TImageEnVect
            Tag = 1
            Left = 64
            Top = 212
            Width = 70
            Height = 65
            Background = clInactiveCaptionText
            Visible = False
            TabOrder = 0
          end
        end
        object pnlTop1: TPanel
          Left = 1
          Top = 1
          Width = 198
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object imgPanel2: TPanel
        Left = 200
        Top = 0
        Width = 200
        Height = 586
        Align = alLeft
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object ImageEnVect2: TImageEnVect
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 194
          Height = 560
          Cursor = crHandPoint
          Hint = 'Image1'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ParentCustomHint = False
          Background = clWindowFrame
          MouseInteractGeneral = [miZoom, miScroll]
          AutoStretch = True
          AutoShrink = True
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
          object ImageEnVect2Print: TImageEnVect
            Tag = 1
            Left = 64
            Top = 212
            Width = 70
            Height = 65
            Background = clInactiveCaptionText
            Visible = False
            TabOrder = 0
          end
        end
        object pnlTop2: TPanel
          Tag = 1
          Left = 1
          Top = 1
          Width = 198
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object imgPanel3: TPanel
        Left = 400
        Top = 0
        Width = 200
        Height = 586
        Align = alLeft
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object ImageEnVect3: TImageEnVect
          Tag = 2
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 194
          Height = 560
          Cursor = crHandPoint
          Hint = 'Image1'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ParentCustomHint = False
          Background = clWindowFrame
          MouseInteractGeneral = [miZoom, miScroll]
          AutoStretch = True
          AutoShrink = True
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
          object ImageEnVect3Print: TImageEnVect
            Tag = 1
            Left = 64
            Top = 212
            Width = 70
            Height = 65
            Background = clInactiveCaptionText
            Visible = False
            TabOrder = 0
          end
        end
        object pnlTop3: TPanel
          Tag = 2
          Left = 1
          Top = 1
          Width = 198
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object imgPanel4: TPanel
        Left = 600
        Top = 0
        Width = 200
        Height = 586
        Align = alLeft
        ParentBackground = False
        TabOrder = 3
        Visible = False
        object ImageEnVect4: TImageEnVect
          Tag = 3
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 194
          Height = 560
          Cursor = crHandPoint
          Hint = 'Image1'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ParentCustomHint = False
          Background = clWindowFrame
          MouseInteractGeneral = [miZoom, miScroll]
          AutoStretch = True
          AutoShrink = True
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
          object ImageEnVect4Print: TImageEnVect
            Tag = 1
            Left = 64
            Top = 212
            Width = 70
            Height = 65
            Background = clInactiveCaptionText
            Visible = False
            TabOrder = 0
          end
        end
        object pnlTop4: TPanel
          Tag = 3
          Left = 1
          Top = 1
          Width = 198
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object imgPanel5: TPanel
        Left = 800
        Top = 0
        Width = 200
        Height = 586
        Align = alLeft
        ParentBackground = False
        TabOrder = 4
        Visible = False
        object ImageEnVect5: TImageEnVect
          Tag = 4
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 194
          Height = 560
          Cursor = crHandPoint
          Hint = 'Image1'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ParentCustomHint = False
          Background = clWindowFrame
          MouseInteractGeneral = [miZoom, miScroll]
          AutoStretch = True
          AutoShrink = True
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
          object ImageEnVect5Print: TImageEnVect
            Tag = 1
            Left = 64
            Top = 212
            Width = 70
            Height = 65
            Background = clInactiveCaptionText
            Visible = False
            TabOrder = 0
          end
        end
        object pnlTop5: TPanel
          Tag = 4
          Left = 1
          Top = 1
          Width = 198
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object imgPanel6: TPanel
        Left = 1000
        Top = 0
        Width = 200
        Height = 586
        Align = alLeft
        ParentBackground = False
        TabOrder = 5
        Visible = False
        object ImageEnVect6: TImageEnVect
          Tag = 5
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 194
          Height = 560
          Cursor = crHandPoint
          Hint = 'Image1'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          ParentCustomHint = False
          Background = clWindowFrame
          MouseInteractGeneral = [miZoom, miScroll]
          AutoStretch = True
          AutoShrink = True
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
          object ImageEnVect6Print: TImageEnVect
            Tag = 1
            Left = 64
            Top = 212
            Width = 70
            Height = 65
            Background = clInactiveCaptionText
            Visible = False
            TabOrder = 0
          end
        end
        object pnlTop6: TPanel
          Tag = 5
          Left = 1
          Top = 1
          Width = 198
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object Panel2: TPanel
      Left = 3
      Top = 15
      Width = 1108
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 11
        Top = 5
        Width = 43
        Height = 13
        Caption = #52285#45331#51060':'
      end
      object chkImageFit: TCheckBox
        Left = 422
        Top = 4
        Width = 77
        Height = 17
        Caption = #51088#46041#47582#52644
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = chkImageFitClick
      end
      object TrackBar1: TTrackBar
        Left = 58
        Top = 3
        Width = 150
        Height = 19
        Max = 800
        Min = 200
        Position = 200
        ShowSelRange = False
        TabOrder = 1
        TabStop = False
        ThumbLength = 16
        TickStyle = tsNone
        OnChange = TrackBar1Change
      end
      object edtTrackBar: TcxSpinEdit
        Left = 208
        Top = 2
        Properties.ImmediatePost = True
        Properties.MaxValue = 800.000000000000000000
        Properties.MinValue = 200.000000000000000000
        Properties.UseCtrlIncrement = True
        Properties.OnEditValueChanged = edtTrackBarPropertiesEditValueChanged
        TabOrder = 2
        Value = 200
        Width = 51
      end
      object chkAllPanel: TCheckBox
        Left = 263
        Top = 4
        Width = 106
        Height = 17
        Caption = #51204#52404#52285#50640' '#51201#50857
        TabOrder = 3
      end
      object btnResetWidth: TcxButton
        Left = 375
        Top = 0
        Width = 34
        Height = 25
        Hint = #44592#48376#53356#44592#47196'...'
        LookAndFeel.SkinName = 'DevExpressStyle'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000030000000B00000013000000190000001A0000
          00140000000B0000000300000000000000000000000000000000000000000000
          000000000000000000060402011C4827118B7C431ED2A65927FFA55927FF7E44
          1ED442230F7B0100000F0000000E000000070000000000000000000000000000
          000000000005120A05348A4F26DDC58A53FFDCB37CFFEFD298FFEFD198FFB676
          43FF2E1A0C62100904398F5127E10E05013A0000000600000000000000000000
          0002040201198D552BDCD1A169FFF1D6A5FFCE9E6EFFC08656FFBD8251FF613A
          1DA6000000227D4B26CBE2B97BFF5F290FCF0101001900000003000000000000
          00074C2F1B82C99765FFECD2A3FFB98154FB5238238A120C07300F0A06270201
          01194C2F1B88CE9D66FFF6DC9BFFBA8657FF3F1C0C910000000D000000000000
          000A8C5B36D0E3C598FFCB9D75FF573B258C0000000C00000003000000062014
          0C43BD875AFBF8E5BCFFF8DFA5FFF7E4BAFFA16540FC1C0E074C000000080000
          0014B37A4BFAF5E6BDFFBC8356FF0D0704300000000C00000003000000079666
          3FD5B87D4DFFBB8153FFF2D9A1FFB87D4DFFB87C4DFF9C6941DE845331D3A263
          3BFFBB8557FFF6E7BFFFBF8B5EFFA06238FF87522FDC00000006000000020000
          000B0D08042FA1653CFFF4DEAEFFB68155FA000000180000000A1F170F34C79D
          75FBFBF5DCFFFCF3CCFFFAF4DAFFB3855FFB21150C4100000004000000020000
          0009492C1886BA8B5EFFE7CEA7FF926B48CB0000000900000000000000045540
          2D77DDC1A2FFFDF7D9FFD4B598FF5037227F0202010C0D08041F110A05274B2D
          1986A1683EFAF3E4C3FFD8B692FF533F2C780000000400000000000000000000
          00058F6F50BCEFE1CDFF886343C20202010D58382091A3693CFFA66F43FFBE94
          6DFFF4E9D1FFE3CAADFFA47E5BD60504030E0000000100000000000000000000
          0001130F0B1DAB8863DA18130E242C1E1248B78B63FDF8F3E2FFF9F3E4FFEDDE
          C7FFDCC1A1FFA3815ED215110C22000000020000000000000000000000000000
          000000000001000000010101000342301E629A7B5CC2C6A078F9C6A078F9997B
          5DC3564634710504030A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000002000000020000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnResetWidthClick
      end
      object btnReport2: TBitBtn
        Left = 730
        Top = 0
        Width = 86
        Height = 26
        Caption = #52636#47141
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000084
          840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
          3333330000000000033330313131313010330000000000000103013131355531
          0003031313122213010300000000000001100131313131301010300000000003
          0100330666666660301044446000002203033333066666663033444444000002
          2203333333066666633044444444000000003333333333333333}
        TabOrder = 5
        OnClick = btnReport2Click
      end
      object btnSaveSetting: TBitBtn
        Left = 820
        Top = 0
        Width = 39
        Height = 26
        Hint = #52285#49444#51221' '#51200#51109
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
          030AA03300000000030DD03333333333330AA03300000000330DD03088888888
          030AA03088888888030DD03088888888030AA03088888888030DD03088888888
          000AA03088888888080DD00000000000000AADADADADADADADAD}
        TabOrder = 6
        OnClick = btnSaveSettingClick
      end
      object btnDelImage: TcxButton
        Left = 519
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
        TabOrder = 7
        OnClick = btnDelImageClick
      end
      object btnPlay: TcxButton
        Left = 589
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
        TabOrder = 8
        OnClick = btnPlayClick
      end
    end
  end
  object PanelMSG: TPanel
    Left = 429
    Top = 240
    Width = 227
    Height = 59
    Color = clBlue
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 48
      Top = 15
      Width = 127
      Height = 26
      Caption = #51088#47308' '#47196#46377#51473'...'#13#10#51104#49884' '#44592#45796#47140' '#51452#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object CUST_COMPARE_MULTI_SEL: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_MULTI_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 96
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'D_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDateTime
        Name = 'IMAGE_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_IDX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUST_COMPARE_MULTI_SEL'
    object CUST_COMPARE_MULTI_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUST_COMPARE_MULTI_SELDATA_ID: TIntegerField
      FieldName = 'DATA_ID'
    end
    object CUST_COMPARE_MULTI_SELIMAGE_ID: TStringField
      FieldName = 'IMAGE_ID'
      Size = 17
    end
    object CUST_COMPARE_MULTI_SELIMAGE_DATE: TDateTimeField
      FieldName = 'IMAGE_DATE'
    end
    object CUST_COMPARE_MULTI_SELIMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
  end
  object CUSTOMER_IMAGE3_SEL_UID: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE3_SEL_UID'
    Connection = dmDBCommon.UniDBConnection
    Left = 96
    Top = 456
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
    ReportOptions.LastChange = 42410.478707581020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 400
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
          #51088#49464#48708#44368#48516#49437' '#47112#54252#53944)
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        Left = 2.440940000000000000
        Top = 132.590600000000000000
        Width = 170.078740160000000000
        Height = 487.559370000000000000
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
        Left = 177.031602000000000000
        Top = 132.590600000000000000
        Width = 170.078740160000000000
        Height = 487.559370000000000000
        Center = True
        DataField = 'Image2'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture3: TfrxPictureView
        Left = 350.622264000000000000
        Top = 132.590600000000000000
        Width = 170.078740160000000000
        Height = 487.559370000000000000
        Center = True
        DataField = 'Image3'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture4: TfrxPictureView
        Left = 525.212926000000000000
        Top = 132.590600000000000000
        Width = 170.078740160000000000
        Height = 487.559370000000000000
        Center = True
        DataField = 'Image4'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Line1: TfrxLineView
        Top = 37.795300000000000000
        Width = 1046.929810000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo2: TfrxMemoView
        Left = 25.559060000000000000
        Top = 47.574830000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #54924#50896#47749':')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 271.078850000000000000
        Top = 47.574830000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8W = (
          #51204#54868#48264#54840':')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 847.512370000000000000
        Top = 17.118120000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #52636#47141#51068#51088':')
        ParentFont = False
      end
      object Line2: TfrxLineView
        Top = 75.590600000000000000
        Width = 1046.929810000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Date: TfrxMemoView
        Left = 917.764380000000000000
        Top = 16.897650000000000000
        Width = 120.944960000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object frxDBDatasetmember_name: TfrxMemoView
        Left = 92.488250000000000000
        Top = 47.133890000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        DataField = 'member_name'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset."member_name"]')
        ParentFont = False
      end
      object frxDBDatasetmember_no: TfrxMemoView
        Left = 350.803340000000000000
        Top = 47.133890000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        DataField = 'member_no'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset."member_no"]')
        ParentFont = False
      end
      object Picture5: TfrxPictureView
        Left = 699.803588000000000000
        Top = 132.590600000000000000
        Width = 170.078740160000000000
        Height = 487.559370000000000000
        Center = True
        DataField = 'Image5'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object Picture6: TfrxPictureView
        Left = 874.394250000000000000
        Top = 132.590600000000000000
        Width = 170.078740160000000000
        Height = 487.559370000000000000
        Center = True
        DataField = 'Image6'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HightQuality = True
        Transparent = False
        TransparentColor = clWhite
      end
      object frxDBDatasetImage1Date: TfrxMemoView
        Left = 24.779530000000000000
        Top = 86.929190000000000000
        Width = 128.504020000000000000
        Height = 37.795300000000000000
        DataField = 'Image1Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image1Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage2Date: TfrxMemoView
        Left = 201.417440000000000000
        Top = 86.929190000000000000
        Width = 124.724490000000000000
        Height = 37.795300000000000000
        DataField = 'Image2Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image2Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage3Date: TfrxMemoView
        Left = 373.496290000000000000
        Top = 86.929190000000000000
        Width = 124.724490000000000000
        Height = 37.795300000000000000
        DataField = 'Image3Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image3Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage4Date: TfrxMemoView
        Left = 543.134200000000000000
        Top = 86.929190000000000000
        Width = 136.063080000000000000
        Height = 37.795300000000000000
        DataField = 'Image4Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image4Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage5Date: TfrxMemoView
        Left = 713.992580000000000000
        Top = 86.929190000000000000
        Width = 132.283550000000000000
        Height = 37.795300000000000000
        DataField = 'Image5Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image5Date"]')
        ParentFont = False
      end
      object frxDBDatasetImage6Date: TfrxMemoView
        Left = 894.850960000000000000
        Top = 86.929190000000000000
        Width = 120.944960000000000000
        Height = 37.795300000000000000
        DataField = 'Image6Date'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[frxDBDataset."Image6Date"]')
        ParentFont = False
      end
      object frxDBDatasetcompany_name: TfrxMemoView
        Left = 37.795300000000000000
        Top = 631.181510000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        DataField = 'company_name'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset."company_name"]')
        ParentFont = False
      end
      object frxDBDatasetcompany_tel: TfrxMemoView
        Left = 38.795300000000000000
        Top = 650.858690000000000000
        Width = 563.149970000000000000
        Height = 18.897650000000000000
        DataField = 'company_tel'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset."company_tel"]')
        ParentFont = False
      end
      object frxDBDatasetcompany_addr: TfrxMemoView
        Left = 38.795300000000000000
        Top = 673.535870000000000000
        Width = 563.149970000000000000
        Height = 15.118120000000000000
        DataField = 'company_addr'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset."company_addr"]')
        ParentFont = False
      end
      object frxDBDatasetcompany_addr2: TfrxMemoView
        Left = 38.795300000000000000
        Top = 690.653990000000000000
        Width = 563.149970000000000000
        Height = 18.897650000000000000
        DataField = 'company_addr2'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset."company_addr2"]')
        ParentFont = False
      end
    end
  end
  object dxMemData: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 296
    Top = 504
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
    object dxMemDataImage5: TBlobField
      FieldName = 'Image5'
    end
    object dxMemDataImage6: TBlobField
      FieldName = 'Image6'
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
    object dxMemDataImage5Date: TStringField
      FieldName = 'Image5Date'
      Size = 50
    end
    object dxMemDataImage6Date: TStringField
      FieldName = 'Image6Date'
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
    object dxMemDatacomment1: TStringField
      FieldName = 'comment1'
      Size = 1024
    end
    object dxMemDatacomment2: TStringField
      FieldName = 'comment2'
      Size = 1024
    end
    object dxMemDatacomment3: TStringField
      FieldName = 'comment3'
      Size = 1024
    end
    object dxMemDatacomment4: TStringField
      FieldName = 'comment4'
      Size = 1024
    end
    object dxMemDatacomment5: TStringField
      FieldName = 'comment5'
      Size = 1024
    end
    object dxMemDatacomment6: TStringField
      FieldName = 'comment6'
      Size = 1024
    end
    object dxMemDatacompany_name: TStringField
      FieldName = 'company_name'
      Size = 50
    end
    object dxMemDatacompany_addr: TStringField
      FieldName = 'company_addr'
      Size = 100
    end
    object dxMemDatacompany_tel: TStringField
      FieldName = 'company_tel'
      Size = 30
    end
    object dxMemDatacompany_addr2: TStringField
      FieldName = 'company_addr2'
      Size = 100
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'Image1=Image1'
      'Image2=Image2'
      'Image3=Image3'
      'Image4=Image4'
      'Image5=Image5'
      'Image6=Image6'
      'Image1Date=Image1Date'
      'Image2Date=Image2Date'
      'Image3Date=Image3Date'
      'Image4Date=Image4Date'
      'Image5Date=Image5Date'
      'Image6Date=Image6Date'
      'member_name=member_name'
      'member_no=member_no'
      'comment1=comment1'
      'comment2=comment2'
      'comment3=comment3'
      'comment4=comment4'
      'comment5=comment5'
      'comment6=comment6'
      'company_name=company_name'
      'company_addr=company_addr'
      'company_tel=company_tel'
      'company_addr2=company_addr2')
    DataSet = dxMemData
    BCDToCurrency = False
    Left = 296
    Top = 456
  end
  object q_delete_compare_image: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      
        'delete from CUST_COMPARE_MULTI where data_id = :data_id and imag' +
        'e_id = :image_id;')
    Left = 488
    Top = 400
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
