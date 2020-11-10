object fmWebVideoPlayer: TfmWebVideoPlayer
  Left = 0
  Top = 0
  Caption = #50868#46041#52376#48169' '#46041#50689#49345' '#51116#49373#44592
  ClientHeight = 536
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wb1: TWebBrowser
    Left = 0
    Top = 0
    Width = 834
    Height = 536
    Align = alClient
    TabOrder = 0
    OnDocumentComplete = wb1DocumentComplete
    ExplicitLeft = 176
    ExplicitTop = 128
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C00000032560000663700000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
