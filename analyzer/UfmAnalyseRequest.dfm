object fmAnalyseRequest: TfmAnalyseRequest
  Left = 0
  Top = 0
  Caption = #48516#49437#50836#52397#44288#47532
  ClientHeight = 606
  ClientWidth = 1052
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
    Width = 1052
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 7
      Width = 56
      Height = 13
      Caption = #51312#54924#44592#44036':'
    end
    object btnAnalyseDone: TBitBtn
      Left = 547
      Top = 1
      Width = 115
      Height = 25
      Caption = #48516#49437#50756#47308#52376#47532
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
        BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
        DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnAnalyseDoneClick
    end
    object dtpStart: TDateTimePicker
      Left = 75
      Top = 3
      Width = 111
      Height = 21
      Date = 41440.368918692130000000
      Time = 41440.368918692130000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
    object dtpEnd: TDateTimePicker
      Left = 187
      Top = 3
      Width = 111
      Height = 21
      Date = 41440.368918692130000000
      Time = 41440.368918692130000000
      ImeName = 'Microsoft IME 2010'
      TabOrder = 2
    end
    object btnView: TBitBtn
      Left = 302
      Top = 1
      Width = 63
      Height = 25
      Caption = #51312#54924
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
        FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
        FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
        FF0A444444444444444D444444444444444A444444444444444D}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnViewClick
    end
    object btnChangeStatus: TBitBtn
      Left = 432
      Top = 1
      Width = 115
      Height = 25
      Caption = #48516#49437#49345#53468#48320#44221
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADAD7444447DADADDAD444444444DADAAD444DADAD444DADD744DADADAD4
        47DAA44DADA22DA744ADD44ADA2222DA44DAA44DAD2222AD44ADD44ADAD22ADA
        DADAA447ADADADAD44ADD744DA4ADADADADAAD444D44ADA47DADDAD444444ADA
        DADAADAD74444DADADADDADADA44DADADADAADADAD4DADADADAD}
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = btnChangeStatusClick
    end
    object btnCancelDone: TBitBtn
      Left = 662
      Top = 1
      Width = 115
      Height = 25
      Caption = #48516#49437#50756#47308#52712#49548
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
        DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
        DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
        0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = btnCancelDoneClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 1052
    Height = 577
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
      DataController.DataSource = d_AnalyseRequest
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
      object cxGrid1DBTableView1R_DATE: TcxGridDBColumn
        Caption = #50836#52397#51068#51088
        DataBinding.FieldName = 'R_DATE'
        Width = 89
      end
      object cxGrid1DBTableView1CUSTOMER_ID: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CUSTOMER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'UID'
        Properties.ListColumns = <
          item
            FieldName = 'CNAME'
          end>
        Properties.ListSource = d_customer_look
        Width = 90
      end
      object cxGrid1DBTableView1REQ_COMP_ID: TcxGridDBColumn
        Caption = #50836#52397#49324
        DataBinding.FieldName = 'REQ_COMP_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'COMP_ID'
        Properties.ListColumns = <
          item
            FieldName = 'COMP_NAME'
          end>
        Properties.ListSource = d_company_look
      end
      object cxGrid1DBTableView1ANALYZER_ID: TcxGridDBColumn
        Caption = #48516#49437#44032#47749
        DataBinding.FieldName = 'ANALYZER_ID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'USER_NAME'
          end>
        Properties.ListSource = d_analyzer_look
        Width = 78
      end
      object cxGrid1DBTableView1REQ_KIND: TcxGridDBColumn
        Caption = #49345#53468
        DataBinding.FieldName = 'REQ_KIND'
        Width = 59
      end
      object cxGrid1DBTableView1REQ_STATE: TcxGridDBColumn
        Caption = #48516#49437#49345#53468
        DataBinding.FieldName = 'REQ_STATE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #50836#52397
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #48516#49437
            Value = 1
          end
          item
            Description = #50756#47308
            Value = 2
          end>
        Width = 61
      end
      object cxGrid1DBTableView1ANALYSE_DATE: TcxGridDBColumn
        Caption = #48516#49437#51068#51088
        DataBinding.FieldName = 'ANALYSE_DATE'
        Width = 92
      end
      object cxGrid1DBTableView1REQ_COMMENT: TcxGridDBColumn
        Caption = #50836#52397#53076#47704#53944
        DataBinding.FieldName = 'REQ_COMMENT'
        Width = 270
      end
      object cxGrid1DBTableView1ANALYSE_COMMENT: TcxGridDBColumn
        Caption = #48516#49437#53076#47704#53944
        DataBinding.FieldName = 'ANALYSE_COMMENT'
        Width = 314
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object d_AnalyseRequest: TDataSource
    DataSet = q_AnalyseRequest
    Left = 176
    Top = 520
  end
  object q_AnalyseRequest: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ANALYSE_REQUEST'
      
        '  (ID, R_DATE, CUSTOMER_ID, REQ_COMP_ID, ANALYZER_ID, REQ_KIND, ' +
        'REQ_STATE, ANALYSE_DATE, REQ_COMMENT, ANALYSE_COMMENT)'
      'VALUES'
      
        '  (:ID, :R_DATE, :CUSTOMER_ID, :REQ_COMP_ID, :ANALYZER_ID, :REQ_' +
        'KIND, :REQ_STATE, :ANALYSE_DATE, :REQ_COMMENT, :ANALYSE_COMMENT)')
    SQLDelete.Strings = (
      'DELETE FROM ANALYSE_REQUEST'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE ANALYSE_REQUEST'
      'SET'
      
        '  ID = :ID, R_DATE = :R_DATE, CUSTOMER_ID = :CUSTOMER_ID, REQ_CO' +
        'MP_ID = :REQ_COMP_ID, ANALYZER_ID = :ANALYZER_ID, REQ_KIND = :RE' +
        'Q_KIND, REQ_STATE = :REQ_STATE, ANALYSE_DATE = :ANALYSE_DATE, RE' +
        'Q_COMMENT = :REQ_COMMENT, ANALYSE_COMMENT = :ANALYSE_COMMENT'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM ANALYSE_REQUEST'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, R_DATE, CUSTOMER_ID, REQ_COMP_ID, ANALYZER_ID, REQ_KI' +
        'ND, REQ_STATE, ANALYSE_DATE, REQ_COMMENT, ANALYSE_COMMENT FROM A' +
        'NALYSE_REQUEST'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from ANALYSE_REQUEST'
      
        'where (R_DATE between :sdate and :edate) and (ANALYZER_ID = :ANA' +
        'LYZER_ID)')
    Left = 176
    Top = 472
    ParamData = <
      item
        DataType = ftDate
        Name = 'sdate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'edate'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ANALYZER_ID'
        ParamType = ptInput
      end>
    object q_AnalyseRequestID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_AnalyseRequestR_DATE: TDateField
      FieldName = 'R_DATE'
    end
    object q_AnalyseRequestCUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 17
    end
    object q_AnalyseRequestREQ_COMP_ID: TStringField
      FieldName = 'REQ_COMP_ID'
      Size = 17
    end
    object q_AnalyseRequestANALYZER_ID: TStringField
      FieldName = 'ANALYZER_ID'
      Size = 17
    end
    object q_AnalyseRequestREQ_KIND: TIntegerField
      Alignment = taCenter
      FieldName = 'REQ_KIND'
    end
    object q_AnalyseRequestREQ_STATE: TIntegerField
      Alignment = taCenter
      FieldName = 'REQ_STATE'
    end
    object q_AnalyseRequestANALYSE_DATE: TDateField
      FieldName = 'ANALYSE_DATE'
    end
    object q_AnalyseRequestREQ_COMMENT: TStringField
      FieldName = 'REQ_COMMENT'
      Size = 100
    end
    object q_AnalyseRequestANALYSE_COMMENT: TStringField
      FieldName = 'ANALYSE_COMMENT'
      Size = 100
    end
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
      'select COMP_ID, comp_name from COMPANY_GENARAL')
    Left = 400
    Top = 472
    object q_company_lookCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object q_company_lookCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 30
    end
  end
  object d_company_look: TDataSource
    DataSet = q_company_look
    Left = 400
    Top = 520
  end
  object q_analyzer_look: TUniQuery
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
      'select ID, USER_NAME from company')
    Left = 304
    Top = 472
    object q_analyzer_lookID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_analyzer_lookUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 10
    end
  end
  object d_analyzer_look: TDataSource
    DataSet = q_analyzer_look
    Left = 304
    Top = 520
  end
  object q_customer_look: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMER'
      
        '  (UID, CNAME, CID, SEX, CHEIGHT, CWEIGHT, CTEL, CADD, CEMAIL, C' +
        'BIGO, REG_DATE, CHART_NO, JOBKIND, CAGE, CFOOT, BIRTH, PHOTO, BI' +
        'RTH_KIND, IS_ACTIVE, HOBBY, HOW_TO_COME, PURPOSE, BLOOD, BLOOD_P' +
        'RESSURE, BODY_STATUS, BEHAVIER, PSYCHOLOGY, FOOD_KIND, FOOD_HOW_' +
        'MUCH, FOOD_HOW_OFTEN, COMPANY_ID)'
      'VALUES'
      
        '  (:UID, :CNAME, :CID, :SEX, :CHEIGHT, :CWEIGHT, :CTEL, :CADD, :' +
        'CEMAIL, :CBIGO, :REG_DATE, :CHART_NO, :JOBKIND, :CAGE, :CFOOT, :' +
        'BIRTH, :PHOTO, :BIRTH_KIND, :IS_ACTIVE, :HOBBY, :HOW_TO_COME, :P' +
        'URPOSE, :BLOOD, :BLOOD_PRESSURE, :BODY_STATUS, :BEHAVIER, :PSYCH' +
        'OLOGY, :FOOD_KIND, :FOOD_HOW_MUCH, :FOOD_HOW_OFTEN, :COMPANY_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMER'
      'WHERE'
      '  UID = :Old_UID')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMER'
      'SET'
      
        '  UID = :UID, CNAME = :CNAME, CID = :CID, SEX = :SEX, CHEIGHT = ' +
        ':CHEIGHT, CWEIGHT = :CWEIGHT, CTEL = :CTEL, CADD = :CADD, CEMAIL' +
        ' = :CEMAIL, CBIGO = :CBIGO, REG_DATE = :REG_DATE, CHART_NO = :CH' +
        'ART_NO, JOBKIND = :JOBKIND, CAGE = :CAGE, CFOOT = :CFOOT, BIRTH ' +
        '= :BIRTH, PHOTO = :PHOTO, BIRTH_KIND = :BIRTH_KIND, IS_ACTIVE = ' +
        ':IS_ACTIVE, HOBBY = :HOBBY, HOW_TO_COME = :HOW_TO_COME, PURPOSE ' +
        '= :PURPOSE, BLOOD = :BLOOD, BLOOD_PRESSURE = :BLOOD_PRESSURE, BO' +
        'DY_STATUS = :BODY_STATUS, BEHAVIER = :BEHAVIER, PSYCHOLOGY = :PS' +
        'YCHOLOGY, FOOD_KIND = :FOOD_KIND, FOOD_HOW_MUCH = :FOOD_HOW_MUCH' +
        ', FOOD_HOW_OFTEN = :FOOD_HOW_OFTEN, COMPANY_ID = :COMPANY_ID'
      'WHERE'
      '  UID = :Old_UID')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMER'
      'WHERE'
      'UID = :Old_UID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT UID, CNAME, CID, SEX, CHEIGHT, CWEIGHT, CTEL, CADD, CEMAI' +
        'L, CBIGO, REG_DATE, CHART_NO, JOBKIND, CAGE, CFOOT, BIRTH, PHOTO' +
        ', BIRTH_KIND, IS_ACTIVE, HOBBY, HOW_TO_COME, PURPOSE, BLOOD, BLO' +
        'OD_PRESSURE, BODY_STATUS, BEHAVIER, PSYCHOLOGY, FOOD_KIND, FOOD_' +
        'HOW_MUCH, FOOD_HOW_OFTEN, COMPANY_ID FROM CUSTOMER'
      'WHERE'
      '  UID = :UID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select UID, CNAME from customer')
    Left = 504
    Top = 472
    object q_customer_lookUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 40
    end
    object q_customer_lookCNAME: TStringField
      FieldName = 'CNAME'
    end
  end
  object d_customer_look: TDataSource
    DataSet = q_customer_look
    Left = 504
    Top = 520
  end
end
