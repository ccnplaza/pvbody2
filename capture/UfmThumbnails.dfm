object fmThumbnails: TfmThumbnails
  Left = 0
  Top = 386
  Caption = #51060#48120#51648' '#48372#44592
  ClientHeight = 282
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 33
    Align = alTop
    TabOrder = 0
  end
  object ImageEnMView: TImageEnMView
    AlignWithMargins = True
    Left = 1
    Top = 34
    Width = 689
    Height = 247
    Cursor = crHandPoint
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Background = clInactiveCaptionText
    ParentCtl3D = False
    BorderStyle = bsNone
    ScrollBars = ssHorizontal
    StoreType = ietNormal
    ThumbWidth = 100
    ThumbHeight = 245
    HorizBorder = 2
    VertBorder = 1
    BottomGap = 2
    UpperGap = 2
    SideGap = 2
    TextMargin = 0
    MouseInteract = [mmiScroll, mmiSelect]
    GridWidth = 0
    SelectionColor = clRed
    DrawImageBackground = True
    Style = iemsACD
    ThumbnailsBackground = clWhite
    ThumbnailsBackgroundSelected = clBtnFace
    MultiSelectionOptions = []
    ThumbnailsBorderWidth = 2
    ThumbnailsBorderColor = clInactiveCaptionText
    ThumbnailsInternalBorder = True
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 2
    ExplicitTop = 2
    ExplicitWidth = 244
    ExplicitHeight = 186
  end
end
