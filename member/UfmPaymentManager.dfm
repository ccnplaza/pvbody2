object fmPaymentManager: TfmPaymentManager
  Left = 0
  Top = 0
  Caption = #49688#45225#44288#47532
  ClientHeight = 618
  ClientWidth = 1039
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 0
    Top = 28
    Width = 697
    Height = 590
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel10'
    TabOrder = 0
    object cxGrid7: TcxGrid
      Left = 0
      Top = 0
      Width = 697
      Height = 590
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'Black'
      object cxGrid7DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = d_LESSON_PAYMENT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,'
            Kind = skSum
            FieldName = 'PAY_AMOUNT'
            Column = cxGrid7DBTableView1PAY_AMOUNT
            DisplayText = #54633#44228'='
          end
          item
            Format = #54633#44228
            Kind = skCount
            FieldName = 'PAY_DATE'
            Column = cxGrid7DBTableView1PAY_DATE
          end
          item
            Format = '#, ('#44148#49688')'
            Kind = skCount
            FieldName = 'MEMBER_ID'
            Column = cxGrid7DBTableView1MEMBER_ID
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soNullIgnore]
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid7DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 41
        end
        object cxGrid7DBTableView1PAY_DATE: TcxGridDBColumn
          Caption = #44208#51116#51068#51088
          DataBinding.FieldName = 'PAY_DATE'
          Width = 80
        end
        object cxGrid7DBTableView1MEMBER_ID: TcxGridDBColumn
          Caption = #54924#50896#47749
          DataBinding.FieldName = 'MEMBER_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'CNAME'
            end>
          Properties.ListSource = d_CUSTOMER
          Width = 70
        end
        object cxGrid7DBTableView1LEC_CODE: TcxGridDBColumn
          Caption = #44053#51032#47749
          DataBinding.FieldName = 'LEC_CODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'L_NAME'
            end>
          Properties.ListSource = d_LESSON
          Width = 92
        end
        object cxGrid7DBTableView1PAY_YEAR: TcxGridDBColumn
          Caption = #45380#46020
          DataBinding.FieldName = 'PAY_YEAR'
          Width = 55
        end
        object cxGrid7DBTableView1PAY_MONTH: TcxGridDBColumn
          Caption = #50900#48516
          DataBinding.FieldName = 'PAY_MONTH'
          Width = 39
        end
        object cxGrid7DBTableView1PAY_KIND: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'PAY_KIND'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #54788#44552
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #52852#46300
              Value = 1
            end
            item
              Description = #51060#52404
              Value = 2
            end
            item
              Description = #44592#53440
              Value = 3
            end>
          Width = 58
        end
        object cxGrid7DBTableView1PAY_AMOUNT: TcxGridDBColumn
          Caption = #49688#45225#50529
          DataBinding.FieldName = 'PAY_AMOUNT'
          Width = 87
        end
        object cxGrid7DBTableView1BIGO: TcxGridDBColumn
          Caption = #48708#44256
          DataBinding.FieldName = 'BIGO'
          Width = 222
        end
      end
      object cxGrid7Level1: TcxGridLevel
        GridView = cxGrid7DBTableView1
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1039
    Height = 28
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 56
      Height = 13
      Caption = #51312#54924#44592#44036':'
    end
    object paySDate: TcxDateEdit
      Left = 74
      Top = 4
      TabOrder = 0
      Width = 102
    end
    object payEDate: TcxDateEdit
      Left = 175
      Top = 4
      TabOrder = 1
      Width = 102
    end
    object btnPaymentView: TBitBtn
      Left = 276
      Top = 2
      Width = 68
      Height = 25
      Caption = #54869#51064
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADAD00CDADADDADADAD00CDADADAAD000070CDADADADD0DADA0BDADA
        DADA0DAFFFF0000000000AF7F770FFFFFFF00DFFFFF0FFFFFFF00AF77F70F7FF
        FFF0A0FFFF0FFFFFFFF0DA00007F77FFFFF0AD0FFFFFFFFFFFF0DA0F7777F77F
        FFF0AD0FFFFFFFFFFFF0DA00000000000000ADADADADADADADAD}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnPaymentViewClick
    end
  end
  object q_customer: TUniQuery
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
      'select UID, CNAME, company_id from customer'
      'where company_id = :company_id')
    Options.AutoPrepare = True
    SpecificOptions.Strings = (
      'InterBase.AutoClose=True'
      'InterBase.FetchAll=True'
      'InterBase.StreamedBlobs=True')
    Left = 72
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'company_id'
        ParamType = ptInput
      end>
    object q_customerUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 40
    end
    object q_customerCNAME: TStringField
      FieldName = 'CNAME'
    end
    object q_customerCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
  end
  object d_CUSTOMER: TDataSource
    DataSet = q_customer
    Left = 72
    Top = 376
  end
  object q_LESSON: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LESSON'
      
        '  (ID, L_NAME, L_INSTRUCTOR, L_PRICE, L_HOUR, L_DESC, COMPANY_ID' +
        ')'
      'VALUES'
      
        '  (:ID, :L_NAME, :L_INSTRUCTOR, :L_PRICE, :L_HOUR, :L_DESC, :COM' +
        'PANY_ID)')
    SQLDelete.Strings = (
      'DELETE FROM LESSON'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LESSON'
      'SET'
      
        '  ID = :ID, L_NAME = :L_NAME, L_INSTRUCTOR = :L_INSTRUCTOR, L_PR' +
        'ICE = :L_PRICE, L_HOUR = :L_HOUR, L_DESC = :L_DESC, COMPANY_ID =' +
        ' :COMPANY_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LESSON'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, L_NAME, L_INSTRUCTOR, L_PRICE, L_HOUR, L_DESC, COMPAN' +
        'Y_ID FROM LESSON'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from LESSON'
      'where company_id = :company_id')
    SpecificOptions.Strings = (
      'InterBase.AutoClose=True'
      'InterBase.FetchAll=True'
      'InterBase.StreamedBlobs=True')
    Left = 176
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'company_id'
        ParamType = ptInput
      end>
    object q_LESSONID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LESSONL_NAME: TStringField
      FieldName = 'L_NAME'
      Size = 30
    end
    object q_LESSONL_INSTRUCTOR: TStringField
      FieldName = 'L_INSTRUCTOR'
    end
    object q_LESSONL_PRICE: TFloatField
      FieldName = 'L_PRICE'
    end
    object q_LESSONL_HOUR: TStringField
      FieldName = 'L_HOUR'
      Size = 10
    end
    object q_LESSONL_DESC: TStringField
      FieldName = 'L_DESC'
      Size = 100
    end
    object q_LESSONCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
  end
  object d_LESSON: TDataSource
    DataSet = q_LESSON
    Left = 176
    Top = 376
  end
  object q_LESSON_PAYMENT: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LESSON_PAYMENT'
      
        '  (ID, LEC_CODE, MEMBER_ID, PAY_DATE, PAY_YEAR, PAY_MONTH, PAY_K' +
        'IND, BIGO, COMPANY_ID, PAY_AMOUNT)'
      'VALUES'
      
        '  (:ID, :LEC_CODE, :MEMBER_ID, :PAY_DATE, :PAY_YEAR, :PAY_MONTH,' +
        ' :PAY_KIND, :BIGO, :COMPANY_ID, :PAY_AMOUNT)')
    SQLDelete.Strings = (
      'DELETE FROM LESSON_PAYMENT'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LESSON_PAYMENT'
      'SET'
      
        '  ID = :ID, LEC_CODE = :LEC_CODE, MEMBER_ID = :MEMBER_ID, PAY_DA' +
        'TE = :PAY_DATE, PAY_YEAR = :PAY_YEAR, PAY_MONTH = :PAY_MONTH, PA' +
        'Y_KIND = :PAY_KIND, BIGO = :BIGO, COMPANY_ID = :COMPANY_ID, PAY_' +
        'AMOUNT = :PAY_AMOUNT'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LESSON_PAYMENT'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, LEC_CODE, MEMBER_ID, PAY_DATE, PAY_YEAR, PAY_MONTH, P' +
        'AY_KIND, BIGO, COMPANY_ID, PAY_AMOUNT FROM LESSON_PAYMENT'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from LESSON_PAYMENT'
      'where (pay_date between :sdate and :edate) and '
      'company_id = :company_id')
    Left = 440
    Top = 336
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
        Name = 'company_id'
        ParamType = ptInput
      end>
    object q_LESSON_PAYMENTID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LESSON_PAYMENTLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object q_LESSON_PAYMENTMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Size = 17
    end
    object q_LESSON_PAYMENTPAY_DATE: TDateField
      FieldName = 'PAY_DATE'
    end
    object q_LESSON_PAYMENTPAY_YEAR: TIntegerField
      Alignment = taCenter
      FieldName = 'PAY_YEAR'
    end
    object q_LESSON_PAYMENTPAY_MONTH: TIntegerField
      Alignment = taCenter
      FieldName = 'PAY_MONTH'
    end
    object q_LESSON_PAYMENTPAY_KIND: TIntegerField
      Alignment = taCenter
      FieldName = 'PAY_KIND'
    end
    object q_LESSON_PAYMENTBIGO: TStringField
      FieldName = 'BIGO'
      Size = 50
    end
    object q_LESSON_PAYMENTCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object q_LESSON_PAYMENTPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
      DisplayFormat = '#,'
    end
  end
  object d_LESSON_PAYMENT: TDataSource
    DataSet = q_LESSON_PAYMENT
    Left = 440
    Top = 384
  end
end
