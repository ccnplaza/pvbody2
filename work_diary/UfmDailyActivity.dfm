object fmDailyActivity: TfmDailyActivity
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Daily Activity'
  ClientHeight = 475
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 29
    Align = alTop
    TabOrder = 0
    object btnEdit: TcxButton
      AlignWithMargins = True
      Left = 80
      Top = 2
      Width = 76
      Height = 25
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #49688#51221'&E'
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF2D2D2DBE00000000000000001E1E1E7E3C3C3CFF0000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000002D2D2DBE040404101E1E1E811E1E1E81000000001E1E1E7E0000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        000000000000040404101E1E1E813C3C3CFF3C3C3CFF1E1E1E81000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000001A1A
        1A703C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF00000000000000001A1A1A703C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E040404100000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000353535E03C3C
        3CFF3C3C3CFF1A1A1A700A0A0A2C000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000001A1A1A703535
        35E01A1A1A700A0A0A2C3C3C3CFF000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      OnClick = btnEditClick
    end
    object btnAdd: TcxButton
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 76
      Height = 25
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #52628#44032'&A'
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF000000003C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000002B2B
        2BB83C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003A3A
        3AF500000000000000000000000000000000000000003A3A3AF5000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000002B2B
        2BB83C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF000000003C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E80000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnDel: TcxButton
      AlignWithMargins = True
      Left = 158
      Top = 2
      Width = 81
      Height = 25
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #49325#51228'&D'
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000002B2B
        2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003A3A
        3AF500000000000000000000000000000000000000003A3A3AF5000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000002B2B
        2BB83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B2BB8000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000001717
        17603A3A3AF83C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF817171760000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000171717602B2B2BB83A3A3AF52B2B2BB81717176000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E80000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF000000000000000000000000000000003C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E000000000000000000000000000000000000000000000000}
      TabOrder = 2
      OnClick = btnDelClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 805
    Height = 446
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridActivity: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Enabled = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = True
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellDblClick = gridActivityCellDblClick
      DataController.DataSource = DataModule1.ds_WORK_LOG_SEL_DATE2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.NavigatorHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridActivityID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridActivityACTION_KIND: TcxGridDBColumn
        Caption = #50529#49496
        DataBinding.FieldName = 'ACTION_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'ACTION_NAME'
          end>
        Properties.ListSource = DataModule1.ds_ACTION_TABLE_SEL
        OnCustomDrawCell = gridActivityACTION_KINDCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 41
      end
      object gridActivityACTION_NAME: TcxGridDBColumn
        Caption = #50529#49496
        DataBinding.FieldName = 'ACTION_NAME'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 42
      end
      object gridActivityRESULT_STATUS: TcxGridDBColumn
        Caption = #44208#44284
        DataBinding.FieldName = 'RESULT_STATUS'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'RESULT_NAME'
          end>
        Properties.ListSource = DataModule1.ds_RESULT_TABLE_SEL
        OnCustomDrawCell = gridActivityRESULT_STATUSCustomDrawCell
        HeaderAlignmentHorz = taCenter
        Width = 44
      end
      object gridActivityFROM_NAME: TcxGridDBColumn
        Caption = 'FROM'
        DataBinding.FieldName = 'FROM_NAME'
        Width = 174
      end
      object gridActivityFROM_SUBJECT: TcxGridDBColumn
        Caption = 'SUBJECT'
        DataBinding.FieldName = 'FROM_SUBJECT'
        Width = 516
      end
      object gridActivityTO_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'TO_NAME'
        Visible = False
      end
      object gridActivityUSER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'USER_ID'
        Visible = False
      end
      object gridActivityUNIQ_ID: TcxGridDBColumn
        DataBinding.FieldName = 'UNIQ_ID'
        Visible = False
      end
      object gridActivityW_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'W_DATE'
        Visible = False
      end
      object gridActivityW_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'W_TIME'
        Visible = False
      end
      object gridActivityRESPONSE: TcxGridDBColumn
        DataBinding.FieldName = 'RESPONSE'
        Visible = False
      end
      object gridActivityD_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'D_DATE'
        Visible = False
      end
      object gridActivityD_TIME: TcxGridDBColumn
        DataBinding.FieldName = 'D_TIME'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridActivity
    end
  end
end
