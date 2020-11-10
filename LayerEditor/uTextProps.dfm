object TextProps: TTextProps
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #53581#49828#53944#49549#49457
  ClientHeight = 454
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    437
    454)
  PixelsPerInch = 96
  TextHeight = 15
  object lblHeading: TLabel
    Left = 12
    Top = 12
    Width = 116
    Height = 15
    Caption = #51060#48120#51648#50640' '#53581#49828#53944' '#52628#44032
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #45208#45588#44256#46357
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lblFontSize: TLabel
    Left = 12
    Top = 96
    Width = 52
    Height = 15
    Caption = #54256#53944#53356#44592':'
  end
  object lblFontColor: TLabel
    Left = 12
    Top = 125
    Width = 52
    Height = 15
    Caption = #54256#53944#49353#49345':'
  end
  object lblText: TLabel
    Left = 12
    Top = 43
    Width = 40
    Height = 15
    Caption = #53581#49828#53944':'
  end
  object lblRotate: TLabel
    Left = 12
    Top = 152
    Width = 28
    Height = 15
    Caption = #54924#51204':'
  end
  object lblGradient: TLabel
    Left = 215
    Top = 218
    Width = 64
    Height = 15
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #44536#46972#46356#50616#53944':'
    Enabled = False
  end
  object lblBorderWidth: TLabel
    Left = 27
    Top = 249
    Width = 60
    Height = 15
    Alignment = taRightJustify
    Caption = #50808#54805#49440#46160#44760
    Enabled = False
  end
  object lblBGColor: TLabel
    Left = 20
    Top = 218
    Width = 52
    Height = 15
    Caption = #48176#44221#49353#49345':'
    Enabled = False
  end
  object lblBorderColor: TLabel
    Left = 218
    Top = 249
    Width = 64
    Height = 15
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #50808#54805#49440#49353#49345':'
    Enabled = False
  end
  object btnCancel: TButton
    Left = 337
    Top = 421
    Width = 88
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 18
    ExplicitLeft = 327
    ExplicitTop = 411
  end
  object btnOK: TButton
    Left = 243
    Top = 421
    Width = 88
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #54869#51064
    Enabled = False
    ModalResult = 1
    TabOrder = 17
    ExplicitLeft = 233
    ExplicitTop = 411
  end
  object memText: TMemo
    Left = 87
    Top = 43
    Width = 338
    Height = 43
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    WantReturns = False
    OnChange = ControlChange
    ExplicitWidth = 328
  end
  object edtFontSize: TEdit
    Left = 87
    Top = 93
    Width = 51
    Height = 23
    Hint = 'Specify size of text'
    TabStop = False
    TabOrder = 1
    Text = '1'
    OnChange = ControlChange
  end
  object updFontSize: TUpDown
    Left = 138
    Top = 93
    Width = 16
    Height = 21
    Hint = 'Specify size of text'
    Associate = edtFontSize
    Min = 1
    Max = 2000
    Position = 1
    TabOrder = 2
  end
  object chkFontBold: TCheckBox
    Left = 171
    Top = 94
    Width = 61
    Height = 17
    Caption = #46160#44749#44172
    TabOrder = 3
    OnClick = ControlChange
  end
  object chkFontItalics: TCheckBox
    Left = 244
    Top = 94
    Width = 72
    Height = 17
    Caption = #44592#50872#51076
    TabOrder = 4
    OnClick = ControlChange
  end
  object btnSetFont: TButton
    Left = 307
    Top = 147
    Width = 118
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #54256#53944' '#49440#53469'...'
    TabOrder = 8
    OnClick = btnSetFontClick
    ExplicitLeft = 297
  end
  object btnFontColor: TIEColorButton
    Left = 87
    Top = 120
    Width = 51
    Height = 23
    Hint = 'Specify color of text'
    OnChange = ControlChange
    TabOrder = 5
  end
  object btnFillColor2: TIEColorButton
    Left = 378
    Top = 212
    Width = 47
    Height = 25
    Hint = 'Specify a secondary color'
    OnChange = ControlChange
    Anchors = [akTop, akRight]
    Enabled = False
    TabOrder = 10
    ExplicitLeft = 368
  end
  object cmbGradient: TComboBox
    Left = 285
    Top = 214
    Width = 87
    Height = 23
    Hint = 'Selected a gradient style'
    Style = csDropDownList
    Anchors = [akTop, akRight]
    Enabled = False
    TabOrder = 11
    OnChange = ControlChange
    Items.Strings = (
      'None'
      'Horizontal'
      'Vertical'
      'Horz. Center'
      'Vert. Center'
      'Diagonal '
      'Diagonal 2'
      'Diag. Center'
      'Diag. Center 2')
  end
  object edtRotate: TEdit
    Left = 88
    Top = 149
    Width = 50
    Height = 23
    Hint = 'Rotate the text'
    TabStop = False
    TabOrder = 6
    Text = '0'
    OnChange = ControlChange
  end
  object updRotate: TUpDown
    Left = 138
    Top = 149
    Width = 16
    Height = 21
    Hint = 'Rotate the text'
    Associate = edtRotate
    Min = -1000
    Max = 1000
    Increment = 5
    TabOrder = 7
  end
  object btnFillColor: TIEColorButton
    Left = 112
    Top = 212
    Width = 48
    Height = 25
    Hint = 'Specify the fill color for the text box'
    OnChange = ControlChange
    Enabled = False
    TabOrder = 12
  end
  object chkTextBox: TCheckBox
    Left = 12
    Top = 190
    Width = 148
    Height = 17
    Hint = 'Add a solid color background to the text'
    Caption = #53581#49828#53944' '#50808#54805#48149#49828' '#48372#44592
    TabOrder = 9
    OnClick = ControlChange
  end
  object edtBorderWidth: TEdit
    Left = 112
    Top = 245
    Width = 48
    Height = 23
    Hint = 
      'Specify the border size for the text box (set to 0 for no border' +
      ')'
    TabStop = False
    Enabled = False
    TabOrder = 13
    Text = '1'
    OnChange = ControlChange
  end
  object updBorderWidth: TUpDown
    Left = 160
    Top = 245
    Width = 16
    Height = 21
    Hint = 
      'Specify the border size for the text box (set to 0 for no border' +
      ')'
    Associate = edtBorderWidth
    Enabled = False
    Position = 1
    TabOrder = 14
  end
  object btnBorderColor: TIEColorButton
    Left = 285
    Top = 243
    Width = 48
    Height = 25
    Hint = 'Specify the color for the border'
    OnChange = ControlChange
    Anchors = [akTop, akRight]
    Enabled = False
    TabOrder = 15
    ExplicitLeft = 275
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 288
    Width = 413
    Height = 115
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #48120#47532#48372#44592
    TabOrder = 16
    ExplicitWidth = 403
    ExplicitHeight = 105
    DesignSize = (
      413
      115)
    object pnlBackground: TPanel
      Left = 11
      Top = 20
      Width = 391
      Height = 83
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      BorderWidth = 1
      Color = clBlack
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 381
      ExplicitHeight = 73
      object pnlPreview: TPanel
        Left = 1
        Top = 1
        Width = 389
        Height = 81
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 1
        Caption = 'TEST'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 379
        ExplicitHeight = 71
      end
    end
  end
end
