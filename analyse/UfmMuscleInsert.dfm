object fmMuscleInsert: TfmMuscleInsert
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44540#50977'/'#44264#44201' '#46321#47197
  ClientHeight = 565
  ClientWidth = 959
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
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 364
    Top = 3
    Align = alClient
    Caption = #51060#48120#51648
    TabOrder = 0
    Height = 559
    Width = 592
    object ImageEnView1: TImageEnView
      Left = 3
      Top = 17
      Width = 586
      Height = 532
      Cursor = crHandPoint
      Background = clBtnFace
      AutoStretch = True
      AutoShrink = True
      Align = alClient
      TabOrder = 0
      ExplicitTop = 15
      ExplicitHeight = 534
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 361
    Height = 565
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Align = alTop
      Caption = #44540#50977'/'#44264#44208' '#51221#48372
      TabOrder = 0
      Height = 141
      Width = 355
      object Label1: TLabel
        Left = 24
        Top = 41
        Width = 28
        Height = 15
        Caption = #51228#47785':'
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 28
        Height = 15
        Caption = #51088#49464':'
      end
      object Label3: TLabel
        Left = 24
        Top = 19
        Width = 28
        Height = 15
        Caption = #49692#49436':'
      end
      object Label4: TLabel
        Left = 133
        Top = 64
        Width = 28
        Height = 15
        Caption = #44396#48516':'
      end
      object Label5: TLabel
        Left = 11
        Top = 87
        Width = 40
        Height = 15
        Caption = #51060#48120#51648':'
      end
      object edtName: TEdit
        Left = 60
        Top = 39
        Width = 174
        Height = 21
        TabOrder = 0
      end
      object icbPosture: TcxImageComboBox
        Left = 60
        Top = 60
        EditValue = 0
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = #51204#47732
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #51340#52769
            Value = 2
          end
          item
            Description = #50864#52769
            Value = 3
          end
          item
            Description = #54980#47732
            Value = 4
          end>
        TabOrder = 1
        Width = 65
      end
      object icbMuscle: TcxImageComboBox
        Left = 169
        Top = 60
        EditValue = 0
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = #44540#50977
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #44264#44201
            Value = 2
          end>
        TabOrder = 2
        Width = 65
      end
      object edtIDX: TcxSpinEdit
        Left = 60
        Top = 16
        TabOrder = 3
        Width = 65
      end
      object edtImage: TEdit
        Left = 60
        Top = 83
        Width = 277
        Height = 21
        TabOrder = 4
      end
      object cxButton3: TcxButton
        Left = 60
        Top = 105
        Width = 103
        Height = 25
        Caption = #51060#48120#51648#49440#53469
        OptionsImage.Glyph.Data = {
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
        TabOrder = 5
        OnClick = cxButton3Click
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 0
      Top = 147
      Align = alClient
      Caption = #49345#49464#49444#47749
      TabOrder = 1
      Height = 418
      Width = 361
      object edtDesc: TIERichEdit
        Left = 3
        Top = 83
        Width = 355
        Height = 292
        RTFText = 
          '{\rtf1\ansi\deff0{\fonttbl{\f0\fnil\fcharset129 \'#39'b3\'#39'aa\'#39'b4\'#39'ae' +
          '\'#39'b8\'#39'ed\'#39'c1\'#39'b6;}}'#13#10'\viewkind4\uc1\pard\lang1042\f0\fs24\par'#13#10'}' +
          #13#10#0
        Align = alClient
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #45208#45588#47749#51312
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 81
        ExplicitHeight = 294
      end
      object IERichEditToolbar1: TIERichEditToolbar
        Left = 3
        Top = 17
        Width = 355
        Height = 66
        AutoSize = True
        ButtonHeight = 30
        ButtonWidth = 31
        Caption = 'IERichEditToolbar1'
        TabOrder = 1
        ExplicitTop = 15
      end
      object Panel2: TPanel
        Left = 3
        Top = 375
        Width = 355
        Height = 33
        Align = alBottom
        TabOrder = 2
        object btnSave: TcxButton
          Left = 91
          Top = 3
          Width = 75
          Height = 25
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
        end
        object btnCancel: TcxButton
          Left = 172
          Top = 3
          Width = 75
          Height = 25
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
        end
      end
    end
  end
  object OpenImageEnDialog1: TOpenImageEnDialog
    Left = 472
    Top = 280
  end
end
