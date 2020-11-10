inherited fmMovementResultView: TfmMovementResultView
  Caption = #46041#51201#51088#49464#48516#49437' '#44208#44284
  ClientHeight = 624
  ClientWidth = 800
  OnShow = FormShow
  ExplicitWidth = 806
  ExplicitHeight = 652
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 624
    Align = alLeft
    TabOrder = 0
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 198
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        Left = 37
        Top = 2
        Width = 49
        Height = 22
        Caption = #51221#49345
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object pnlResult1: TPanel
        Left = 87
        Top = 2
        Width = 58
        Height = 22
        Caption = '0/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 27
      Width = 198
      Height = 596
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridLevel1: TcxGridDBTableView
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
        FilterBox.CustomizeDialog = False
        FilterBox.Visible = fvNever
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CHECK_ANSWER'
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <>
          end>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.Indicator = True
        object gridLevel1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridLevel1MOVEMENT_RESULT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'MOVEMENT_RESULT_ID'
          Visible = False
        end
        object gridLevel1CHECK_ITEM_ID: TcxGridDBColumn
          Caption = #52769#51221#54637#47785
          DataBinding.FieldName = 'CHECK_ITEM_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_NAME'
            end>
          Options.CellMerging = True
          Width = 110
        end
        object gridLevel1CHECK_POINT_ID: TcxGridDBColumn
          Caption = #52769#51221#54252#51064#53944
          DataBinding.FieldName = 'CHECK_POINT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_QUESTION'
            end>
          Width = 85
        end
        object gridLevel1CUSTOMER_ID: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          Visible = False
        end
        object gridLevel1COMPANY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'COMPANY_ID'
          Visible = False
        end
        object db1_check_value: TcxGridDBColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #51221#49345
              Value = 1
            end
            item
              Description = #44221#48120
              Value = 2
            end
            item
              Description = #51473#46321
              Value = 3
            end
            item
              Description = #49900#44033
              Value = 4
            end>
          Visible = False
          Width = 47
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridLevel1
      end
    end
  end
  object Panel8: TPanel
    Left = 200
    Top = 0
    Width = 200
    Height = 624
    Align = alLeft
    TabOrder = 1
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 198
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel4: TPanel
        Left = 39
        Top = 2
        Width = 49
        Height = 22
        Caption = #44221#48120
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object pnlResult2: TPanel
        Left = 88
        Top = 2
        Width = 58
        Height = 22
        Caption = '0/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 27
      Width = 198
      Height = 596
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridLevel2: TcxGridDBTableView
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
        FilterBox.CustomizeDialog = False
        FilterBox.Visible = fvNever
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CHECK_ANSWER'
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <>
          end>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.Indicator = True
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'MOVEMENT_RESULT_ID'
          Visible = False
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = #52769#51221#54637#47785
          DataBinding.FieldName = 'CHECK_ITEM_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_NAME'
            end>
          Options.CellMerging = True
          Width = 110
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = #52769#51221#54252#51064#53944
          DataBinding.FieldName = 'CHECK_POINT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_QUESTION'
            end>
          Width = 85
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          Visible = False
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'COMPANY_ID'
          Visible = False
        end
        object db2_check_value: TcxGridDBColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #51221#49345
              Value = 1
            end
            item
              Description = #44221#48120
              Value = 2
            end
            item
              Description = #51473#46321
              Value = 3
            end
            item
              Description = #49900#44033
              Value = 4
            end>
          Visible = False
          Width = 47
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gridLevel2
      end
    end
  end
  object Panel12: TPanel
    Left = 400
    Top = 0
    Width = 200
    Height = 624
    Align = alLeft
    TabOrder = 2
    object Panel13: TPanel
      Left = 1
      Top = 1
      Width = 198
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel5: TPanel
        Left = 37
        Top = 2
        Width = 49
        Height = 22
        Caption = #51473#46321
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object pnlResult3: TPanel
        Left = 86
        Top = 2
        Width = 58
        Height = 22
        Caption = '0/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 27
      Width = 198
      Height = 596
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridLevel3: TcxGridDBTableView
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
        FilterBox.CustomizeDialog = False
        FilterBox.Visible = fvNever
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CHECK_ANSWER'
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <>
          end>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.Indicator = True
        object cxGridDBColumn8: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'MOVEMENT_RESULT_ID'
          Visible = False
        end
        object cxGridDBColumn10: TcxGridDBColumn
          Caption = #52769#51221#54637#47785
          DataBinding.FieldName = 'CHECK_ITEM_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_NAME'
            end>
          Options.CellMerging = True
          Width = 110
        end
        object cxGridDBColumn11: TcxGridDBColumn
          Caption = #52769#51221#54252#51064#53944
          DataBinding.FieldName = 'CHECK_POINT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_QUESTION'
            end>
          Width = 85
        end
        object cxGridDBColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          Visible = False
        end
        object cxGridDBColumn13: TcxGridDBColumn
          DataBinding.FieldName = 'COMPANY_ID'
          Visible = False
        end
        object db3_check_value: TcxGridDBColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #51221#49345
              Value = 1
            end
            item
              Description = #44221#48120
              Value = 2
            end
            item
              Description = #51473#46321
              Value = 3
            end
            item
              Description = #49900#44033
              Value = 4
            end>
          Visible = False
          Width = 47
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = gridLevel3
      end
    end
  end
  object Panel16: TPanel
    Left = 600
    Top = 0
    Width = 200
    Height = 624
    Align = alLeft
    TabOrder = 3
    object Panel17: TPanel
      Left = 1
      Top = 1
      Width = 198
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel6: TPanel
        Left = 38
        Top = 2
        Width = 49
        Height = 22
        Caption = #49900#44033
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object pnlResult4: TPanel
        Left = 87
        Top = 2
        Width = 58
        Height = 22
        Caption = '0/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object cxGrid4: TcxGrid
      Left = 1
      Top = 27
      Width = 198
      Height = 596
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridLevel4: TcxGridDBTableView
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
        FilterBox.CustomizeDialog = False
        FilterBox.Visible = fvNever
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CHECK_ANSWER'
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <>
          end>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.Indicator = True
        object cxGridDBColumn15: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBColumn16: TcxGridDBColumn
          DataBinding.FieldName = 'MOVEMENT_RESULT_ID'
          Visible = False
        end
        object cxGridDBColumn17: TcxGridDBColumn
          Caption = #52769#51221#54637#47785
          DataBinding.FieldName = 'CHECK_ITEM_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_NAME'
            end>
          Options.CellMerging = True
          Width = 110
        end
        object cxGridDBColumn18: TcxGridDBColumn
          Caption = #52769#51221#54252#51064#53944
          DataBinding.FieldName = 'CHECK_POINT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_QUESTION'
            end>
          Width = 85
        end
        object cxGridDBColumn19: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          Visible = False
        end
        object cxGridDBColumn20: TcxGridDBColumn
          DataBinding.FieldName = 'COMPANY_ID'
          Visible = False
        end
        object db4_check_value: TcxGridDBColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #51221#49345
              Value = 1
            end
            item
              Description = #44221#48120
              Value = 2
            end
            item
              Description = #51473#46321
              Value = 3
            end
            item
              Description = #49900#44033
              Value = 4
            end>
          Visible = False
          Width = 47
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = gridLevel4
      end
    end
  end
  object d_result_value: TDataSource
    Left = 184
    Top = 408
  end
end
