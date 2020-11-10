object fmAttendanceMonthly: TfmAttendanceMonthly
  Left = 0
  Top = 0
  Caption = #52636#49437#54364
  ClientHeight = 608
  ClientWidth = 1047
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
  object cxGrid10: TcxGrid
    Left = 0
    Top = 28
    Width = 1047
    Height = 580
    Align = alClient
    TabOrder = 0
    LookAndFeel.SkinName = 'Black'
    object gCalendar: TcxGridDBTableView
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
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnFocusedRecordChanged = gCalendarFocusedRecordChanged
      DataController.DataSource = d_monthly_attendance
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Images = ImageList1
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gCalendarIS_ACTIVE: TcxGridDBColumn
        Caption = #49468#53552
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListSource = dmDBCommon.d_center
        HeaderAlignmentHorz = taCenter
        Width = 59
      end
      object gCalendarCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 88
      end
      object gCalendarCTEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'CTEL'
        Width = 116
      end
      object gCalendarSMS_YESNO: TcxGridDBColumn
        Caption = 'SMS'
        DataBinding.FieldName = 'SMS_YESNO'
        Width = 37
      end
      object gCalendarMEMBER_UID: TcxGridDBColumn
        DataBinding.FieldName = 'MEMBER_UID'
        Visible = False
      end
      object gCalendarM_KIND: TcxGridDBColumn
        Caption = #49468#53552
        DataBinding.FieldName = 'M_KIND'
        Visible = False
        VisibleForCustomization = False
      end
      object gCalendarIS_DONE: TcxGridDBColumn
        Caption = #49345#53468
        DataBinding.FieldName = 'IS_DONE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #49688#44053
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #51333#47308
            Value = 1
          end
          item
            Description = #54872#48520
            Value = 2
          end
          item
            Description = #55092#44053
            Value = 3
          end>
        Width = 43
      end
      object gCalendarD1: TcxGridDBColumn
        Tag = 1
        Caption = '1'
        DataBinding.FieldName = 'D1'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end
          item
            ImageIndex = 0
            Value = 3
          end
          item
            ImageIndex = 0
            Value = 4
          end
          item
            ImageIndex = 0
            Value = 5
          end
          item
            ImageIndex = 0
            Value = 6
          end
          item
            ImageIndex = 0
            Value = 7
          end
          item
            ImageIndex = 0
            Value = 8
          end
          item
            ImageIndex = 0
            Value = 9
          end
          item
            ImageIndex = 0
            Value = 10
          end>
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD2: TcxGridDBColumn
        Tag = 2
        Caption = '2'
        DataBinding.FieldName = 'D2'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end
          item
            ImageIndex = 0
            Value = 3
          end
          item
            ImageIndex = 0
            Value = 4
          end
          item
            ImageIndex = 0
            Value = 5
          end
          item
            ImageIndex = 0
            Value = 6
          end
          item
            ImageIndex = 0
            Value = 7
          end
          item
            ImageIndex = 0
            Value = 8
          end
          item
            ImageIndex = 0
            Value = 9
          end
          item
            ImageIndex = 0
            Value = 10
          end>
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD3: TcxGridDBColumn
        Tag = 3
        Caption = '3'
        DataBinding.FieldName = 'D3'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end
          item
            ImageIndex = 0
            Value = 3
          end
          item
            ImageIndex = 0
            Value = 4
          end
          item
            ImageIndex = 0
            Value = 5
          end
          item
            ImageIndex = 0
            Value = 6
          end
          item
            ImageIndex = 0
            Value = 7
          end>
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD4: TcxGridDBColumn
        Tag = 4
        Caption = '4'
        DataBinding.FieldName = 'D4'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD5: TcxGridDBColumn
        Tag = 5
        Caption = '5'
        DataBinding.FieldName = 'D5'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD6: TcxGridDBColumn
        Tag = 6
        Caption = '6'
        DataBinding.FieldName = 'D6'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD7: TcxGridDBColumn
        Tag = 7
        Caption = '7'
        DataBinding.FieldName = 'D7'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD8: TcxGridDBColumn
        Tag = 8
        Caption = '8'
        DataBinding.FieldName = 'D8'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD9: TcxGridDBColumn
        Tag = 9
        Caption = '9'
        DataBinding.FieldName = 'D9'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD10: TcxGridDBColumn
        Tag = 10
        Caption = '10'
        DataBinding.FieldName = 'D10'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD11: TcxGridDBColumn
        Tag = 11
        Caption = '11'
        DataBinding.FieldName = 'D11'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD12: TcxGridDBColumn
        Tag = 12
        Caption = '12'
        DataBinding.FieldName = 'D12'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD13: TcxGridDBColumn
        Tag = 13
        Caption = '13'
        DataBinding.FieldName = 'D13'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD14: TcxGridDBColumn
        Tag = 14
        Caption = '14'
        DataBinding.FieldName = 'D14'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD15: TcxGridDBColumn
        Tag = 15
        Caption = '15'
        DataBinding.FieldName = 'D15'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD16: TcxGridDBColumn
        Tag = 16
        Caption = '16'
        DataBinding.FieldName = 'D16'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD17: TcxGridDBColumn
        Tag = 17
        Caption = '17'
        DataBinding.FieldName = 'D17'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD18: TcxGridDBColumn
        Tag = 18
        Caption = '18'
        DataBinding.FieldName = 'D18'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD19: TcxGridDBColumn
        Tag = 19
        Caption = '19'
        DataBinding.FieldName = 'D19'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD20: TcxGridDBColumn
        Tag = 20
        Caption = '20'
        DataBinding.FieldName = 'D20'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD21: TcxGridDBColumn
        Tag = 21
        Caption = '21'
        DataBinding.FieldName = 'D21'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD22: TcxGridDBColumn
        Tag = 22
        Caption = '22'
        DataBinding.FieldName = 'D22'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD23: TcxGridDBColumn
        Tag = 23
        Caption = '23'
        DataBinding.FieldName = 'D23'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD24: TcxGridDBColumn
        Tag = 24
        Caption = '24'
        DataBinding.FieldName = 'D24'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end
          item
            ImageIndex = 0
            Value = 3
          end
          item
            ImageIndex = 0
            Value = 4
          end
          item
            ImageIndex = 0
            Value = 5
          end
          item
            ImageIndex = 0
            Value = 6
          end
          item
            ImageIndex = 0
            Value = 7
          end
          item
            ImageIndex = 0
            Value = 8
          end
          item
            ImageIndex = 0
            Value = 9
          end
          item
            ImageIndex = 0
            Value = 10
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD25: TcxGridDBColumn
        Tag = 25
        Caption = '25'
        DataBinding.FieldName = 'D25'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD26: TcxGridDBColumn
        Tag = 26
        Caption = '26'
        DataBinding.FieldName = 'D26'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD27: TcxGridDBColumn
        Tag = 27
        Caption = '27'
        DataBinding.FieldName = 'D27'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD28: TcxGridDBColumn
        Tag = 28
        Caption = '28'
        DataBinding.FieldName = 'D28'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD29: TcxGridDBColumn
        Tag = 29
        Caption = '29'
        DataBinding.FieldName = 'D29'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD30: TcxGridDBColumn
        Tag = 30
        Caption = '30'
        DataBinding.FieldName = 'D30'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarD31: TcxGridDBColumn
        Tag = 31
        Caption = '31'
        DataBinding.FieldName = 'D31'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 0
            Value = 1
          end
          item
            ImageIndex = 0
            Value = 2
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 30
        OnCustomDrawHeader = gCalendarD1CustomDrawHeader
      end
      object gCalendarID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Width = 54
      end
      object gCalendarLEC_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'LEC_CODE'
        Visible = False
        Width = 88
      end
      object gCalendarSTART_DATE: TcxGridDBColumn
        Caption = #49884#51089#51068#51088
        DataBinding.FieldName = 'START_DATE'
        Width = 85
      end
      object gCalendarEND_DATE: TcxGridDBColumn
        Caption = #51333#47308#51068#51088
        DataBinding.FieldName = 'END_DATE'
        Width = 85
      end
    end
    object cxGrid10Level1: TcxGridLevel
      GridView = gCalendar
    end
  end
  object Panel15: TPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 28
    Align = alTop
    TabOrder = 1
    object Label8: TLabel
      Left = 24
      Top = 7
      Width = 52
      Height = 13
      Caption = #51312#54924#45380#46020
    end
    object Label1: TLabel
      Left = 374
      Top = 7
      Width = 56
      Height = 13
      Caption = #51312#54924#51068#51088':'
    end
    object Label2: TLabel
      Left = 480
      Top = 8
      Width = 11
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtAttendYear: TcxSpinEdit
      Left = 81
      Top = 3
      Properties.ImmediatePost = True
      Properties.MaxValue = 9999.000000000000000000
      Properties.MinValue = 1900.000000000000000000
      TabOrder = 0
      Value = 2010
      Width = 59
    end
    object edtAttendMonth: TcxSpinEdit
      Left = 139
      Top = 3
      Properties.ImmediatePost = True
      Properties.MaxValue = 12.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = edtAttendMonthPropertiesEditValueChanged
      TabOrder = 1
      Value = 12
      Width = 43
    end
    object btnAttendView: TBitBtn
      Left = 183
      Top = 1
      Width = 68
      Height = 25
      Caption = #54869#51064
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADAD00CDADADDADADAD00CDADADAAD000070CDADADADD0DADA0BDADA
        DADA0DAFFFF0000000000AF7F770FFFFFFF00DFFFFF0FFFFFFF00AF77F70F7FF
        FFF0A0FFFF0FFFFFFFF0DA00007F77FFFFF0AD0FFFFFFFFFFFF0DA0F7777F77F
        FFF0AD0FFFFFFFFFFFF0DA00000000000000ADADADADADADADAD}
      TabOrder = 2
      OnClick = btnAttendViewClick
    end
    object icbCenter: TcxImageComboBox
      Left = 255
      Top = 3
      Properties.Items = <>
      Properties.OnCloseUp = icbCenterPropertiesCloseUp
      TabOrder = 3
      Width = 80
    end
    object btnDayLimitOn: TBitBtn
      Left = 542
      Top = 1
      Width = 68
      Height = 25
      Caption = #51201#50857
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADA00000000000DADAD0F8F8F8F8F0000000800000008008F8F0F8F8F8
        F8F00F00008F811F8F8008F8F0F8F118F8F00F71108F8F118F800811F0F8F8F1
        18F00F71108F11111F800811F0F8F8F8F8F00F7110444444444008F8F0444444
        4440044440000000000004444444440ADADA00000000000DADAD}
      TabOrder = 4
      OnClick = btnDayLimitOnClick
    end
    object speSday: TcxSpinEdit
      Left = 433
      Top = 3
      Properties.ImmediatePost = True
      Properties.MaxValue = 31.000000000000000000
      Properties.MinValue = 1.000000000000000000
      TabOrder = 5
      Value = 1
      Width = 43
    end
    object speEday: TcxSpinEdit
      Left = 496
      Top = 3
      Properties.ImmediatePost = True
      Properties.MaxValue = 31.000000000000000000
      Properties.MinValue = 1.000000000000000000
      TabOrder = 6
      Value = 31
      Width = 43
    end
    object btnDayLimitOff: TBitBtn
      Left = 609
      Top = 1
      Width = 68
      Height = 25
      Caption = #52712#49548
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADAD7444447DADADDAD444444444DADAAD444DADAD444DADD744DADADAD4
        47DAA44DADA22DA744ADD44ADA2222DA44DAA44DAD2222AD44ADD44ADAD22ADA
        DADAA447ADADADAD44ADD744DA4ADADADADAAD444D44ADA47DADDAD444444ADA
        DADAADAD74444DADADADDADADA44DADADADAADADAD4DADADADAD}
      TabOrder = 7
      OnClick = btnDayLimitOffClick
    end
    object btnHistory: TBitBtn
      Left = 789
      Top = 1
      Width = 93
      Height = 25
      Caption = #44060#51064#44592#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00D77777777777
        777700000000000000070FFFFFFFFFFFFF070F00000000000F070FFFFFFFFFFF
        FF070F00000000000F070FFFFFFFFFFFFF070F00000000000F070FFFFFFFFFFF
        FF070F000F000F000F070FF08F80FFFFFF070FF80008FF000F070FFF777FFFFF
        FF070FFFF0FFFF000F070FFFFFFFFFFFFF07000000000000000D}
      ParentShowHint = False
      ShowHint = False
      TabOrder = 8
      OnClick = btnHistoryClick
    end
    object btnCustInfo: TBitBtn
      Left = 697
      Top = 1
      Width = 93
      Height = 25
      Caption = #51064#51201#49324#54637
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD08800080ADADADDAD00FF00ADADADAADAD0F000DADADAD00000FFFF000
        000A7FF000FFF0FFFF0D7F000FFFFF00000A7F000FFF00FF0E0D7F00000FF0FF
        000A7F0000000F0F0B0D7F700000000F000A7F7F00000FFF0D0D7F7FFF70F77F
        000A7F7F77F0FFFF0A0D777FFF087FFF000AAD77778887777DAD}
      ParentShowHint = False
      ShowHint = False
      TabOrder = 9
      OnClick = btnCustInfoClick
    end
    object btnSMSSending: TBitBtn
      AlignWithMargins = True
      Left = 883
      Top = 1
      Width = 94
      Height = 25
      Hint = #47928#51088#51204#49569
      Margins.Top = 1
      Margins.Bottom = 1
      Caption = #47928#51088#51204#49569
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006596
        1EFA000100010000000000000000000000000000000000000000060402088357
        2CBDB1763CFFB1763CFFB1763CFFB0763CFC402A165B0000000067991FFF6799
        1FFF67991FFF00000000000000000000000000000000000000008D5E30CBB176
        3CFFB1763CFFB1763CFFE4D3C3FC5E5E5E5E0000000067991FFF67991FFF6799
        1FFF67991FFF67991FFF00000000000000000000000000000000B1763CFFB176
        3CFFB1763CFFB37A41FF837A70910000000067991FFF67991FFF67991FFF0000
        00005E8B1CE867991FFF67991FFF000000000000000000000000B1763CFFB176
        3CFFB1763CFFB37A41FF6E49259E0000000067991FFF67991FFF00000000150E
        071E0000000062921EF367991FFF67991FFF0000000000000000B0763CFEB176
        3CFFFEFDFDFFFEFDFDFFFDFDFDFE67676767000000000608020C48484848F6F5
        F5F7472F18660000000065951EF967991FFF67991FFF00000000B1763CFFB176
        3CFFFEFDFDFFFEFDFDFFFEFEFEFFFEFEFEFE8E8E8E8F7E7E7E7EF6F6F6F7FEFD
        FDFFB0763CFE442E17620000000066981FFD67991FFF65961EFAB1763CFFB176
        3CFFFEFDFDFFFEFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFD
        FDFFB1763CFFB1763DFD000000000000000067991FFF04050109B1763CFFB176
        3CFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFFEFDFDFFFEFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFD
        FDFFB1763CFFB2773DFF00000000000000000000000000000000B2773DFFB277
        3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB2773DFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFB1763CFFB37A41FFB1763CFFB1763CFFB1763CFFB1763CFFB1763CFFB176
        3CFFB1763CFFB1763CFF000000000000000000000000000000008D5E30CBB176
        3CFFB1763CFFB1763CFFE7D6C5FFFFFFFFFFFFFFFFFFE7D6C5FFB1763CFFB176
        3CFFB1763CFF8B5D30C700000000000000000000000000000000060402088357
        2CBDB1763CFFB1763CFFB1763CFFB2773DFFB2773DFFB1763CFFB1763CFFB176
        3CFF80562CB90604020800000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnSMSSendingClick
    end
  end
  object d_monthly_attendance: TDataSource
    DataSet = CUST_ATTENDANCE_MONTHLY
    Left = 440
    Top = 472
  end
  object ImageList1: TImageList
    Left = 592
    Top = 384
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000068992200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D4D9D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000067991F0067991F0067991F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4D9D9006BAE9400D4D9D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDE8CE009CBD6C0087AE4E0080AA
      420080A94200CFDEB7000000000067991F0067991F0067991F0067991F006799
      1F00000000000000000000000000000000000000000000000000000000000000
      0000D4D9D9006BAE940093CBB7006BAE9400D4D9D90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007FA843007FA942007FA942007FA9
      4200B4CC92000000000067991F0067991F0067991F000000000073A032006799
      1F0067991F00000000000000000000000000000000000000000000000000D4D9
      D9006BAE940086C9B200A1EDD90086C9B2006BAE9400D4D9D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094B660007FA942007FA942007FA9
      4200AFC888000000000067991F0067991F000000000000000000000000006C9C
      280067991F0067991F0000000000000000000000000000000000D4D9D9006BAE
      940082C8B1008AE8D00082E6CD008AE8D00082C8B1006BAE9400D4D9D9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACC787007FA942007FA942007FA9
      42007FA74100C9DAB1000000000000000000DAE5C80081AA4600CBDBB1000000
      00006999230067991F0067991F000000000000000000D4D9D9006BAE940086C9
      B2008CE8D10079E5C90074E3C70078E4C90088E7CF0082C8B1006BAE9400D4D9
      D900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007FA942007FA942007FA9
      42007FA942007FA74100B5CD9300BFD3A00081AA46007FA942007FA74100CDDC
      B4000000000066981F0067991F0068992200000000006BAE940093CBB800A6ED
      DB008AE8D0007DE5CB0079E5C90079E5C9007DE5CB008AE8D00082C8B1006BAE
      9400D4D9D9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5E3C100A4C0
      79007FA942007FA942007FA942007FA942007FA942007FA942009CBC6E00CFDF
      B800000000000000000067991F000000000000000000000000006BAE94008ACA
      B400A0ECD9007DC7AF006BAE940078C6AD0084E7CE0082E6CD008AE8D00082C8
      B1006BAE9400D4D9D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080A842007FA942007FA942007FA9420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006BAE
      94009ECCBB006BAE9400000000006BAE940096C9B700CCEDE500C9ECE300CCED
      E50097CAB7006BAE9400D4D9D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5E3C1007FA942007FA942007FA942007FA94200C5D8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BAE94000000000000000000000000006BAE94009BCAB900D8F0EA00D5EF
      E900D9F1EB009DCBBA006BAE9400D4D9D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084AB48007FA942007FA942007FA942007FA942007FA94200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAE94009FCCBC00E5F5
      F100E5F5F100EBF7F400A3CEBE006BAE94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAF1
      DF007FA942007FA942007FA942007FA942007FA942007FA94200DBE7CA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BAE9400A3CE
      BE00F3FAF900A4CEBE006BAE9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFE0
      B6007FA942007FA942007FA942007FA942007FA942007FA94200C0D5A1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006BAE
      9400A7CFBF006BAE940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0E0
      B8007FA942007FA942007FA942007FA942007FA942007FA94200C1D6A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006BAE94000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007FA942007FA942007FA942007FA942007FA942007FA94200E6EEDA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9E4C60090B45C007FA741007FA942008EB15700CDDDB700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFBFFDFF00000000FF1FF8FF00000000
      020FF07F000000000447E03F0000000004E3C01F000000000311800F00000000
      8008800700000000C00DC00300000000F87FE20100000000F03FF70000000000
      F03FFF8000000000E01FFFC100000000E01FFFE300000000E01FFFF700000000
      F01FFFFF00000000F03FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object UniAlerter1: TUniAlerter
    Connection = dmDBCommon.UniDBConnection
    Events = 'LESSON_ATTENDANCE_AIUD0'
    Active = True
    OnEvent = UniAlerter1Event
    Left = 72
    Top = 432
  end
  object CUST_ATTENDANCE_MONTHLY: TUniStoredProc
    StoredProcName = 'CUST_ATTENDANCE_MONTHLY'
    Connection = dmDBCommon.UniDBConnection
    Left = 440
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'S_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_CENTER'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'S_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'MEMBER_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'M_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D1'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D3'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D4'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D5'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D6'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D7'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D8'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D9'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D10'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D11'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D12'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D13'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D14'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D15'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D16'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D17'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D18'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D19'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D20'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D21'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D22'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D23'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D24'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D25'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D26'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D27'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D28'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D29'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D30'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'D31'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftSmallint
        Name = 'SMS_YESNO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'CUST_ATTENDANCE_MONTHLY'
    object CUST_ATTENDANCE_MONTHLYID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object CUST_ATTENDANCE_MONTHLYLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object CUST_ATTENDANCE_MONTHLYMEMBER_UID: TStringField
      FieldName = 'MEMBER_UID'
      Size = 17
    end
    object CUST_ATTENDANCE_MONTHLYSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object CUST_ATTENDANCE_MONTHLYEND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object CUST_ATTENDANCE_MONTHLYM_KIND: TIntegerField
      FieldName = 'M_KIND'
    end
    object CUST_ATTENDANCE_MONTHLYIS_DONE: TSmallintField
      FieldName = 'IS_DONE'
    end
    object CUST_ATTENDANCE_MONTHLYD1: TIntegerField
      FieldName = 'D1'
    end
    object CUST_ATTENDANCE_MONTHLYD2: TIntegerField
      FieldName = 'D2'
    end
    object CUST_ATTENDANCE_MONTHLYD3: TIntegerField
      FieldName = 'D3'
    end
    object CUST_ATTENDANCE_MONTHLYD4: TIntegerField
      FieldName = 'D4'
    end
    object CUST_ATTENDANCE_MONTHLYD5: TIntegerField
      FieldName = 'D5'
    end
    object CUST_ATTENDANCE_MONTHLYD6: TIntegerField
      FieldName = 'D6'
    end
    object CUST_ATTENDANCE_MONTHLYD7: TIntegerField
      FieldName = 'D7'
    end
    object CUST_ATTENDANCE_MONTHLYD8: TIntegerField
      FieldName = 'D8'
    end
    object CUST_ATTENDANCE_MONTHLYD9: TIntegerField
      FieldName = 'D9'
    end
    object CUST_ATTENDANCE_MONTHLYD10: TIntegerField
      FieldName = 'D10'
    end
    object CUST_ATTENDANCE_MONTHLYD11: TIntegerField
      FieldName = 'D11'
    end
    object CUST_ATTENDANCE_MONTHLYD12: TIntegerField
      FieldName = 'D12'
    end
    object CUST_ATTENDANCE_MONTHLYD13: TIntegerField
      FieldName = 'D13'
    end
    object CUST_ATTENDANCE_MONTHLYD14: TIntegerField
      FieldName = 'D14'
    end
    object CUST_ATTENDANCE_MONTHLYD15: TIntegerField
      FieldName = 'D15'
    end
    object CUST_ATTENDANCE_MONTHLYD16: TIntegerField
      FieldName = 'D16'
    end
    object CUST_ATTENDANCE_MONTHLYD17: TIntegerField
      FieldName = 'D17'
    end
    object CUST_ATTENDANCE_MONTHLYD18: TIntegerField
      FieldName = 'D18'
    end
    object CUST_ATTENDANCE_MONTHLYD19: TIntegerField
      FieldName = 'D19'
    end
    object CUST_ATTENDANCE_MONTHLYD20: TIntegerField
      FieldName = 'D20'
    end
    object CUST_ATTENDANCE_MONTHLYD21: TIntegerField
      FieldName = 'D21'
    end
    object CUST_ATTENDANCE_MONTHLYD22: TIntegerField
      FieldName = 'D22'
    end
    object CUST_ATTENDANCE_MONTHLYD23: TIntegerField
      FieldName = 'D23'
    end
    object CUST_ATTENDANCE_MONTHLYD24: TIntegerField
      FieldName = 'D24'
    end
    object CUST_ATTENDANCE_MONTHLYD25: TIntegerField
      FieldName = 'D25'
    end
    object CUST_ATTENDANCE_MONTHLYD26: TIntegerField
      FieldName = 'D26'
    end
    object CUST_ATTENDANCE_MONTHLYD27: TIntegerField
      FieldName = 'D27'
    end
    object CUST_ATTENDANCE_MONTHLYD28: TIntegerField
      FieldName = 'D28'
    end
    object CUST_ATTENDANCE_MONTHLYD29: TIntegerField
      FieldName = 'D29'
    end
    object CUST_ATTENDANCE_MONTHLYD30: TIntegerField
      FieldName = 'D30'
    end
    object CUST_ATTENDANCE_MONTHLYD31: TIntegerField
      FieldName = 'D31'
    end
    object CUST_ATTENDANCE_MONTHLYCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUST_ATTENDANCE_MONTHLYCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUST_ATTENDANCE_MONTHLYSMS_YESNO: TSmallintField
      FieldName = 'SMS_YESNO'
    end
    object CUST_ATTENDANCE_MONTHLYIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
  end
  object CREATE_ATTEND_MONTH_TEMP: TUniStoredProc
    StoredProcName = 'CREATE_ATTEND_MONTH_TEMP'
    Connection = dmDBCommon.UniDBConnection
    Left = 288
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IYEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IMONTH'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CREATE_ATTEND_MONTH_TEMP'
  end
end
