object fmCompanyPayment: TfmCompanyPayment
  Left = 0
  Top = 0
  Caption = #44144#47000#52376' '#44208#51116#44288#47532
  ClientHeight = 614
  ClientWidth = 999
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 29
    Align = alTop
    TabOrder = 0
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
    object btnPayAdd: TBitBtn
      Left = 408
      Top = 2
      Width = 75
      Height = 25
      Caption = #44208#51116#46321#47197
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 999
    Height = 585
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
      DataController.DataSource = d_company_payment
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
      object cxGrid1DBTableView1COMP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'COMP_ID'
        Visible = False
      end
      object cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'COMP_NAME'
        Width = 125
      end
      object cxGrid1DBTableView1USER_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'USER_NAME'
      end
      object cxGrid1DBTableView1LOGIN_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_ID'
      end
      object cxGrid1DBTableView1REG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATE'
        Width = 85
      end
      object cxGrid1DBTableView1PAY_WAY: TcxGridDBColumn
        DataBinding.FieldName = 'PAY_WAY'
        Visible = False
      end
      object cxGrid1DBTableView1ID1: TcxGridDBColumn
        DataBinding.FieldName = 'ID1'
        Visible = False
      end
      object cxGrid1DBTableView1PAY_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'PAY_DATE'
      end
      object cxGrid1DBTableView1PAY_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'PAY_AMOUNT'
      end
      object cxGrid1DBTableView1PAY_MONTH: TcxGridDBColumn
        DataBinding.FieldName = 'PAY_MONTH'
        Width = 68
      end
      object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'EMAIL'
        Width = 167
      end
      object cxGrid1DBTableView1BIGO: TcxGridDBColumn
        DataBinding.FieldName = 'BIGO'
        Width = 242
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object q_company_payment: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY_PAYMENT_VIEW'
      
        '  (ID, COMP_ID, COMP_NAME, USER_NAME, LOGIN_ID, REG_DATE, PAY_WA' +
        'Y, ID1, PAY_DATE, PAY_AMOUNT, PAY_MONTH, BIGO, EMAIL)'
      'VALUES'
      
        '  (:ID, :COMP_ID, :COMP_NAME, :USER_NAME, :LOGIN_ID, :REG_DATE, ' +
        ':PAY_WAY, :ID1, :PAY_DATE, :PAY_AMOUNT, :PAY_MONTH, :BIGO, :EMAI' +
        'L)')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from COMPANY_PAYMENT_VIEW'
      'where pay_date between :start_date and :end_date'
      'order by pay_date, comp_id')
    Left = 480
    Top = 320
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'start_date'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'end_date'
        ParamType = ptInput
      end>
    object q_company_paymentID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object q_company_paymentCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Size = 17
    end
    object q_company_paymentCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object q_company_paymentUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 10
    end
    object q_company_paymentLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
      Size = 10
    end
    object q_company_paymentREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_company_paymentPAY_WAY: TSmallintField
      FieldName = 'PAY_WAY'
    end
    object q_company_paymentID1: TStringField
      FieldName = 'ID1'
      Size = 17
    end
    object q_company_paymentPAY_DATE: TDateField
      FieldName = 'PAY_DATE'
    end
    object q_company_paymentPAY_AMOUNT: TFloatField
      FieldName = 'PAY_AMOUNT'
    end
    object q_company_paymentPAY_MONTH: TStringField
      FieldName = 'PAY_MONTH'
      FixedChar = True
      Size = 6
    end
    object q_company_paymentBIGO: TStringField
      FieldName = 'BIGO'
      Size = 100
    end
    object q_company_paymentEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
  end
  object d_company_payment: TDataSource
    DataSet = q_company_payment
    Left = 480
    Top = 368
  end
end
