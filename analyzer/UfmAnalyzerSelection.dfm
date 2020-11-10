object fmAnalyzerSelection: TfmAnalyzerSelection
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #48516#49437#44032' '#49440#53469
  ClientHeight = 429
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 558
    Height = 30
    Align = alTop
    TabOrder = 0
    object btnSelect: TBitBtn
      Left = 216
      Top = 2
      Width = 75
      Height = 25
      Caption = #49440#53469
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 292
      Top = 2
      Width = 75
      Height = 25
      Caption = #52712#49548
      DoubleBuffered = True
      Kind = bkCancel
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 558
    Height = 399
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridAnalyzer: TcxGridDBTableView
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridAnalyzerID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridAnalyzerUSER_NAME: TcxGridDBColumn
        Caption = #48516#49437#44032#47749
        DataBinding.FieldName = 'USER_NAME'
        Width = 82
      end
      object gridAnalyzerLOGIN_ID: TcxGridDBColumn
        Caption = #47196#44536#51064'ID'
        DataBinding.FieldName = 'LOGIN_ID'
        Width = 71
      end
      object gridAnalyzerLOGIN_PASS: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS'
        Visible = False
      end
      object gridAnalyzerLOGIN_PASS2: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS2'
        Visible = False
      end
      object gridAnalyzerUSER_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'USER_KIND'
        Visible = False
      end
      object gridAnalyzerAPPROVED: TcxGridDBColumn
        DataBinding.FieldName = 'APPROVED'
        Visible = False
      end
      object gridAnalyzerREG_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'REG_DATE'
        Width = 97
      end
      object gridAnalyzerCOMP_ID: TcxGridDBColumn
        Caption = #44144#47000#52376#47749
        DataBinding.FieldName = 'COMP_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'COMP_ID'
        Properties.ListColumns = <
          item
            FieldName = 'COMP_NAME'
          end>
        Properties.ListSource = d_company_look
        Width = 140
      end
      object gridAnalyzerREMARK: TcxGridDBColumn
        DataBinding.FieldName = 'REMARK'
        Visible = False
      end
      object gridAnalyzerEMAIL: TcxGridDBColumn
        Caption = #51060#47700#51068
        DataBinding.FieldName = 'EMAIL'
        Width = 154
      end
      object gridAnalyzerCONFIRMED: TcxGridDBColumn
        DataBinding.FieldName = 'CONFIRMED'
        Visible = False
      end
      object gridAnalyzerIS_ANALYZER: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ANALYZER'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridAnalyzer
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
    Left = 104
    Top = 216
  end
  object dp_analyzer: TDataSetProvider
    DataSet = q_analyzer
    Left = 104
    Top = 264
  end
  object cds_analyzer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dp_analyzer'
    Left = 104
    Top = 312
    object cds_analyzerID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object cds_analyzerUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 10
    end
    object cds_analyzerLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
      Required = True
      Size = 10
    end
    object cds_analyzerLOGIN_PASS: TStringField
      FieldName = 'LOGIN_PASS'
      Required = True
      Size = 10
    end
    object cds_analyzerLOGIN_PASS2: TStringField
      FieldName = 'LOGIN_PASS2'
      Size = 10
    end
    object cds_analyzerUSER_KIND: TIntegerField
      FieldName = 'USER_KIND'
    end
    object cds_analyzerAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object cds_analyzerREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object cds_analyzerCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object cds_analyzerREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object cds_analyzerEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cds_analyzerCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
    object cds_analyzerIS_ANALYZER: TSmallintField
      FieldName = 'IS_ANALYZER'
    end
  end
  object d_analyzer: TDataSource
    DataSet = cds_analyzer
    Left = 104
    Top = 360
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
    Left = 184
    Top = 216
  end
  object dp_company_look: TDataSetProvider
    DataSet = q_company_look
    Left = 184
    Top = 264
  end
  object cds_company_look: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dp_company_look'
    Left = 184
    Top = 312
  end
  object d_company_look: TDataSource
    DataSet = cds_company_look
    Left = 184
    Top = 360
  end
end
