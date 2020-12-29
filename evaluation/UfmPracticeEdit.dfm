object fmPracticeEdit: TfmPracticeEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #50868#46041#52376#48169
  ClientHeight = 253
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 406
    Height = 247
    Align = alClient
    Caption = #50868#46041#52376#48169' '#46321#47197'/'#49688#51221
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #45208#45588#44256#46357
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 67
      Width = 40
      Height = 15
      Caption = #50868#46041#47749':'
    end
    object Label2: TLabel
      Left = 25
      Top = 94
      Width = 76
      Height = 15
      Caption = #51201#50857#49888#52404#48512#50948':'
    end
    object Label3: TLabel
      Left = 51
      Top = 141
      Width = 52
      Height = 15
      Caption = #44288#47144#53685#51613':'
    end
    object Label4: TLabel
      Left = 73
      Top = 41
      Width = 28
      Height = 15
      Caption = #48264#54840':'
    end
    object edtPName: TEdit
      Left = 113
      Top = 64
      Width = 224
      Height = 23
      TabOrder = 0
    end
    object edtBody: TMemo
      Left = 113
      Top = 91
      Width = 224
      Height = 41
      TabOrder = 1
    end
    object edtPain: TMemo
      Left = 113
      Top = 138
      Width = 224
      Height = 41
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 113
      Top = 184
      Width = 75
      Height = 25
      Caption = #51200#51109
      Kind = bkOK
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 194
      Top = 184
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 4
    end
    object speNo: TcxSpinEdit
      Left = 112
      Top = 38
      TabOrder = 5
      Width = 65
    end
  end
end
