object fmContacts: TfmContacts
  Left = 0
  Top = 0
  Caption = #51204#54868#48264#54840#48512
  ClientHeight = 638
  ClientWidth = 1134
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1134
    Height = 30
    Align = alTop
    TabOrder = 0
    object lbl2: TLabel
      Left = 25
      Top = 8
      Width = 28
      Height = 15
      Caption = #44160#49353':'
    end
    object btnView: TcxButton
      Left = 275
      Top = 2
      Width = 62
      Height = 25
      Caption = #51312#54924
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
        00000000000100000004000000090000000D0000000F0000000F0000000C0000
        00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
        0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
        1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
        02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
        50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
        3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
        C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
        7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
        88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
        C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
        87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
        F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
        A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
        FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
        A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
        F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
        92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
        D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
        6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
        A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
        84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
        4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
        F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
        020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
        A2FC62504B900404031000000002000000000000000000000000000000000000
        000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
        1F3E000000060000000100000000000000000000000000000000}
      TabOrder = 0
      OnClick = btnViewClick
    end
    object btnAdd: TcxButton
      Left = 347
      Top = 2
      Width = 62
      Height = 25
      Caption = #52628#44032
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
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnEdit: TcxButton
      Left = 410
      Top = 2
      Width = 62
      Height = 25
      Caption = #49688#51221
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
      TabOrder = 2
      OnClick = btnEditClick
    end
    object cxButton4: TcxButton
      Left = 473
      Top = 2
      Width = 62
      Height = 25
      Caption = #49325#51228
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
      TabOrder = 3
      OnClick = cxButton4Click
    end
    object edtSearch: TEdit
      Left = 58
      Top = 4
      Width = 121
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 4
    end
    object btnSearch: TcxButton
      Left = 180
      Top = 2
      Width = 36
      Height = 25
      Hint = #44160#49353
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000D000000190000001A0000
        000E000000030000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
        478D0000000E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
        A5FF000000190000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
        A3FF0000001B0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
        A2FF000000190000000000000000000000000000000000000000000000000000
        00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
        A1FF0000001E0000000200000000000000000000000000000000000000000000
        00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
        A1FF081E3F8D0001021800000006000000010000000000000000000000000000
        000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
        C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
        0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
        CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
        000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
        D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
        34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
        D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
        7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
        DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
        B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
        FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
        C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
        C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
        455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
        FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
        000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
        A5DE286298D11D4872A410284164020509150000000400000001}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnSearchClick
    end
    object btnSearchCancel: TcxButton
      Left = 217
      Top = 2
      Width = 36
      Height = 25
      Hint = #44160#49353#52712#49548
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000203110C50961910
        74DB0504172D000000000504172D181071DB100B4E9600000203000000000000
        000000000000000000040000000D0000001100000011120D55A1414FC0FF4762
        D6FF252390EE09062C5223238FEE415CD4FF3949BCFF110C539C000000000000
        0000000000000000000C3B73B7FF2C5CA8FF87A2CEFF312C99FF8596E1FF5B7C
        E6FF4F6DDEFF2F34A7FE4C6ADDFF5574E4FF7486DDFF1A1276DB000000000000
        0000000000000000000F255FA9FFC1E6F5FF9FD1EFFF7C92C6FF38369AEF8EA1
        E8FF5E7FE7FF5B7BE5FF5B7BE6FF8397E6FF312F93ED0504172A000000000000
        0000000000000000000E235CA7FFABE2F6FF5EB3E7FF86A4CDFF0B09305C4348
        B3FE83A0F1FF84A1F2FF829FF0FF4145B0FE0A082F5200000000000000000000
        0000000000010000000E225BA6FF8FD6F4FF96CCEEFF798EC3FF2F3191EF87A1
        EDFF97B2F6FFC1D0F8FF96B1F6FF859EECFF2D2E8EEE0403172D000000000000
        0001000000060B162549225AA6FF77CAEEFF90C9ECFF3333A9FFA8B7EFFFA4BC
        F8FFCAD3F5FF6261BBFEC7D1F4FFA2BBF8FFA6B5EEFF1F1A88E1000000010000
        000611233A633C75B7FB67A5D8FF7FC9EBFF94D1EDFF525FBEFF9C9CDAFFD6D9
        F3FF4744AAEF0C0B34534542A8EED1D5F1FF9597D6FF1613649F000000041123
        395E4885C3FF84CBEEFFC3EAF9FF8EDAF2FF81D0EEFF9DC7E9FF5867C5FF3738
        B3FF343F67910000000507061E2D221F92DE1614609300000203020406133468
        A5E882C8EBFFBAE9F9FFE2F7FDFF90DEF5FF4BC0E8FF79B7E4FF8AB2E0FF90BB
        E4FF809FC6F10305071500000001000000000000000000000000162C456A5797
        CEFF99E1F7FFDFF7FDFFF5FCFFFF8BDFF5FF4DC5EAFF4CA6DEFF2D74C6FF337E
        CCFF4083C6FF1428436C00000004000000000000000000000000284F7DB284C2
        E6FFC3EDFAFFE6F7FDFFE2F5FCFFDFF6FCFFDEF6FCFFD7F5FBFFB7DCF2FF8FC0
        E7FF5EA6DCFF254979B3000000060000000000000000000000003975B3F4D5EF
        FAFF9BB8DDFF648AC7FF1348A7FF114AA9FF144FADFF1856B1FF6698D1FF99C2
        E5FFC5ECF9FF3468AAEF000000060000000000000000000000001A3450735A91
        C5F9AAD2EBFFCEEAF7FFDCF1FAFFE2F5FBFFE0F5FBFFD6F2FBFFC2E7F6FF9CCC
        EAFF538CC2F918314D740000000300000000000000000000000000000003070D
        14211D3B597E2D5C8BBE32669BD53D7BBDFF3D7ABCFF31639AD52B5888BF1C38
        587F070E16250000000300000001000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnSearchCancelClick
    end
    object btnSMS: TcxButton
      Left = 566
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
      TabOrder = 7
      OnClick = btnSMSClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 1134
    Height = 608
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridContacts: TcxGridDBTableView
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
      OnCellDblClick = gridContactsCellDblClick
      DataController.DataSource = ds_COMPANY_CONTACTS_SEL
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
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.Indicator = True
      object gridContactsID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
      end
      object gridContactsC_KIND: TcxGridDBColumn
        Caption = #44396#48516
        DataBinding.FieldName = 'C_KIND'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object gridContactsC_NAME: TcxGridDBColumn
        Caption = #49345#54840
        DataBinding.FieldName = 'C_NAME'
        Width = 128
      end
      object gridContactsC_DAMDANG: TcxGridDBColumn
        Caption = #45812#45817#51088#47749
        DataBinding.FieldName = 'C_DAMDANG'
        Width = 82
      end
      object gridContactsC_TEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840'1'
        DataBinding.FieldName = 'C_TEL'
        Width = 107
      end
      object gridContactsC_TEL2: TcxGridDBColumn
        Caption = #51204#54868#48264#54840'2'
        DataBinding.FieldName = 'C_TEL2'
        Width = 121
      end
      object gridContactsC_EMAIL: TcxGridDBColumn
        Caption = #51060#47700#51068
        DataBinding.FieldName = 'C_EMAIL'
        Width = 143
      end
      object gridContactsC_ADDR: TcxGridDBColumn
        Caption = #51452#49548
        DataBinding.FieldName = 'C_ADDR'
        Width = 263
      end
      object gridContactsC_BIGO: TcxGridDBColumn
        Caption = #48708#44256#49324#54637
        DataBinding.FieldName = 'C_BIGO'
        Width = 181
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridContacts
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 984
    Top = 496
  end
  object dxMemData1: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 680
    Top = 480
  end
  object COMPANY_CONTACTS_DEL: TUniStoredProc
    StoredProcName = 'COMPANY_CONTACTS_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'COMPANY_CONTACTS_DEL'
  end
  object COMPANY_CONTACTS_INS: TUniStoredProc
    StoredProcName = 'COMPANY_CONTACTS_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'C_KIND'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_DAMDANG'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_TEL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_TEL2'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_ADDR'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'C_EMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_BIGO'
        ParamType = ptInput
        Size = 255
      end>
    CommandStoredProcName = 'COMPANY_CONTACTS_INS'
  end
  object COMPANY_CONTACTS_SEL: TUniStoredProc
    StoredProcName = 'COMPANY_CONTACTS_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_KIND'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_DAMDANG'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_TEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_TEL2'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_ADDR'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'C_EMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_BIGO'
        ParamType = ptOutput
        Size = 255
      end>
    CommandStoredProcName = 'COMPANY_CONTACTS_SEL'
    object COMPANY_CONTACTS_SELID: TIntegerField
      FieldName = 'ID'
    end
    object COMPANY_CONTACTS_SELC_KIND: TStringField
      FieldName = 'C_KIND'
    end
    object COMPANY_CONTACTS_SELC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 50
    end
    object COMPANY_CONTACTS_SELC_DAMDANG: TStringField
      FieldName = 'C_DAMDANG'
      Size = 50
    end
    object COMPANY_CONTACTS_SELC_TEL: TStringField
      FieldName = 'C_TEL'
      Size = 50
    end
    object COMPANY_CONTACTS_SELC_TEL2: TStringField
      FieldName = 'C_TEL2'
      Size = 50
    end
    object COMPANY_CONTACTS_SELC_ADDR: TStringField
      FieldName = 'C_ADDR'
      Size = 100
    end
    object COMPANY_CONTACTS_SELC_EMAIL: TStringField
      FieldName = 'C_EMAIL'
      Size = 50
    end
    object COMPANY_CONTACTS_SELC_BIGO: TStringField
      FieldName = 'C_BIGO'
      Size = 255
    end
  end
  object ds_COMPANY_CONTACTS_SEL: TDataSource
    DataSet = COMPANY_CONTACTS_SEL
    Left = 496
    Top = 360
  end
  object COMPANY_CONTACTS_UPD: TUniStoredProc
    StoredProcName = 'COMPANY_CONTACTS_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 512
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_KIND'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_DAMDANG'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_TEL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_TEL2'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_ADDR'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'C_EMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'C_BIGO'
        ParamType = ptInput
        Size = 255
      end>
    CommandStoredProcName = 'COMPANY_CONTACTS_UPD'
  end
end
