object fmCompareList1: TfmCompareList1
  Left = 0
  Top = 0
  Caption = #51088#49464' '#51312#54924'/'#48516#49437
  ClientHeight = 669
  ClientWidth = 1365
  Color = clBtnFace
  DoubleBuffered = True
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
  object pnlMember: TPanel
    Left = 0
    Top = 0
    Width = 520
    Height = 669
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object pnlRoot: TPanel
      Left = 0
      Top = 0
      Width = 520
      Height = 669
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      inline frmMemberPicSelect1: TfrmMemberPicSelect
        Left = 0
        Top = 0
        Width = 520
        Height = 669
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 669
        inherited Panel1: TPanel
          Height = 669
          ExplicitHeight = 669
          inherited cxGroupBox1: TcxGroupBox
            ExplicitHeight = 566
            Height = 566
            inherited cxGrid1: TcxGrid
              Height = 516
              ExplicitWidth = 203
              ExplicitHeight = 516
            end
            inherited pnlPictureButton: TPanel
              ExplicitWidth = 203
            end
          end
        end
        inherited compareGroupLeftTop: TcxGroupBox
          ExplicitHeight = 668
          Height = 668
          inherited ImageEnMView1: TImageEnMView
            Height = 618
            AttachedImageEnView = ImageEnView1
            ExplicitHeight = 618
          end
          inherited Panel2: TPanel
            inherited BitBtn1: TBitBtn
              OnClick = frmMemberPicSelect1BitBtn1Click
            end
          end
        end
      end
    end
  end
  object pgcCompareFrame: TPanel
    Left = 520
    Top = 0
    Width = 528
    Height = 669
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Tag = 1
      AlignWithMargins = True
      Left = 1
      Top = 1
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Caption = #51088#49464#49324#51652'('#49440#53469')'
      Style.BorderColor = clWindowFrame
      Style.LookAndFeel.SkinName = 'Black'
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 667
      Width = 526
      object ImageEnView1: TImageEnView
        Left = 3
        Top = 15
        Width = 520
        Height = 642
        Background = clBtnFace
        ZoomFilter = rfFastLinear
        AutoStretch = True
        AutoShrink = True
        LayersFastDrawing = iefFast
        AsyncLoading = True
        Align = alClient
        TabOrder = 0
        OnDblClick = ImageEnView1DblClick
      end
    end
  end
  object Panel1: TPanel
    Left = 1048
    Top = 0
    Width = 317
    Height = 669
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object cxGroupBox2: TcxGroupBox
      Tag = 1
      AlignWithMargins = True
      Left = 1
      Top = 275
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      Caption = #47112#51060#50612
      Style.BorderColor = clWindowFrame
      Style.LookAndFeel.SkinName = 'Black'
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 393
      Width = 315
      object ImageEnLayerMView1: TImageEnLayerMView
        Left = 3
        Top = 15
        Width = 309
        Height = 368
        Background = clWindow
        AttachedImageEnView = ImageEnView1
        GridWidth = 1
        StoreType = ietFastThumb
        ThumbWidth = 150
        ThumbHeight = 200
        TextMargin = 4
        ThumbnailOptionsEx = [ietxCenterThumbnailColumn, ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
        PopupMenus = [impDefault, impSelection]
        Style = iemsFlatAndWide
        AutoAdjustStyle = True
        MultiSelectionOptions = [iemoRegion, iemoOptimizeForDragging, iemoSelectOnRightClick, iemoHideSelectionRect]
        DefaultTopText = iedtLayerNameInfo
        DefaultInfoText = iedtLayerSizeAndPos
        DefaultBottomText = iedtNone
        Align = alClient
        BottomTextFont.Charset = DEFAULT_CHARSET
        BottomTextFont.Color = clWindowText
        BottomTextFont.Height = -13
        BottomTextFont.Name = #44404#47548
        BottomTextFont.Style = []
        InfoTextFont.Charset = DEFAULT_CHARSET
        InfoTextFont.Color = clWindowText
        InfoTextFont.Height = -13
        InfoTextFont.Name = #44404#47548
        InfoTextFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
    end
    object cxGroupBox3: TcxGroupBox
      Tag = 1
      AlignWithMargins = True
      Left = 1
      Top = 1
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alTop
      Caption = #47112#51060#50612
      Style.BorderColor = clWindowFrame
      Style.LookAndFeel.SkinName = 'Black'
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Height = 272
      Width = 315
      object BitBtn1: TBitBtn
        Left = 16
        Top = 32
        Width = 75
        Height = 25
        Caption = 'BitBtn1'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
    end
  end
  object OpenImageEnDialog1: TOpenImageEnDialog
    Left = 600
    Top = 184
  end
end
