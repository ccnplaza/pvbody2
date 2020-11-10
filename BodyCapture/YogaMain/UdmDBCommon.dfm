object dmDBCommon: TdmDBCommon
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 796
  Width = 1076
  object UniDBConnection: TUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'D:\fb_data\PVBodyYoga\20130706201626744\GOODPOSTURE.FDB'
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
    Left = 162
    Top = 64
  end
  object dsCUSTOMER_IMAGE3_SEL: TDataSource
    DataSet = CUSTOMER_IMAGE3_SEL
    Left = 288
    Top = 49
  end
  object CUSTOMER_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL'
    Connection = UniDBConnection
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 162
    Top = 128
    ParamData = <
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
  end
  object d_CUSTOMER_SEL: TUniDataSource
    DataSet = CUSTOMER_SEL
    Left = 162
    Top = 176
  end
  object CUSTOMER_BASIC_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_BASIC_SEL'
    Connection = UniDBConnection
    Left = 162
    Top = 224
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
    Left = 162
    Top = 272
  end
  object CUSTOMER_TEL_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_TEL_SEL'
    Connection = UniDBConnection
    Left = 63
    Top = 198
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
    Left = 63
    Top = 246
  end
  object CUSTOMER_SEL_LOOK: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL_LOOK'
    Connection = UniDBConnection
    Left = 64
    Top = 616
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
    Left = 64
    Top = 664
  end
  object dxMemConnection: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F060000000F00000001000700735F61646472000400
      000003000800735F706F727473003200000001000500735F6462000A00000001
      000B00735F70726F7669646572000A00000001000700735F70617373000A0000
      0001000800735F756E616D6500010C0000003231302E3132322E372E333901EA
      0B00000127000000443A5C66625F646174615C5056426F6479596F67615C594F
      4741424F44595F555345522E4644420109000000496E74657262617365010900
      00006D61737465726B65790106000000737973646261}
    SortOptions = []
    Left = 64
    Top = 104
    object dxMemConnections_addr: TStringField
      FieldName = 's_addr'
      Size = 15
    end
    object dxMemConnections_ports: TIntegerField
      FieldName = 's_ports'
    end
    object dxMemConnections_db: TStringField
      FieldName = 's_db'
      Size = 50
    end
    object dxMemConnections_provider: TStringField
      FieldName = 's_provider'
      Size = 10
    end
    object dxMemConnections_pass: TStringField
      FieldName = 's_pass'
      Size = 10
    end
    object dxMemConnections_uname: TStringField
      FieldName = 's_uname'
      Size = 10
    end
  end
  object PICTURE_DATA_SEL: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_SEL'
    Connection = UniDBConnection
    Left = 162
    Top = 16
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
        DataType = ftSmallint
        Name = 'CHASU'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'PICTURE_DATA_SEL'
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
    object PICTURE_DATA_SELCHASU: TSmallintField
      Alignment = taCenter
      FieldName = 'CHASU'
    end
  end
  object CUSTOMER_IMAGE3_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE3_SEL'
    Connection = UniDBConnection
    Left = 288
    Top = 3
    ParamData = <
      item
        DataType = ftString
        Name = 'CHK_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CHECK_ID'
        ParamType = ptOutput
        Size = 17
        Value = Null
      end
      item
        DataType = ftString
        Name = 'CUST_UID'
        ParamType = ptOutput
        Size = 17
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_IDX'
        ParamType = ptOutput
        Value = Null
      end
      item
        DataType = ftDateTime
        Name = 'PICTURE_DATE'
        ParamType = ptOutput
        Value = Null
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
    CommandStoredProcName = 'CUSTOMER_IMAGE3_SEL'
    StoredProcIsQuery = True
    object CUSTOMER_IMAGE3_SELID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object CUSTOMER_IMAGE3_SELCHECK_ID: TStringField
      FieldName = 'CHECK_ID'
      Size = 17
    end
    object CUSTOMER_IMAGE3_SELCUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object CUSTOMER_IMAGE3_SELIMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
    object CUSTOMER_IMAGE3_SELPICTURE_DATE: TDateTimeField
      FieldName = 'PICTURE_DATE'
    end
    object CUSTOMER_IMAGE3_SELIMAGE_DATA: TBlobField
      FieldName = 'IMAGE_DATA'
    end
    object CUSTOMER_IMAGE3_SELDRAW_DATA: TBlobField
      FieldName = 'DRAW_DATA'
    end
  end
  object CUSTOMER_IMAGE3_UPD_IMAGES: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE3_UPD_IMAGES'
    Connection = UniDBConnection
    Left = 288
    Top = 107
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
    CommandStoredProcName = 'CUSTOMER_IMAGE3_UPD_IMAGES'
  end
  object CUSTOMER_IMAGE3_DEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE3_DEL'
    Connection = UniDBConnection
    Left = 288
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE3_DEL'
  end
  object CUSTOMER_IMAGE3_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE3_INS'
    Connection = UniDBConnection
    Left = 288
    Top = 203
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CHECK_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CUST_UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'IMAGE_IDX'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'PICTURE_DATE'
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
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE3_INS'
  end
  object PICTURE_DATA_UPD_COUNT: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_UPD_COUNT'
    Connection = UniDBConnection
    Left = 288
    Top = 251
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
    Left = 288
    Top = 312
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
    Left = 288
    Top = 408
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
    Left = 288
    Top = 360
  end
  object CUSTOMER_SELECT_NAME: TUniStoredProc
    StoredProcName = 'CUSTOMER_SELECT_NAME'
    Connection = UniDBConnection
    Left = 63
    Top = 312
    ParamData = <
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
    Left = 63
    Top = 360
  end
  object t_center: TUniTable
    TableName = 'REGISTED_CENTER'
    Connection = UniDBConnection
    Left = 616
    Top = 304
    object t_centerID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object t_centerC_NAME: TStringField
      FieldName = 'C_NAME'
    end
  end
  object d_center: TDataSource
    DataSet = t_center
    Left = 616
    Top = 352
  end
  object PICTURE_DATA_INS: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_INS'
    Connection = UniDBConnection
    Left = 64
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'CUST_UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'PICTURE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PIC_CNT'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'CHASU'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PICTURE_DATA_INS'
  end
  object PICTURE_DATA_DEL: TUniStoredProc
    StoredProcName = 'PICTURE_DATA_DEL'
    Connection = UniDBConnection
    Left = 64
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'PICTURE_DATA_DEL'
  end
  object vtCustomerImage: TVirtualTable
    Options = [voPersistentData]
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
    Left = 648
    Top = 96
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
  object CUSTOMER_IMAGE3_SEL_CUSTID: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE3_SEL_CUSTID'
    Connection = UniDBConnection
    Left = 648
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
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
        Name = 'CHECK_ID'
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
        DataType = ftInteger
        Name = 'IMAGE_IDX'
        ParamType = ptOutput
      end
      item
        DataType = ftDateTime
        Name = 'PICTURE_DATE'
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
    CommandStoredProcName = 'CUSTOMER_IMAGE3_SEL_CUSTID'
  end
  object dxMemDataLocalPicture: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 648
    Top = 144
    object dxMemDataLocalPictureID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object dxMemDataLocalPictureCHECK_ID: TStringField
      FieldName = 'CHECK_ID'
      Size = 17
    end
    object dxMemDataLocalPictureCUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object dxMemDataLocalPictureIMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
    object dxMemDataLocalPicturePICTURE_DATE: TSQLTimeStampField
      FieldName = 'PICTURE_DATE'
    end
    object dxMemDataLocalPictureIMAGE_DATA: TBlobField
      FieldName = 'IMAGE_DATA'
    end
    object dxMemDataLocalPictureDRAW_DATA: TBlobField
      FieldName = 'DRAW_DATA'
    end
  end
  object dxLocalPicture: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 648
    Top = 192
    object dxLocalPictureid: TStringField
      FieldName = 'id'
      Size = 17
    end
    object dxLocalPicturecheck_id: TStringField
      FieldName = 'check_id'
      Size = 17
    end
    object dxLocalPicturecust_id: TStringField
      FieldName = 'cust_uid'
      Size = 17
    end
    object dxLocalPictureimage_idx: TIntegerField
      FieldName = 'image_idx'
    end
    object dxLocalPicturepicture_date: TSQLTimeStampField
      FieldName = 'picture_date'
    end
    object dxLocalPictureimage_data: TBlobField
      FieldName = 'image_data'
    end
    object dxLocalPicturedraw_data: TBlobField
      FieldName = 'draw_data'
    end
  end
end
