object fmSearchResults: TfmSearchResults
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896#49440#53469
  ClientHeight = 450
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 282
    Height = 444
    Align = alClient
    TabOrder = 0
    LookAndFeel.SkinName = 'Black'
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 373
    ExplicitHeight = 172
    object gridCustomer: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellDblClick = gridCustomerCellDblClick
      DataController.DataSource = dmDBCommon.ds_CUSTOMER_SEARCH
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridCustomerUID: TcxGridDBColumn
        DataBinding.FieldName = 'UID'
        Visible = False
      end
      object gridCustomerCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 104
      end
      object gridCustomerSEX: TcxGridDBColumn
        Caption = #49457#48324
        DataBinding.FieldName = 'SEX'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = #45224#51088
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #50668#51088
            Value = 1
          end>
        HeaderAlignmentHorz = taCenter
        Width = 43
      end
      object gridCustomerCTEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'CTEL'
        Width = 121
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridCustomer
    end
  end
end
