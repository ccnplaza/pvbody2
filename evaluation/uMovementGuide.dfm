object fmMovementGuide: TfmMovementGuide
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #46041#51201#48516#49437' '#44032#51060#46300
  ClientHeight = 473
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 282
    Height = 473
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxDBImage1: TcxDBImage
      Left = 6
      Top = 36
      DataBinding.DataField = 'ICON_FILE'
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxPNGImage'
      TabOrder = 0
      Height = 93
      Width = 100
    end
    object cxDBImageView: TcxDBImage
      Left = 6
      Top = 128
      DataBinding.DataField = 'P_IMAGE'
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxPNGImage'
      TabOrder = 1
      Height = 293
      Width = 268
    end
    object cxDBLabel1: TcxDBLabel
      Left = 105
      Top = 36
      DataBinding.DataField = 'ITEM_QUESTION'
      ImeName = 'Microsoft IME 2010'
      Properties.ShowEndEllipsis = True
      Properties.WordWrap = True
      Transparent = True
      Height = 93
      Width = 169
    end
    object btnPrevImage: TBitBtn
      Left = 105
      Top = 421
      Width = 42
      Height = 25
      Caption = #9664
      TabOrder = 3
      OnClick = btnPrevImageClick
    end
    object btnNextImage: TBitBtn
      Left = 146
      Top = 421
      Width = 40
      Height = 25
      Caption = #9654
      TabOrder = 4
      OnClick = btnNextImageClick
    end
    object cxDBLabel2: TcxDBLabel
      Left = 6
      Top = 1
      DataBinding.DataField = 'ITEM_NAME'
      ImeName = 'Microsoft IME 2010'
      ParentColor = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -16
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.Shadow = True
      Style.IsFontAssigned = True
      Height = 33
      Width = 268
      AnchorX = 140
      AnchorY = 18
    end
  end
end
