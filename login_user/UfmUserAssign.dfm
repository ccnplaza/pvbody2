object fmUserAssign: TfmUserAssign
  Left = 0
  Top = 0
  Caption = #49324#50857#51088#44288#47532
  ClientHeight = 609
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1012
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 576
      Top = 8
      Width = 220
      Height = 15
      Caption = #49888#44508#49324#50857#51088' '#46321#47197#51008' '#47196#44536#51064#52285#50640#49436' '#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object btnDeleteUser: TBitBtn
      Left = 204
      Top = 1
      Width = 65
      Height = 25
      Caption = #49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
        0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
        BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
        DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
      TabOrder = 0
      OnClick = btnDeleteUserClick
    end
    object BitBtn1: TBitBtn
      Left = 5
      Top = 1
      Width = 91
      Height = 25
      Caption = #49352#47196#44256#52840
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADAD7444447DADADDAD444444444DADAAD444DADAD444DADD744DADADAD4
        47DAA44DADA22DA744ADD44ADA2222DA44DAA44DAD2222AD44ADD44ADAD22ADA
        DADAA447ADADADAD44ADD744DA4ADADADADAAD444D44ADA47DADDAD444444ADA
        DADAADAD74444DADADADDADADA44DADADADAADADAD4DADADADAD}
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object btnChangeAssign: TBitBtn
      Left = 433
      Top = 1
      Width = 119
      Height = 25
      Caption = #49324#50857#51088' '#44428#54620#48320#44221
      TabOrder = 2
      OnClick = btnChangeAssignClick
    end
    object btnCenter: TBitBtn
      Left = 326
      Top = 1
      Width = 102
      Height = 25
      Caption = #49548#49549#49468#53552#48320#44221
      TabOrder = 3
      OnClick = btnCenterClick
    end
    object btnAdd: TBitBtn
      Left = 139
      Top = 1
      Width = 65
      Height = 25
      Caption = #46321#47197
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009969
        4E008346240080401C007D3A15007A350F0078310B0078310B0078310B007831
        0B0078310B0078310B0078310B0078310B0078310B00FFFFFF00FFFFFF009B6C
        5200FFFFFF00FDFBFA00CDCDD2001B59AD00044CAE0004469F0004409100023A
        870001367E00B8A49D00E1C0AF00DEBBA90078310B00FFFFFF00FFFFFF009F71
        5700FFFFFF00FFFFFF001558B700387BD5004A8AE4004485DE0004459B001A6E
        DE000C4EA70001306F00E4C7B900E1C1B10078310B00FFFFFF00FFFFFF00A376
        5D00FFFFFF00FFFFFF00195FBD0081ABE4006097E50004469E001A6FE2000450
        B7001A6DE000124FA200E8CFC300E5C8BA0078310B00FFFFFF00FFFFFF00A77D
        6400FFFFFF00FFFFFF00B5C0CF001455AD001B5DB500C8D5D900F9FAF2000652
        B90007428E00C4BAB800ECD8CE00E9D1C50078310B00FFFFFF00FFFFFF00AC82
        6B00FFFFFF00FFFFFF00F5F5F500CDD0D30062676D005556570062626200074C
        A700B3B4BA00F4E8E300F1E1D900EDDAD00078310B00FFFFFF00FFFFFF00B189
        7300FFFFFF00FFFFFF00C4C4C40001010100C1C1C100A2A2A200858585005656
        56009D9B9A00F8F0ED00F5EAE400F1E3DB0078310B00FFFFFF00FFFFFF00B690
        7A00FFFFFF00FFFFFF00393939002D2D2D00D6D6D600C1C1C100A2A2A2008585
        850065656500FBF7F600F9F2EE00F6EBE60078310B00FFFFFF00FFFFFF00BB96
        8100FFFFFF00FFFFFF00545454004A4A4A00B4B4B400D5D5D500C1C1C100A2A2
        A20076767600FEFDFC00FCF8F700F9F3F00078310B00FFFFFF00FFFFFF00BF9D
        8700FFFFFF00FFFFFF007F7F7F00646464005E5E5E006E6E6E0059595900C1C1
        C10084848400FFFFFF00FEFEFD00FCF9F8007A350F00FFFFFF00FFFFFF00C3A2
        8D00FFFFFF00FFFFFF00C5C5C5006D6D6D0082828200A1A1A1008E8E8E005656
        5600ADADAD00FFFFFF00FFFFFF00FFFEFE007D3A1500FFFFFF00FFFFFF00C7A7
        9200FFFFFF00FFFFFF00F2F2F200B8B8B8008D8D8D008888880085858500B4B4
        B400F1F1F100FFFFFF00FFFFFF00FFFFFF0080401C00FFFFFF00FFFFFF00C9AA
        9600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0083462400FFFFFF00FFFFFF00C9AA
        9600C9AA9600C7A79200C3A28D00BF9D8700BB968100B6907A00B1897300AC82
        6B00A77D6400A3765D009F7157009B6C520099694E00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 4
    end
  end
  object cxGrid2: TcxGrid
    Left = 0
    Top = 27
    Width = 1012
    Height = 582
    Align = alClient
    BevelKind = bkFlat
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridUser: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = d_login_user
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridUserID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridUserUSER_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'USER_NAME'
        Width = 67
      end
      object gridUserCOMP_NAME: TcxGridDBColumn
        Caption = #49345#54840
        DataBinding.FieldName = 'COMP_NAME'
        Visible = False
        Width = 154
      end
      object gridUserLOGIN_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_ID'
        Width = 96
      end
      object gridUserLOGIN_PASS: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        Width = 92
      end
      object gridUserCENTER_ID: TcxGridDBColumn
        Caption = #49468#53552#47749
        DataBinding.FieldName = 'CENTER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 62
      end
      object gridUserUSER_KIND: TcxGridDBColumn
        Caption = #49324#50857#44428#54620
        DataBinding.FieldName = 'USER_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #49324#50857#51088
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #49468#53552#44288#47532#51088
            Value = 1
          end
          item
            Description = #49884#49828#53596
            Value = 2
          end
          item
            Description = #51204#52404#44288#47532#51088
            Value = 3
          end>
        Width = 71
      end
      object gridUserAPPROVED: TcxGridDBColumn
        Caption = #49324#50857#49849#51064
        DataBinding.FieldName = 'APPROVED'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #48708#49849#51064
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #49849#51064
            Value = 1
          end>
        Width = 66
      end
      object gridUserLOGIN_PASS2: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS2'
        Visible = False
      end
      object gridUserCOMP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'COMP_ID'
        Visible = False
      end
      object gridUserIS_ANALYZER: TcxGridDBColumn
        Caption = #48516#49437#44032
        DataBinding.FieldName = 'IS_ANALYZER'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #48516#49437#44032
            Value = 1
          end>
        Visible = False
        Width = 50
      end
      object gridUserEMAIL: TcxGridDBColumn
        Caption = #51060#47700#51068
        DataBinding.FieldName = 'EMAIL'
        Width = 173
      end
      object gridUserREMARK: TcxGridDBColumn
        Caption = #48708#44256
        DataBinding.FieldName = 'REMARK'
        Visible = False
        Width = 250
      end
      object gridUserCONFIRMED: TcxGridDBColumn
        DataBinding.FieldName = 'CONFIRMED'
        Visible = False
      end
      object gridUserPAY_WAY: TcxGridDBColumn
        Caption = #44208#51116#48169#49885
        DataBinding.FieldName = 'PAY_WAY'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = #44396#47588
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #54624#48512
            Value = 1
          end>
        Visible = False
        Width = 63
      end
      object gridUserSYSTEM_SERIAL: TcxGridDBColumn
        Caption = #49884#49828#53596#48264#54840
        DataBinding.FieldName = 'SYSTEM_SERIAL'
        Visible = False
        VisibleForCustomization = False
        Width = 153
      end
      object gridUserACTIVATION_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'ACTIVATION_CODE'
        Visible = False
        Width = 228
      end
      object gridUserREG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATE'
        Width = 82
      end
      object gridUserACTIVATION_DATE: TcxGridDBColumn
        Caption = #52572#51333#47196#44536#51064
        DataBinding.FieldName = 'ACTIVATION_DATE'
        Width = 174
      end
      object gridUserACTIVATION_CNT: TcxGridDBColumn
        Caption = #54943#49688
        DataBinding.FieldName = 'ACTIVATION_CNT'
        Width = 51
      end
      object gridUserUSER_VERSION: TcxGridDBColumn
        Caption = #49324#50857#48260#51204
        DataBinding.FieldName = 'USER_VERSION'
        Width = 85
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gridUser
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'D:\fb_data\PVBodyYoga\YOGABODY_USER.FDB'
    Username = 'sysdba'
    Server = '210.122.36.244'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 152
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 64
    Top = 104
  end
  object q_login_user: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY'
      
        '  (ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KIND, ' +
        'APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_ANALYZ' +
        'ER, PAY_WAY, SYSTEM_SERIAL, ACTIVATION_CODE, ACTIVATION_DATE, AC' +
        'TIVATION_CNT, COMP_NAME, USER_VERSION)'
      'VALUES'
      
        '  (:ID, :USER_NAME, :LOGIN_ID, :LOGIN_PASS, :LOGIN_PASS2, :USER_' +
        'KIND, :APPROVED, :REG_DATE, :COMP_ID, :REMARK, :EMAIL, :CONFIRME' +
        'D, :IS_ANALYZER, :PAY_WAY, :SYSTEM_SERIAL, :ACTIVATION_CODE, :AC' +
        'TIVATION_DATE, :ACTIVATION_CNT, :COMP_NAME, :USER_VERSION)')
    SQLDelete.Strings = (
      'DELETE FROM COMPANY'
      'WHERE'
      '  LOGIN_ID = :Old_LOGIN_ID')
    SQLUpdate.Strings = (
      'UPDATE COMPANY'
      'SET'
      
        '  ID = :ID, USER_NAME = :USER_NAME, LOGIN_ID = :LOGIN_ID, LOGIN_' +
        'PASS = :LOGIN_PASS, LOGIN_PASS2 = :LOGIN_PASS2, USER_KIND = :USE' +
        'R_KIND, APPROVED = :APPROVED, REG_DATE = :REG_DATE, COMP_ID = :C' +
        'OMP_ID, REMARK = :REMARK, EMAIL = :EMAIL, CONFIRMED = :CONFIRMED' +
        ', IS_ANALYZER = :IS_ANALYZER, PAY_WAY = :PAY_WAY, SYSTEM_SERIAL ' +
        '= :SYSTEM_SERIAL, ACTIVATION_CODE = :ACTIVATION_CODE, ACTIVATION' +
        '_DATE = :ACTIVATION_DATE, ACTIVATION_CNT = :ACTIVATION_CNT, COMP' +
        '_NAME = :COMP_NAME, USER_VERSION = :USER_VERSION, CENTER_ID = :C' +
        'ENTER_ID'
      'WHERE'
      '  LOGIN_ID = :Old_LOGIN_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY'
      'WHERE'
      'LOGIN_ID = :Old_LOGIN_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KI' +
        'ND, APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_AN' +
        'ALYZER, PAY_WAY, SYSTEM_SERIAL, ACTIVATION_CODE, ACTIVATION_DATE' +
        ', ACTIVATION_CNT, COMP_NAME, USER_VERSION FROM COMPANY'
      'WHERE'
      '  LOGIN_ID = :LOGIN_ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM COMPANY'
      ''
      ') q')
    Connection = UniConnection1
    SQL.Strings = (
      'select * from company'
      'where comp_id = :comp_id')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 96
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'comp_id'
        ParamType = ptInput
      end>
    object q_login_userID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_login_userUSER_NAME: TStringField
      DisplayLabel = #49457#47749
      FieldName = 'USER_NAME'
      Size = 10
    end
    object q_login_userLOGIN_ID: TStringField
      DisplayLabel = #47196#44536#51064'ID'
      FieldName = 'LOGIN_ID'
      Size = 10
    end
    object q_login_userLOGIN_PASS: TStringField
      DisplayLabel = #48708#48128#48264#54840
      FieldName = 'LOGIN_PASS'
      Size = 10
    end
    object q_login_userLOGIN_PASS2: TStringField
      DisplayLabel = #48708#48128#48264#54840'2'
      FieldName = 'LOGIN_PASS2'
      Size = 10
    end
    object q_login_userUSER_KIND: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49324#50857#51088#44396#48516
      FieldName = 'USER_KIND'
    end
    object q_login_userAPPROVED: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49324#50857#44428#54620
      FieldName = 'APPROVED'
    end
    object q_login_userREG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'REG_DATE'
    end
    object q_login_userCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Size = 17
    end
    object q_login_userREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object q_login_userEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object q_login_userCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
    object q_login_userIS_ANALYZER: TSmallintField
      FieldName = 'IS_ANALYZER'
    end
    object q_login_userPAY_WAY: TSmallintField
      FieldName = 'PAY_WAY'
    end
    object q_login_userSYSTEM_SERIAL: TStringField
      FieldName = 'SYSTEM_SERIAL'
      Size = 50
    end
    object q_login_userACTIVATION_CODE: TStringField
      FieldName = 'ACTIVATION_CODE'
      Size = 50
    end
    object q_login_userACTIVATION_CNT: TSmallintField
      Alignment = taCenter
      FieldName = 'ACTIVATION_CNT'
    end
    object q_login_userACTIVATION_DATE: TDateTimeField
      FieldName = 'ACTIVATION_DATE'
    end
    object q_login_userCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 50
    end
    object q_login_userUSER_VERSION: TStringField
      FieldName = 'USER_VERSION'
    end
    object q_login_userCAN_UPDATE: TSmallintField
      FieldName = 'CAN_UPDATE'
    end
    object q_login_userCENTER_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'CENTER_ID'
    end
  end
  object d_login_user: TDataSource
    DataSet = q_login_user
    Left = 168
    Top = 360
  end
end
