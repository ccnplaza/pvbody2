object fmMovementCheckItems: TfmMovementCheckItems
  Left = 0
  Top = 0
  Caption = #46041#51201#52769#51221#54637#47785
  ClientHeight = 590
  ClientWidth = 938
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
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 590
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel7'
    TabOrder = 0
    object Panel12: TPanel
      Left = 0
      Top = 0
      Width = 393
      Height = 590
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 192
        Height = 590
        Align = alClient
        TabOrder = 0
        object Panel14: TPanel
          Left = 1
          Top = 1
          Width = 190
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Caption = #52769#51221#46041#51089
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object Panel15: TPanel
          Left = 1
          Top = 26
          Width = 190
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object btnMoveIn: TBitBtn
            Left = 9
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
            OnClick = btnMoveInClick
          end
          object btnMoveEdit: TBitBtn
            Left = 49
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
            OnClick = btnMoveEditClick
          end
          object btnMoveDel: TBitBtn
            Left = 89
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
            OnClick = btnMoveDelClick
          end
        end
        object cxGrid3: TcxGrid
          Left = 1
          Top = 57
          Width = 190
          Height = 532
          Align = alClient
          TabOrder = 2
          LookAndFeel.SkinName = 'Black'
          object gridMove: TcxGridDBTableView
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
            DataController.DataSource = d_item_text
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object gridMoveUID: TcxGridDBColumn
              DataBinding.FieldName = 'UID'
              Visible = False
            end
            object gridMoveITEM_NAME: TcxGridDBColumn
              Caption = #52769#51221#46041#51089
              DataBinding.FieldName = 'ITEM_NAME'
            end
            object gridMoveIDX: TcxGridDBColumn
              DataBinding.FieldName = 'IDX'
              Visible = False
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = gridMove
          end
        end
      end
      object Panel16: TPanel
        Left = 192
        Top = 0
        Width = 201
        Height = 590
        Align = alRight
        TabOrder = 1
        object Panel17: TPanel
          Left = 1
          Top = 1
          Width = 199
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Caption = #49464#48512#54637#47785
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object Panel18: TPanel
          Left = 1
          Top = 26
          Width = 199
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object btnMovePointIn: TBitBtn
            Left = 7
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
            OnClick = btnMovePointInClick
          end
          object btnMovePointEdit: TBitBtn
            Left = 47
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
            OnClick = btnMovePointEditClick
          end
          object btnMovePointDel: TBitBtn
            Left = 87
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
            OnClick = btnMovePointDelClick
          end
        end
        object cxGrid4: TcxGrid
          Left = 1
          Top = 57
          Width = 199
          Height = 532
          Align = alClient
          TabOrder = 2
          LookAndFeel.SkinName = 'Black'
          object gridMovePoint: TcxGridDBTableView
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
            DataController.DataSource = d_item_question_text
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object gridMovePointUID: TcxGridDBColumn
              DataBinding.FieldName = 'UID'
              Visible = False
            end
            object gridMovePointITEM_UID: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_UID'
              Visible = False
            end
            object gridMovePointITEM_QUESTION: TcxGridDBColumn
              Caption = #49464#48512#54637#47785
              DataBinding.FieldName = 'ITEM_QUESTION'
            end
            object gridMovePointIDX: TcxGridDBColumn
              DataBinding.FieldName = 'IDX'
              Visible = False
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = gridMovePoint
          end
        end
      end
    end
  end
  object t_item_text: TUniTable
    TableName = 'CHECK_ITEM_TXT'
    Connection = dmDBCommon.UniDBConnection
    Left = 64
    Top = 408
    object t_item_textUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 17
    end
    object t_item_textITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 30
    end
    object t_item_textIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
  object d_item_text: TDataSource
    DataSet = t_item_text
    Left = 64
    Top = 456
  end
  object d_item_question_text: TDataSource
    DataSet = t_item_question_text
    Left = 216
    Top = 456
  end
  object t_item_question_text: TUniTable
    TableName = 'CHECK_ITEM_QUESTION_TXT'
    Connection = dmDBCommon.UniDBConnection
    MasterSource = d_item_text
    MasterFields = 'UID'
    DetailFields = 'ITEM_UID'
    Left = 216
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UID'
      end>
    object t_item_question_textUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 17
    end
    object t_item_question_textITEM_UID: TStringField
      FieldName = 'ITEM_UID'
      Size = 17
    end
    object t_item_question_textITEM_QUESTION: TStringField
      FieldName = 'ITEM_QUESTION'
      Size = 255
    end
    object t_item_question_textIDX: TIntegerField
      FieldName = 'IDX'
    end
  end
end
