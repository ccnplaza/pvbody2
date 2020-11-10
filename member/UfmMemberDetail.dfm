object fmMemberDetail: TfmMemberDetail
  Left = 0
  Top = 0
  Caption = #54924#50896#48324#54788#54889
  ClientHeight = 607
  ClientWidth = 982
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 607
    Align = alLeft
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 248
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 18
        Top = 7
        Width = 94
        Height = 13
        Caption = #54924#50896' '#46321#47197' '#54788#54889
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxGrid9: TcxGrid
      Left = 1
      Top = 26
      Width = 248
      Height = 580
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridMember: TcxGridDBTableView
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
        DataController.DataSource = d_CUSTOMER
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridMemberUID: TcxGridDBColumn
          DataBinding.FieldName = 'UID'
          Visible = False
        end
        object gridMemberCNAME: TcxGridDBColumn
          Caption = #54924#50896#47749
          DataBinding.FieldName = 'CNAME'
          Width = 83
        end
        object gridMemberSEX: TcxGridDBColumn
          Caption = #49457#48324
          DataBinding.FieldName = 'SEX'
          Width = 42
        end
        object gridMemberCHART_NO: TcxGridDBColumn
          DataBinding.FieldName = 'CHART_NO'
          Visible = False
        end
        object gridMemberCOMPANY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'COMPANY_ID'
          Visible = False
        end
        object gridMemberCTEL: TcxGridDBColumn
          Caption = #50672#46973#52376
          DataBinding.FieldName = 'CTEL'
          Width = 109
        end
      end
      object cxGrid9Level1: TcxGridLevel
        GridView = gridMember
      end
    end
  end
  object Panel3: TPanel
    Left = 250
    Top = 0
    Width = 446
    Height = 607
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 446
      Height = 26
      Align = alTop
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 7
        Width = 94
        Height = 13
        Caption = #49688#44053' '#46321#47197' '#54788#54889
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 326
      Width = 446
      Height = 281
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object cxGrid6: TcxGrid
        Left = 0
        Top = 0
        Width = 446
        Height = 281
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridLecturePayment: TcxGridDBTableView
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
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridLecturePaymentID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridLecturePaymentLEC_CODE: TcxGridDBColumn
            Caption = #44053#51032#47749
            DataBinding.FieldName = 'LEC_CODE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'L_NAME'
              end>
            Properties.ListSource = d_LESSON
            Width = 106
          end
          object gridLecturePaymentMEMBER_ID: TcxGridDBColumn
            DataBinding.FieldName = 'MEMBER_ID'
            Visible = False
            Width = 82
          end
          object gridLecturePaymentPAY_DATE: TcxGridDBColumn
            Caption = #44208#51116#51068#51088
            DataBinding.FieldName = 'PAY_DATE'
            Width = 82
          end
          object gridLecturePaymentPAY_YEAR: TcxGridDBColumn
            Caption = #45380#46020
            DataBinding.FieldName = 'PAY_YEAR'
            Width = 69
          end
          object gridLecturePaymentPAY_MONTH: TcxGridDBColumn
            Caption = #50900#48516
            DataBinding.FieldName = 'PAY_MONTH'
            Width = 37
          end
          object gridLecturePaymentPAY_AMOUNT: TcxGridDBColumn
            Caption = #45225#51077#44552#50529
            DataBinding.FieldName = 'PAY_AMOUNT'
            Width = 77
          end
          object gridLecturePaymentPAY_KIND: TcxGridDBColumn
            Caption = #44208#51116#48169#48277
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
            Width = 61
          end
          object gridLecturePaymentBIGO: TcxGridDBColumn
            DataBinding.FieldName = 'BIGO'
            Visible = False
            Width = 132
          end
          object gridLecturePaymentCOMPANY_ID: TcxGridDBColumn
            DataBinding.FieldName = 'COMPANY_ID'
            Visible = False
            Width = 83
          end
        end
        object G6L1: TcxGridLevel
          GridView = gridLecturePayment
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 299
      Width = 446
      Height = 27
      Align = alTop
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 2
      object Label2: TLabel
        Left = 18
        Top = 7
        Width = 108
        Height = 13
        Caption = #49688#44053#47308' '#45225#51077' '#54788#54889
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel9: TPanel
      Left = 0
      Top = 26
      Width = 446
      Height = 273
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 446
        Height = 273
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        object gridLectureCust: TcxGridDBTableView
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
          DataController.DataSource = d_LESSON_CUSTOMER
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridLectureCustLEC_CODE: TcxGridDBColumn
            Caption = #44053#51032#47749
            DataBinding.FieldName = 'LEC_CODE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'L_NAME'
              end>
            Properties.ListSource = d_LESSON
            Width = 114
          end
          object gridLectureCustREG_DATE: TcxGridDBColumn
            Caption = #46321#47197#51068#51088
            DataBinding.FieldName = 'REG_DATE'
            Width = 84
          end
          object gridLectureCustMEMBER_UID: TcxGridDBColumn
            DataBinding.FieldName = 'MEMBER_UID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'UID'
            Properties.ListColumns = <
              item
                FieldName = 'CNAME'
              end>
            Properties.ListSource = d_CUSTOMER
            Visible = False
            Width = 87
          end
          object gridLectureCustSTART_DATE: TcxGridDBColumn
            Caption = #49884#51089#51068#51088
            DataBinding.FieldName = 'START_DATE'
            Width = 81
          end
          object gridLectureCustEND_DATE: TcxGridDBColumn
            Caption = #51333#47308#51068#51088
            DataBinding.FieldName = 'END_DATE'
            Width = 87
          end
          object gridLectureCustLEC_MONTH: TcxGridDBColumn
            Caption = #44060#50900
            DataBinding.FieldName = 'LEC_MONTH'
            Width = 36
          end
          object gridLectureCustLEC_PRICE: TcxGridDBColumn
            Caption = #44053#51032#47308
            DataBinding.FieldName = 'LEC_PRICE'
          end
          object gridLectureCustLEC_DESC: TcxGridDBColumn
            DataBinding.FieldName = 'LEC_DESC'
            Visible = False
            Width = 209
          end
          object gridLectureCustID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
        end
        object G3L1: TcxGridLevel
          GridView = gridLectureCust
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 696
    Top = 0
    Width = 286
    Height = 607
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 286
      Height = 26
      Align = alTop
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
      object Label3: TLabel
        Left = 18
        Top = 7
        Width = 61
        Height = 13
        Caption = #52636#49437' '#54788#54889
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxGrid8: TcxGrid
      Left = 0
      Top = 26
      Width = 286
      Height = 581
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object cxGrid8DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = d_attendance
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid8DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGrid8DBTableView1ATT_DATE: TcxGridDBColumn
          Caption = #45216#51676
          DataBinding.FieldName = 'ATT_DATE'
          Width = 97
        end
        object cxGrid8DBTableView1LEC_CODE: TcxGridDBColumn
          DataBinding.FieldName = 'LEC_CODE'
          Visible = False
          Width = 94
        end
        object cxGrid8DBTableView1MEMBER_NO: TcxGridDBColumn
          DataBinding.FieldName = 'MEMBER_NO'
          Visible = False
          Width = 87
        end
        object cxGrid8DBTableView1MEMBER_ID: TcxGridDBColumn
          DataBinding.FieldName = 'MEMBER_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'CNAME'
            end>
          Properties.ListSource = d_CUSTOMER
          Visible = False
        end
        object cxGrid8DBTableView1IN_TIME: TcxGridDBColumn
          Caption = #51077#51109
          DataBinding.FieldName = 'IN_TIME'
          Width = 57
        end
        object cxGrid8DBTableView1OUT_TIME: TcxGridDBColumn
          Caption = #53748#51109
          DataBinding.FieldName = 'OUT_TIME'
          Width = 57
        end
        object cxGrid8DBTableView1BIGO: TcxGridDBColumn
          Caption = #48708#44256
          DataBinding.FieldName = 'BIGO'
          Visible = False
          Width = 226
        end
      end
      object cxGrid8Level1: TcxGridLevel
        GridView = cxGrid8DBTableView1
      end
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
      'select UID, CNAME, SEX, CHART_NO, CTEL, COMPANY_ID from customer'
      'where company_id = :company_id')
    Options.AutoPrepare = True
    SpecificOptions.Strings = (
      'InterBase.AutoClose=True'
      'InterBase.FetchAll=True'
      'InterBase.StreamedBlobs=True')
    Left = 40
    Top = 432
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
    object q_customerSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object q_customerCHART_NO: TStringField
      FieldName = 'CHART_NO'
    end
    object q_customerCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object q_customerCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
  end
  object d_CUSTOMER: TDataSource
    DataSet = q_customer
    Left = 40
    Top = 480
  end
  object q_LESSON_CUSTOMER: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LESSON_CUSTOMER'
      
        '  (ID, REG_DATE, LEC_CODE, MEMBER_UID, START_DATE, END_DATE, LEC' +
        '_MONTH, LEC_PRICE, LEC_DESC, COMPANY_ID)'
      'VALUES'
      
        '  (:ID, :REG_DATE, :LEC_CODE, :MEMBER_UID, :START_DATE, :END_DAT' +
        'E, :LEC_MONTH, :LEC_PRICE, :LEC_DESC, :COMPANY_ID)')
    SQLDelete.Strings = (
      'DELETE FROM LESSON_CUSTOMER'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LESSON_CUSTOMER'
      'SET'
      
        '  ID = :ID, REG_DATE = :REG_DATE, LEC_CODE = :LEC_CODE, MEMBER_U' +
        'ID = :MEMBER_UID, START_DATE = :START_DATE, END_DATE = :END_DATE' +
        ', LEC_MONTH = :LEC_MONTH, LEC_PRICE = :LEC_PRICE, LEC_DESC = :LE' +
        'C_DESC, COMPANY_ID = :COMPANY_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LESSON_CUSTOMER'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, REG_DATE, LEC_CODE, MEMBER_UID, START_DATE, END_DATE,' +
        ' LEC_MONTH, LEC_PRICE, LEC_DESC, COMPANY_ID FROM LESSON_CUSTOMER'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from LESSON_CUSTOMER'
      'where MEMBER_UID = :MEMBER_UID'
      'order by reg_date')
    Left = 416
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'MEMBER_UID'
        ParamType = ptInput
      end>
    object q_LESSON_CUSTOMERID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_LESSON_CUSTOMERREG_DATE: TDateField
      FieldName = 'REG_DATE'
      Required = True
    end
    object q_LESSON_CUSTOMERLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Required = True
      Size = 17
    end
    object q_LESSON_CUSTOMERMEMBER_UID: TStringField
      FieldName = 'MEMBER_UID'
      Required = True
      Size = 17
    end
    object q_LESSON_CUSTOMERSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object q_LESSON_CUSTOMEREND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object q_LESSON_CUSTOMERLEC_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'LEC_MONTH'
    end
    object q_LESSON_CUSTOMERLEC_PRICE: TFloatField
      FieldName = 'LEC_PRICE'
      DisplayFormat = '#,'
    end
    object q_LESSON_CUSTOMERLEC_DESC: TStringField
      FieldName = 'LEC_DESC'
      Size = 50
    end
    object q_LESSON_CUSTOMERCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Required = True
      Size = 17
    end
  end
  object d_LESSON_CUSTOMER: TDataSource
    DataSet = q_LESSON_CUSTOMER
    Left = 424
    Top = 248
  end
  object d_LESSON_PAYMENT: TDataSource
    DataSet = q_LESSON_PAYMENT
    Left = 328
    Top = 520
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
      'where MEMBER_ID = :MEMBER_ID'
      'order by pay_date')
    Left = 328
    Top = 472
    ParamData = <
      item
        DataType = ftString
        Name = 'MEMBER_ID'
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
    Left = 296
    Top = 192
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
    Left = 296
    Top = 240
  end
  object q_attendance: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO LESSON_ATTENDANCE'
      
        '  (ID, ATT_DATE, LEC_CODE, MEMBER_ID, IN_TIME, OUT_TIME, BIGO, M' +
        'EMBER_NO, COMPANY_ID)'
      'VALUES'
      
        '  (:ID, :ATT_DATE, :LEC_CODE, :MEMBER_ID, :IN_TIME, :OUT_TIME, :' +
        'BIGO, :MEMBER_NO, :COMPANY_ID)')
    SQLDelete.Strings = (
      'DELETE FROM LESSON_ATTENDANCE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE LESSON_ATTENDANCE'
      'SET'
      
        '  ID = :ID, ATT_DATE = :ATT_DATE, LEC_CODE = :LEC_CODE, MEMBER_I' +
        'D = :MEMBER_ID, IN_TIME = :IN_TIME, OUT_TIME = :OUT_TIME, BIGO =' +
        ' :BIGO, MEMBER_NO = :MEMBER_NO, COMPANY_ID = :COMPANY_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM LESSON_ATTENDANCE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, ATT_DATE, LEC_CODE, MEMBER_ID, IN_TIME, OUT_TIME, BIG' +
        'O, MEMBER_NO, COMPANY_ID FROM LESSON_ATTENDANCE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from lesson_attendance'
      'where MEMBER_ID = :MEMBER_ID'
      'order by att_date')
    Left = 824
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
      end>
    object q_attendanceID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_attendanceATT_DATE: TDateField
      FieldName = 'ATT_DATE'
    end
    object q_attendanceLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object q_attendanceMEMBER_ID: TStringField
      FieldName = 'MEMBER_ID'
      Required = True
      Size = 17
    end
    object q_attendanceIN_TIME: TStringField
      FieldName = 'IN_TIME'
      Size = 5
    end
    object q_attendanceOUT_TIME: TStringField
      FieldName = 'OUT_TIME'
      Size = 5
    end
    object q_attendanceBIGO: TStringField
      FieldName = 'BIGO'
      Size = 50
    end
    object q_attendanceMEMBER_NO: TStringField
      FieldName = 'MEMBER_NO'
    end
    object q_attendanceCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Required = True
      Size = 17
    end
  end
  object d_attendance: TDataSource
    DataSet = q_attendance
    Left = 824
    Top = 464
  end
end
