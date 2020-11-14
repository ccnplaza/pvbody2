object fmAttendanceIn: TfmAttendanceIn
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #52636#49437#46321#47197
  ClientHeight = 229
  ClientWidth = 209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 203
    Height = 223
    Align = alClient
    TabOrder = 0
    object Label8: TLabel
      Left = 131
      Top = 112
      Width = 24
      Height = 15
      Caption = #49884#44036
    end
    object Label1: TLabel
      Left = 11
      Top = 112
      Width = 48
      Height = 15
      Caption = #52636#49437#51068#51088
    end
    object lblName: TLabel
      Left = 13
      Top = 59
      Width = 36
      Height = 15
      Caption = #54924#50896#47749
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #45208#45588#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTel: TLabel
      Left = 13
      Top = 81
      Width = 48
      Height = 15
      Caption = #51204#54868#48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #45208#45588#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 98
      Top = 164
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 1
    end
    object btnSave: TBitBtn
      Left = 22
      Top = 164
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
      TabOrder = 0
    end
    object edtAttendTime: TEdit
      Left = 131
      Top = 129
      Width = 54
      Height = 23
      ImeName = 'Microsoft IME 2010'
      MaxLength = 10
      TabOrder = 2
    end
    object edtDate: TcxDateEdit
      Left = 11
      Top = 129
      TabOrder = 3
      Width = 110
    end
    object btnSearch: TBitBtn
      Left = 13
      Top = 17
      Width = 172
      Height = 25
      Caption = #54924#50896#44160#49353#51012' '#54616#49464#50836
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADA0000DADA0000DDAD0F00ADAD0F00AADA0F000A000F00DDAD0000000F0
        000A44400F0080F0000D4FFF0000800000DA4F770F0000F000AD4FFFF0000000
        0ADA4F77F0F0770F0DAD4FFFF000FF000ADA4F77F77F77F4ADAD4FFFFFFFFFF4
        DADA444444444444ADAD484484484484DADA444444444444ADAD}
      TabOrder = 4
      OnClick = btnSearchClick
    end
    object edtCustomerID: TEdit
      Left = 24
      Top = 192
      Width = 149
      Height = 23
      ImeName = 'Microsoft IME 2010'
      TabOrder = 5
      Visible = False
    end
  end
end
