object fmPictureZoom: TfmPictureZoom
  Left = 0
  Top = 0
  Caption = #49324#51652' '#51088#47476#44592
  ClientHeight = 809
  ClientWidth = 487
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object ImageEnView1: TImageEnView
    Left = 0
    Top = 30
    Width = 487
    Height = 779
    Background = clBlack
    ZoomFilter = rfLanczos3
    PopupMenus = [ievViewing]
    MouseInteractGeneral = [miCropTool]
    OnFinishWork = ImageEnView1FinishWork
    AutoStretch = True
    AutoShrink = True
    ShowRulers = [rdHorizontal, rdVertical]
    Align = alClient
    TabOrder = 0
    ExplicitTop = 56
    ExplicitHeight = 753
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 30
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 241
      Height = 22
      Align = alLeft
      Caption = #46300#47000#44536#47196' '#49440#53469' '#54980' '#50644#53552#53412'='#51088#47476#44592', ESC='#52712#49548
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 16
      ExplicitTop = 7
      ExplicitHeight = 15
    end
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 333
      Top = 2
      Width = 75
      Height = 26
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = #51200#51109
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000040000
        00130000001E0000002000000020000000200000002100000021000000210000
        002200000022000000220000002300000021000000160000000500000012281E
        16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
        3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
        21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
        79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
        24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
        6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
        26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
        EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
        29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
        EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
        2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
        2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
        4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
        32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
        3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
        35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
        CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
        36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
        3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
        39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
        38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
        3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
        36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
        3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
        F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
        2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
        64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
        0002000000030000000400000004000000040000000400000005000000050000
        0005000000050000000500000006000000060000000400000001}
      TabOrder = 0
      ExplicitLeft = 320
      ExplicitHeight = 25
    end
    object cxButton2: TcxButton
      AlignWithMargins = True
      Left = 410
      Top = 2
      Width = 75
      Height = 26
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = #52712#49548
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C000000030000000000000000000000000000
        00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
        000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
        0008120B47923233AFFF3648CCFF1D1EA5FF0603357A0000000F0000000F0703
        357C1F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
        000C281C8DF1596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602347D0502357E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
        0006130F3C734D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF130F3C790000000900000000000000000000
        00010000000A16123F73585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF16123F780000000C0000000200000000000000000000
        0000000000010000000A191643755D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF1916437A0000000D000000020000000000000000000000000000
        00000000000100000009100E3D734A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF0B0839780000000C000000020000000000000000000000000000
        0001000000071413416E555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF0E0C3C730000000A0000000100000000000000000000
        00041818456B636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF121040710000000600000000000000000000
        00065759C3EFAFC6F6FF8EADF4FFABC4F8FF6F76D0FF1817456F24244F70868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
        000331326B8695A0EAFFC0D3F9FF7880D7FF1C1C496B00000006000000072527
        526C8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
        00010000000431336B825E62CBEC1F204D680000000500000001000000010000
        00052728536B5E62CBEC31326883000000070000000100000000000000000000
        0000000000000000000200000004000000020000000100000000000000000000
        0001000000030000000500000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      ExplicitLeft = 400
      ExplicitHeight = 25
    end
    object btnCut: TcxButton
      AlignWithMargins = True
      Left = 256
      Top = 2
      Width = 75
      Height = 26
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = #51088#47476#44592
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00030000000E00000018000000180000000F0000000400000000000000000000
        00030000000E00000018000000180000000F0000000400000000000000030402
        011A512408A5833A0BEE81380AEF4F2105A70301001C00000003000000030302
        001A512408A5833A0BEE81380AEF4F2105A70301001C00000003000000095931
        159BB8763BFFF1BF6EFFF1BD6BFFB56F33FF52280DA10000000C00000009552C
        129BB76F34FFEEA457FFEDA354FFB3672CFF52280DA10000000C0000000CA868
        37EEF6CE8FFFC08B57FFD2A26DFFF3C983FF985525F00000001400000010A05E
        2FEFF4B775FFB57A47FFC8905BFFF0B06AFF995425EF0000001000000009B77C
        48EDFAE3BFFFA26638FFAE7545FFF8DEB5FFAC6A38FF0000002A0000002AB777
        44FFF9D4A9FF97592FFFA3663AFFF7CFA0FFA56735EE0000000D000000047251
        3290DFAE7EFFF4DDC1FFF3DDC0FFDEB58BFFCB9C76FF67372BFF603226FFD0A1
        7AFFE1B58AFFF4D5B3FFF3D4B1FFD49F6EFF68462A9300000006000000010504
        030B7356378ECD9762F2D69F69FFE0BA94FFE6CBB4FFF0DED4FF9E796DFFCAAB
        94FFDDB591FFD29964FFC28C5AF36D4E33910504020D00000001000000000000
        0000000000030000000A35241F66AD8577FBF9F4F2FFF2E2D9FFE4CDC4FF9772
        68FF865B4EFB23120D6F00000010000000040000000100000000000000000000
        000000000000000000010000000C5B3B32B2B58B7EFFFAF5F3FFF4E5DCFFB799
        8EFF43241CB40000000F00000001000000000000000000000000000000000000
        000000000000000000031E141142A07567FDDECAC2FFB89388FFF8F3F1FFF3E7
        DFFF8A6054FD150B093F00000003000000000000000000000000000000000000
        0000000000010403020F82584BD8E6D1C9FFEFE5E1FF795144E0885E53DFF6F1
        EEFFDFCFC6FF61382ED70201010E000000010000000000000000000000000000
        0000000000045339318ACCAEA3FFF0E5E1FF734D41C80805041E0A0605197550
        45C5F4EEECFFB99B93FF39201988000000040000000000000000000000000000
        00022219153BB68D7EFBEEE2DDFF68473DB00402021000000002000000010403
        020C644237ACF2EAE7FF92695DFD170D0A390000000200000000000000010403
        030B946C5FD6EBDED9FF5C413894000000070000000200000000000000000000
        00010000000454372E91ECE3E0FF683F34D50301010A00000001000000025E45
        3B85EBDCD6FF4B362E7200000005000000010000000000000000000000000000
        000000000000000000023F2A236FE9DFDCFF3E231D8400000002000000028965
        58BB3D2D27590000000300000001000000000000000000000000000000000000
        000000000000000000000000000131201B57654236BA00000001}
      TabOrder = 2
      OnClick = btnCutClick
      ExplicitLeft = 320
      ExplicitHeight = 25
    end
  end
end
