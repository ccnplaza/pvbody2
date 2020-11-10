object fmPracticeList: TfmPracticeList
  Left = 0
  Top = 0
  Caption = #50868#46041#52376#48169#47785#47197
  ClientHeight = 611
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 611
    Align = alLeft
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 239
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Caption = #50868#46041#52376#48169' '#54637#47785
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 1
      Top = 28
      Width = 239
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnItemIn: TBitBtn
        Left = 40
        Top = 3
        Width = 41
        Height = 25
        Hint = #52628#44032
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnItemInClick
      end
      object btnItemEdit: TBitBtn
        Left = 80
        Top = 3
        Width = 41
        Height = 25
        Hint = #49688#51221
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnItemEditClick
      end
      object btnItemDel: TBitBtn
        Left = 120
        Top = 3
        Width = 41
        Height = 25
        Hint = #49325#51228
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 59
      Width = 239
      Height = 551
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'Black'
      object gridItem: TcxGridDBTableView
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
        DataController.DataSource = d_PRACTICE_ITEM
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridItemID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridItemITEM_NAME: TcxGridDBColumn
          Caption = #50868#46041#52376#48169#54637#47785
          DataBinding.FieldName = 'ITEM_NAME'
        end
        object gridItemITEM_KIND: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_KIND'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridItem
      end
    end
  end
  object Panel2: TPanel
    Left = 241
    Top = 0
    Width = 407
    Height = 611
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 405
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Caption = #54637#47785#48324' '#50868#46041#47532#49828#53944
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel6: TPanel
      Left = 1
      Top = 28
      Width = 405
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnPracticeIn: TBitBtn
        Left = 40
        Top = 3
        Width = 41
        Height = 25
        Hint = #52628#44032
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object btnPracticeEdit: TBitBtn
        Left = 80
        Top = 3
        Width = 41
        Height = 25
        Hint = #49688#51221
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object btnPracticeDel: TBitBtn
        Left = 120
        Top = 3
        Width = 41
        Height = 25
        Hint = #49325#51228
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object cxGrid2: TcxGrid
      Left = 1
      Top = 59
      Width = 405
      Height = 551
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'Black'
      object gridDetail: TcxGridDBTableView
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
        DataController.DataSource = d_PRACTICE_DETAIL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridDetailID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridDetailITEM_ID: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_ID'
          Visible = False
        end
        object gridDetailITEM_NAME: TcxGridDBColumn
          Caption = #54637#47785#48324' '#50868#46041#47532#49828#53944
          DataBinding.FieldName = 'ITEM_NAME'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'PRACTICE_NAME'
            end>
          Properties.ListSource = d_PRACTICE
        end
        object gridDetailITEM_KIND: TcxGridDBColumn
          DataBinding.FieldName = 'ITEM_KIND'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gridDetail
      end
    end
  end
  object Panel7: TPanel
    Left = 648
    Top = 0
    Width = 399
    Height = 611
    Align = alRight
    TabOrder = 2
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 397
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      Caption = #50868#46041#47532#49828#53944
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel9: TPanel
      Left = 1
      Top = 28
      Width = 397
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnAddPractice: TBitBtn
        Left = 40
        Top = 3
        Width = 41
        Height = 25
        Hint = #52628#44032
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddPracticeClick
      end
      object BitBtn2: TBitBtn
        Left = 80
        Top = 3
        Width = 41
        Height = 25
        Hint = #49688#51221
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 120
        Top = 3
        Width = 41
        Height = 25
        Hint = #49325#51228
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object cxGrid3: TcxGrid
      Left = 1
      Top = 59
      Width = 397
      Height = 551
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'Black'
      object cxGridDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = d_PRACTICE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBTableView1PRACTICE_NAME: TcxGridDBColumn
          Caption = #52376#48169#50868#46041#51228#47785
          DataBinding.FieldName = 'PRACTICE_NAME'
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object t_PRACTICE_ITEM: TUniTable
    TableName = 'PRACTICE_ITEM'
    Connection = dmDBCommon.UniDBConnection
    Left = 88
    Top = 392
    object t_PRACTICE_ITEMID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object t_PRACTICE_ITEMITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object t_PRACTICE_ITEMITEM_KIND: TIntegerField
      FieldName = 'ITEM_KIND'
    end
  end
  object t_PRACTICE_DETAIL: TUniTable
    TableName = 'PRACTICE_DETAIL'
    Connection = dmDBCommon.UniDBConnection
    MasterSource = d_PRACTICE_ITEM
    MasterFields = 'ID'
    DetailFields = 'ITEM_ID'
    Left = 312
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
      end>
    object t_PRACTICE_DETAILID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object t_PRACTICE_DETAILITEM_ID: TStringField
      FieldName = 'ITEM_ID'
      Size = 17
    end
    object t_PRACTICE_DETAILITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 17
    end
    object t_PRACTICE_DETAILITEM_KIND: TIntegerField
      FieldName = 'ITEM_KIND'
    end
  end
  object d_PRACTICE_ITEM: TDataSource
    DataSet = t_PRACTICE_ITEM
    Left = 88
    Top = 440
  end
  object d_PRACTICE_DETAIL: TDataSource
    DataSet = t_PRACTICE_DETAIL
    Left = 312
    Top = 440
  end
  object d_PRACTICE: TDataSource
    DataSet = q_practice
    Left = 720
    Top = 448
  end
  object q_practice: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select id, practice_name from practice')
    Left = 720
    Top = 400
    object q_practiceID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_practicePRACTICE_NAME: TStringField
      FieldName = 'PRACTICE_NAME'
      Size = 100
    end
  end
end
