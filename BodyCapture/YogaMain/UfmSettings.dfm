object fmSettings: TfmSettings
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49444#51221
  ClientHeight = 362
  ClientWidth = 530
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
    Left = 8
    Top = 8
    Width = 505
    Height = 177
    Caption = #52636#47141#49444#51221
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 30
      Height = 13
      Caption = #49345#54840':'
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 37
      Height = 13
      Caption = #51204#54868'1:'
    end
    object Label3: TLabel
      Left = 24
      Top = 96
      Width = 37
      Height = 13
      Caption = #51452#49548'1:'
    end
    object Label4: TLabel
      Left = 24
      Top = 127
      Width = 37
      Height = 13
      Caption = #51452#49548'2:'
    end
    object Label5: TLabel
      Left = 240
      Top = 64
      Width = 37
      Height = 13
      Caption = #51204#54868'2:'
    end
    object edtCompname: TEdit
      Left = 72
      Top = 29
      Width = 217
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
    object edtTel1: TEdit
      Left = 72
      Top = 61
      Width = 137
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
    object edtTel2: TEdit
      Left = 283
      Top = 61
      Width = 137
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 2
    end
    object edtAdd1: TEdit
      Left = 72
      Top = 93
      Width = 409
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 3
    end
    object edtAdd2: TEdit
      Left = 72
      Top = 124
      Width = 409
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 4
    end
  end
  object btnSave: TBitBtn
    Left = 175
    Top = 312
    Width = 75
    Height = 25
    Caption = #51200#51109
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnSaveClick
  end
  object btnCancel: TBitBtn
    Left = 256
    Top = 312
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 191
    Width = 505
    Height = 90
    Caption = #48516#49437#52285' '#51060#48120#51648' '#53356#44592
    TabOrder = 3
    object Label6: TLabel
      Left = 24
      Top = 24
      Width = 121
      Height = 13
      Caption = #51088#49464#51312#54924' '#51060#48120#51648#53356#44592
    end
    object Label7: TLabel
      Left = 278
      Top = 24
      Width = 121
      Height = 13
      Caption = #48708#44368#48516#49437' '#51060#48120#51648#53356#44592
    end
    object TrackBar1: TTrackBar
      Left = 39
      Top = 52
      Width = 150
      Height = 19
      Max = 800
      Min = 200
      Position = 200
      ShowSelRange = False
      TabOrder = 0
      TabStop = False
      ThumbLength = 16
      TickStyle = tsNone
      OnChange = TrackBar1Change
    end
    object edtTrackBar: TcxSpinEdit
      Left = 189
      Top = 51
      Properties.ImmediatePost = True
      Properties.MaxValue = 800.000000000000000000
      Properties.MinValue = 200.000000000000000000
      Properties.UseCtrlIncrement = True
      Properties.OnEditValueChanged = edtTrackBarPropertiesEditValueChanged
      TabOrder = 1
      Value = 200
      Width = 51
    end
    object TrackBar2: TTrackBar
      Left = 271
      Top = 52
      Width = 150
      Height = 19
      Max = 800
      Min = 200
      Position = 200
      ShowSelRange = False
      TabOrder = 2
      TabStop = False
      ThumbLength = 16
      TickStyle = tsNone
      OnChange = TrackBar2Change
    end
    object edtTrackBar2: TcxSpinEdit
      Left = 421
      Top = 51
      Properties.ImmediatePost = True
      Properties.MaxValue = 800.000000000000000000
      Properties.MinValue = 200.000000000000000000
      Properties.UseCtrlIncrement = True
      Properties.OnEditValueChanged = edtTrackBar2PropertiesEditValueChanged
      TabOrder = 3
      Value = 200
      Width = 51
    end
  end
end
