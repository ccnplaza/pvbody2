object fmAnalyzerManager: TfmAnalyzerManager
  Left = 0
  Top = 0
  Caption = #48516#49437#44032#44288#47532
  ClientHeight = 587
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 968
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object chkFilter: TCheckBox
      Left = 14
      Top = 7
      Width = 51
      Height = 17
      Caption = #54596#53552
      TabOrder = 0
    end
    object chkGroup: TCheckBox
      Left = 72
      Top = 7
      Width = 51
      Height = 17
      Caption = #44536#47353
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 968
    Height = 558
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = d_analyzer
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView1REG_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'REG_DATE'
        Width = 93
      end
      object cxGrid1DBTableView1USER_NAME: TcxGridDBColumn
        Caption = #48516#49437#44032#47749
        DataBinding.FieldName = 'USER_NAME'
        Width = 84
      end
      object cxGrid1DBTableView1LOGIN_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_ID'
        Visible = False
      end
      object cxGrid1DBTableView1LOGIN_PASS: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS'
        Visible = False
      end
      object cxGrid1DBTableView1LOGIN_PASS2: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS2'
        Visible = False
      end
      object cxGrid1DBTableView1USER_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'USER_KIND'
        Visible = False
      end
      object cxGrid1DBTableView1APPROVED: TcxGridDBColumn
        DataBinding.FieldName = 'APPROVED'
        Visible = False
      end
      object cxGrid1DBTableView1COMP_ID: TcxGridDBColumn
        Caption = #44144#47000#52376'('#45800#52404')'#47749
        DataBinding.FieldName = 'COMP_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'COMP_ID'
        Properties.ListColumns = <
          item
            FieldName = 'COMP_NAME'
          end>
        Properties.ListSource = d_company_look
        Width = 178
      end
      object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
        Caption = #51060#47700#51068
        DataBinding.FieldName = 'EMAIL'
        Width = 218
      end
      object cxGrid1DBTableView1REMARK: TcxGridDBColumn
        Caption = #48708#44256#49324#54637
        DataBinding.FieldName = 'REMARK'
      end
      object cxGrid1DBTableView1CONFIRMED: TcxGridDBColumn
        DataBinding.FieldName = 'CONFIRMED'
        Visible = False
        Width = 91
      end
      object cxGrid1DBTableView1IS_ANALYZER: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ANALYZER'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object q_analyzer: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY'
      
        '  (ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KIND, ' +
        'APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_ANALYZ' +
        'ER)'
      'VALUES'
      
        '  (:ID, :USER_NAME, :LOGIN_ID, :LOGIN_PASS, :LOGIN_PASS2, :USER_' +
        'KIND, :APPROVED, :REG_DATE, :COMP_ID, :REMARK, :EMAIL, :CONFIRME' +
        'D, :IS_ANALYZER)')
    SQLDelete.Strings = (
      'DELETE FROM COMPANY'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE COMPANY'
      'SET'
      
        '  ID = :ID, USER_NAME = :USER_NAME, LOGIN_ID = :LOGIN_ID, LOGIN_' +
        'PASS = :LOGIN_PASS, LOGIN_PASS2 = :LOGIN_PASS2, USER_KIND = :USE' +
        'R_KIND, APPROVED = :APPROVED, REG_DATE = :REG_DATE, COMP_ID = :C' +
        'OMP_ID, REMARK = :REMARK, EMAIL = :EMAIL, CONFIRMED = :CONFIRMED' +
        ', IS_ANALYZER = :IS_ANALYZER'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KI' +
        'ND, APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_AN' +
        'ALYZER FROM COMPANY'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from company'
      'where IS_ANALYZER = 1')
    Left = 208
    Top = 456
    object q_analyzerID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_analyzerUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 10
    end
    object q_analyzerLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
      Required = True
      Size = 10
    end
    object q_analyzerLOGIN_PASS: TStringField
      FieldName = 'LOGIN_PASS'
      Required = True
      Size = 10
    end
    object q_analyzerLOGIN_PASS2: TStringField
      FieldName = 'LOGIN_PASS2'
      Size = 10
    end
    object q_analyzerUSER_KIND: TIntegerField
      FieldName = 'USER_KIND'
    end
    object q_analyzerAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object q_analyzerREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_analyzerCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object q_analyzerREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object q_analyzerEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object q_analyzerCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
    object q_analyzerIS_ANALYZER: TSmallintField
      FieldName = 'IS_ANALYZER'
    end
  end
  object d_analyzer: TDataSource
    DataSet = q_analyzer
    Left = 208
    Top = 504
  end
  object q_company_look: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY_GENARAL'
      
        '  (COMP_ID, CHIEF_NAME, TEL_NO, FAX_NO, ADDR, LOCATION_AREA, BUS' +
        '_ID, BANK_NAME, BANK_NO, BANK_OWNER, REMARK, COMP_KIND, COMP_NAM' +
        'E, APPROVED, REG_DATE, CONFIRMED)'
      'VALUES'
      
        '  (:COMP_ID, :CHIEF_NAME, :TEL_NO, :FAX_NO, :ADDR, :LOCATION_ARE' +
        'A, :BUS_ID, :BANK_NAME, :BANK_NO, :BANK_OWNER, :REMARK, :COMP_KI' +
        'ND, :COMP_NAME, :APPROVED, :REG_DATE, :CONFIRMED)')
    SQLDelete.Strings = (
      'DELETE FROM COMPANY_GENARAL'
      'WHERE'
      '  COMP_ID = :Old_COMP_ID')
    SQLUpdate.Strings = (
      'UPDATE COMPANY_GENARAL'
      'SET'
      
        '  COMP_ID = :COMP_ID, CHIEF_NAME = :CHIEF_NAME, TEL_NO = :TEL_NO' +
        ', FAX_NO = :FAX_NO, ADDR = :ADDR, LOCATION_AREA = :LOCATION_AREA' +
        ', BUS_ID = :BUS_ID, BANK_NAME = :BANK_NAME, BANK_NO = :BANK_NO, ' +
        'BANK_OWNER = :BANK_OWNER, REMARK = :REMARK, COMP_KIND = :COMP_KI' +
        'ND, COMP_NAME = :COMP_NAME, APPROVED = :APPROVED, REG_DATE = :RE' +
        'G_DATE, CONFIRMED = :CONFIRMED'
      'WHERE'
      '  COMP_ID = :Old_COMP_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY_GENARAL'
      'WHERE'
      'COMP_ID = :Old_COMP_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT COMP_ID, CHIEF_NAME, TEL_NO, FAX_NO, ADDR, LOCATION_AREA,' +
        ' BUS_ID, BANK_NAME, BANK_NO, BANK_OWNER, REMARK, COMP_KIND, COMP' +
        '_NAME, APPROVED, REG_DATE, CONFIRMED FROM COMPANY_GENARAL'
      'WHERE'
      '  COMP_ID = :COMP_ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from COMPANY_GENARAL')
    Left = 336
    Top = 456
    object q_company_lookCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object q_company_lookCHIEF_NAME: TStringField
      FieldName = 'CHIEF_NAME'
    end
    object q_company_lookTEL_NO: TStringField
      FieldName = 'TEL_NO'
      Size = 50
    end
    object q_company_lookFAX_NO: TStringField
      FieldName = 'FAX_NO'
      Size = 50
    end
    object q_company_lookADDR: TStringField
      FieldName = 'ADDR'
      Size = 100
    end
    object q_company_lookLOCATION_AREA: TStringField
      FieldName = 'LOCATION_AREA'
    end
    object q_company_lookBUS_ID: TStringField
      FieldName = 'BUS_ID'
    end
    object q_company_lookBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object q_company_lookBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_company_lookBANK_OWNER: TStringField
      FieldName = 'BANK_OWNER'
    end
    object q_company_lookREMARK: TStringField
      FieldName = 'REMARK'
      Size = 200
    end
    object q_company_lookCOMP_KIND: TIntegerField
      FieldName = 'COMP_KIND'
    end
    object q_company_lookCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object q_company_lookAPPROVED: TSmallintField
      FieldName = 'APPROVED'
    end
    object q_company_lookREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_company_lookCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
  end
  object d_company_look: TDataSource
    DataSet = q_company_look
    Left = 336
    Top = 504
  end
end
