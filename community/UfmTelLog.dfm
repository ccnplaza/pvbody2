object fmTelLog: TfmTelLog
  Left = 0
  Top = 0
  Caption = #53685#54868#44592#47197#48512
  ClientHeight = 655
  ClientWidth = 1134
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 30
    Align = alTop
    TabOrder = 0
    object lbl3: TLabel
      Left = 13
      Top = 8
      Width = 30
      Height = 13
      Caption = #44592#44036':'
    end
    object lbl1: TLabel
      Left = 440
      Top = 8
      Width = 30
      Height = 13
      Caption = #44396#48516':'
    end
    object lbl2: TLabel
      Left = 560
      Top = 8
      Width = 62
      Height = 13
      Caption = #54924#49888'/'#52376#47532':'
    end
    object Label1: TLabel
      Left = 323
      Top = 7
      Width = 30
      Height = 13
      Caption = #49468#53552':'
    end
    object dtp_sdate: TDateTimePicker
      Left = 48
      Top = 4
      Width = 99
      Height = 21
      Date = 41963.425637268520000000
      Time = 41963.425637268520000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
      OnCloseUp = dtp_sdateCloseUp
    end
    object dtp_edate: TDateTimePicker
      Left = 148
      Top = 4
      Width = 98
      Height = 21
      Date = 41963.425637268520000000
      Time = 41963.425637268520000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
      OnCloseUp = dtp_edateCloseUp
    end
    object icbBankList: TcxImageComboBox
      Left = 472
      Top = 4
      EditValue = '0'
      Properties.Items = <
        item
          Description = #51204#52404
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #51204#54868
          Value = 1
        end
        item
          Description = #48169#47928
          Value = 2
        end
        item
          Description = #47700#51068
          Value = 3
        end
        item
          Description = #44592#53440
          Value = 4
        end>
      Properties.OnCloseUp = icbBankListPropertiesCloseUp
      TabOrder = 2
      Width = 83
    end
    object icbAccount: TcxImageComboBox
      Left = 623
      Top = 4
      EditValue = '0'
      Properties.DropDownRows = 12
      Properties.Items = <
        item
          Description = #51204#52404
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #54644#45817#50630#51020
          Value = 1
        end
        item
          Description = #51652#54665#51473
          Value = 2
        end
        item
          Description = #50756#47308
          Value = 3
        end
        item
          Description = #48372#47448#51473
          Value = 4
        end>
      Properties.OnCloseUp = icbAccountPropertiesCloseUp
      TabOrder = 3
      Width = 81
    end
    object btnView: TcxButton
      Left = 248
      Top = 2
      Width = 62
      Height = 25
      Caption = #51312#54924
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000200000006000000090000000A0000000A0000
        000B0000000B0000000B0000000B0000000B0000000700000002000000000000
        000000000000000000000000000579462CBDA7613EFFA7623DFFA7623DFFA661
        3DFFA6623CFFA8613DFFA7623DFFA7613EFF78462BBF00000007000000090000
        000E0000000F0000000F00000017A96440FFCE8A5BFFCB8454FFC77F50FFC785
        59FFC37C4EFFC98151FFCB8354FFC98153FFA9643FFF0000000A7D5345C0A96E
        5CFFA86D5AFFA76B58FFBD9589FFAB6641FFCF8C62FFC67C4FFFCD9371FFFFEA
        E0FFF7DAD0FFC2764AFFC67E51FFCA8358FFAB6641FF0000000AB17865FFF9F3
        EFFFF8F1ECFFF8F1ECFFF3EDEAFFAE6844FFD19066FFC77F53FFCD9575FFFFEA
        E3FFF9E0D6FFC27B4EFFC98055FFCB885BFFAE6843FF0000000AB37C6BFFF9F5
        F0FFF5EFE9FFF6EEE8FFF2ECE8FFB16B45FFD2946CFFCB8458FFC37D51FFBF81
        59FFBC784FFFC68054FFCA8459FFCD8B5FFFB16B46FF00000009B78371FFFAF5
        F1FFC69F8FFFC69E90FFD3B9B0FFB36E49FFD79F79FFD19268FFC9895FFFE9CA
        BAFFDEB9A3FFC38258FFCE8C63FFD19169FFB36E48FF00000009BB8876FFFAF7
        F3FFF7F1ECFFF7F0ECFFF4EFECFFB6714BFFD9A784FFCD936AFFC2855DFFE4C6
        B4FFFFF0EDFFDFBEABFFC98F6BFFD59D76FFB6714BFF00000008BF8C7BFFFBF8
        F4FFC8A294FFC8A193FFD5BBB1FFBA7750FFD6A782FFE0BFA9FFE8CEC0FFC08B
        69FFFEF2EDFFFFF4EFFFE4C7B4FFD49D76FFB9744DFF00000008C29281FFFCF9
        F7FFF9F4F0FFF9F3F0FFF6F2F0FFC07F58FFD9AC89FFE5CAB9FFFFF7F2FFD0A9
        93FFFAECE7FFFFF4F1FFE7CBBDFFD6A27CFFC07F58FF00000007C59787FFFCF9
        F7FFCAA697FFC9A597FFD8BEB5FFC4845DFFE3BA98FFD09F79FFECD7CAFFFFF8
        F4FFFFF8F4FFE8CFC1FFCF9D78FFDDB18BFFC4845DFF00000006CA9C8CFFFCF9
        F9FFFAF6F4FFFBF6F3FFF8F5F3FFC78861FFE8C3A1FFDCAF86FFD6A47CFFCF9F
        77FFD09F77FFD7A57CFFDEB087FFE4BA93FFC68860FF00000006CDA293FFFDFB
        FAFFCCA89AFFCCA79AFFD9C2B9FFCA8C65FFEBC8A8FFEAC8A7FFE9C8A8FFE8C7
        A5FFE9C6A5FFEAC7A6FFEAC6A5FFEAC6A4FFCA8C65FF00000005D0A797FFFDFC
        FBFFFCF8F7FFFBF8F7FFFAF8F7FFD8A98CFFCE8F69FFCE8F69FFCC8F69FFCE8F
        69FFCC8F69FFCE8F69FFCC8F68FFCE8F69FF976A4EC000000003D3AB9CFFFEFC
        FBFFFEFCFBFFFEFCFBFFFEFDFCFFFDFCFBFFFCFBFAFFFBFAF9FFFAFAF8FFFAFA
        F9FFD0ACA1FF0000000E000000040000000400000003000000019F8277C2D5AE
        9FFFD3AC9CFFD2AA9AFFD1A898FFCFA695FFCEA293FFCCA191FFCA9E8DFFC99C
        8BFF947166C30000000700000000000000000000000000000000}
      TabOrder = 4
      OnClick = btnViewClick
    end
    object btnAdd: TcxButton
      Left = 710
      Top = 2
      Width = 32
      Height = 25
      Hint = #52628#44032
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF000000003C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000002B2B
        2BB83C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003A3A
        3AF500000000000000000000000000000000000000003A3A3AF5000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000002B2B
        2BB83C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF000000003C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E80000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnAddClick
    end
    object btnEdit: TcxButton
      Left = 743
      Top = 2
      Width = 32
      Height = 25
      Hint = #49688#51221
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
      TabOrder = 6
      OnClick = btnEditClick
    end
    object cxButton4: TcxButton
      Left = 776
      Top = 2
      Width = 32
      Height = 25
      Hint = #49325#51228
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000002B2B
        2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003A3A
        3AF500000000000000000000000000000000000000003A3A3AF5000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000002B2B
        2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E80000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = cxButton4Click
    end
    object btnChange: TcxButton
      Left = 928
      Top = 2
      Width = 81
      Height = 25
      Caption = #50756#47308#52376#47532
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
      TabOrder = 8
      OnClick = btnChangeClick
    end
    object cxButton6: TcxButton
      Left = 1010
      Top = 2
      Width = 31
      Height = 25
      Hint = #50641#49472#51200#51109
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF000000003C3C3CFF0000000000000000000000003C3C3CFF0000
        0000000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E80000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00001E1E1E80000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF0000
        00003C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E8000000000000000003C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000000000000000000000000000003C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object icbCenter: TcxImageComboBox
      Left = 356
      Top = 4
      Properties.Items = <>
      Properties.OnCloseUp = icbCenterPropertiesCloseUp
      TabOrder = 10
      Width = 80
    end
    object btnSMS: TcxButton
      Left = 824
      Top = 2
      Width = 87
      Height = 25
      Caption = #47928#51088#51204#49569
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00310000003400000036000000380000003B0000003D00000040000000430000
        0044000000470000004A0000004C000000500000005200000000000000000000
        001400000016000000190000001B0000001D0000001E00000021000000230000
        0026000000280000002A0000002D0000002F0000003200000000000000000000
        00030000000400000005000000060000000700000008000000090000000B0000
        000C0000000D0000000F00000011000000130000001500000000000000000000
        0000000000000000000000000000000000001721AAFF0E1385FF0505338B0000
        00150000000C0000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000002D43D4FF445FF4FF503A31FF4934
        2CFF221814990000001200000003000000000000000000000000000000040000
        00090000000B0000000C0000000C0000000C19256F8B5D463CFF78594DFF7151
        45FF45396CFF04062EA000000016000000030000000000000000122533553776
        A2EA3C81B2FF397FB0FF377EB0FF7FACCCFFC2D3DEFF654D41FFA39596FF6C5D
        99FF5E61E3FF242792FF202858CB0000001500000002000000003F81AEF37BB7
        D8FF87D3F2FF83D1F0FF7ECEF0FF7ACCEFFFD8ECF5FF999594FF7E7EA6FF9EA7
        F2FF686CE6FF696CE6FF282B98FF070A389C0000000F00000002478BBAFFB7E6
        F7FF8ED7F3FF818F92FF786D63FF73675EFFADDEF5FFD2CFCDFF6E71AAFF6E78
        C6FFA7B1F4FF7279E9FF7278E9FF2B309EFF0A0D3F990000000E4B8EBCFFBFE9
        F9FF97DBF4FF80776CFF8ED7F3FF786E64FF87D3F2FFA49D96FFD9ECF4FF7478
        B3FF747FCEFFB0BAF6FF7D85ECFF7D83ECFF3238A4FF0A0E3E8C4E93BFFFC7ED
        FAFF9DDEF5FF8B9898FF80776DFF7B7268FF8ED7F3FF74685EFFB4E3F5FFD4D1
        CFFF7E8DCDFF7B86D5FFBAC5F8FF8990EFFF8D95EBFF181F85F05296C1FFCFF0
        FBFFA5E2F6FFA1E0F6FF9FDEF5FF80766CFF96DBF4FF796E63FF74675EFFAAB2
        B4FFDDEFF6FF8492D4FF7B86D8FFC8D5FAFFA7B3EBFF171F7CCC5599C4FFD6F3
        FBFFBEEBFAFF93A1A2FF867D74FF92AEB5FF9FDEF5FF7C7268FF96DBF4FF93D9
        F4FFBAE7F8FFDEF0F8FF8897D5FF5F69C9F4333C99CD0406162B5A9CC6FF9CC9
        E1FFD7F3FBFFD3F1FBFFCEF0FBFFC9EEFAFFC5ECF9FFACC7CFFFBAE8F8FFB5E5
        F8FFAFE3F7FFA6CFE5FFC6DAE8FF0000000A000000040000000217273144487C
        9DCC599BC5FF569AC4FF5498C3FF5296C1FF4F94C0FF4D91BEFF4B90BCFF498D
        BBFF478CBAFF39749AD910212D47000000020000000000000000000000010000
        0003000000040000000400000004000000040000000500000005000000050000
        0005000000050000000400000002000000000000000000000000}
      TabOrder = 11
      OnClick = btnSMSClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 1134
    Height = 625
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridTelLog: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
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
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellDblClick = gridTelLogCellDblClick
      DataController.DataSource = dmDBCommon.ds_DAY_LOG_SEL
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
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.Indicator = True
      object gridTelLogID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridTelLogCENTER_ID: TcxGridDBColumn
        Caption = #49468#53552#47749
        DataBinding.FieldName = 'CENTER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListSource = dmDBCommon.d_center
        HeaderAlignmentHorz = taCenter
        Width = 57
      end
      object gridTelLogIN_DATE: TcxGridDBColumn
        Caption = #45216#51676
        DataBinding.FieldName = 'IN_DATE'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object gridTelLogIN_TIME: TcxGridDBColumn
        Caption = #49884#44036
        DataBinding.FieldName = 'IN_TIME'
        HeaderAlignmentHorz = taCenter
        Width = 53
      end
      object gridTelLogIN_KIND: TcxGridDBColumn
        Caption = #44396#48516
        DataBinding.FieldName = 'IN_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #51204#54868
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #48169#47928
            Value = 2
          end
          item
            Description = #47700#51068
            Value = 3
          end
          item
            Description = #44592#53440
            Value = 4
          end>
        HeaderAlignmentHorz = taCenter
        Width = 47
      end
      object gridTelLogRECEIVED: TcxGridDBColumn
        Caption = #49688#49888#51088
        DataBinding.FieldName = 'RECEIVED'
        Width = 76
      end
      object gridTelLogDAMDANG: TcxGridDBColumn
        Caption = #48156#49888#51088#48264#54840
        DataBinding.FieldName = 'DAMDANG'
        Styles.Content = cxStyle1
        Width = 104
      end
      object gridTelLogCALLER: TcxGridDBColumn
        Caption = #48156#49888#51088
        DataBinding.FieldName = 'CALLER'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taTopJustify
        Width = 76
      end
      object gridTelLogIN_DESC: TcxGridDBColumn
        Caption = #49688#49888#45236#50857
        DataBinding.FieldName = 'IN_DESC'
        Width = 320
      end
      object gridTelLogIS_DONE: TcxGridDBColumn
        Caption = #54924#49888'/'#52376#47532
        DataBinding.FieldName = 'IS_DONE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #54644#45817#50630#51020
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = #51652#54665#51473
            Value = '2'
          end
          item
            Description = #50756#47308
            Value = '3'
          end
          item
            Description = #48372#47448#51473
            Value = '4'
          end>
        OnCustomDrawCell = gridTelLogIS_DONECustomDrawCell
        Width = 65
      end
      object gridTelLogRETURN_DESC: TcxGridDBColumn
        Caption = #47700#47784
        DataBinding.FieldName = 'RETURN_DESC'
        Width = 320
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridTelLog
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 984
    Top = 512
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 88
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
    end
  end
  object DAY_LOG_SEL_DATE: TUniStoredProc
    StoredProcName = 'DAY_LOG_SEL_DATE'
    Connection = dmDBCommon.UniDBConnection
    Left = 208
    Top = 448
    ParamData = <
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'IN_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'RECEIVED'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'DAMDANG'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CALLER'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IN_DESC'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_DONE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'RETURN_DESC'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'DAY_LOG_SEL_DATE'
    object DAY_LOG_SEL_DATEID: TIntegerField
      FieldName = 'ID'
    end
    object DAY_LOG_SEL_DATEIN_DATE: TDateField
      FieldName = 'IN_DATE'
    end
    object DAY_LOG_SEL_DATEIN_TIME: TStringField
      FieldName = 'IN_TIME'
      Size = 10
    end
    object DAY_LOG_SEL_DATEIN_KIND: TIntegerField
      FieldName = 'IN_KIND'
    end
    object DAY_LOG_SEL_DATERECEIVED: TStringField
      FieldName = 'RECEIVED'
      Size = 50
    end
    object DAY_LOG_SEL_DATEDAMDANG: TStringField
      FieldName = 'DAMDANG'
      Size = 50
    end
    object DAY_LOG_SEL_DATECALLER: TStringField
      FieldName = 'CALLER'
      Size = 50
    end
    object DAY_LOG_SEL_DATEIN_DESC: TStringField
      FieldName = 'IN_DESC'
      Size = 255
    end
    object DAY_LOG_SEL_DATEIS_DONE: TIntegerField
      FieldName = 'IS_DONE'
    end
    object DAY_LOG_SEL_DATERETURN_DESC: TStringField
      FieldName = 'RETURN_DESC'
      Size = 255
    end
    object DAY_LOG_SEL_DATECENTER_ID: TIntegerField
      FieldName = 'CENTER_ID'
    end
  end
  object DAY_LOG_DEL: TUniStoredProc
    StoredProcName = 'DAY_LOG_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 584
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'DAY_LOG_DEL'
  end
  object DAY_LOG_UPD_DONE: TUniStoredProc
    StoredProcName = 'DAY_LOG_UPD_DONE'
    Connection = dmDBCommon.UniDBConnection
    Left = 712
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_DONE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'DAY_LOG_UPD_DONE'
  end
  object d_TEL_LOG_SEL_DATE: TDataSource
    DataSet = DAY_LOG_SEL_DATE
    Left = 208
    Top = 496
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 416
    Top = 472
  end
end