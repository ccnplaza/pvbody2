object fmImportImages: TfmImportImages
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #45796#51473' '#54028#51068' '#44032#51256#50724#44592
  ClientHeight = 305
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 460
    Height = 299
    Align = alClient
    Caption = #54028#51068' '#44032#51256#50724#44592
    TabOrder = 0
    ExplicitLeft = 96
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 105
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 56
      Height = 13
      Caption = #51200#51109#51068#51088':'
    end
    object edtSaveDate: TcxDateEdit
      Left = 86
      Top = 29
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 213
      Top = 27
      Width = 116
      Height = 25
      Caption = #54028#51068' '#49440#53469
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 165
      Top = 247
      Width = 116
      Height = 25
      Caption = #51200#51109
      ModalResult = 1
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 24
      Top = 58
      Width = 409
      Height = 183
      TabOrder = 3
    end
  end
  object OpenImageEnDialog1: TOpenImageEnDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 88
    Top = 152
  end
end
