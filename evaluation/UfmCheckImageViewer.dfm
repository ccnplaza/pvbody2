object fmCheckImageViewer: TfmCheckImageViewer
  Left = 0
  Top = 0
  Caption = #52769#51221#51088#49464#48372#44592
  ClientHeight = 460
  ClientWidth = 602
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
    Top = 33
    Width = 602
    Height = 427
    Background = clBtnFace
    Ctl3D = True
    MouseInteractGeneral = [miZoom, miScroll]
    AutoStretch = True
    AutoShrink = True
    AsyncLoading = True
    Align = alClient
    TabOrder = 0
  end
  object PanelMsg: TPanel
    Left = 0
    Top = 0
    Width = 602
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PanelMsg'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = #45208#45588#44256#46357
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
end
