object fmCompanyRegistration: TfmCompanyRegistration
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44144#47000#52376' '#46321#47197#50836#52397
  ClientHeight = 375
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 324
    Height = 369
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel3: TPanel
      Left = 6
      Top = 5
      Width = 313
      Height = 183
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 9
        Width = 88
        Height = 13
        Caption = #44144#47000#52376'('#45800#52404')'#47749
      end
      object Label2: TLabel
        Left = 103
        Top = 49
        Width = 52
        Height = 13
        Caption = #51204#54868#48264#54840
      end
      object Label3: TLabel
        Left = 12
        Top = 49
        Width = 52
        Height = 13
        Caption = #45824#54364#51088#47749
      end
      object Label5: TLabel
        Left = 12
        Top = 130
        Width = 26
        Height = 13
        Caption = #51452#49548
      end
      object Label6: TLabel
        Left = 212
        Top = 9
        Width = 65
        Height = 13
        Caption = #44144#47000#52376#44396#48516
      end
      object Label7: TLabel
        Left = 12
        Top = 90
        Width = 75
        Height = 13
        Caption = #51648#50669'('#46020#49884')'#47749
      end
      object edtAddr: TEdit
        Left = 12
        Top = 145
        Width = 267
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 5
      end
      object edtChief_name: TEdit
        Left = 12
        Top = 64
        Width = 88
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 2
      end
      object edtComp_kind: TComboBox
        Left = 212
        Top = 24
        Width = 69
        Height = 22
        Style = csOwnerDrawFixed
        ImeName = 'Microsoft IME 2010'
        ItemIndex = 0
        TabOrder = 1
        Text = #50836#44032
        Items.Strings = (
          #50836#44032
          #53468#44428#46020
          #54764#49828
          #44592#53440)
      end
      object edtComp_name: TEdit
        Left = 12
        Top = 24
        Width = 198
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
      object edtTel_no: TEdit
        Left = 103
        Top = 64
        Width = 178
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 3
      end
      object cbLocation: TComboBox
        Left = 12
        Top = 105
        Width = 88
        Height = 22
        Style = csOwnerDrawFixed
        ImeName = 'Microsoft IME 2010'
        ItemIndex = 0
        Sorted = True
        TabOrder = 4
        Text = #44053#50896
        Items.Strings = (
          #44053#50896
          #44221#44592
          #44221#45224
          #44221#48513
          #44305#51452
          #45824#44396
          #45824#51204
          #48512#49328
          #49436#50872
          #49464#51333
          #50872#49328
          #51064#52380
          #51204#45224
          #51204#48513
          #51228#51452
          #52649#45224
          #52649#48513)
      end
      object pnlMessage: TPanel
        Left = 60
        Top = 116
        Width = 185
        Height = 50
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 6
        Visible = False
        object Label4: TLabel
          Left = 22
          Top = 11
          Width = 146
          Height = 26
          Caption = #47700#51068#51012' '#48372#45236#44256' '#51080#49845#45768#45796'. '#51104#49884#47564' '#44592#45796#47140' '#51452#49464#50836'.'
          WordWrap = True
        end
      end
    end
    object Panel4: TPanel
      Left = 6
      Top = 192
      Width = 313
      Height = 138
      TabOrder = 1
      object Label10: TLabel
        Left = 115
        Top = 52
        Width = 82
        Height = 13
        Caption = #54056#49828#50892#46300' '#54869#51064
      end
      object Label13: TLabel
        Left = 11
        Top = 91
        Width = 39
        Height = 13
        Caption = #51060#47700#51068
      end
      object Label14: TLabel
        Left = 11
        Top = 11
        Width = 52
        Height = 13
        Caption = #49324#50857#51088#47749
      end
      object Label15: TLabel
        Left = 115
        Top = 11
        Width = 55
        Height = 13
        Caption = #47196#44536#51064' ID'
      end
      object Label16: TLabel
        Left = 11
        Top = 52
        Width = 52
        Height = 13
        Caption = #54056#49828#50892#46300
      end
      object btnCheckUser: TBitBtn
        Left = 216
        Top = 25
        Width = 86
        Height = 25
        Caption = #51473#48373#54869#51064
        Enabled = False
        TabOrder = 2
        OnClick = btnCheckUserClick
      end
      object edtEmail: TEdit
        Left = 11
        Top = 107
        Width = 206
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 5
      end
      object edtLOGIN_ID: TEdit
        Left = 115
        Top = 27
        Width = 101
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
        OnChange = edtLOGIN_IDChange
      end
      object edtLOGIN_PASS: TEdit
        Left = 11
        Top = 66
        Width = 103
        Height = 21
        ImeName = 'Microsoft IME 2010'
        PasswordChar = '*'
        TabOrder = 3
      end
      object edtLOGIN_PASS2: TEdit
        Left = 115
        Top = 66
        Width = 101
        Height = 21
        ImeName = 'Microsoft IME 2010'
        PasswordChar = '*'
        TabOrder = 4
      end
      object edtUSER_NAME: TEdit
        Left = 11
        Top = 27
        Width = 103
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object btnSave: TBitBtn
      Left = 72
      Top = 336
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
      OnClick = btnSaveClick
    end
    object BitBtn2: TBitBtn
      Left = 148
      Top = 336
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 3
    end
  end
  object t_company: TUniTable
    TableName = 'COMPANY_GENARAL'
    Left = 168
    Top = 80
    object t_companyCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object t_companyCHIEF_NAME: TStringField
      FieldName = 'CHIEF_NAME'
    end
    object t_companyTEL_NO: TStringField
      FieldName = 'TEL_NO'
      Size = 50
    end
    object t_companyFAX_NO: TStringField
      FieldName = 'FAX_NO'
      Size = 50
    end
    object t_companyADDR: TStringField
      FieldName = 'ADDR'
      Size = 100
    end
    object t_companyLOCATION_AREA: TStringField
      FieldName = 'LOCATION_AREA'
    end
    object t_companyBUS_ID: TStringField
      FieldName = 'BUS_ID'
    end
    object t_companyBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object t_companyBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object t_companyBANK_OWNER: TStringField
      FieldName = 'BANK_OWNER'
    end
    object t_companyREMARK: TStringField
      FieldName = 'REMARK'
      Size = 200
    end
    object t_companyCOMP_KIND: TIntegerField
      FieldName = 'COMP_KIND'
    end
    object t_companyCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object t_companyAPPROVED: TSmallintField
      FieldName = 'APPROVED'
    end
    object t_companyREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
  end
  object d_company: TDataSource
    DataSet = t_company
    Left = 216
    Top = 80
  end
  object t_user: TUniTable
    TableName = 'COMPANY'
    Left = 240
    Top = 256
    object t_userID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object t_userUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 10
    end
    object t_userLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
      Size = 10
    end
    object t_userLOGIN_PASS: TStringField
      FieldName = 'LOGIN_PASS'
      Size = 10
    end
    object t_userLOGIN_PASS2: TStringField
      FieldName = 'LOGIN_PASS2'
      Size = 10
    end
    object t_userUSER_KIND: TIntegerField
      FieldName = 'USER_KIND'
    end
    object t_userAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object t_userREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object t_userCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Size = 17
    end
    object t_userREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
  end
  object d_user: TDataSource
    DataSet = t_user
    Left = 280
    Top = 256
  end
end
