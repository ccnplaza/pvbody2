object fmCompUserRequested: TfmCompUserRequested
  Left = 0
  Top = 0
  Caption = #44144#47000#52376'/'#49324#50857#51088' '#50836#52397#54788#54889
  ClientHeight = 623
  ClientWidth = 1087
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
  object Splitter1: TSplitter
    Left = 500
    Top = 0
    Height = 623
    ExplicitLeft = 560
    ExplicitTop = 368
    ExplicitHeight = 100
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 623
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnlLeft'
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 500
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 234
        Top = 2
        Width = 104
        Height = 25
        Caption = #49849#51064#48320#44221
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object btnCompConfirm: TButton
        Left = 338
        Top = 2
        Width = 101
        Height = 25
        Caption = #54869#51064#52376#47532
        TabOrder = 1
        OnClick = btnCompConfirmClick
      end
      object btnReflashComp: TBitBtn
        Left = 8
        Top = 2
        Width = 89
        Height = 25
        Caption = #51088#47308#51116#44160#49353
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = btnReflashCompClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 29
      Width = 500
      Height = 594
      Align = alClient
      BevelKind = bkFlat
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
        DataController.DataSource = d_company
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1COMP_ID: TcxGridDBColumn
          DataBinding.FieldName = 'COMP_ID'
          Visible = False
        end
        object cxGrid1DBTableView1REG_DATE: TcxGridDBColumn
          Caption = #46321#47197#51068#51088
          DataBinding.FieldName = 'REG_DATE'
          Width = 90
        end
        object cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn
          Caption = #44144#47000#52376'('#45800#52404')'#47749
          DataBinding.FieldName = 'COMP_NAME'
          Width = 141
        end
        object cxGrid1DBTableView1CHIEF_NAME: TcxGridDBColumn
          Caption = #45824#54364#51088#47749
          DataBinding.FieldName = 'CHIEF_NAME'
          Width = 88
        end
        object cxGrid1DBTableView1APPROVED: TcxGridDBColumn
          Caption = #49849#51064#50668#48512
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
        end
        object cxGrid1DBTableView1CONFIRMED: TcxGridDBColumn
          Caption = #54869#51064
          DataBinding.FieldName = 'CONFIRMED'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #48120#54869#51064
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #54869#51064
              Value = 1
            end>
        end
        object cxGrid1DBTableView1TEL_NO: TcxGridDBColumn
          Caption = #51204#54868#48264#54840
          DataBinding.FieldName = 'TEL_NO'
          Width = 116
        end
        object cxGrid1DBTableView1FAX_NO: TcxGridDBColumn
          DataBinding.FieldName = 'FAX_NO'
          Visible = False
        end
        object cxGrid1DBTableView1ADDR: TcxGridDBColumn
          DataBinding.FieldName = 'ADDR'
          Visible = False
          Width = 326
        end
        object cxGrid1DBTableView1LOCATION_AREA: TcxGridDBColumn
          Caption = #51648#50669'('#46020#49884')'#47749
          DataBinding.FieldName = 'LOCATION_AREA'
          Width = 114
        end
        object cxGrid1DBTableView1BUS_ID: TcxGridDBColumn
          DataBinding.FieldName = 'BUS_ID'
          Visible = False
        end
        object cxGrid1DBTableView1BANK_NAME: TcxGridDBColumn
          DataBinding.FieldName = 'BANK_NAME'
          Visible = False
        end
        object cxGrid1DBTableView1BANK_NO: TcxGridDBColumn
          DataBinding.FieldName = 'BANK_NO'
          Visible = False
        end
        object cxGrid1DBTableView1BANK_OWNER: TcxGridDBColumn
          DataBinding.FieldName = 'BANK_OWNER'
          Visible = False
        end
        object cxGrid1DBTableView1REMARK: TcxGridDBColumn
          Caption = #48708#44256#49324#54637
          DataBinding.FieldName = 'REMARK'
          Width = 200
        end
        object cxGrid1DBTableView1COMP_KIND: TcxGridDBColumn
          Caption = #44144#47000#52376#44396#48516
          DataBinding.FieldName = 'COMP_KIND'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #50836#44032
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #53468#44428#46020
              Value = 2
            end
            item
              Description = #54764#49828
              Value = 3
            end
            item
              Description = #44592#53440
              Value = 4
            end>
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel1: TPanel
    Left = 503
    Top = 0
    Width = 584
    Height = 623
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 584
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object btnChangeApproved: TBitBtn
        Left = 209
        Top = 2
        Width = 97
        Height = 25
        Caption = #49849#51064#48320#44221
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btnChangeApprovedClick
      end
      object btnChangeUser: TBitBtn
        Left = 308
        Top = 2
        Width = 104
        Height = 25
        Caption = #49324#50857#51088#48320#44221
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = btnChangeUserClick
      end
      object btnUserConfirm: TButton
        Left = 412
        Top = 2
        Width = 101
        Height = 25
        Caption = #54869#51064#52376#47532
        TabOrder = 2
        OnClick = btnUserConfirmClick
      end
      object btnRefreshUser: TBitBtn
        Left = 8
        Top = 2
        Width = 89
        Height = 25
        Caption = #51088#47308#51116#44160#49353
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btnRefreshUserClick
      end
    end
    object cxGrid2: TcxGrid
      Left = 0
      Top = 29
      Width = 584
      Height = 594
      Align = alClient
      BevelKind = bkFlat
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object cxGridDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = d_user
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBTableView1REG_DATE: TcxGridDBColumn
          Caption = #46321#47197#51068#51088
          DataBinding.FieldName = 'REG_DATE'
          Width = 83
        end
        object cxGridDBTableView1COMP_ID: TcxGridDBColumn
          Caption = #44144#47000#52376'('#45800#52404')'#47749
          DataBinding.FieldName = 'COMP_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COMP_ID'
          Properties.ListColumns = <
            item
              FieldName = 'COMP_NAME'
            end>
          Properties.ListSource = d_company_lookup
        end
        object cxGridDBTableView1USER_NAME: TcxGridDBColumn
          Caption = #49324#50857#51088#47749
          DataBinding.FieldName = 'USER_NAME'
        end
        object cxGridDBTableView1LOGIN_ID: TcxGridDBColumn
          Caption = #47196#44536#51064'ID'
          DataBinding.FieldName = 'LOGIN_ID'
        end
        object cxGridDBTableView1LOGIN_PASS: TcxGridDBColumn
          DataBinding.FieldName = 'LOGIN_PASS'
          Visible = False
        end
        object cxGridDBTableView1LOGIN_PASS2: TcxGridDBColumn
          DataBinding.FieldName = 'LOGIN_PASS2'
          Visible = False
        end
        object cxGridDBTableView1USER_KIND: TcxGridDBColumn
          Caption = #49324#50857#51088#44396#48516
          DataBinding.FieldName = 'USER_KIND'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #49324#50857#51088
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #44288#47532#51088
              Value = 1
            end
            item
              Description = #49884#49828#53596
              Value = 2
            end>
        end
        object cxGridDBTableView1APPROVED: TcxGridDBColumn
          Caption = #49849#51064#50668#48512
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
        end
        object cxGridDBTableView1REMARK: TcxGridDBColumn
          DataBinding.FieldName = 'REMARK'
          Visible = False
        end
        object cxGridDBTableView1CONFIRMED: TcxGridDBColumn
          Caption = #54869#51064
          DataBinding.FieldName = 'CONFIRMED'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = #48120#54869#51064
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #54869#51064
              Value = 1
            end>
        end
        object cxGridDBTableView1EMAIL: TcxGridDBColumn
          Caption = #51060#47700#51068
          DataBinding.FieldName = 'EMAIL'
          Width = 192
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object q_company: TUniQuery
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
      'select * from COMPANY_GENARAL'
      'where confirmed = 0'
      'order by reg_date')
    Left = 176
    Top = 456
    object q_companyCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object q_companyCHIEF_NAME: TStringField
      FieldName = 'CHIEF_NAME'
    end
    object q_companyTEL_NO: TStringField
      FieldName = 'TEL_NO'
      Size = 50
    end
    object q_companyFAX_NO: TStringField
      FieldName = 'FAX_NO'
      Size = 50
    end
    object q_companyADDR: TStringField
      FieldName = 'ADDR'
      Size = 100
    end
    object q_companyLOCATION_AREA: TStringField
      FieldName = 'LOCATION_AREA'
    end
    object q_companyBUS_ID: TStringField
      FieldName = 'BUS_ID'
    end
    object q_companyBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object q_companyBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object q_companyBANK_OWNER: TStringField
      FieldName = 'BANK_OWNER'
    end
    object q_companyREMARK: TStringField
      FieldName = 'REMARK'
      Size = 200
    end
    object q_companyCOMP_KIND: TIntegerField
      FieldName = 'COMP_KIND'
    end
    object q_companyCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object q_companyAPPROVED: TSmallintField
      FieldName = 'APPROVED'
    end
    object q_companyREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_companyCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
  end
  object q_user: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY'
      
        '  (ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KIND, ' +
        'APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED)'
      'VALUES'
      
        '  (:ID, :USER_NAME, :LOGIN_ID, :LOGIN_PASS, :LOGIN_PASS2, :USER_' +
        'KIND, :APPROVED, :REG_DATE, :COMP_ID, :REMARK, :EMAIL, :CONFIRME' +
        'D)')
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
        'OMP_ID, REMARK = :REMARK, EMAIL = :EMAIL, CONFIRMED = :CONFIRMED'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KI' +
        'ND, APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED FROM C' +
        'OMPANY'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from company'
      'where confirmed = 0'
      'order by reg_date')
    Left = 560
    Top = 448
    object q_userID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_userUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 10
    end
    object q_userLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
      Required = True
      Size = 10
    end
    object q_userLOGIN_PASS: TStringField
      FieldName = 'LOGIN_PASS'
      Required = True
      Size = 10
    end
    object q_userLOGIN_PASS2: TStringField
      FieldName = 'LOGIN_PASS2'
      Size = 10
    end
    object q_userUSER_KIND: TIntegerField
      FieldName = 'USER_KIND'
    end
    object q_userAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object q_userREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_userCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object q_userREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object q_userEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object q_userCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
    object q_userIS_ANALYZER: TSmallintField
      FieldName = 'IS_ANALYZER'
    end
  end
  object d_company: TDataSource
    DataSet = q_company
    Left = 176
    Top = 504
  end
  object d_user: TDataSource
    DataSet = q_user
    Left = 560
    Top = 496
  end
  object t_company_lookup: TUniTable
    TableName = 'COMPANY_GENARAL'
    Connection = dmDBCommon.UniDBConnection
    Left = 696
    Top = 448
    object t_company_lookupCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object t_company_lookupCHIEF_NAME: TStringField
      FieldName = 'CHIEF_NAME'
    end
    object t_company_lookupTEL_NO: TStringField
      FieldName = 'TEL_NO'
      Size = 50
    end
    object t_company_lookupFAX_NO: TStringField
      FieldName = 'FAX_NO'
      Size = 50
    end
    object t_company_lookupADDR: TStringField
      FieldName = 'ADDR'
      Size = 100
    end
    object t_company_lookupLOCATION_AREA: TStringField
      FieldName = 'LOCATION_AREA'
    end
    object t_company_lookupBUS_ID: TStringField
      FieldName = 'BUS_ID'
    end
    object t_company_lookupBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object t_company_lookupBANK_NO: TStringField
      FieldName = 'BANK_NO'
      Size = 30
    end
    object t_company_lookupBANK_OWNER: TStringField
      FieldName = 'BANK_OWNER'
    end
    object t_company_lookupREMARK: TStringField
      FieldName = 'REMARK'
      Size = 200
    end
    object t_company_lookupCOMP_KIND: TIntegerField
      FieldName = 'COMP_KIND'
    end
    object t_company_lookupCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object t_company_lookupAPPROVED: TSmallintField
      FieldName = 'APPROVED'
    end
    object t_company_lookupREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object t_company_lookupCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
  end
  object d_company_lookup: TDataSource
    DataSet = t_company_lookup
    Left = 696
    Top = 496
  end
end
