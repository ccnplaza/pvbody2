object fmRequestRegistration2: TfmRequestRegistration2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49324#50857#51088' '#46321#47197#49888#52397
  ClientHeight = 364
  ClientWidth = 413
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
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 407
    Height = 358
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 97
      Top = 5
      Width = 216
      Height = 33
      Caption = #49324#50857#51088' '#46321#47197' '#49888#52397
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 5
      Top = 42
      Width = 396
      Height = 311
      TabOrder = 1
      object Label10: TLabel
        Left = 138
        Top = 59
        Width = 82
        Height = 13
        Caption = #54056#49828#50892#46300' '#54869#51064
      end
      object Label2: TLabel
        Left = 11
        Top = 139
        Width = 88
        Height = 13
        Caption = #51452#49548#51648'('#51648#50669#47749')'
      end
      object Label5: TLabel
        Left = 11
        Top = 98
        Width = 39
        Height = 13
        Caption = #51060#47700#51068
      end
      object Label7: TLabel
        Left = 11
        Top = 18
        Width = 52
        Height = 13
        Caption = #49324#50857#51088#47749
      end
      object Label8: TLabel
        Left = 138
        Top = 18
        Width = 92
        Height = 13
        Caption = #47196#44536#51064' ID(10'#51088')'
      end
      object Label9: TLabel
        Left = 11
        Top = 59
        Width = 89
        Height = 13
        Caption = #54056#49828#50892#46300'(10'#51088')'
      end
      object Label11: TLabel
        Left = 30
        Top = 198
        Width = 310
        Height = 13
        Caption = #46321#47197#51012' '#51200#51109#54620' '#54980#50640' '#49324#50857#51088#51032' '#49548#49549#49468#53552#47484' '#49444#51221#54616#49464#50836'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object BitBtn2: TBitBtn
        Left = 194
        Top = 245
        Width = 75
        Height = 25
        Caption = #52712#49548
        Kind = bkCancel
        TabOrder = 8
      end
      object btnCheckUser: TBitBtn
        Left = 265
        Top = 32
        Width = 121
        Height = 25
        Caption = #51473#48373#54869#51064
        Enabled = False
        TabOrder = 2
        OnClick = btnCheckUserClick
      end
      object btnSave: TBitBtn
        Left = 118
        Top = 245
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
        TabOrder = 7
        OnClick = btnSaveClick
      end
      object edtBigo: TEdit
        Left = 11
        Top = 155
        Width = 121
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 6
      end
      object edtEmail: TEdit
        Left = 11
        Top = 114
        Width = 248
        Height = 21
        ImeMode = imSAlpha
        ImeName = 'Microsoft IME 2010'
        TabOrder = 5
      end
      object edtLOGIN_ID: TEdit
        Left = 138
        Top = 34
        Width = 121
        Height = 21
        ImeMode = imSAlpha
        ImeName = 'Microsoft IME 2010'
        MaxLength = 10
        TabOrder = 1
        OnChange = edtLOGIN_IDChange
      end
      object edtLOGIN_PASS: TEdit
        Left = 11
        Top = 73
        Width = 121
        Height = 21
        ImeMode = imSAlpha
        ImeName = 'Microsoft IME 2010'
        MaxLength = 10
        PasswordChar = '*'
        TabOrder = 3
      end
      object edtLOGIN_PASS2: TEdit
        Left = 138
        Top = 73
        Width = 121
        Height = 21
        ImeMode = imSAlpha
        ImeName = 'Microsoft IME 2010'
        MaxLength = 10
        PasswordChar = '*'
        TabOrder = 4
      end
      object edtUSER_NAME: TEdit
        Left = 11
        Top = 34
        Width = 121
        Height = 21
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
  end
  object COMPANY_INS: TUniStoredProc
    StoredProcName = 'COMPANY_INS'
    Connection = fmUserAssign.UniConnection1
    Left = 320
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'USER_NAME'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'LOGIN_ID'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'LOGIN_PASS'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'LOGIN_PASS2'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'APPROVED'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'REMARK'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'SYSTEM_SERIAL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COMP_NAME'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'COMPANY_INS'
  end
end
