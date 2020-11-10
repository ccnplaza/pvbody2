object fmStaticPractice: TfmStaticPractice
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #51221#51201#54217#44032#50868#46041#52376#48169
  ClientHeight = 603
  ClientWidth = 790
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
    Width = 790
    Height = 603
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 788
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 8
        Width = 84
        Height = 13
        Caption = #51221#51201#54217#44032#44208#44284
      end
      object btnViewPractice: TBitBtn
        Left = 340
        Top = 1
        Width = 113
        Height = 25
        Caption = #50868#46041#48169#48277#48372#44592
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADAD700000000000000078888888888888807FFFFFFFFFFF
          FF807F777777777777807F7EEEEEEEEEE7807F7EEE1111EEE7807F7EE991111E
          E7807F7EE991EEEEE7807F7EEE91E11EE7807F7EEEEEEEEEE7807F8777777777
          77807FFFFFFFFFFFFF807FFFFFFFFFFFFFF77777777777777777}
        ParentFont = False
        TabOrder = 0
        OnClick = btnViewPracticeClick
      end
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 29
      Width = 788
      Height = 573
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridStaticResults: TcxGridDBTableView
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
        FilterBox.CustomizeButtonAlignment = fbaLeft
        FilterBox.Position = fpTop
        OnCellDblClick = gridStaticResultsCellDblClick
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
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
        OptionsView.Indicator = True
        object gridStaticResultsID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridStaticResultsRESULT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'RESULT_ID'
          Visible = False
        end
        object gridStaticResultsBODY_ID: TcxGridDBColumn
          Caption = #52769#51221#48512#50948
          DataBinding.FieldName = 'BODY_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'BODY_POINT'
            end>
          Options.CellMerging = True
          Width = 101
        end
        object gridStaticResultsCHECK_POINT_ID: TcxGridDBColumn
          Caption = #52769#51221#54252#51064#53944
          DataBinding.FieldName = 'CHECK_POINT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'POINT_NAME'
            end>
          Options.CellMerging = True
          Width = 106
        end
        object gridStaticResultsPRIORITY: TcxGridDBColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'PRIORITY'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Items = <
            item
              Description = #44221#48120
              ImageIndex = 1
              Value = 2
            end
            item
              Description = #51473#46321
              ImageIndex = 2
              Value = 3
            end
            item
              Description = #49900#44033
              ImageIndex = 3
              Value = 4
            end>
          Options.Editing = False
          Options.CellMerging = True
          Width = 67
        end
        object gridStaticResultsPRACTICE_ID: TcxGridDBColumn
          Caption = #52376#48169#50868#46041
          DataBinding.FieldName = 'PRACTICE_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'PRACTICE_NAME'
            end>
          Properties.ListSource = d_practice_look
          Width = 487
        end
        object gridStaticResultsSTRENGTH: TcxGridDBColumn
          DataBinding.FieldName = 'STRENGTH'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridStaticResults
      end
    end
  end
  object q_practice_look: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select id, practice_name from practice')
    Left = 592
    Top = 360
    object q_practice_lookID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_practice_lookPRACTICE_NAME: TStringField
      FieldName = 'PRACTICE_NAME'
      Size = 100
    end
  end
  object d_practice_look: TDataSource
    DataSet = q_practice_look
    Left = 592
    Top = 408
  end
  object q_delete_cust_practice: TUniSQL
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'delete from CUST_STATIC_PRACTICE'
      'where RESULT_ID = :RESULT_ID')
    Left = 136
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'RESULT_ID'
        ParamType = ptInput
      end>
  end
end
