object ShapeProps: TShapeProps
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #46020#54805#49549#49457
  ClientHeight = 251
  ClientWidth = 387
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
    387
    251)
  PixelsPerInch = 96
  TextHeight = 15
  object lblSelectedLayer: TLabel
    Left = 12
    Top = 12
    Width = 104
    Height = 15
    Caption = #51060#48120#51648#50640' '#46020#54805' '#52628#44032
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #45208#45588#44256#46357
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lblShape: TLabel
    Left = 12
    Top = 43
    Width = 28
    Height = 15
    Caption = #46020#54805':'
  end
  object lblBorderWidth: TLabel
    Left = 194
    Top = 106
    Width = 28
    Height = 15
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #46160#44760':'
    Enabled = False
  end
  object lblGradient: TLabel
    Left = 164
    Top = 141
    Width = 60
    Height = 15
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #44536#46972#46356#50616#53944
    Enabled = False
  end
  object lblRotate: TLabel
    Left = 50
    Top = 173
    Width = 28
    Height = 15
    Caption = #54924#51204':'
  end
  object cmbShape: TComboBox
    Left = 55
    Top = 43
    Width = 320
    Height = 46
    Hint = 'Select shape to add'
    Style = csOwnerDrawFixed
    Anchors = [akLeft, akTop, akRight]
    ItemHeight = 40
    TabOrder = 0
    OnChange = ControlChange
    OnDrawItem = cmbShapeDrawItem
    Items.Strings = (
      'Filled at runtime...')
    ExplicitWidth = 310
  end
  object chkBorder: TCheckBox
    Left = 23
    Top = 104
    Width = 59
    Height = 17
    Hint = 'Add a border to the shape'
    Caption = #50780#54805#49353
    TabOrder = 1
    OnClick = ControlChange
  end
  object btnBorderColor: TIEColorButton
    Left = 96
    Top = 100
    Width = 48
    Height = 25
    Hint = 'Select border color'
    OnChange = ControlChange
    Enabled = False
    TabOrder = 2
  end
  object edtBorderWidth: TEdit
    Left = 228
    Top = 102
    Width = 48
    Height = 23
    Hint = 'Specify width of shape border'
    TabStop = False
    Anchors = [akTop, akRight]
    Enabled = False
    TabOrder = 3
    Text = '1'
    OnChange = ControlChange
  end
  object updBorderWidth: TUpDown
    Left = 276
    Top = 102
    Width = 16
    Height = 21
    Hint = 'Specify width of shape border'
    Anchors = [akTop, akRight]
    Associate = edtBorderWidth
    Enabled = False
    Min = 1
    Position = 1
    TabOrder = 4
    ExplicitLeft = 266
  end
  object chkFill: TCheckBox
    Left = 23
    Top = 139
    Width = 59
    Height = 17
    Hint = 'Fill the shape with color'
    Caption = #52292#50880#49353
    TabOrder = 5
    OnClick = ControlChange
  end
  object btnFillColor: TIEColorButton
    Left = 96
    Top = 135
    Width = 48
    Height = 25
    Hint = 'Select fill color'
    OnChange = ControlChange
    Enabled = False
    TabOrder = 6
  end
  object cmbGradient: TComboBox
    Left = 228
    Top = 137
    Width = 94
    Height = 23
    Hint = 'Choose a gradient style'
    Style = csDropDownList
    Anchors = [akTop, akRight]
    Enabled = False
    TabOrder = 7
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
  object btnFillColor2: TIEColorButton
    Left = 328
    Top = 135
    Width = 47
    Height = 25
    Hint = 'Select the secondary color'
    OnChange = ControlChange
    Anchors = [akTop, akRight]
    Enabled = False
    TabOrder = 8
    ExplicitLeft = 318
  end
  object edtRotate: TEdit
    Left = 96
    Top = 170
    Width = 50
    Height = 23
    Hint = 'Specify rotation for the shape'
    TabStop = False
    TabOrder = 9
    Text = '0'
    OnChange = ControlChange
  end
  object updRotate: TUpDown
    Left = 146
    Top = 170
    Width = 16
    Height = 21
    Hint = 'Specify rotation for the shape'
    Associate = edtRotate
    Min = -1000
    Max = 1000
    Increment = 5
    TabOrder = 10
  end
  object btnOK: TButton
    Left = 193
    Top = 214
    Width = 88
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #54869#51064
    ModalResult = 1
    TabOrder = 11
    ExplicitLeft = 183
    ExplicitTop = 204
  end
  object btnCancel: TButton
    Left = 287
    Top = 214
    Width = 88
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 12
    ExplicitLeft = 277
    ExplicitTop = 204
  end
end
