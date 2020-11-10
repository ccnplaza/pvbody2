object fmCompanySelect: TfmCompanySelect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44144#47000#52376#49440#53469
  ClientHeight = 450
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 30
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 645
    object btnSave: TBitBtn
      Left = 202
      Top = 2
      Width = 75
      Height = 25
      Caption = #49440#53469
      Default = True
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
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 278
      Top = 2
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 30
    Width = 568
    Height = 420
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    ExplicitLeft = 64
    ExplicitTop = 56
    ExplicitWidth = 250
    ExplicitHeight = 200
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
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = d_company
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1COMP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'COMP_ID'
        Visible = False
      end
      object cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn
        Caption = #44144#47000#52376#47749
        DataBinding.FieldName = 'COMP_NAME'
        Width = 134
      end
      object cxGrid1DBTableView1CHIEF_NAME: TcxGridDBColumn
        Caption = #45824#54364#51088#47749
        DataBinding.FieldName = 'CHIEF_NAME'
        Width = 78
      end
      object cxGrid1DBTableView1TEL_NO: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'TEL_NO'
        Width = 142
      end
      object cxGrid1DBTableView1FAX_NO: TcxGridDBColumn
        DataBinding.FieldName = 'FAX_NO'
        Visible = False
      end
      object cxGrid1DBTableView1ADDR: TcxGridDBColumn
        DataBinding.FieldName = 'ADDR'
        Visible = False
      end
      object cxGrid1DBTableView1LOCATION_AREA: TcxGridDBColumn
        Caption = #51648#50669'('#46020#49884')'#47749
        DataBinding.FieldName = 'LOCATION_AREA'
        Width = 107
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
        DataBinding.FieldName = 'REMARK'
        Visible = False
      end
      object cxGrid1DBTableView1COMP_KIND: TcxGridDBColumn
        Caption = #44396#48516
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
        Width = 84
      end
      object cxGrid1DBTableView1APPROVED: TcxGridDBColumn
        DataBinding.FieldName = 'APPROVED'
        Visible = False
      end
      object cxGrid1DBTableView1REG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATE'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object d_company: TDataSource
    DataSet = q_company
    Left = 232
    Top = 232
  end
  object q_company: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY_GENARAL'
      
        '  (COMP_ID, CHIEF_NAME, TEL_NO, FAX_NO, ADDR, LOCATION_AREA, BUS' +
        '_ID, BANK_NAME, BANK_NO, BANK_OWNER, REMARK, COMP_KIND, COMP_NAM' +
        'E, APPROVED, REG_DATE)'
      'VALUES'
      
        '  (:COMP_ID, :CHIEF_NAME, :TEL_NO, :FAX_NO, :ADDR, :LOCATION_ARE' +
        'A, :BUS_ID, :BANK_NAME, :BANK_NO, :BANK_OWNER, :REMARK, :COMP_KI' +
        'ND, :COMP_NAME, :APPROVED, :REG_DATE)')
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
        'G_DATE'
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
        '_NAME, APPROVED, REG_DATE FROM COMPANY_GENARAL'
      'WHERE'
      '  COMP_ID = :COMP_ID')
    SQL.Strings = (
      'select * from COMPANY_GENARAL'
      'where approved = 1'
      'order by comp_name')
    Left = 168
    Top = 232
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
  end
end
