object frmImageEnVect: TfrmImageEnVect
  Left = 0
  Top = 0
  Width = 205
  Height = 647
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object imgPanel1: TPanel
    Left = 0
    Top = 0
    Width = 205
    Height = 647
    Align = alLeft
    Caption = 'imgPanel1'
    TabOrder = 0
    ExplicitHeight = 595
    object pnlTop1: TPanel
      Left = 1
      Top = 1
      Width = 203
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object CheckBox1: TCheckBox
        Left = 8
        Top = 4
        Width = 48
        Height = 17
        Caption = #49440#53469
        TabOrder = 0
      end
    end
    object ImageEnVect1: TImageEnVect
      Tag = 1
      Left = 1
      Top = 27
      Width = 203
      Height = 619
      Cursor = crHandPoint
      Hint = 'Image1'
      ParentCustomHint = False
      Background = clBlack
      ParentCtl3D = False
      MouseInteract = [miZoom, miScroll]
      AutoFit = True
      AutoStretch = True
      AutoShrink = True
      EnableInteractionHints = True
      Align = alClient
      ParentShowHint = False
      ShowHint = False
      Visible = False
      TabOrder = 1
      FloatPrecision = 2
      ExplicitHeight = 567
    end
  end
end
