object fmSelectTelno: TfmSelectTelno
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896#49440#53469
  ClientHeight = 174
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 470
    Height = 174
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object gridCust: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      OnCellClick = gridCustCellClick
      DataController.DataSource = dmDBCommon.d_CUSTOMER_TEL_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.NoDataToDisplayInfoText = '<'#51088#47308#50630#51020'>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Header = False
      OptionsView.Indicator = True
      object gridCustUID: TcxGridDBColumn
        DataBinding.FieldName = 'UID'
        Visible = False
      end
      object gridCustCNAME: TcxGridDBColumn
        DataBinding.FieldName = 'CNAME'
      end
      object gridCustCTEL: TcxGridDBColumn
        DataBinding.FieldName = 'CTEL'
      end
      object gridCustSEX: TcxGridDBColumn
        DataBinding.FieldName = 'SEX'
        Visible = False
      end
      object gridCustID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridCustREG_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATE'
        Visible = False
      end
      object gridCustLEC_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'LEC_CODE'
        Visible = False
      end
      object gridCustMEMBER_UID: TcxGridDBColumn
        DataBinding.FieldName = 'MEMBER_UID'
        Visible = False
      end
      object gridCustSTART_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'START_DATE'
        Visible = False
      end
      object gridCustEND_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'END_DATE'
        Visible = False
      end
      object gridCustIS_DONE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_DONE'
        Visible = False
      end
      object gridCustCOMPANY_ID: TcxGridDBColumn
        DataBinding.FieldName = 'COMPANY_ID'
        Visible = False
      end
      object gridCustLOCKER_NO: TcxGridDBColumn
        DataBinding.FieldName = 'LOCKER_NO'
        Visible = False
      end
      object gridCustL_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'L_NAME'
        Visible = False
      end
      object gridCustM_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'M_KIND'
        Visible = False
      end
      object gridCustLEC_MONTH: TcxGridDBColumn
        DataBinding.FieldName = 'LEC_MONTH'
        Visible = False
      end
      object gridCustUSED_CNT: TcxGridDBColumn
        DataBinding.FieldName = 'USED_CNT'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridCust
    end
  end
end
