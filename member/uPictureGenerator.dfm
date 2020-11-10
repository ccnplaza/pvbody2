object fmPictureGenerator: TfmPictureGenerator
  Left = 0
  Top = 0
  Caption = #49324#51652#52524#50689
  ClientHeight = 405
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 405
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 368
      Width = 490
      Height = 37
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object btnRefresh: TBitBtn
        Left = 230
        Top = 5
        Width = 87
        Height = 25
        Caption = #49352#47196#44256#52840
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DA0000000000
          000AAD0FFFFFFFFFFF0DDA0FFFFF2FFFFF0AAD0FFFF22FFFFF0DDA0FFF22222F
          FF0AAD0FFFF22FF2FF0DDA0FFFFF2FF2FF0AAD0FF2FFFFF2FF0DDA0FF2FF2FFF
          FF0AAD0FF2FF22FFFF0DDA0FFF22222FFF0AAD0FFFFF22FFFF0DDA0FFFFF2FF0
          000AAD0FFFFFFFF0F0ADDA0FFFFFFFF00ADAAD0000000000ADAD}
        TabOrder = 3
        OnClick = btnRefreshClick
      end
      object btnSetup: TBitBtn
        Left = 161
        Top = 5
        Width = 69
        Height = 25
        Caption = #49444#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADD00ADADADA00DADAA010ADADA080ADADDA010ADA080A
          DADAADA010A080ADADADDADA01080ADADADAADADA080ADADADADDADA08010ADA
          D0DA000080A010AD030D00000ADA010003300DA00DADA003300DDAD00ADAD033
          30DAAD000DAD003330ADDADADA0033000ADAADADADA0000DADAD}
        TabOrder = 2
        OnClick = btnSetupClick
      end
      object btnStartPreview: TBitBtn
        Left = 5
        Top = 5
        Width = 88
        Height = 25
        Caption = #48120#47532#48372#44592
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADA000000000000AD000FFFFFFFFFF0D0000FFFFFFF0000700D0FFFFFF07887
          07DA0FFFFF0788E770AD0FFFFF08888780DA0FFFFF08E88780AD0FFFFF07EE87
          70DA0FFFFFF078870DAD0FFFFFFF0000DADA0FFFFFFFFFF0ADAD0FFFFFFF0000
          DADA0FFFFFFF080DADAD0FFFFFFF00DADADA000000000DADADAD}
        TabOrder = 0
        OnClick = btnStartPreviewClick
      end
      object btnStopPreview: TBitBtn
        Left = 93
        Top = 5
        Width = 68
        Height = 25
        Caption = #51221#51648
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
          DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
          DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
          0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
        TabOrder = 1
        OnClick = btnStopPreviewClick
      end
      object chkPause: TCheckBox
        Left = 323
        Top = 9
        Width = 79
        Height = 17
        Caption = #54868#47732#51221#51648
        TabOrder = 4
        OnClick = chkPauseClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 490
      Height = 37
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 484
        Height = 31
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 9
          Top = 8
          Width = 30
          Height = 13
          Caption = #51109#52824':'
        end
        object Label2: TLabel
          Left = 360
          Top = 9
          Width = 13
          Height = 13
          Caption = #46020
        end
        object cboVideoDevices: TComboBox
          Left = 45
          Top = 5
          Width = 170
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 0
          OnChange = cboVideoDevicesChange
        end
        object edtDeviceIndex: TEdit
          Left = 216
          Top = 5
          Width = 34
          Height = 21
          ImeName = 'Microsoft IME 2010'
          TabOrder = 1
          Text = '0'
        end
        object chkRotateCamera: TCheckBox
          Left = 258
          Top = 7
          Width = 49
          Height = 17
          Caption = #54924#51204
          TabOrder = 2
        end
        object chkFitSize: TCheckBox
          Left = 395
          Top = 7
          Width = 79
          Height = 17
          Caption = #54868#47732#47582#52644
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = chkFitSizeClick
        end
        object cbAngle: TComboBox
          Left = 309
          Top = 5
          Width = 46
          Height = 22
          Style = csOwnerDrawFixed
          ImeName = 'Microsoft IME 2010'
          ItemIndex = 0
          TabOrder = 4
          Text = '90'
          Items.Strings = (
            '90'
            '-90')
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 37
      Width = 490
      Height = 331
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object ImageEnVect2: TImageEnVect
        Left = 0
        Top = 0
        Width = 490
        Height = 331
        Background = clBackground
        ParentCtl3D = False
        BorderStyle = bsNone
        OnDShowNewFrame = ImageEnVect2DShowNewFrame
        EnableInteractionHints = True
        Align = alClient
        TabOrder = 0
        OnMouseDown = ImageEnVect2MouseDown
        OnMouseUp = ImageEnVect2MouseUp
      end
    end
  end
  object Panel2: TPanel
    Left = 490
    Top = 0
    Width = 168
    Height = 405
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object btnCapture: TBitBtn
      Left = 14
      Top = 294
      Width = 139
      Height = 25
      Caption = #49324#51652' '#52897#52432
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADAD0DADADADAD0AD000DAD0DAD5DAA00DA0AD0DAD55ADDA0A0000DAD5
        555AAD0DADA0AD555555D00ADAD000D555550000ADAD0D0D55A5000ADA00DA0A
        D5D50000ADA0ADA0ADA500000000D00ADAD5A0000000AD0DAD5DDA00000000D0
        DADAADADA0000000ADADDADADA00000ADADAADADADADADADADAD}
      TabOrder = 1
      OnClick = btnCaptureClick
    end
    object btnClearScreen: TBitBtn
      Left = 14
      Top = 323
      Width = 139
      Height = 25
      Caption = #54868#47732' '#49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADADDADADADADADADADAA70000007DADADADD088888800DA
        DADAA0888888070DADADD70888880770DADAAD08F8F8F0770DADDAD08F8F8F07
        70DAADAD08F8F8F0777DDADAD08F8F8F070AADADAD08F8F8F70DDADADAD08F8F
        880AADADADAD7000077DDADADADADADADADAADADADADADADADAD}
      TabOrder = 3
      OnClick = btnClearScreenClick
    end
    object btnOpenFile: TBitBtn
      Left = 14
      Top = 241
      Width = 139
      Height = 25
      Caption = #54028#51068' '#50676#44592
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADA000000000000000D088880880880880A008808808808800D0A0F8F888088
        0A0A0DA0FF080FF0AD0D0ADA0FF0D00ADA0A0DADA00DADADAD0D0ADADADADADA
        DA0A0DADADADAD00AD0D0ADADADAD0BB0A0A0DADADADA0BB0D0D0ADADADADA00
        DA0A0DADADADADADAD0D000000000000000AADADADADADADADAD}
      TabOrder = 2
      OnClick = btnOpenFileClick
    end
    object btnSaveQuit: TBitBtn
      Left = 14
      Top = 347
      Width = 139
      Height = 25
      Caption = #51200#51109' '#51333#47308
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
        030AA03300000000030DD03333333333330AA03300000000330DD03088888888
        030AA03088888888030DD03088888888030AA03088888888030DD03088888888
        000AA03088888888080DD00000000000000AADADADADADADADAD}
      TabOrder = 4
      OnClick = btnSaveQuitClick
    end
    object ImageEnVect3: TImageEnVect
      Left = 3
      Top = 51
      Width = 163
      Height = 185
      Background = clBtnFace
      ParentCtl3D = False
      AutoFit = True
      AutoStretch = True
      AutoShrink = True
      EnableInteractionHints = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 14
      Top = 265
      Width = 139
      Height = 25
      Caption = #49324#51652' '#54924#51204
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADAD7444447DADADDAD444444444DADAAD444DADAD444DADD744DADADAD4
        47DAA44DADA22DA744ADD44ADA2222DA44DAA44DAD2222AD44ADD44ADAD22ADA
        DADAA447ADADADAD44ADD744DA4ADADADADAAD444D44ADA47DADDAD444444ADA
        DADAADAD74444DADADADDADADA44DADADADAADADAD4DADADADAD}
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
end
