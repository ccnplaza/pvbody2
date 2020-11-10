object fmAnalyseRequestSelect: TfmAnalyseRequestSelect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #48516#49437#50836#52397#51088#47308' '#49440#53469
  ClientHeight = 539
  ClientWidth = 533
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
    Width = 533
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 43
      Height = 13
      Caption = #54924#50896#47749':'
    end
    object btnSelect: TBitBtn
      Left = 282
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
      Left = 358
      Top = 2
      Width = 75
      Height = 25
      Caption = #52712#49548
      DoubleBuffered = True
      Kind = bkCancel
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object edtSearch: TEdit
      Left = 71
      Top = 4
      Width = 89
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 2
    end
    object btnFilter: TBitBtn
      Left = 160
      Top = 2
      Width = 63
      Height = 25
      Caption = #44160#49353
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
      OnClick = btnFilterClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 533
    Height = 510
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridReuest: TcxGridDBTableView
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
      OnCellDblClick = gridReuestCellDblClick
      DataController.DataSource = d_AnalyseRequest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridReuestID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridReuestR_DATE: TcxGridDBColumn
        Caption = #50836#52397#51068#51088
        DataBinding.FieldName = 'R_DATE'
        Width = 88
      end
      object gridReuestCUSTOMER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER_ID'
        Visible = False
      end
      object gridReuestREQ_COMP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REQ_COMP_ID'
        Visible = False
      end
      object gridReuestANALYZER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ANALYZER_ID'
        Visible = False
      end
      object gridReuestREQ_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'REQ_KIND'
        Visible = False
      end
      object gridReuestCOMP_NAME: TcxGridDBColumn
        Caption = #50836#52397#49324#47749
        DataBinding.FieldName = 'COMP_NAME'
        Width = 143
      end
      object gridReuestCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 120
      end
      object gridReuestREQ_STATE: TcxGridDBColumn
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
        Width = 67
      end
      object gridReuestANALYSE_DATE: TcxGridDBColumn
        Caption = #48516#49437#51068#51088
        DataBinding.FieldName = 'ANALYSE_DATE'
        Width = 101
      end
      object gridReuestCHART_NO: TcxGridDBColumn
        DataBinding.FieldName = 'CHART_NO'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridReuest
    end
  end
  object q_AnalyseRequest: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ANALYSE_REQUEST_SELECT_VIEW'
      
        '  (ID, R_DATE, REQ_KIND, REQ_STATE, ANALYSE_DATE, CNAME, CHART_N' +
        'O, USER_NAME, CUSTOMER_ID, REQ_COMP_ID, ANALYZER_ID, COMP_NAME)'
      'VALUES'
      
        '  (:ID, :R_DATE, :REQ_KIND, :REQ_STATE, :ANALYSE_DATE, :CNAME, :' +
        'CHART_NO, :USER_NAME, :CUSTOMER_ID, :REQ_COMP_ID, :ANALYZER_ID, ' +
        ':COMP_NAME)')
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
      'select * from ANALYSE_REQUEST_SELECT_VIEW'
      'where ANALYZER_ID = :analyzer_id')
    Left = 56
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'analyzer_id'
        ParamType = ptInput
      end>
    object q_AnalyseRequestID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object q_AnalyseRequestR_DATE: TDateField
      FieldName = 'R_DATE'
    end
    object q_AnalyseRequestREQ_KIND: TIntegerField
      FieldName = 'REQ_KIND'
    end
    object q_AnalyseRequestREQ_STATE: TIntegerField
      Alignment = taCenter
      FieldName = 'REQ_STATE'
    end
    object q_AnalyseRequestANALYSE_DATE: TDateField
      FieldName = 'ANALYSE_DATE'
    end
    object q_AnalyseRequestCNAME: TStringField
      FieldName = 'CNAME'
    end
    object q_AnalyseRequestUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 10
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
    object q_AnalyseRequestCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object q_AnalyseRequestCHART_NO: TStringField
      FieldName = 'CHART_NO'
    end
  end
  object d_AnalyseRequest: TDataSource
    DataSet = q_AnalyseRequest
    Left = 56
    Top = 408
  end
end
