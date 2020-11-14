object fmHistoryEdit: TfmHistoryEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44060#51064#44592#47197' '#46321#47197'/'#49688#51221
  ClientHeight = 208
  ClientWidth = 645
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 629
    Height = 193
    Caption = #44592#47197#49324#54637
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 52
      Height = 15
      Caption = #51089#49457#51068#51088':'
    end
    object Label2: TLabel
      Left = 24
      Top = 51
      Width = 52
      Height = 15
      Caption = #44592#47197#45236#50857':'
    end
    object Label3: TLabel
      Left = 88
      Top = 104
      Width = 361
      Height = 14
      Caption = #44592#47197#45236#50857#51060' '#47566#51012' '#46412#45716' '#49789#44172' '#51312#54924#47484' '#50948#54644#49436' '#50668#47084' '#44148#51004#47196' '#45208#45572#50612' '#51077#47141#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object edtDate: TcxDateEdit
      Left = 86
      Top = 21
      TabOrder = 0
      Width = 121
    end
    object mmoBigo: TMemo
      Left = 88
      Top = 48
      Width = 529
      Height = 49
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 232
      Top = 144
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 313
      Top = 144
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 3
    end
  end
end
