object frmImages: TfrmImages
  Left = 0
  Top = 0
  Width = 814
  Height = 594
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnResize = FrameResize
  ExplicitWidth = 451
  ExplicitHeight = 304
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 26
    Width = 814
    Height = 568
    HorzScrollBar.Smooth = True
    HorzScrollBar.Tracking = True
    VertScrollBar.Smooth = True
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 451
    ExplicitHeight = 278
    object FlowPanel1: TFlowPanel
      Left = 0
      Top = 0
      Width = 2100
      Height = 547
      Align = alLeft
      AutoSize = True
      AutoWrap = False
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 257
      object imgPanel1: TPanel
        Left = 0
        Top = 0
        Width = 300
        Height = 614
        Align = alLeft
        ParentBackground = False
        TabOrder = 0
        Visible = False
        object pnlTop1: TPanel
          Left = 1
          Top = 1
          Width = 298
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = #51088#49464'1('#51221#47732')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ImageEnVect1: TImageEnVect
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 294
          Height = 588
          Cursor = crHandPoint
          Hint = 'Image1'
          HelpType = htKeyword
          HelpKeyword = '1'
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
          TabOrder = 1
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
        end
      end
      object imgPanel2: TPanel
        Left = 300
        Top = 0
        Width = 300
        Height = 614
        Align = alLeft
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object pnlTop2: TPanel
          Tag = 1
          Left = 1
          Top = 1
          Width = 298
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = #51088#49464'2('#51340#52769')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ImageEnVect2: TImageEnVect
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 294
          Height = 588
          Cursor = crHandPoint
          Hint = 'Image1'
          HelpType = htKeyword
          HelpKeyword = '2'
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
          TabOrder = 1
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
        end
      end
      object imgPanel3: TPanel
        Left = 600
        Top = 0
        Width = 300
        Height = 614
        Align = alLeft
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object pnlTop3: TPanel
          Tag = 2
          Left = 1
          Top = 1
          Width = 298
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = #51088#49464'3('#50864#52769')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ImageEnVect3: TImageEnVect
          Tag = 2
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 294
          Height = 588
          Cursor = crHandPoint
          Hint = 'Image1'
          HelpType = htKeyword
          HelpKeyword = '3'
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
          TabOrder = 1
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
        end
      end
      object imgPanel4: TPanel
        Left = 900
        Top = 0
        Width = 300
        Height = 614
        Align = alLeft
        ParentBackground = False
        TabOrder = 3
        Visible = False
        object pnlTop4: TPanel
          Tag = 3
          Left = 1
          Top = 1
          Width = 298
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = #51088#49464'4('#54980#47732'1)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ImageEnVect4: TImageEnVect
          Tag = 3
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 294
          Height = 588
          Cursor = crHandPoint
          Hint = 'Image1'
          HelpType = htKeyword
          HelpKeyword = '4'
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
          TabOrder = 1
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
        end
      end
      object imgPanel5: TPanel
        Left = 1200
        Top = 0
        Width = 300
        Height = 614
        Align = alLeft
        ParentBackground = False
        TabOrder = 4
        Visible = False
        object pnlTop5: TPanel
          Tag = 4
          Left = 1
          Top = 1
          Width = 298
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = #51088#49464'5('#54980#47732'2)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ImageEnVect5: TImageEnVect
          Tag = 4
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 294
          Height = 588
          Cursor = crHandPoint
          Hint = 'Image1'
          HelpType = htKeyword
          HelpKeyword = '5'
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
          TabOrder = 1
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
        end
      end
      object imgPanel6: TPanel
        Left = 1500
        Top = 0
        Width = 300
        Height = 614
        Align = alLeft
        ParentBackground = False
        TabOrder = 5
        Visible = False
        object pnlTop6: TPanel
          Tag = 5
          Left = 1
          Top = 1
          Width = 298
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = #51088#49464'6('#51313#48512')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ImageEnVect6: TImageEnVect
          Tag = 5
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 294
          Height = 588
          Cursor = crHandPoint
          Hint = 'Image1'
          HelpType = htKeyword
          HelpKeyword = '6'
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
          TabOrder = 1
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
        end
      end
      object imgPanel7: TPanel
        Left = 1800
        Top = 0
        Width = 300
        Height = 614
        Align = alLeft
        ParentBackground = False
        TabOrder = 6
        Visible = False
        object pnlTop7: TPanel
          Tag = 5
          Left = 1
          Top = 1
          Width = 298
          Height = 20
          Align = alTop
          BevelOuter = bvNone
          Caption = #51088#49464'7('#44592#53440')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object ImageEnVect7: TImageEnVect
          Tag = 6
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 294
          Height = 588
          Cursor = crHandPoint
          Hint = 'Image1'
          HelpType = htKeyword
          HelpKeyword = '7'
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
          TabOrder = 1
          OnClick = ImageEnVect1Click
          OnDblClick = ImageEnVect1DblClick
          FloatPrecision = 2
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 451
    object Label1: TLabel
      Left = 11
      Top = 5
      Width = 43
      Height = 13
      Caption = #52285#45331#51060':'
    end
    object chkImageFit: TCheckBox
      Left = 301
      Top = 4
      Width = 77
      Height = 17
      Caption = #51088#46041#47582#52644
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chkImageFitClick
    end
    object edtTrackBar: TcxSpinEdit
      Left = 58
      Top = 2
      Properties.ImmediatePost = True
      Properties.MaxValue = 800.000000000000000000
      Properties.MinValue = 200.000000000000000000
      Properties.UseCtrlIncrement = True
      Properties.OnEditValueChanged = edtTrackBarPropertiesEditValueChanged
      TabOrder = 1
      Value = 300
      Width = 51
    end
    object chkAllPanel: TCheckBox
      Left = 113
      Top = 4
      Width = 106
      Height = 17
      Caption = #51204#52404#52285#50640' '#51201#50857
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object btnResetWidth: TcxButton
      Left = 259
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
      TabOrder = 3
      OnClick = btnResetWidthClick
    end
    object btnSaveFile: TcxButton
      Left = 558
      Top = 0
      Width = 106
      Height = 25
      Hint = #54028#51068#47196' '#51200#51109
      Caption = #54028#51068#47196#51200#51109
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000B08271977051D11770000000B0000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000604190F501D7951FB11643EFB03110A520000000700000000000000020000
        000A0000000F000000100000001000000010000000110000001100000015020B
        0739147048ED20B175FF18AA6DFF0F5233EC0108052D00000004000000094633
        2CC160453BFF644A41FFB87D4EFFB97A4AFFB47444FFC69777FFC4A891FF3986
        5FFF26B07BFF1EB97CFF1EB87BFF1AA26AFF0B442BD1000201160000000D6F53
        47FF947869FF6A4F46FFD8B07BFFD7AE77FFD7AB74FFE5CFB4FF659674FF4BB5
        91FF8FE5CCFF7FE1C3FF5CD4ABFF69D8B4FF40A581FF093420A50000000C7357
        4AFF987D6EFF70564BFFFFFFFFFFF6EFEAFFF6EFE9FFF6F2EFFF208760FF2086
        5DFF1F845DFF97EBD4FF77E1C3FF1A774FFF1A764EFF19754FFF0000000B785C
        4EFF9D8273FF765C50FFFFFFFFFFF7F0EBFFF7F0EBFFFAF6F4FFF6F2F0FFEFEB
        E9FF218B63FFA8F1DFFF8CEBD2FF1C7B55FF0000000F000000070000000A7C60
        50FFA28777FF7B6154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
        FAFF229067FFC7F8EFFFC5F8EDFF1C8158FF0000000600000000000000097F63
        54FFA78E7DFF977A6AFF967969FF957967FF84695CFF705548FF775C51FFBAAD
        A7FF4D9B7BFF24946BFF23936AFF19694CBD0000000300000000000000088367
        57FFAB9382FF634A41FF614740FF5E463DFF5C443CFF5B433BFF594139FF9485
        7FFFAA9E9AFFBBACA8FFAFA29DFF0000000C000000000000000000000007866A
        59FFAF9788FF674E44FFF3EAE4FFE7D5C8FFE7D4C6FFE6D3C5FFE6D3C5FFE6D3
        C5FF594139FF795D54FF674C40FF00000009000000000000000000000006886D
        5CFFB39C8CFF6B5248FFF4ECE6FFE9D9CDFFE8D7CAFF4B3D3AFF50433EFFE6D3
        C5FF5D453CFF7B6056FF6B4F43FF000000080000000000000000000000058B70
        5EFFB7A091FF70564DFFF6EFEAFFECDDD3FFEADAD0FF473A36FF473A36FFE7D4
        C7FF604740FF7D6257FF6E5347FF000000070000000000000000000000048E72
        60FFBBA595FF755A50FFF7F1ECFFF6F0EBFFF5EEE9FFF5EDE7FFF4ECE6FFF4EB
        E4FF654B43FF7F6459FF72574AFF000000060000000000000000000000026A56
        49BF8F7361FF795E54FF765D52FF745A50FF72584EFF70564CFF6E544AFF6B52
        48FF6A5047FF795D4EFF574439C0000000040000000000000000000000010000
        0002000000030000000300000003000000040000000400000004000000040000
        0004000000040000000400000003000000010000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnSaveFileClick
    end
    object chkPrintLine: TCheckBox
      Left = 670
      Top = 4
      Width = 97
      Height = 17
      Caption = #46300#47196#51081#54252#54632
      TabOrder = 5
    end
    object btnDelete: TcxButton
      Left = 430
      Top = 0
      Width = 106
      Height = 25
      Hint = #54028#51068#47196' '#51200#51109
      Caption = #49440#53469#49325#51228
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000B08271977051D11770000000B0000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000604190F501D7951FB11643EFB03110A520000000700000000000000020000
        000A0000000F000000100000001000000010000000110000001100000015020B
        0739147048ED20B175FF18AA6DFF0F5233EC0108052D00000004000000094633
        2CC160453BFF644A41FFB87D4EFFB97A4AFFB47444FFC69777FFC4A891FF3986
        5FFF26B07BFF1EB97CFF1EB87BFF1AA26AFF0B442BD1000201160000000D6F53
        47FF947869FF6A4F46FFD8B07BFFD7AE77FFD7AB74FFE5CFB4FF659674FF4BB5
        91FF8FE5CCFF7FE1C3FF5CD4ABFF69D8B4FF40A581FF093420A50000000C7357
        4AFF987D6EFF70564BFFFFFFFFFFF6EFEAFFF6EFE9FFF6F2EFFF208760FF2086
        5DFF1F845DFF97EBD4FF77E1C3FF1A774FFF1A764EFF19754FFF0000000B785C
        4EFF9D8273FF765C50FFFFFFFFFFF7F0EBFFF7F0EBFFFAF6F4FFF6F2F0FFEFEB
        E9FF218B63FFA8F1DFFF8CEBD2FF1C7B55FF0000000F000000070000000A7C60
        50FFA28777FF7B6154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
        FAFF229067FFC7F8EFFFC5F8EDFF1C8158FF0000000600000000000000097F63
        54FFA78E7DFF977A6AFF967969FF957967FF84695CFF705548FF775C51FFBAAD
        A7FF4D9B7BFF24946BFF23936AFF19694CBD0000000300000000000000088367
        57FFAB9382FF634A41FF614740FF5E463DFF5C443CFF5B433BFF594139FF9485
        7FFFAA9E9AFFBBACA8FFAFA29DFF0000000C000000000000000000000007866A
        59FFAF9788FF674E44FFF3EAE4FFE7D5C8FFE7D4C6FFE6D3C5FFE6D3C5FFE6D3
        C5FF594139FF795D54FF674C40FF00000009000000000000000000000006886D
        5CFFB39C8CFF6B5248FFF4ECE6FFE9D9CDFFE8D7CAFF4B3D3AFF50433EFFE6D3
        C5FF5D453CFF7B6056FF6B4F43FF000000080000000000000000000000058B70
        5EFFB7A091FF70564DFFF6EFEAFFECDDD3FFEADAD0FF473A36FF473A36FFE7D4
        C7FF604740FF7D6257FF6E5347FF000000070000000000000000000000048E72
        60FFBBA595FF755A50FFF7F1ECFFF6F0EBFFF5EEE9FFF5EDE7FFF4ECE6FFF4EB
        E4FF654B43FF7F6459FF72574AFF000000060000000000000000000000026A56
        49BF8F7361FF795E54FF765D52FF745A50FF72584EFF70564CFF6E544AFF6B52
        48FF6A5047FF795D4EFF574439C0000000040000000000000000000000010000
        0002000000030000000300000003000000040000000400000004000000040000
        0004000000040000000400000003000000010000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnDeleteClick
    end
  end
  object PanelMSG: TPanel
    Left = 493
    Top = 270
    Width = 227
    Height = 59
    Color = clBlue
    ParentBackground = False
    TabOrder = 2
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
  object SaveImageEnDialog1: TSaveImageEnDialog
    Left = 136
    Top = 208
  end
end
