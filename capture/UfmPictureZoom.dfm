object fmPictureZoom: TfmPictureZoom
  Left = 0
  Top = 0
  Caption = #49324#51652#51312#54924
  ClientHeight = 703
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object ImageEnView1: TImageEnView
    Left = 0
    Top = 0
    Width = 340
    Height = 703
    Background = clBlack
    ParentCtl3D = False
    ZoomFilter = rfLanczos3
    MouseInteract = [miZoom, miScroll]
    EnableInteractionHints = True
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 305
  end
end
