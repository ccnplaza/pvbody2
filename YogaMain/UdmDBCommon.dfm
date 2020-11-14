object dmDBCommon: TdmDBCommon
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 845
  Width = 1539
  object UniDBConnection: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'D:\fb_data\newBodyCheck\GOODPOSTURE2.FDB'
    Username = 'sysdba'
    Server = '210.122.36.244'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 56
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 64
    Top = 8
  end
  object d_picture_data: TDataSource
    DataSet = PICTURE_DATA_SEL
    Left = 250
    Top = 48
  end
  object q_NSTATIC_CHECK_DATA: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO NSTATIC_CHECK_DATA'
      '  (ID, CUSTOMER_UID, C_DATE, C_IDX, C_COMMENTS)'
      'VALUES'
      '  (:ID, :CUSTOMER_UID, :C_DATE, :C_IDX, :C_COMMENTS)')
    SQLDelete.Strings = (
      'DELETE FROM NSTATIC_CHECK_DATA'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE NSTATIC_CHECK_DATA'
      'SET'
      
        '  ID = :ID, CUSTOMER_UID = :CUSTOMER_UID, C_DATE = :C_DATE, C_ID' +
        'X = :C_IDX, C_COMMENTS = :C_COMMENTS'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM NSTATIC_CHECK_DATA'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, CUSTOMER_UID, C_DATE, C_IDX FROM NSTATIC_CHECK_DATA'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM NSTATIC_CHECK_DATA'
      ''
      ') q')
    Connection = UniDBConnection
    SQL.Strings = (
      'select * from NSTATIC_CHECK_DATA'
      'where customer_uid = :customer_uid')
    Left = 800
    Top = 264
    ParamData = <
      item
        DataType = ftString
        Name = 'customer_uid'
        ParamType = ptInput
      end>
    object q_NSTATIC_CHECK_DATAID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_NSTATIC_CHECK_DATACUSTOMER_UID: TStringField
      FieldName = 'CUSTOMER_UID'
      Size = 17
    end
    object q_NSTATIC_CHECK_DATAC_DATE: TStringField
      FieldName = 'C_DATE'
      FixedChar = True
      Size = 10
    end
    object q_NSTATIC_CHECK_DATAC_IDX: TIntegerField
      Alignment = taCenter
      FieldName = 'C_IDX'
    end
    object q_NSTATIC_CHECK_DATAC_COMMENTS: TStringField
      FieldName = 'C_COMMENTS'
      Size = 10240
    end
  end
  object d_NSTATIC_CHECK_DATA: TDataSource
    DataSet = q_NSTATIC_CHECK_DATA
    Left = 800
    Top = 312
  end
  object q_NSTATIC_CHECK_RESULT: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO NSTATIC_CHECK_RESULT'
      
        '  (ID, DATA_ID, ITEM_MAIN, ITEM_SUBITEM, ITEM_SUBITEM2, RESULT_V' +
        'ALUE, PRACTICE_ID, RESULT_LEVEL, DIRECTION_KIND)'
      'VALUES'
      
        '  (:ID, :DATA_ID, :ITEM_MAIN, :ITEM_SUBITEM, :ITEM_SUBITEM2, :RE' +
        'SULT_VALUE, :PRACTICE_ID, :RESULT_LEVEL, :DIRECTION_KIND)')
    SQLDelete.Strings = (
      'DELETE FROM NSTATIC_CHECK_RESULT'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE NSTATIC_CHECK_RESULT'
      'SET'
      
        '  ID = :ID, DATA_ID = :DATA_ID, ITEM_MAIN = :ITEM_MAIN, ITEM_SUB' +
        'ITEM = :ITEM_SUBITEM, ITEM_SUBITEM2 = :ITEM_SUBITEM2, RESULT_VAL' +
        'UE = :RESULT_VALUE, PRACTICE_ID = :PRACTICE_ID, RESULT_LEVEL = :' +
        'RESULT_LEVEL'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM NSTATIC_CHECK_RESULT'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, DATA_ID, ITEM_MAIN, ITEM_SUBITEM, ITEM_SUBITEM2, RESU' +
        'LT_VALUE, PRACTICE_ID, RESULT_LEVEL FROM NSTATIC_CHECK_RESULT'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM NSTATIC_CHECK_RESULT'
      ''
      ') q')
    Connection = UniDBConnection
    SQL.Strings = (
      'select * from NSTATIC_CHECK_RESULT'
      'where DATA_ID = :DATA_ID'
      'order by id')
    Left = 800
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptInput
      end>
    object q_NSTATIC_CHECK_RESULTID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_NSTATIC_CHECK_RESULTDATA_ID: TIntegerField
      FieldName = 'DATA_ID'
    end
    object q_NSTATIC_CHECK_RESULTITEM_MAIN: TIntegerField
      FieldName = 'ITEM_MAIN'
    end
    object q_NSTATIC_CHECK_RESULTITEM_SUBITEM: TIntegerField
      FieldName = 'ITEM_SUBITEM'
    end
    object q_NSTATIC_CHECK_RESULTITEM_SUBITEM2: TIntegerField
      FieldName = 'ITEM_SUBITEM2'
    end
    object q_NSTATIC_CHECK_RESULTRESULT_VALUE: TIntegerField
      FieldName = 'RESULT_VALUE'
    end
    object q_NSTATIC_CHECK_RESULTPRACTICE_ID: TStringField
      FieldName = 'PRACTICE_ID'
      Size = 50
    end
    object q_NSTATIC_CHECK_RESULTRESULT_LEVEL: TSmallintField
      Alignment = taCenter
      FieldName = 'RESULT_LEVEL'
    end
    object q_NSTATIC_CHECK_RESULTDIRECTION_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'DIRECTION_KIND'
    end
    object q_NSTATIC_CHECK_RESULTIMAGE_ID: TIntegerField
      FieldName = 'IMAGE_ID'
    end
  end
  object d_NSTATIC_CHECK_RESULT: TDataSource
    DataSet = q_NSTATIC_CHECK_RESULT
    Left = 800
    Top = 416
  end
  object usp_NSTATIC_CHECK_RESULT_IU: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULT_IU'
    Connection = UniDBConnection
    Left = 800
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_MAIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_SUBITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_SUBITEM2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_VALUE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULT_IU'
  end
  object q_npractice_assign: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO NPRACTICE_ASSIGN'
      '  (ID, RESULT_ID, PRACTICE_ID)'
      'VALUES'
      '  (:ID, :RESULT_ID, :PRACTICE_ID)')
    SQLDelete.Strings = (
      'DELETE FROM NPRACTICE_ASSIGN'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE NPRACTICE_ASSIGN'
      'SET'
      '  ID = :ID, RESULT_ID = :RESULT_ID, PRACTICE_ID = :PRACTICE_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM NPRACTICE_ASSIGN'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, RESULT_ID, PRACTICE_ID FROM NPRACTICE_ASSIGN'
      'WHERE'
      '  ID = :ID')
    Connection = UniDBConnection
    SQL.Strings = (
      'select * from npractice_assign'
      'where result_id = :result_id')
    Left = 1032
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result_id'
        ParamType = ptInput
      end>
    object q_npractice_assignID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_npractice_assignRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object q_npractice_assignPRACTICE_ID: TIntegerField
      FieldName = 'PRACTICE_ID'
    end
  end
  object d_NPRACTICE: TDataSource
    DataSet = NPRACTICE_SEL
    Left = 1032
    Top = 64
  end
  object d_npractice_assign: TDataSource
    DataSet = q_npractice_assign
    Left = 1032
    Top = 256
  end
  object t_NPRACTICE_look: TUniTable
    TableName = 'NPRACTICE'
    Connection = UniDBConnection
    Left = 1032
    Top = 112
    object t_NPRACTICE_lookID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object t_NPRACTICE_lookP_NAME: TStringField
      FieldName = 'P_NAME'
      Size = 50
    end
  end
  object d_NPRACTICE_look: TDataSource
    DataSet = t_NPRACTICE_look
    Left = 1032
    Top = 160
  end
  object CUSTOMER_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL'
    Connection = UniDBConnection
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True'
      'InterBase.StreamedBlobs=True')
    Left = 250
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'START_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'END_YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CAGE'
        ParamType = ptOutput
        Size = 3
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CBIGO'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOBBY'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BLOOD'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BLOOD_PRESSURE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BODY_STATUS'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'FOOD_KIND'
        ParamType = ptOutput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_MUCH'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_OFTEN'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME_ETC'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_ETC'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_DESC'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'C_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'SMS_YESNO'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUSTOMER_SEL'
    object CUSTOMER_SELUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_SELCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_SELSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_SELCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_SELCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 50
    end
    object CUSTOMER_SELCBIGO: TStringField
      FieldName = 'CBIGO'
      Size = 255
    end
    object CUSTOMER_SELREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object CUSTOMER_SELJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
    object CUSTOMER_SELHOBBY: TStringField
      FieldName = 'HOBBY'
      Size = 30
    end
    object CUSTOMER_SELHOW_TO_COME: TStringField
      FieldName = 'HOW_TO_COME'
      Size = 30
    end
    object CUSTOMER_SELPURPOSE: TStringField
      FieldName = 'PURPOSE'
      Size = 30
    end
    object CUSTOMER_SELBLOOD: TStringField
      FieldName = 'BLOOD'
      Size = 10
    end
    object CUSTOMER_SELBLOOD_PRESSURE: TStringField
      FieldName = 'BLOOD_PRESSURE'
      Size = 10
    end
    object CUSTOMER_SELBODY_STATUS: TStringField
      FieldName = 'BODY_STATUS'
      Size = 255
    end
    object CUSTOMER_SELFOOD_KIND: TStringField
      FieldName = 'FOOD_KIND'
      Size = 12
    end
    object CUSTOMER_SELFOOD_HOW_MUCH: TStringField
      FieldName = 'FOOD_HOW_MUCH'
      Size = 10
    end
    object CUSTOMER_SELFOOD_HOW_OFTEN: TStringField
      FieldName = 'FOOD_HOW_OFTEN'
      Size = 10
    end
    object CUSTOMER_SELCAGE: TStringField
      Alignment = taCenter
      FieldName = 'CAGE'
      Size = 3
    end
    object CUSTOMER_SELHOW_TO_COME_ETC: TStringField
      FieldName = 'HOW_TO_COME_ETC'
      Size = 30
    end
    object CUSTOMER_SELPURPOSE_ETC: TStringField
      FieldName = 'PURPOSE_ETC'
      Size = 30
    end
    object CUSTOMER_SELPURPOSE_DESC: TStringField
      FieldName = 'PURPOSE_DESC'
      Size = 255
    end
    object CUSTOMER_SELIS_ACTIVE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_ACTIVE'
    end
    object CUSTOMER_SELC_KIND: TIntegerField
      Alignment = taCenter
      DisplayLabel = #54924#50896#44396#48516
      FieldName = 'C_KIND'
    end
    object CUSTOMER_SELSMS_YESNO: TSmallintField
      Alignment = taCenter
      FieldName = 'SMS_YESNO'
    end
  end
  object d_CUSTOMER_SEL: TUniDataSource
    DataSet = CUSTOMER_SEL
    Left = 250
    Top = 160
  end
  object CUSTOMER_BASIC_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_BASIC_SEL'
    Connection = UniDBConnection
    Left = 250
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptOutput
        Size = 30
      end>
    CommandStoredProcName = 'CUSTOMER_BASIC_SEL'
    object CUSTOMER_BASIC_SELUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_BASIC_SELCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_BASIC_SELSEX: TStringField
      Alignment = taCenter
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_BASIC_SELCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_BASIC_SELCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 50
    end
    object CUSTOMER_BASIC_SELREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object CUSTOMER_BASIC_SELJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
  end
  object d_CUSTOMER_BASIC_SEL: TUniDataSource
    DataSet = CUSTOMER_BASIC_SEL
    Left = 250
    Top = 256
  end
  object LESSON_CUSTOMER_MIXSEL: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_MIXSEL'
    Connection = UniDBConnection
    Left = 978
    Top = 443
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MEMBER_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'LEC_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'M_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'NEW_OR_RENEW'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_DESC'
        ParamType = ptOutput
        Size = 1024
      end
      item
        DataType = ftFloat
        Name = 'LEC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'OUT_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'OUT_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'OUT_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'OUT_REASON'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftSmallint
        Name = 'USED_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'BREAK_START'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'BREAK_END'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'SMS_YESNO'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_MIXSEL'
    object LESSON_CUSTOMER_MIXSELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object LESSON_CUSTOMER_MIXSELMEMBER_UID: TStringField
      FieldName = 'MEMBER_UID'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object LESSON_CUSTOMER_MIXSELEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object LESSON_CUSTOMER_MIXSELLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object LESSON_CUSTOMER_MIXSELIS_DONE: TSmallintField
      Alignment = taCenter
      FieldName = 'IS_DONE'
    end
    object LESSON_CUSTOMER_MIXSELCNAME: TStringField
      FieldName = 'CNAME'
    end
    object LESSON_CUSTOMER_MIXSELSEX: TStringField
      Alignment = taCenter
      FieldName = 'SEX'
      Size = 2
    end
    object LESSON_CUSTOMER_MIXSELCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object LESSON_CUSTOMER_MIXSELM_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'M_KIND'
    end
    object LESSON_CUSTOMER_MIXSELLOCKER_NO: TStringField
      Alignment = taCenter
      FieldName = 'LOCKER_NO'
      Size = 10
    end
    object LESSON_CUSTOMER_MIXSELNEW_OR_RENEW: TSmallintField
      Alignment = taCenter
      FieldName = 'NEW_OR_RENEW'
    end
    object LESSON_CUSTOMER_MIXSELLEC_PRICE: TFloatField
      FieldName = 'LEC_PRICE'
      DisplayFormat = '#,'
    end
    object LESSON_CUSTOMER_MIXSELPAY_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_KIND'
    end
    object LESSON_CUSTOMER_MIXSELLEC_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'LEC_MONTH'
    end
    object LESSON_CUSTOMER_MIXSELOUT_DATE: TStringField
      FieldName = 'OUT_DATE'
      Size = 10
    end
    object LESSON_CUSTOMER_MIXSELOUT_PRICE: TFloatField
      FieldName = 'OUT_PRICE'
      DisplayFormat = '#,'
    end
    object LESSON_CUSTOMER_MIXSELOUT_KIND: TSmallintField
      Alignment = taCenter
      FieldName = 'OUT_KIND'
    end
    object LESSON_CUSTOMER_MIXSELOUT_REASON: TStringField
      FieldName = 'OUT_REASON'
      Size = 50
    end
    object LESSON_CUSTOMER_MIXSELUSED_CNT: TSmallintField
      Alignment = taCenter
      FieldName = 'USED_CNT'
    end
    object LESSON_CUSTOMER_MIXSELLEC_DESC: TStringField
      FieldName = 'LEC_DESC'
      Size = 1024
    end
    object LESSON_CUSTOMER_MIXSELIS_ACTIVE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_ACTIVE'
    end
    object LESSON_CUSTOMER_MIXSELSMS_YESNO: TSmallintField
      Alignment = taCenter
      FieldName = 'SMS_YESNO'
    end
    object LESSON_CUSTOMER_MIXSELBREAK_START: TDateField
      Alignment = taCenter
      FieldName = 'BREAK_START'
    end
    object LESSON_CUSTOMER_MIXSELBREAK_END: TDateField
      Alignment = taCenter
      FieldName = 'BREAK_END'
    end
    object LESSON_CUSTOMER_MIXSELCENTER_ID: TSmallintField
      Alignment = taCenter
      FieldName = 'CENTER_ID'
    end
  end
  object d_LESSON_CUSTOMER_MIXSEL: TUniDataSource
    DataSet = LESSON_CUSTOMER_MIXSEL
    Left = 978
    Top = 491
  end
  object LESSON_SEL_LOOK: TUniStoredProc
    StoredProcName = 'LESSON_SEL_LOOK'
    Connection = UniDBConnection
    Left = 200
    Top = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end>
    CommandStoredProcName = 'LESSON_SEL_LOOK'
    object LESSON_SEL_LOOKID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_SEL_LOOKL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
  end
  object d_LESSON_SEL_LOOK: TUniDataSource
    DataSet = LESSON_SEL_LOOK
    Left = 200
    Top = 584
  end
  object LESSON_ATTENDANCE_SEL: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_SEL'
    Connection = UniDBConnection
    Left = 624
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'S_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'ATT_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptOutput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_ATTENDANCE_SEL'
    object LESSON_ATTENDANCE_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELATT_DATE: TDateField
      FieldName = 'ATT_DATE'
    end
    object LESSON_ATTENDANCE_SELLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELIN_TIME: TStringField
      FieldName = 'IN_TIME'
      Size = 5
    end
    object LESSON_ATTENDANCE_SELCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object LESSON_ATTENDANCE_SELCNAME: TStringField
      FieldName = 'CNAME'
    end
    object LESSON_ATTENDANCE_SELSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object LESSON_ATTENDANCE_SELCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object LESSON_ATTENDANCE_SELJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
    object LESSON_ATTENDANCE_SELIS_ACTIVE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_ACTIVE'
    end
  end
  object d_LESSON_ATTENDANCE_SEL: TUniDataSource
    DataSet = LESSON_ATTENDANCE_SEL
    Left = 624
    Top = 56
  end
  object CUSTOMER_TEL_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_TEL_SEL'
    Connection = UniDBConnection
    Left = 1031
    Top = 305
    ParamData = <
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'MEMBER_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftSmallint
        Name = 'M_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'LEC_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'USED_CNT'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUSTOMER_TEL_SEL'
    object CUSTOMER_TEL_SELCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_TEL_SELCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_TEL_SELSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_TEL_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object CUSTOMER_TEL_SELREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object CUSTOMER_TEL_SELLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object CUSTOMER_TEL_SELMEMBER_UID: TStringField
      FieldName = 'MEMBER_UID'
      Size = 17
    end
    object CUSTOMER_TEL_SELSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object CUSTOMER_TEL_SELEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object CUSTOMER_TEL_SELIS_DONE: TSmallintField
      FieldName = 'IS_DONE'
    end
    object CUSTOMER_TEL_SELLOCKER_NO: TStringField
      FieldName = 'LOCKER_NO'
      Size = 10
    end
    object CUSTOMER_TEL_SELCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object CUSTOMER_TEL_SELL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object CUSTOMER_TEL_SELM_KIND: TSmallintField
      FieldName = 'M_KIND'
    end
    object CUSTOMER_TEL_SELLEC_MONTH: TSmallintField
      FieldName = 'LEC_MONTH'
    end
    object CUSTOMER_TEL_SELUSED_CNT: TSmallintField
      FieldName = 'USED_CNT'
    end
  end
  object d_CUSTOMER_TEL_SEL: TUniDataSource
    DataSet = CUSTOMER_TEL_SEL
    Left = 1031
    Top = 353
  end
  object CUSTOMER_SEL_LOOK: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL_LOOK'
    Connection = UniDBConnection
    Left = 200
    Top = 632
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'CUSTOMER_SEL_LOOK'
    object CUSTOMER_SEL_LOOKUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_SEL_LOOKCNAME: TStringField
      FieldName = 'CNAME'
    end
  end
  object d_CUSTOMER_SEL_LOOK: TUniDataSource
    DataSet = CUSTOMER_SEL_LOOK
    Left = 200
    Top = 680
  end
  object CASH_INOUT_SEL: TUniStoredProc
    StoredProcName = 'CASH_INOUT_SEL'
    Connection = UniDBConnection
    Left = 256
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'S_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CASH_INOUT_SEL'
  end
  object CASH_INOUT_KIND_SEL: TUniStoredProc
    StoredProcName = 'CASH_INOUT_KIND_SEL'
    Connection = UniDBConnection
    Left = 464
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'K_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftFixedChar
        Name = 'COMPANY_ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'CASH_INOUT_KIND_SEL'
    object CASH_INOUT_KIND_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CASH_INOUT_KIND_SELK_NAME: TStringField
      FieldName = 'K_NAME'
    end
    object CASH_INOUT_KIND_SELCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      FixedChar = True
      Size = 17
    end
  end
  object d_CASH_INOUT_KIND_SEL: TUniDataSource
    DataSet = CASH_INOUT_KIND_SEL
    Left = 464
    Top = 376
  end
  object CASH_INOUT_KIND_SEL_LOOK: TUniStoredProc
    StoredProcName = 'CASH_INOUT_KIND_SEL_LOOK'
    Connection = UniDBConnection
    Left = 464
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'K_NAME'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'CASH_INOUT_KIND_SEL_LOOK'
    object CASH_INOUT_KIND_SEL_LOOKID: TIntegerField
      FieldName = 'ID'
    end
    object CASH_INOUT_KIND_SEL_LOOKK_NAME: TStringField
      FieldName = 'K_NAME'
    end
  end
  object d_CASH_INOUT_KIND_SEL_LOOK: TUniDataSource
    DataSet = CASH_INOUT_KIND_SEL_LOOK
    Left = 464
    Top = 472
  end
  object CASH_INOUT_INS: TUniStoredProc
    StoredProcName = 'CASH_INOUT_INS'
    Connection = UniDBConnection
    Left = 352
    Top = 352
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'K_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_DESC'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'CASH_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CASH_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'LESSON_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftFixedChar
        Name = 'PRODUCT_SALE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CASH_INOUT_INS'
  end
  object CASH_INOUT_UPD: TUniStoredProc
    StoredProcName = 'CASH_INOUT_UPD'
    Connection = UniDBConnection
    Left = 352
    Top = 400
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'K_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_DESC'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'CASH_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CASH_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CASH_INOUT_UPD'
  end
  object CASH_INOUT_DEL: TUniStoredProc
    StoredProcName = 'CASH_INOUT_DEL'
    Connection = UniDBConnection
    Left = 352
    Top = 448
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CASH_INOUT_DEL'
  end
  object CASH_INOUT_UPD_BY_LESSON: TUniStoredProc
    StoredProcName = 'CASH_INOUT_UPD_BY_LESSON'
    Connection = UniDBConnection
    Left = 352
    Top = 496
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LESSON_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'C_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CASH_IN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CASH_OUT'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CASH_INOUT_UPD_BY_LESSON'
  end
  object CASH_INOUT_DEL_BY_LESSON: TUniStoredProc
    StoredProcName = 'CASH_INOUT_DEL_BY_LESSON'
    Connection = UniDBConnection
    Left = 352
    Top = 544
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LESSON_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CASH_INOUT_DEL_BY_LESSON'
  end
  object LOCKER_DATA_SEL: TUniStoredProc
    StoredProcName = 'LOCKER_DATA_SEL'
    Connection = UniDBConnection
    Left = 464
    Top = 520
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'LOCKER_STATUS'
        ParamType = ptOutput
      end
      item
        DataType = ftFixedChar
        Name = 'LOCKER_USER'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'LOCKER_DATA_SEL'
    object LOCKER_DATA_SELID: TIntegerField
      FieldName = 'ID'
    end
    object LOCKER_DATA_SELLOCKER_STATUS: TSmallintField
      Alignment = taCenter
      FieldName = 'LOCKER_STATUS'
    end
    object LOCKER_DATA_SELLOCKER_USER: TStringField
      FieldName = 'LOCKER_USER'
      FixedChar = True
      Size = 17
    end
    object LOCKER_DATA_SELBIGO: TStringField
      FieldName = 'BIGO'
    end
    object LOCKER_DATA_SELLOCKER_NO: TStringField
      Alignment = taCenter
      FieldName = 'LOCKER_NO'
      Size = 10
    end
  end
  object d_LOCKER_DATA_SEL: TUniDataSource
    DataSet = LOCKER_DATA_SEL
    Left = 464
    Top = 568
  end
  object PRODUCT_SALE_SEL: TUniStoredProc
    StoredProcName = 'PRODUCT_SALE_SEL'
    Connection = UniDBConnection
    Left = 576
    Top = 352
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'S_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'S_DESC'
        ParamType = ptOutput
        Size = 125
      end
      item
        DataType = ftFloat
        Name = 'S_QTY'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'Q_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'T_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_WAY'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'PAYED'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'PRODUCT_SALE_SEL'
    object PRODUCT_SALE_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object PRODUCT_SALE_SELS_DATE: TDateField
      FieldName = 'S_DATE'
    end
    object PRODUCT_SALE_SELITEM_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ITEM_ID'
    end
    object PRODUCT_SALE_SELS_DESC: TStringField
      FieldName = 'S_DESC'
      Size = 125
    end
    object PRODUCT_SALE_SELS_QTY: TFloatField
      Alignment = taCenter
      FieldName = 'S_QTY'
    end
    object PRODUCT_SALE_SELQ_PRICE: TFloatField
      FieldName = 'Q_PRICE'
      DisplayFormat = '#,'
    end
    object PRODUCT_SALE_SELT_PRICE: TFloatField
      FieldName = 'T_PRICE'
      DisplayFormat = '#,'
    end
    object PRODUCT_SALE_SELPAY_WAY: TSmallintField
      Alignment = taCenter
      FieldName = 'PAY_WAY'
    end
    object PRODUCT_SALE_SELPAYED: TFloatField
      FieldName = 'PAYED'
      DisplayFormat = '#,'
    end
    object PRODUCT_SALE_SELCENTER_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'CENTER_ID'
    end
  end
  object d_PRODUCT_SALE_SEL: TUniDataSource
    DataSet = PRODUCT_SALE_SEL
    Left = 576
    Top = 400
  end
  object CASH_INOUT_REST_SEL: TUniStoredProc
    StoredProcName = 'CASH_INOUT_REST_SEL'
    Connection = UniDBConnection
    Left = 256
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_DATE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'K_CODE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_DESC'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'CASH_IN'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'CASH_OUT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'CASH_REST'
        ParamType = ptOutput
      end
      item
        DataType = ftFixedChar
        Name = 'LESSON_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CASH_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CASH_INOUT_REST_SEL'
    object CASH_INOUT_REST_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CASH_INOUT_REST_SELC_DATE: TStringField
      FieldName = 'C_DATE'
      Size = 10
    end
    object CASH_INOUT_REST_SELK_CODE: TIntegerField
      Alignment = taCenter
      FieldName = 'K_CODE'
    end
    object CASH_INOUT_REST_SELC_DESC: TStringField
      FieldName = 'C_DESC'
      Size = 50
    end
    object CASH_INOUT_REST_SELLESSON_ID: TStringField
      FieldName = 'LESSON_ID'
      FixedChar = True
      Size = 17
    end
    object CASH_INOUT_REST_SELCASH_ID: TStringField
      FieldName = 'CASH_ID'
      Size = 17
    end
    object CASH_INOUT_REST_SELCENTER_ID: TIntegerField
      FieldName = 'CENTER_ID'
    end
    object CASH_INOUT_REST_SELCASH_IN: TFloatField
      FieldName = 'CASH_IN'
      DisplayFormat = '#,'
    end
    object CASH_INOUT_REST_SELCASH_OUT: TFloatField
      FieldName = 'CASH_OUT'
      DisplayFormat = '#,'
    end
    object CASH_INOUT_REST_SELCASH_REST: TFloatField
      FieldName = 'CASH_REST'
      DisplayFormat = '#,'
    end
  end
  object d_CASH_INOUT_REST_SEL: TUniDataSource
    DataSet = CASH_INOUT_REST_SEL
    Left = 256
    Top = 432
  end
  object PRODUCTS_SEL: TUniStoredProc
    StoredProcName = 'PRODUCTS_SEL'
    Connection = UniDBConnection
    Left = 672
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'PRODUCT_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PRODUCTS_BIGO'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'PRODUCTS_SEL'
    object PRODUCTS_SELID: TIntegerField
      FieldName = 'ID'
    end
    object PRODUCTS_SELPRODUCT_NAME: TStringField
      FieldName = 'PRODUCT_NAME'
      Size = 30
    end
    object PRODUCTS_SELPRODUCTS_BIGO: TStringField
      FieldName = 'PRODUCTS_BIGO'
      Size = 50
    end
  end
  object d_PRODUCTS_SEL: TUniDataSource
    DataSet = PRODUCTS_SEL
    Left = 672
    Top = 384
  end
  object PRODUCTS_SEL_LOOK: TUniStoredProc
    StoredProcName = 'PRODUCTS_SEL_LOOK'
    Connection = UniDBConnection
    Left = 672
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'PRODUCT_NAME'
        ParamType = ptOutput
        Size = 30
      end>
    CommandStoredProcName = 'PRODUCTS_SEL_LOOK'
    object PRODUCTS_SEL_LOOKID: TIntegerField
      FieldName = 'ID'
    end
    object PRODUCTS_SEL_LOOKPRODUCT_NAME: TStringField
      FieldName = 'PRODUCT_NAME'
      Size = 30
    end
  end
  object d_PRODUCTS_SEL_LOOK: TUniDataSource
    DataSet = PRODUCTS_SEL_LOOK
    Left = 672
    Top = 480
  end
  object PRODUCTS_INS: TUniStoredProc
    StoredProcName = 'PRODUCTS_INS'
    Connection = UniDBConnection
    Left = 672
    Top = 528
    ParamData = <
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'PRODUCT_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PRODUCTS_BIGO'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'PRODUCTS_INS'
  end
  object PRODUCTS_UPD: TUniStoredProc
    StoredProcName = 'PRODUCTS_UPD'
    Connection = UniDBConnection
    Left = 672
    Top = 576
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUCT_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PRODUCTS_BIGO'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'PRODUCTS_UPD'
  end
  object PRODUCTS_DEL: TUniStoredProc
    StoredProcName = 'PRODUCTS_DEL'
    Connection = UniDBConnection
    Left = 672
    Top = 624
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PRODUCTS_DEL'
  end
  object PRODUCT_SALE_INS: TUniStoredProc
    StoredProcName = 'PRODUCT_SALE_INS'
    Connection = UniDBConnection
    Left = 576
    Top = 456
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'S_DESC'
        ParamType = ptInput
        Size = 125
      end
      item
        DataType = ftFloat
        Name = 'S_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'Q_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'T_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_WAY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAYED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'PRODUCT_SALE_INS'
  end
  object PRODUCT_SALE_UPD: TUniStoredProc
    StoredProcName = 'PRODUCT_SALE_UPD'
    Connection = UniDBConnection
    Left = 576
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'S_DESC'
        ParamType = ptInput
        Size = 125
      end
      item
        DataType = ftFloat
        Name = 'S_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'Q_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'T_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_WAY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAYED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PRODUCT_SALE_UPD'
  end
  object PRODUCT_SALE_DEL: TUniStoredProc
    StoredProcName = 'PRODUCT_SALE_DEL'
    Connection = UniDBConnection
    Left = 576
    Top = 552
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'PRODUCT_SALE_DEL'
  end
  object PICTURE_DATA_SEL: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_SEL_COUNT'
    Connection = UniDBConnection
    Left = 250
    ParamData = <
      item
        DataType = ftString
        Name = 'C_UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CUST_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'PICTURE_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PIC_CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end>
    CommandStoredProcName = 'PICTURE_DATA_SEL_COUNT'
    object PICTURE_DATA_SELUID: TStringField
      FieldName = 'UID'
      Size = 17
    end
    object PICTURE_DATA_SELCUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object PICTURE_DATA_SELPICTURE_DATE: TDateField
      FieldName = 'PICTURE_DATE'
    end
    object PICTURE_DATA_SELPIC_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'PIC_CNT'
    end
  end
  object PICTURE_DATA_UPD_COUNT: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_UPD_COUNT'
    Connection = UniDBConnection
    Left = 512
    Top = 27
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'PIC_CNT'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PICTURE_DATA_UPD_COUNT'
  end
  object NCUSTOMER_DRAW_SEL: TUniStoredProc
    StoredProcName = 'NCUSTOMER_DRAW_SEL'
    Connection = UniDBConnection
    Left = 504
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'CHK_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'NCUSTOMER_DRAW_SEL'
    object NCUSTOMER_DRAW_SELDRAW_DATA: TBlobField
      FieldName = 'DRAW_DATA'
    end
  end
  object NCUSTOMER_DRAW_UPD: TUniStoredProc
    StoredProcName = 'NCUSTOMER_DRAW_UPD'
    Connection = UniDBConnection
    Left = 504
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'NCUSTOMER_DRAW_UPD'
  end
  object ds_NCUSTOMER_DRAW_SEL: TDataSource
    DataSet = NCUSTOMER_DRAW_SEL
    Left = 504
    Top = 208
  end
  object CUSTOMER_SELECT_NAME: TUniStoredProc
    StoredProcName = 'CUSTOMER_SELECT_NAME'
    Connection = UniDBConnection
    Left = 367
    Top = 27
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'S_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CUST_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUSTOMER_SELECT_NAME'
    object CUSTOMER_SELECT_NAMEUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_SELECT_NAMECNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_SELECT_NAMESEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_SELECT_NAMECTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_SELECT_NAMECEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 50
    end
    object CUSTOMER_SELECT_NAMEREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object CUSTOMER_SELECT_NAMEJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
    object CUSTOMER_SELECT_NAMEIS_ACTIVE: TIntegerField
      Alignment = taCenter
      DisplayLabel = #49468#53552#47749
      FieldName = 'IS_ACTIVE'
    end
  end
  object dsCUSTOMER_SELECT_NAME: TDataSource
    DataSet = CUSTOMER_SELECT_NAME
    Left = 367
    Top = 75
  end
  object IMAGE_DESCRIPT_LIST: TUniTable
    TableName = 'IMAGE_DESCRIPT_LIST'
    Connection = UniDBConnection
    IndexFieldNames = 'ID'
    Left = 800
    Top = 160
    object IMAGE_DESCRIPT_LISTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object IMAGE_DESCRIPT_LISTDESCRIPTS: TStringField
      FieldName = 'DESCRIPTS'
    end
  end
  object dsIMAGE_DESCRIPT_LIST: TDataSource
    DataSet = IMAGE_DESCRIPT_LIST
    Left = 800
    Top = 208
  end
  object ds_REGISTED_CENTER_SEL: TDataSource
    DataSet = REGISTED_CENTER_SEL
    Left = 800
    Top = 112
  end
  object DAY_LOG_UPD: TUniStoredProc
    StoredProcName = 'DAY_LOG_UPD'
    Connection = UniDBConnection
    Left = 624
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'IN_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RECEIVED'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'DAMDANG'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CALLER'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IN_DESC'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_DONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RETURN_DESC'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'DAY_LOG_UPD'
  end
  object ds_DAY_LOG_SEL: TDataSource
    DataSet = DAY_LOG_SEL
    Left = 624
    Top = 264
  end
  object DAY_LOG_SEL: TUniStoredProc
    StoredProcName = 'DAY_LOG_SEL'
    Connection = UniDBConnection
    Left = 624
    Top = 216
    ParamData = <
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'IN_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'RECEIVED'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'DAMDANG'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CALLER'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IN_DESC'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_DONE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'RETURN_DESC'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'DAY_LOG_SEL'
    object DAY_LOG_SELID: TIntegerField
      FieldName = 'ID'
    end
    object DAY_LOG_SELIN_DATE: TDateField
      Alignment = taCenter
      FieldName = 'IN_DATE'
    end
    object DAY_LOG_SELIN_TIME: TStringField
      Alignment = taCenter
      FieldName = 'IN_TIME'
      Size = 10
    end
    object DAY_LOG_SELIN_KIND: TIntegerField
      Alignment = taCenter
      FieldName = 'IN_KIND'
    end
    object DAY_LOG_SELRECEIVED: TStringField
      FieldName = 'RECEIVED'
      Size = 50
    end
    object DAY_LOG_SELDAMDANG: TStringField
      FieldName = 'DAMDANG'
      Size = 50
    end
    object DAY_LOG_SELCALLER: TStringField
      FieldName = 'CALLER'
      Size = 50
    end
    object DAY_LOG_SELIN_DESC: TStringField
      FieldName = 'IN_DESC'
      Size = 255
    end
    object DAY_LOG_SELIS_DONE: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_DONE'
    end
    object DAY_LOG_SELRETURN_DESC: TStringField
      FieldName = 'RETURN_DESC'
      Size = 255
    end
    object DAY_LOG_SELCENTER_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'CENTER_ID'
    end
  end
  object DAY_LOG_INS: TUniStoredProc
    StoredProcName = 'DAY_LOG_INS'
    Connection = UniDBConnection
    Left = 624
    Top = 112
    ParamData = <
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'IN_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RECEIVED'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'DAMDANG'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CALLER'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IN_DESC'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_DONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RETURN_DESC'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'DAY_LOG_INS'
  end
  object vtCustomerImage: TVirtualTable
    Options = []
    IndexFieldNames = 'IMAGE_IDX'
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'CHECK_ID'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'CUST_UID'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'IMAGE_IDX'
        DataType = ftInteger
      end
      item
        Name = 'PICTURE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'IMAGE_DATA'
        DataType = ftBlob
      end
      item
        Name = 'DRAW_DATA'
        DataType = ftBlob
      end>
    Left = 504
    Top = 104
    object vtCustomerImageID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object vtCustomerImageCHECK_ID: TStringField
      FieldName = 'CHECK_ID'
      Size = 17
    end
    object vtCustomerImageCUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object vtCustomerImageIMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
    object vtCustomerImagePICTURE_DATE: TDateTimeField
      FieldName = 'PICTURE_DATE'
    end
    object vtCustomerImageIMAGE_DATA: TBlobField
      FieldName = 'IMAGE_DATA'
    end
    object vtCustomerImageDRAW_DATA: TBlobField
      FieldName = 'DRAW_DATA'
    end
  end
  object d_compare_data: TDataSource
    DataSet = q_compare_data
    Left = 800
    Top = 512
  end
  object q_compare_data: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CUST_COMPARE_MULTI_DATA'
      '  (ID, MEMBER_ID, COMPARE_NAME, IMAGE_CNT)'
      'VALUES'
      '  (:ID, :MEMBER_ID, :COMPARE_NAME, :IMAGE_CNT)')
    SQLDelete.Strings = (
      'DELETE FROM CUST_COMPARE_MULTI_DATA'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CUST_COMPARE_MULTI_DATA'
      'SET'
      
        '  ID = :ID, MEMBER_ID = :MEMBER_ID, COMPARE_NAME = :COMPARE_NAME' +
        ', IMAGE_CNT = :IMAGE_CNT'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CUST_COMPARE_MULTI_DATA'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, MEMBER_ID, COMPARE_NAME, IMAGE_CNT FROM CUST_COMPARE_' +
        'MULTI_DATA'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CUST_COMPARE_MULTI_DATA'
      ''
      ') q')
    Connection = UniDBConnection
    SQL.Strings = (
      'select * from cust_compare_multi_data'
      'where member_id = :mem_id'
      'order by id;')
    Left = 800
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'mem_id'
        ParamType = ptInput
      end>
    object q_compare_dataID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_compare_dataMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 17
    end
    object q_compare_dataCOMPARE_NAME: TStringField
      FieldName = 'COMPARE_NAME'
      Size = 30
    end
    object q_compare_dataIMAGE_CNT: TSmallintField
      Alignment = taCenter
      FieldName = 'IMAGE_CNT'
    end
  end
  object CUST_COMPARE_MULTI_SEL: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_MULTI_SEL'
    Connection = UniDBConnection
    Left = 800
    Top = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'D_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDateTime
        Name = 'IMAGE_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_IDX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUST_COMPARE_MULTI_SEL'
    object CUST_COMPARE_MULTI_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUST_COMPARE_MULTI_SELDATA_ID: TIntegerField
      FieldName = 'DATA_ID'
    end
    object CUST_COMPARE_MULTI_SELIMAGE_ID: TStringField
      FieldName = 'IMAGE_ID'
      Size = 17
    end
    object CUST_COMPARE_MULTI_SELIMAGE_DATE: TDateTimeField
      FieldName = 'IMAGE_DATE'
    end
    object CUST_COMPARE_MULTI_SELIMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
  end
  object CUSTOMER_FAVORITE_SELECT: TUniStoredProc
    StoredProcName = 'CUSTOMER_FAVORITE_SELECT'
    Connection = UniDBConnection
    Left = 976
    Top = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUSTOMER_FAVORITE_SELECT'
    object CUSTOMER_FAVORITE_SELECTUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_FAVORITE_SELECTCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_FAVORITE_SELECTSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_FAVORITE_SELECTCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_FAVORITE_SELECTCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 50
    end
    object CUSTOMER_FAVORITE_SELECTREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object CUSTOMER_FAVORITE_SELECTJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
    object CUSTOMER_FAVORITE_SELECTIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
  end
  object d_CUSTOMER_FAVORITE_SELECT: TDataSource
    DataSet = CUSTOMER_FAVORITE_SELECT
    Left = 976
    Top = 584
  end
  object CUSTOMER_FAVORITE_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_FAVORITE_INS'
    Connection = UniDBConnection
    Left = 976
    Top = 632
    ParamData = <
      item
        DataType = ftString
        Name = 'CUST_UID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CUSTOMER_FAVORITE_INS'
  end
  object CUSTOMER_FAVORITE_DEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_FAVORITE_DEL'
    Connection = UniDBConnection
    Left = 976
    Top = 680
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CUSTOMER_FAVORITE_DEL'
  end
  object t_customer_kind: TUniTable
    TableName = 'CUSTOMER_KIND'
    Connection = UniDBConnection
    Left = 1280
    Top = 8
    object t_customer_kindID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object t_customer_kindK_NAME: TStringField
      DisplayLabel = #54924#50896#44396#48516
      FieldName = 'K_NAME'
      Size = 30
    end
  end
  object d_customer_kind: TDataSource
    DataSet = t_customer_kind
    Left = 1280
    Top = 56
  end
  object CUSTOMER_UPD_SMS: TUniStoredProc
    StoredProcName = 'CUSTOMER_UPD_SMS'
    Connection = UniDBConnection
    Left = 352
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftSmallint
        Name = 'SMS_YESNO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_UPD_SMS'
  end
  object LESSON_CUSTOMER_BREAK_SEL: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_BREAK_SEL'
    Connection = UniDBConnection
    Left = 1176
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'L_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LECTURE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'REASONS'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftInteger
        Name = 'BREAK_STATUS'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_BREAK_SEL'
    object LESSON_CUSTOMER_BREAK_SELID: TIntegerField
      FieldName = 'ID'
    end
    object LESSON_CUSTOMER_BREAK_SELLECTURE_ID: TStringField
      FieldName = 'LECTURE_ID'
      Size = 17
    end
    object LESSON_CUSTOMER_BREAK_SELSTART_DATE: TDateField
      Alignment = taCenter
      FieldName = 'START_DATE'
    end
    object LESSON_CUSTOMER_BREAK_SELEND_DATE: TDateField
      Alignment = taCenter
      FieldName = 'END_DATE'
    end
    object LESSON_CUSTOMER_BREAK_SELREASONS: TStringField
      FieldName = 'REASONS'
      Size = 30
    end
    object LESSON_CUSTOMER_BREAK_SELBREAK_STATUS: TIntegerField
      Alignment = taCenter
      FieldName = 'BREAK_STATUS'
    end
  end
  object ds_LESSON_CUSTOMER_BREAK_SEL: TDataSource
    DataSet = LESSON_CUSTOMER_BREAK_SEL
    Left = 1176
    Top = 80
  end
  object CHECK_CUSTOMER_EXISTS: TUniStoredProc
    StoredProcName = 'CHECK_CUSTOMER_EXISTS'
    Connection = UniDBConnection
    Left = 1176
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_TEL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'REC_CNT'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CHECK_CUSTOMER_EXISTS'
    object CHECK_CUSTOMER_EXISTSREC_CNT: TIntegerField
      FieldName = 'REC_CNT'
    end
  end
  object UniConnUsers: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'D:\fb_data\PVBodyYoga\YOGABODY_USER.FDB'
    Username = 'sysdba'
    Server = '210.122.36.244'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 104
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object UniTransaction1: TUniTransaction
    DefaultConnection = UniDBConnection
    Left = 152
    Top = 88
  end
  object UniConnImage: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'D:\fb_data\PVBodyYoga\IMAGE_UPLOADER.FDB'
    Username = 'sysdba'
    Server = '210.122.36.244'
    Connected = True
    LoginPrompt = False
    Left = 1176
    Top = 208
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object IMAGE_TEMP_INS: TUniStoredProc
    StoredProcName = 'IMAGE_TEMP_INS'
    Connection = UniConnImage
    Left = 1176
    Top = 256
    ParamData = <
      item
        DataType = ftString
        Name = 'CENTER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftBlob
        Name = 'IMAGE_DATA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IMAGE_NAME'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'IMAGE_TEMP_INS'
  end
  object IMAGE_DELETE_ACTION_INS: TUniStoredProc
    StoredProcName = 'IMAGE_DELETE_ACTION_INS'
    Connection = UniConnImage
    Left = 1176
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CENTER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE_NAME'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'IMAGE_DELETE_ACTION_INS'
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Fire' +
      'fox/12.0'
    HTTPOptions = [hoInProcessAuth]
    Left = 152
    Top = 32
  end
  object NPRACTICE_SEL: TUniStoredProc
    StoredProcName = 'NPRACTICE_SEL'
    Connection = UniDBConnection
    Left = 1032
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'P_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FOR_PAIN'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'FOR_BODY'
        ParamType = ptOutput
        Size = 100
      end>
    CommandStoredProcName = 'NPRACTICE_SEL'
    object NPRACTICE_SELID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object NPRACTICE_SELP_NAME: TStringField
      FieldName = 'P_NAME'
      Size = 50
    end
    object NPRACTICE_SELFOR_PAIN: TStringField
      FieldName = 'FOR_PAIN'
      Size = 100
    end
    object NPRACTICE_SELFOR_BODY: TStringField
      FieldName = 'FOR_BODY'
      Size = 100
    end
  end
  object LATEST_CUSTOMER_SEL: TUniStoredProc
    StoredProcName = 'LATEST_CUSTOMER_SEL'
    Connection = UniDBConnection
    Left = 368
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'LOGIN_USER'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CUST_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'CUST_TEL'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'USER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'CUST_SEX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LATEST_CUSTOMER_SEL'
    object LATEST_CUSTOMER_SELID: TIntegerField
      FieldName = 'ID'
    end
    object LATEST_CUSTOMER_SELCUST_ID: TStringField
      FieldName = 'CUST_ID'
      Size = 17
    end
    object LATEST_CUSTOMER_SELCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      Size = 30
    end
    object LATEST_CUSTOMER_SELCUST_TEL: TStringField
      FieldName = 'CUST_TEL'
      Size = 30
    end
    object LATEST_CUSTOMER_SELUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 17
    end
    object LATEST_CUSTOMER_SELCUST_SEX: TSmallintField
      FieldName = 'CUST_SEX'
    end
  end
  object LATEST_CUSTOMER_INS: TUniStoredProc
    StoredProcName = 'LATEST_CUSTOMER_INS'
    Connection = UniDBConnection
    Left = 368
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CUST_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'CUST_TEL'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'USER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'CUST_SEX'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LATEST_CUSTOMER_INS'
  end
  object LATEST_CUSTOMER_DEL: TUniStoredProc
    StoredProcName = 'LATEST_CUSTOMER_DEL'
    Connection = UniDBConnection
    Left = 368
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LATEST_CUSTOMER_DEL'
  end
  object ds_LATEST_CUSTOMER_SEL: TDataSource
    DataSet = LATEST_CUSTOMER_SEL
    Left = 368
    Top = 176
  end
  object REGISTED_CENTER_SEL: TUniStoredProc
    StoredProcName = 'REGISTED_CENTER_SEL'
    Connection = UniDBConnection
    Left = 800
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'REGISTED_CENTER_SEL'
    object REGISTED_CENTER_SELID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object REGISTED_CENTER_SELC_NAME: TStringField
      FieldName = 'C_NAME'
    end
  end
  object REGISTED_CENTER_LOOK: TUniStoredProc
    StoredProcName = 'REGISTED_CENTER_SEL'
    Connection = UniDBConnection
    Left = 904
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'REGISTED_CENTER_SEL'
    object REGISTED_CENTER_LOOKID: TIntegerField
      FieldName = 'ID'
    end
    object REGISTED_CENTER_LOOKC_NAME: TStringField
      FieldName = 'C_NAME'
    end
  end
  object ds_REGISTED_CENTER_LOOK: TDataSource
    DataSet = REGISTED_CENTER_LOOK
    Left = 904
    Top = 128
  end
  object REGISTED_CENTER_INS: TUniStoredProc
    StoredProcName = 'REGISTED_CENTER_INS'
    Connection = UniDBConnection
    Left = 904
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'REGISTED_CENTER_INS'
  end
  object REGISTED_CENTER_UPD: TUniStoredProc
    StoredProcName = 'REGISTED_CENTER_UPD'
    Connection = UniDBConnection
    Left = 904
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'REGISTED_CENTER_UPD'
  end
  object REGISTED_CENTER_DEL: TUniStoredProc
    StoredProcName = 'REGISTED_CENTER_DEL'
    Connection = UniDBConnection
    Left = 904
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'REGISTED_CENTER_DEL'
  end
  object UniConnImageDB: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 
      'D:\fb_data\newBodyCheck\image_db\20130502175726603\CUSTOMER_IMAG' +
      'ES.FDB'
    Username = 'sysdba'
    Server = '210.122.36.244'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 192
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object IMAGES_SEL: TUniStoredProc
    StoredProcName = 'IMAGES_SEL'
    Connection = UniConnImageDB
    Left = 64
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'IMAGE_DATA'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'IDX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'IMAGES_SEL'
    object IMAGES_SELID: TIntegerField
      FieldName = 'ID'
    end
    object IMAGES_SELIMAGE_DATA: TBlobField
      FieldName = 'IMAGE_DATA'
    end
    object IMAGES_SELDRAW_DATA: TBlobField
      FieldName = 'DRAW_DATA'
    end
    object IMAGES_SELIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
  object IMAGES_INS: TUniStoredProc
    StoredProcName = 'IMAGES_INS'
    Connection = UniConnImageDB
    Left = 64
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'IMAGE_DATA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'IDX'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'IMAGES_INS'
  end
  object IMAGES_UPD: TUniStoredProc
    StoredProcName = 'IMAGES_UPD'
    Connection = UniConnImageDB
    Left = 64
    Top = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftBlob
        Name = 'IMAGE_DATA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGES_UPD'
  end
  object IMAGES_DEL: TUniStoredProc
    StoredProcName = 'IMAGES_DEL'
    Connection = UniConnImageDB
    Left = 64
    Top = 576
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'IMAGES_DEL'
  end
  object ds_IMAGES_SEL: TDataSource
    DataSet = IMAGES_SEL
    Left = 64
    Top = 288
  end
  object IMAGES_SEL_BYDATE: TUniStoredProc
    StoredProcName = 'IMAGES_SEL_BYDATE'
    Connection = UniConnImageDB
    Left = 64
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'C_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'IMAGES_SEL_BYDATE'
    object IMAGES_SEL_BYDATEP_DATE: TDateField
      FieldName = 'P_DATE'
    end
    object IMAGES_SEL_BYDATECNT: TIntegerField
      Alignment = taCenter
      FieldName = 'CNT'
    end
    object IMAGES_SEL_BYDATECUST_ID: TStringField
      FieldName = 'CUST_ID'
      Size = 17
    end
  end
  object ds_IMAGES_SEL_BYDATE: TDataSource
    DataSet = IMAGES_SEL_BYDATE
    Left = 64
    Top = 384
  end
  object IMAGES_DEL_DATE: TUniStoredProc
    StoredProcName = 'IMAGES_DEL_DATE'
    Connection = UniConnImageDB
    Left = 64
    Top = 624
    ParamData = <
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'IMAGES_DEL_DATE'
  end
  object IMAGES_UPD_IDX: TUniStoredProc
    StoredProcName = 'IMAGES_UPD_IDX'
    Connection = UniConnImageDB
    Left = 64
    Top = 528
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'IDX'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'IMAGES_UPD_IDX'
  end
  object IMAGES_SEL_BYDATE_PERIOD: TUniStoredProc
    StoredProcName = 'IMAGES_SEL_BYDATE_PERIOD'
    Connection = UniConnImageDB
    Left = 64
    Top = 672
    ParamData = <
      item
        DataType = ftDate
        Name = 'SDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'EDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CNT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'IMAGES_SEL_BYDATE_PERIOD'
    object IMAGES_SEL_BYDATE_PERIODP_DATE: TDateField
      Alignment = taCenter
      FieldName = 'P_DATE'
    end
    object IMAGES_SEL_BYDATE_PERIODCNT: TIntegerField
      Alignment = taCenter
      FieldName = 'CNT'
    end
    object IMAGES_SEL_BYDATE_PERIODCUST_ID: TStringField
      FieldName = 'CUST_ID'
      Size = 17
    end
  end
  object ds_IMAGES_SEL_BYDATE_PERIOD: TDataSource
    DataSet = IMAGES_SEL_BYDATE_PERIOD
    Left = 64
    Top = 720
  end
  object ds_CUSTOMER_SEL_LOOK_TEL: TDataSource
    DataSet = CUSTOMER_SEL_LOOK_TEL
    Left = 352
    Top = 696
  end
  object CUSTOMER_SEL_LOOK_TEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL_LOOK_TEL'
    Connection = UniDBConnection
    Left = 352
    Top = 648
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CUSTOMER_SEL_LOOK_TEL'
    object CUSTOMER_SEL_LOOK_TELUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_SEL_LOOK_TELCNAME: TStringField
      FieldName = 'CNAME'
      Size = 50
    end
  end
  object CUSTOMER_SEARCH: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEARCH'
    Connection = UniDBConnection
    Left = 1312
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end>
    CommandStoredProcName = 'CUSTOMER_SEARCH'
    object CUSTOMER_SEARCHUID: TStringField
      FieldName = 'UID'
      Size = 17
    end
    object CUSTOMER_SEARCHCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_SEARCHCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_SEARCHSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
  end
  object ds_CUSTOMER_SEARCH: TDataSource
    DataSet = CUSTOMER_SEARCH
    Left = 1312
    Top = 160
  end
  object IMAGES_SEL_ID: TUniStoredProc
    StoredProcName = 'IMAGES_SEL_ID'
    Connection = UniConnImageDB
    Left = 136
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'IMAGE_DATA'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGES_SEL_ID'
    object IMAGES_SEL_IDID: TIntegerField
      FieldName = 'ID'
    end
    object IMAGES_SEL_IDIMAGE_DATA: TBlobField
      FieldName = 'IMAGE_DATA'
    end
    object IMAGES_SEL_IDDRAW_DATA: TBlobField
      FieldName = 'DRAW_DATA'
    end
  end
  object ds_IMAGES_SEL_ID: TDataSource
    DataSet = IMAGES_SEL_ID
    Left = 136
    Top = 304
  end
  object CHECK_ITEM_TREE_BODY_SEL: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_BODY_SEL'
    Connection = UniDBConnection
    Left = 1176
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_BODY_SEL'
    object CHECK_ITEM_TREE_BODY_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_TREE_BODY_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
  end
  object d_CHECK_ITEM_TREE_BODY_SEL: TDataSource
    DataSet = CHECK_ITEM_TREE_BODY_SEL
    Left = 1176
    Top = 408
  end
  object CHECK_ITEM_TREE_RESULT_SEL: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_RESULT_SEL'
    Connection = UniDBConnection
    Left = 1176
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_RESULT_SEL'
    object CHECK_ITEM_TREE_RESULT_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_TREE_RESULT_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
  end
  object d_CHECK_ITEM_TREE_RESULT_SEL: TDataSource
    DataSet = CHECK_ITEM_TREE_RESULT_SEL
    Left = 1176
    Top = 512
  end
  object NSTATIC_RESULT_PRACTICE_SEL: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_SEL'
    Connection = UniDBConnection
    Left = 1300
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'R_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PRACTICE_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IS_SELECTED'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_SEL'
    object NSTATIC_RESULT_PRACTICE_SELID: TIntegerField
      FieldName = 'ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELPRACTICE_ID: TIntegerField
      FieldName = 'PRACTICE_ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELDATA_ID: TIntegerField
      FieldName = 'DATA_ID'
    end
    object NSTATIC_RESULT_PRACTICE_SELIS_SELECTED: TIntegerField
      Alignment = taCenter
      FieldName = 'IS_SELECTED'
    end
  end
  object ds_NSTATIC_RESULT_PRACTICE_SEL: TDataSource
    DataSet = NSTATIC_RESULT_PRACTICE_SEL
    Left = 1300
    Top = 288
  end
  object NSTATIC_RESULT_PRACTICE_INS: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_INS'
    Connection = UniDBConnection
    Left = 1300
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRACTICE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_SELECTED'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_INS'
  end
  object NSTATIC_RESULT_PRACTICE_DEL: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_DEL'
    Connection = UniDBConnection
    Left = 1300
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_DEL'
  end
  object NSTATIC_RESULT_PRACTICE_UPD: TUniStoredProc
    StoredProcName = 'NSTATIC_RESULT_PRACTICE_UPD'
    Connection = UniDBConnection
    Left = 1300
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IS_SELECTED'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_RESULT_PRACTICE_UPD'
  end
  object NSTATIC_CHECK_DATA_UPD: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_DATA_UPD'
    Connection = UniDBConnection
    Left = 1300
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_COMMENTS'
        ParamType = ptInput
        Size = 10240
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_DATA_UPD'
  end
  object NSTATIC_CHECK_RESULT_UPD: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULT_UPD'
    Connection = UniDBConnection
    Left = 1304
    Top = 544
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DIRECTION_KIND'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULT_UPD'
  end
  object q_update_result: TUniQuery
    Connection = UniDBConnection
    SQL.Strings = (
      'UPDATE NSTATIC_CHECK_RESULT SET RESULT_LEVEL = :R_LEVEL'
      'WHERE ID = :ID')
    Left = 1304
    Top = 592
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'R_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object q_check_item_tree: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHECK_ITEM_TREE'
      
        '  (ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, HOWTO' +
        '_IMAGE, VIDEO_ID)'
      'VALUES'
      
        '  (:ID, :PARENT_ID, :IMAGE_ID, :ITEM_NAME, :BODY_ID, :RESULT_ID,' +
        ' :HOWTO_IMAGE, :VIDEO_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CHECK_ITEM_TREE'
      'SET'
      
        '  ID = :ID, PARENT_ID = :PARENT_ID, IMAGE_ID = :IMAGE_ID, ITEM_N' +
        'AME = :ITEM_NAME, BODY_ID = :BODY_ID, RESULT_ID = :RESULT_ID, HO' +
        'WTO_IMAGE = :HOWTO_IMAGE, VIDEO_ID = :VIDEO_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CHECK_ITEM_TREE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, H' +
        'OWTO_IMAGE, VIDEO_ID FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CHECK_ITEM_TREE'
      ''
      ') q')
    Connection = UniDBConnection
    SQL.Strings = (
      'select * from check_item_tree'
      'order by id')
    Left = 1304
    Top = 640
    object q_check_item_treeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_check_item_treePARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object q_check_item_treeIMAGE_ID: TIntegerField
      FieldName = 'IMAGE_ID'
    end
    object q_check_item_treeITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object q_check_item_treeBODY_ID: TIntegerField
      FieldName = 'BODY_ID'
    end
    object q_check_item_treeRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object q_check_item_treeHOWTO_IMAGE: TSmallintField
      FieldName = 'HOWTO_IMAGE'
    end
    object q_check_item_treeVIDEO_ID: TStringField
      FieldName = 'VIDEO_ID'
      Size = 30
    end
  end
  object d_check_item_tree: TDataSource
    DataSet = q_check_item_tree
    Left = 1304
    Top = 688
  end
  object NSTATIC_CHECK_RESULTIMG_SEL: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULTIMG_SEL'
    Connection = UniDBConnection
    Left = 1176
    Top = 576
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'RESULT_IMG'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULTIMG_SEL'
    object NSTATIC_CHECK_RESULTIMG_SELID: TIntegerField
      FieldName = 'ID'
    end
    object NSTATIC_CHECK_RESULTIMG_SELRESULT_IMG: TBlobField
      FieldName = 'RESULT_IMG'
    end
  end
  object NSTATIC_CHECK_RESULTIMG_IU: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULTIMG_IU'
    Connection = UniDBConnection
    Left = 1176
    Top = 624
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'RESULT_IMG'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULTIMG_IU'
  end
  object NPRACTICE_ASSIGN_SEL: TUniStoredProc
    StoredProcName = 'NPRACTICE_ASSIGN_SEL'
    Connection = UniDBConnection
    Left = 1176
    Top = 672
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DIRECTION_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRACTICE_ID'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'NPRACTICE_ASSIGN_SEL'
    StoredProcIsQuery = True
    object NPRACTICE_ASSIGN_SELPRACTICE_ID: TIntegerField
      FieldName = 'PRACTICE_ID'
    end
  end
  object q_check_picture: TUniQuery
    Connection = UniDBConnection
    SQL.Strings = (
      'select id from NSTATIC_CHECK_RESULTIMG'
      'where result_id = :result_id')
    Left = 1384
    Top = 608
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result_id'
        ParamType = ptInput
      end>
    object q_check_pictureID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object IMAGE_LAYERS_DEL: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_DEL'
    Connection = UniConnImageDB
    Left = 1337
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_DEL'
  end
  object IMAGE_LAYERS_INS: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_INS'
    Connection = UniConnImageDB
    Left = 1337
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftMemo
        Name = 'C_COMMENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'C_IMAGE'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_INS'
  end
  object IMAGE_LAYERS_UPD: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_UPD'
    Connection = UniConnImageDB
    Left = 1337
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftMemo
        Name = 'C_COMMENT'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'C_IMAGE'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_UPD'
  end
  object IMAGE_LAYERS_SEL: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_SEL'
    Connection = UniConnImageDB
    Left = 1337
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'M_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'P_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftMemo
        Name = 'C_COMMENT'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_SEL'
    object IMAGE_LAYERS_SELID: TIntegerField
      FieldName = 'ID'
    end
    object IMAGE_LAYERS_SELMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 17
    end
    object IMAGE_LAYERS_SELP_DATE: TDateField
      FieldName = 'P_DATE'
    end
    object IMAGE_LAYERS_SELC_NAME: TStringField
      FieldName = 'C_NAME'
      Size = 50
    end
    object IMAGE_LAYERS_SELC_COMMENT: TMemoField
      FieldName = 'C_COMMENT'
      BlobType = ftMemo
    end
  end
  object ds_IMAGE_LAYERS_SEL: TDataSource
    DataSet = IMAGE_LAYERS_SEL
    Left = 1337
    Top = 208
  end
  object IMAGE_LAYERS_SEL_IMAGE: TUniStoredProc
    StoredProcName = 'IMAGE_LAYERS_SEL_IMAGE'
    Connection = UniConnImageDB
    Left = 1337
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'C_IMAGE'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGE_LAYERS_SEL_IMAGE'
    object IMAGE_LAYERS_SEL_IMAGEC_IMAGE: TBlobField
      FieldName = 'C_IMAGE'
    end
  end
  object ds_IMAGE_LAYERS_SEL_IMAGE: TDataSource
    DataSet = IMAGE_LAYERS_SEL_IMAGE
    Left = 1337
    Top = 304
  end
  object CUST_COMPARE_WIN_DEL: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_WIN_DEL'
    Connection = UniDBConnection
    Left = 597
    Top = 589
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CUST_COMPARE_WIN_DEL'
  end
  object CUST_COMPARE_WIN_UPD: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_WIN_UPD'
    Connection = UniDBConnection
    Left = 597
    Top = 637
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'COMPARE_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'IMAGE1_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE2_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE3_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE4_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE1'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE2'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE3'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE4'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'CUST_COMPARE_WIN_UPD'
  end
  object CUST_COMPARE_WIN_INS: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_WIN_INS'
    Connection = UniDBConnection
    Left = 597
    Top = 685
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'MAKE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMPARE_NAME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE1_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE2_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE3_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE4_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE1'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE2'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE3'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE4'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'CUST_COMPARE_WIN_INS'
  end
  object CUST_COMPARE_WIN_SEL: TUniStoredProc
    StoredProcName = 'CUST_COMPARE_WIN_SEL'
    Connection = UniDBConnection
    Left = 597
    Top = 733
    ParamData = <
      item
        DataType = ftString
        Name = 'CUST_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'MAKE_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'COMPARE_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE1_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE2_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE3_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE4_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE1'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE2'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE3'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'IMAGE_DATE4'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CUST_COMPARE_WIN_SEL'
    object CUST_COMPARE_WIN_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object CUST_COMPARE_WIN_SELMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 17
    end
    object CUST_COMPARE_WIN_SELMAKE_DATE: TDateField
      FieldName = 'MAKE_DATE'
    end
    object CUST_COMPARE_WIN_SELCOMPARE_NAME: TStringField
      FieldName = 'COMPARE_NAME'
      Size = 30
    end
    object CUST_COMPARE_WIN_SELCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object CUST_COMPARE_WIN_SELIMAGE1_ID: TStringField
      FieldName = 'IMAGE1_ID'
      Size = 17
    end
    object CUST_COMPARE_WIN_SELIMAGE2_ID: TStringField
      FieldName = 'IMAGE2_ID'
      Size = 17
    end
    object CUST_COMPARE_WIN_SELIMAGE3_ID: TStringField
      FieldName = 'IMAGE3_ID'
      Size = 17
    end
    object CUST_COMPARE_WIN_SELIMAGE4_ID: TStringField
      FieldName = 'IMAGE4_ID'
      Size = 17
    end
    object CUST_COMPARE_WIN_SELIMAGE_DATE1: TStringField
      FieldName = 'IMAGE_DATE1'
      Size = 50
    end
    object CUST_COMPARE_WIN_SELIMAGE_DATE2: TStringField
      FieldName = 'IMAGE_DATE2'
      Size = 50
    end
    object CUST_COMPARE_WIN_SELIMAGE_DATE3: TStringField
      FieldName = 'IMAGE_DATE3'
      Size = 50
    end
    object CUST_COMPARE_WIN_SELIMAGE_DATE4: TStringField
      FieldName = 'IMAGE_DATE4'
      Size = 50
    end
  end
  object ds_CUST_COMPARE_WIN_SEL: TDataSource
    DataSet = CUST_COMPARE_WIN_SEL
    Left = 597
    Top = 781
  end
  object NSTATIC_CHECK_RESULT_INS: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_RESULT_INS'
    Connection = UniDBConnection
    Left = 1304
    Top = 744
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DATA_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_MAIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_SUBITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RESULT_VALUE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRACTICE_ID'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftSmallint
        Name = 'RESULT_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'DIRECTION_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'R_GUID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_RESULT_INS'
  end
  object MUSCLE_MAIN_SEL: TUniStoredProc
    StoredProcName = 'MUSCLE_MAIN_SEL'
    Connection = UniDBConnection
    Left = 800
    Top = 632
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'M_NAME'
        ParamType = ptOutput
        Size = 30
      end>
    CommandStoredProcName = 'MUSCLE_MAIN_SEL'
    object MUSCLE_MAIN_SELID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object MUSCLE_MAIN_SELM_NAME: TStringField
      FieldName = 'M_NAME'
      Size = 30
    end
  end
  object ds_MUSCLE_MAIN_SEL: TDataSource
    DataSet = MUSCLE_MAIN_SEL
    Left = 800
    Top = 680
  end
  object MUSCLE_IMAGES_SEL: TUniStoredProc
    StoredProcName = 'MUSCLE_IMAGES_SEL'
    Connection = UniDBConnection
    Left = 800
    Top = 728
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MKIND'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MPOINT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'M_NAME'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftBlob
        Name = 'M_IMAGE'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'M_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftMemo
        Name = 'M_DESC'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'M_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'M_POINT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'M_SEX'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'MUSCLE_IMAGES_SEL'
    object MUSCLE_IMAGES_SELID: TIntegerField
      FieldName = 'ID'
    end
    object MUSCLE_IMAGES_SELM_NAME: TStringField
      FieldName = 'M_NAME'
      Size = 50
    end
    object MUSCLE_IMAGES_SELM_IMAGE: TBlobField
      FieldName = 'M_IMAGE'
    end
    object MUSCLE_IMAGES_SELM_KIND: TIntegerField
      FieldName = 'M_KIND'
    end
    object MUSCLE_IMAGES_SELM_DESC: TMemoField
      FieldName = 'M_DESC'
      BlobType = ftMemo
    end
    object MUSCLE_IMAGES_SELM_IDX: TIntegerField
      FieldName = 'M_IDX'
    end
    object MUSCLE_IMAGES_SELM_POINT: TIntegerField
      FieldName = 'M_POINT'
    end
    object MUSCLE_IMAGES_SELM_SEX: TIntegerField
      FieldName = 'M_SEX'
    end
  end
  object ds_MUSCLE_IMAGES_SEL: TDataSource
    DataSet = MUSCLE_IMAGES_SEL
    Left = 800
    Top = 776
  end
  object IMAGES_UPD_DRAWONLY: TUniStoredProc
    StoredProcName = 'IMAGES_UPD_DRAWONLY'
    Connection = UniConnImageDB
    Left = 144
    Top = 456
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftBlob
        Name = 'DRAW_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'IMAGES_UPD_DRAWONLY'
  end
  object CUSTOMER_SEL_BYID: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL_BYID'
    Connection = UniDBConnection
    Left = 160
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'CUSTOMER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CAGE'
        ParamType = ptOutput
        Size = 3
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CBIGO'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOBBY'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BLOOD'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BLOOD_PRESSURE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BODY_STATUS'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'FOOD_KIND'
        ParamType = ptOutput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_MUCH'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_OFTEN'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME_ETC'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_ETC'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_DESC'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'PHOTO'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CUSTOMER_SEL_BYID'
    object CUSTOMER_SEL_BYIDUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_SEL_BYIDCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_SEL_BYIDSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_SEL_BYIDCAGE: TStringField
      FieldName = 'CAGE'
      Size = 3
    end
    object CUSTOMER_SEL_BYIDCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_SEL_BYIDCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 50
    end
    object CUSTOMER_SEL_BYIDCBIGO: TStringField
      FieldName = 'CBIGO'
      Size = 255
    end
    object CUSTOMER_SEL_BYIDREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object CUSTOMER_SEL_BYIDJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDHOBBY: TStringField
      FieldName = 'HOBBY'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDHOW_TO_COME: TStringField
      FieldName = 'HOW_TO_COME'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDPURPOSE: TStringField
      FieldName = 'PURPOSE'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDBLOOD: TStringField
      FieldName = 'BLOOD'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDBLOOD_PRESSURE: TStringField
      FieldName = 'BLOOD_PRESSURE'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDBODY_STATUS: TStringField
      FieldName = 'BODY_STATUS'
      Size = 255
    end
    object CUSTOMER_SEL_BYIDFOOD_KIND: TStringField
      FieldName = 'FOOD_KIND'
      Size = 12
    end
    object CUSTOMER_SEL_BYIDFOOD_HOW_MUCH: TStringField
      FieldName = 'FOOD_HOW_MUCH'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDFOOD_HOW_OFTEN: TStringField
      FieldName = 'FOOD_HOW_OFTEN'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDHOW_TO_COME_ETC: TStringField
      FieldName = 'HOW_TO_COME_ETC'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDPURPOSE_ETC: TStringField
      FieldName = 'PURPOSE_ETC'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDPURPOSE_DESC: TStringField
      FieldName = 'PURPOSE_DESC'
      Size = 255
    end
    object CUSTOMER_SEL_BYIDIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object CUSTOMER_SEL_BYIDPHOTO: TBlobField
      FieldName = 'PHOTO'
    end
  end
  object ds_CUSTOMER_SEL_BYID: TDataSource
    DataSet = CUSTOMER_SEL_BYID
    Left = 160
    Top = 184
  end
  object CUSTOMER_SEL_RECENT_REG: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL_RECENT_REG'
    Connection = UniDBConnection
    Left = 200
    Top = 736
    ParamData = <
      item
        DataType = ftString
        Name = 'COMP_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'SUB_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUSTOMER_SEL_RECENT_REG'
    object CUSTOMER_SEL_RECENT_REGUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_SEL_RECENT_REGCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_SEL_RECENT_REGSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_SEL_RECENT_REGCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_SEL_RECENT_REGREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
  end
  object ds_CUSTOMER_SEL_RECENT_REG: TDataSource
    DataSet = CUSTOMER_SEL_RECENT_REG
    Left = 200
    Top = 784
  end
end
