object fmUserSelect: TfmUserSelect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #49324#50857#51088#49440#53469
  ClientHeight = 559
  ClientWidth = 559
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
    Width = 559
    Height = 29
    Align = alTop
    TabOrder = 0
    object btnSelect: TBitBtn
      Left = 200
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
      Left = 276
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
  object cxGrid2: TcxGrid
    Left = 0
    Top = 29
    Width = 559
    Height = 530
    Align = alClient
    BevelKind = bkFlat
    TabOrder = 1
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
      DataController.DataSource = d_user
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridUserID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridUserREG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATE'
        Visible = False
        Width = 83
      end
      object gridUserCOMP_ID: TcxGridDBColumn
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
      object gridUserUSER_NAME: TcxGridDBColumn
        Caption = #49324#50857#51088#47749
        DataBinding.FieldName = 'USER_NAME'
      end
      object gridUserLOGIN_ID: TcxGridDBColumn
        Caption = #47196#44536#51064'ID'
        DataBinding.FieldName = 'LOGIN_ID'
      end
      object gridUserLOGIN_PASS: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS'
        Visible = False
      end
      object gridUserLOGIN_PASS2: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_PASS2'
        Visible = False
      end
      object gridUserUSER_KIND: TcxGridDBColumn
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
      object gridUserAPPROVED: TcxGridDBColumn
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
        Visible = False
      end
      object gridUserREMARK: TcxGridDBColumn
        DataBinding.FieldName = 'REMARK'
        Visible = False
      end
      object gridUserCONFIRMED: TcxGridDBColumn
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
        Visible = False
      end
      object gridUserEMAIL: TcxGridDBColumn
        Caption = #51060#47700#51068
        DataBinding.FieldName = 'EMAIL'
        Width = 192
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gridUser
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
      'order by COMP_ID, USER_NAME')
    Left = 80
    Top = 392
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
  object d_user: TDataSource
    DataSet = q_user
    Left = 80
    Top = 448
  end
  object d_company_lookup: TDataSource
    DataSet = t_company_lookup
    Left = 216
    Top = 448
  end
  object t_company_lookup: TUniTable
    TableName = 'COMPANY_GENARAL'
    Connection = dmDBCommon.UniDBConnection
    Left = 216
    Top = 400
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
end
