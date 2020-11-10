object LineProps: TLineProps
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #46972#51064#49549#49457
  ClientHeight = 233
  ClientWidth = 325
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
    325
    233)
  PixelsPerInch = 96
  TextHeight = 15
  object lblHeading: TLabel
    Left = 12
    Top = 12
    Width = 116
    Height = 17
    Caption = #51060#48120#51648#50640' '#46972#51064#52628#44032
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #45208#45588#44256#46357
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lblRotate: TLabel
    Left = 206
    Top = 46
    Width = 44
    Height = 15
    Anchors = [akTop, akRight]
    Caption = #46972#51064' '#49353':'
    ExplicitLeft = 196
  end
  object lblBorderWidth: TLabel
    Left = 16
    Top = 46
    Width = 52
    Height = 15
    Alignment = taRightJustify
    Caption = #46972#51064#46160#44760':'
  end
  object lblStartShape: TLabel
    Left = 16
    Top = 89
    Width = 52
    Height = 15
    Caption = #49884#51089#47784#50577':'
  end
  object lblEndShape: TLabel
    Left = 24
    Top = 119
    Width = 44
    Height = 15
    Caption = #45149' '#47784#50577':'
  end
  object lblShapeSize: TLabel
    Left = 16
    Top = 151
    Width = 52
    Height = 15
    Caption = #47784#50577#53356#44592':'
  end
  object lblShapeColor: TLabel
    Left = 206
    Top = 151
    Width = 44
    Height = 15
    Anchors = [akTop, akRight]
    Caption = #47784#50577' '#49353':'
    ExplicitLeft = 196
  end
  object btnOK: TButton
    Left = 129
    Top = 196
    Width = 88
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #54869#51064
    ModalResult = 1
    TabOrder = 8
    ExplicitLeft = 119
    ExplicitTop = 186
  end
  object btnCancel: TButton
    Left = 223
    Top = 196
    Width = 88
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 9
    ExplicitLeft = 213
    ExplicitTop = 186
  end
  object btnBorderColor: TIEColorButton
    Left = 263
    Top = 39
    Width = 48
    Height = 25
    Hint = 'Specify color of line'
    Anchors = [akTop, akRight]
    TabOrder = 2
    ExplicitLeft = 253
  end
  object edtBorderWidth: TEdit
    Left = 81
    Top = 42
    Width = 48
    Height = 23
    Hint = 'Specify width of line'
    TabStop = False
    TabOrder = 0
    Text = '2'
  end
  object updBorderWidth: TUpDown
    Left = 129
    Top = 42
    Width = 16
    Height = 21
    Hint = 'Specify width of line'
    Associate = edtBorderWidth
    Min = 1
    Position = 2
    TabOrder = 1
  end
  object cmbStartShape: TComboBox
    Left = 81
    Top = 84
    Width = 230
    Height = 24
    Hint = 'Select shape for start of line'
    Style = csOwnerDrawFixed
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 18
    TabOrder = 3
    OnChange = ControlChange
    OnDrawItem = cmbEndShapeDrawItem
    Items.Strings = (
      'None'
      'Arrow'
      'Circle'
      'Diamond'
      'Arrow 2'
      'Reverse Arrow'
      'Bar'
      'Dot')
    ExplicitWidth = 220
  end
  object cmbEndShape: TComboBox
    Left = 81
    Top = 114
    Width = 230
    Height = 24
    Hint = 'Select shape for start of line'
    Style = csOwnerDrawFixed
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 18
    TabOrder = 4
    OnChange = ControlChange
    OnDrawItem = cmbEndShapeDrawItem
    Items.Strings = (
      'None'
      'Arrow'
      'Circle'
      'Diamond'
      'Arrow 2'
      'Reverse Arrow'
      'Bar'
      'Dot')
    ExplicitWidth = 220
  end
  object edtShapeSize: TEdit
    Left = 81
    Top = 147
    Width = 48
    Height = 23
    Hint = 'Select size of line end shape'
    TabStop = False
    TabOrder = 5
    Text = '1'
  end
  object updShapeSize: TUpDown
    Left = 129
    Top = 147
    Width = 16
    Height = 21
    Associate = edtShapeSize
    Min = 1
    Position = 1
    TabOrder = 6
  end
  object btnShapeColor: TIEColorButton
    Left = 263
    Top = 145
    Width = 48
    Height = 25
    Hint = 'Specify color of shape fill'
    Anchors = [akTop, akRight]
    TabOrder = 7
    ExplicitLeft = 253
  end
end
