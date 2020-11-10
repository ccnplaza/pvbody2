object fmUserKind: TfmUserKind
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49324#50857#51088#44428#54620
  ClientHeight = 205
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rgUserRights: TcxRadioGroup
    Left = 8
    Top = 8
    Caption = #49324#50857#51088#44428#54620#49444#51221
    Properties.DefaultValue = 0
    Properties.Items = <
      item
        Caption = #48516#49437#44032'('#49548#49549' '#49468#53552#51032' '#51088#49464#48516#49437#47564' '#44032#45733')'
        Value = 0
      end
      item
        Caption = #49468#53552#44288#47532#51088'('#49548#49549' '#49468#53552#51032' '#47784#46304' '#44592#45733' '#49324#50857#44032#45733')'
        Value = 1
      end
      item
        Caption = #51204#52404#44288#47532#51088'('#47784#46304' '#49468#53552#51032' '#47784#46304' '#44592#45733' '#49324#50857#44032#45733')'
        Value = 3
      end
      item
        Caption = #49884#49828#53596#44288#47532#51088'('#51204#52404#44288#47532#51088' '#44592#45733' + '#49324#50857#51088#44428#54620' '#44592#45733')'
        Value = 2
      end>
    ItemIndex = 0
    TabOrder = 0
    Height = 137
    Width = 361
  end
  object cxButton1: TcxButton
    Left = 144
    Top = 160
    Width = 75
    Height = 25
    Caption = #51200#51109
    ModalResult = 1
    TabOrder = 1
  end
end
