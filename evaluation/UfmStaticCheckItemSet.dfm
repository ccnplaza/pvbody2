object fmStaticCheckItemSet: TfmStaticCheckItemSet
  Left = 0
  Top = 0
  Caption = #51221#51201#54217#44032#54637#47785#44288#47532
  ClientHeight = 716
  ClientWidth = 1328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel7: TPanel
    Left = 529
    Top = 0
    Width = 364
    Height = 716
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel7'
    TabOrder = 0
    object Panel9: TPanel
      Left = 0
      Top = 0
      Width = 364
      Height = 716
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 364
        Height = 716
        Align = alClient
        Caption = 'Panel8'
        TabOrder = 0
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 362
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Caption = #52376#48169#50868#46041
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
        object Panel11: TPanel
          Left = 1
          Top = 26
          Width = 362
          Height = 95
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn3: TBitBtn
            Left = 36
            Top = 3
            Width = 129
            Height = 25
            Hint = #49325#51228
            Caption = #49440#53469#50868#46041#49325#51228
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
              DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
              DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
              DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
              DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitBtn3Click
          end
          object btn2: TBitBtn
            Left = 221
            Top = 3
            Width = 41
            Height = 25
            Hint = #50868#46041#48277#48372#44592
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
              DADAADADADAD00CDADADDADADAD00CDADADAAD000070CDADADADD0DADA0BDADA
              DADA0DAFFFF0000000000AF7F770FFFFFFF00DFFFFF0FFFFFFF00AF77F70F7FF
              FFF0A0FFFF0FFFFFFFF0DA00007F77FFFFF0AD0FFFFFFFFFFFF0DA0F7777F77F
              FFF0AD0FFFFFFFFFFFF0DA00000000000000ADADADADADADADAD}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = btn2Click
          end
          object btn3: TBitBtn
            Left = 262
            Top = 3
            Width = 39
            Height = 25
            Hint = #50689#49345#48372#44592
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888899888
              8888888888899988888888000009999088888077777999990880807777099999
              9800807770899999000080777089999700708070070999770000807007799777
              0800807777797777088088000000000088880888800888888888000000088888
              8888000000888888888808888888888888888888888888888888}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btn3Click
          end
          object rgDirection: TcxRadioGroup
            Left = 13
            Top = 32
            Caption = #51340'/'#50864' '#48169#54693#49440#53469
            Properties.Columns = 4
            Properties.DefaultValue = 0
            Properties.ImmediatePost = True
            Properties.Items = <
              item
                Caption = #50630#51020
                Value = 0
              end
              item
                Caption = #51340#52769
                Value = 1
              end
              item
                Caption = #50864#52769
                Value = 2
              end
              item
                Caption = #50577#52769
                Value = 3
              end>
            Properties.OnEditValueChanged = rgDirectionPropertiesEditValueChanged
            ItemIndex = 0
            Style.LookAndFeel.SkinName = 'DevExpressStyle'
            StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
            StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
            StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
            TabOrder = 3
            Height = 54
            Width = 336
          end
        end
        object cxGrid3: TcxGrid
          Left = 1
          Top = 121
          Width = 362
          Height = 594
          Align = alClient
          TabOrder = 2
          LookAndFeel.SkinName = 'DevExpressStyle'
          object gPracticeAssign: TcxGridDBTableView
            OnDragDrop = gPracticeAssignDragDrop
            OnDragOver = gPracticeAssignDragOver
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
            DataController.DataSource = d_npractice_assign
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object gPracticeAssignID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Width = 48
            end
            object gPracticeAssignRESULT_ID: TcxGridDBColumn
              Caption = #54637#47785'ID'
              DataBinding.FieldName = 'RESULT_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'ITEM_NAME'
                end>
              Properties.ListSource = ds_CHECK_ITEM_TREE_RESULT_SEL
              Width = 92
            end
            object gPracticeAssignDIRECTION_KIND: TcxGridDBColumn
              DataBinding.FieldName = 'DIRECTION_KIND'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = il2
              Properties.Items = <
                item
                  Description = #50630#51020
                  Value = 0
                end
                item
                  Description = #51340#52769
                  ImageIndex = 10
                  Value = 1
                end
                item
                  Description = #50864#52769
                  ImageIndex = 11
                  Value = 2
                end
                item
                  Description = #50577#52769
                  ImageIndex = 12
                  Value = 3
                end>
              Properties.ShowDescriptions = False
              HeaderAlignmentHorz = taCenter
              Width = 49
            end
            object gPracticeAssignPRACTICE_ID: TcxGridDBColumn
              Caption = #50868#46041#47749
              DataBinding.FieldName = 'PRACTICE_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'P_NAME'
                end>
              Properties.ListSource = dmDBCommon.d_NPRACTICE_look
              Width = 207
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = gPracticeAssign
          end
        end
      end
    end
  end
  object Panel19: TPanel
    Left = 893
    Top = 0
    Width = 435
    Height = 716
    Align = alClient
    TabOrder = 1
    object Panel21: TPanel
      Left = 1
      Top = 1
      Width = 433
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = #52376#48169#50868#46041' '#47532#49828#53944
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
    object Panel22: TPanel
      Left = 1
      Top = 26
      Width = 433
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnAddPractice: TBitBtn
        Left = 103
        Top = 3
        Width = 117
        Height = 25
        Hint = #52628#44032
        Caption = #52376#48169#50868#46041#51201#50857
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddPracticeClick
      end
      object btnPracticeAdd: TBitBtn
        Left = 8
        Top = 3
        Width = 31
        Height = 25
        Hint = #52628#44032
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnPracticeAddClick
      end
      object btnPracticeEdit: TBitBtn
        Left = 40
        Top = 3
        Width = 31
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnPracticeEditClick
      end
      object BitBtn9: TBitBtn
        Left = 72
        Top = 3
        Width = 30
        Height = 25
        Hint = #49325#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn9Click
      end
      object btn1: TBitBtn
        Left = 221
        Top = 3
        Width = 41
        Height = 25
        Hint = #50868#46041#48277#48372#44592
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADAD00CDADADDADADAD00CDADADAAD000070CDADADADD0DADA0BDADA
          DADA0DAFFFF0000000000AF7F770FFFFFFF00DFFFFF0FFFFFFF00AF77F70F7FF
          FFF0A0FFFF0FFFFFFFF0DA00007F77FFFFF0AD0FFFFFFFFFFFF0DA0F7777F77F
          FFF0AD0FFFFFFFFFFFF0DA00000000000000ADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btn1Click
      end
      object btnPlayVideo: TBitBtn
        Left = 262
        Top = 3
        Width = 39
        Height = 25
        Hint = #50689#49345#48372#44592
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888899888
          8888888888899988888888000009999088888077777999990880807777099999
          9800807770899999000080777089999700708070070999770000807007799777
          0800807777797777088088000000000088880888800888888888000000088888
          8888000000888888888808888888888888888888888888888888}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = btnPlayVideoClick
      end
    end
    object cxGrid5: TcxGrid
      Left = 1
      Top = 57
      Width = 433
      Height = 658
      Align = alClient
      TabOrder = 2
      LookAndFeel.SkinName = 'DevExpressStyle'
      object gPractice: TcxGridDBTableView
        DragMode = dmAutomatic
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
        DataController.DataSource = dmDBCommon.d_NPRACTICE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gPracticeID: TcxGridDBColumn
          Caption = #50868#46041'ID'
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
        end
        object gPracticeP_NAME: TcxGridDBColumn
          Caption = #50868#46041#47749
          DataBinding.FieldName = 'P_NAME'
        end
        object gPracticeFOR_BODY: TcxGridDBColumn
          Caption = #51201#50857' '#49888#52404#48512#50948'/'#44540#50977
          DataBinding.FieldName = 'FOR_BODY'
        end
        object gPracticeFOR_PAIN: TcxGridDBColumn
          Caption = #44288#47144' '#53685#51613
          DataBinding.FieldName = 'FOR_PAIN'
        end
      end
      object cxGrid5Level1: TcxGridLevel
        GridView = gPractice
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 716
    Align = alLeft
    TabOrder = 2
    object pnl2: TPanel
      Left = 1
      Top = 26
      Width = 527
      Height = 26
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = True
      ParentFont = False
      TabOrder = 0
      object btnAdd: TBitBtn
        Left = 43
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnDel: TBitBtn
        Left = 109
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 1
        OnClick = btnDelClick
      end
      object btnEdit: TBitBtn
        Left = 76
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        TabOrder = 2
        OnClick = btnEditClick
      end
      object btnAdd2: TBitBtn
        Left = 182
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 3
        OnClick = btnAdd2Click
      end
      object btnEdit2: TBitBtn
        Left = 215
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        TabOrder = 4
        OnClick = btnEdit2Click
      end
      object btnDel2: TBitBtn
        Left = 248
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 5
        OnClick = btnDel2Click
      end
      object btnDel3: TBitBtn
        Left = 427
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 6
        OnClick = btnDel3Click
      end
      object btnEdit3: TBitBtn
        Left = 394
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        TabOrder = 7
        OnClick = btnEdit3Click
      end
      object btnAdd3: TBitBtn
        Left = 361
        Top = 0
        Width = 34
        Height = 26
        Hint = #52769#51221#48169#48277
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 8
        OnClick = btnAdd3Click
      end
    end
    object pnl3: TPanel
      Left = 1
      Top = 1
      Width = 527
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = #52769#51221#54637#47785
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 52
      Width = 160
      Height = 663
      Align = alLeft
      TabOrder = 2
      LookAndFeel.SkinName = 'Black'
      object gRoot: TcxGridDBTableView
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
        OnFocusedRecordChanged = gRootFocusedRecordChanged
        DataController.DataSource = d_check_item_tree
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gRootID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 31
        end
        object gRootPARENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_ID'
          Visible = False
        end
        object gRootIMAGE_ID: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'IMAGE_ID'
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object gRootITEM_NAME: TcxGridDBColumn
          Caption = #52769#51221#54637#47785
          DataBinding.FieldName = 'ITEM_NAME'
          Width = 99
        end
        object gRootBODY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'BODY_ID'
          Visible = False
        end
        object gRootRESULT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'RESULT_ID'
          Visible = False
        end
        object gRootHOWTO_IMAGE: TcxGridDBColumn
          DataBinding.FieldName = 'HOWTO_IMAGE'
          Visible = False
        end
        object gRootVIDEO_ID: TcxGridDBColumn
          DataBinding.FieldName = 'VIDEO_ID'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gRoot
      end
    end
    object cxGrid2: TcxGrid
      Left = 337
      Top = 52
      Width = 191
      Height = 663
      Align = alClient
      TabOrder = 3
      LookAndFeel.SkinName = 'Black'
      object gSub2: TcxGridDBTableView
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
        OnFocusedRecordChanged = gSub2FocusedRecordChanged
        DataController.DataSource = d_check_item_sub2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gSub2ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 36
        end
        object gSub2PARENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_ID'
          Visible = False
        end
        object gSub2IMAGE_ID: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'IMAGE_ID'
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object gSub2ITEM_NAME: TcxGridDBColumn
          Caption = #52769#51221#44208#44284
          DataBinding.FieldName = 'ITEM_NAME'
          Width = 140
        end
        object gSub2BODY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'BODY_ID'
          Visible = False
        end
        object gSub2RESULT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'RESULT_ID'
          Visible = False
        end
        object gSub2HOWTO_IMAGE: TcxGridDBColumn
          DataBinding.FieldName = 'HOWTO_IMAGE'
          Visible = False
        end
        object gSub2VIDEO_ID: TcxGridDBColumn
          DataBinding.FieldName = 'VIDEO_ID'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gSub2
      end
    end
    object cxGrid4: TcxGrid
      Left = 161
      Top = 52
      Width = 176
      Height = 663
      Align = alLeft
      TabOrder = 4
      LookAndFeel.SkinName = 'Black'
      object gSub: TcxGridDBTableView
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
        OnFocusedRecordChanged = gSubFocusedRecordChanged
        DataController.DataSource = d_check_item_sub
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gSubID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 33
        end
        object gSubPARENT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'PARENT_ID'
          Visible = False
        end
        object gSubIMAGE_ID: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'IMAGE_ID'
          HeaderAlignmentHorz = taCenter
          Width = 30
        end
        object gSubITEM_NAME: TcxGridDBColumn
          Caption = #52769#51221#48512#50948
          DataBinding.FieldName = 'ITEM_NAME'
          Width = 121
        end
        object gSubBODY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'BODY_ID'
          Visible = False
        end
        object gSubRESULT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'RESULT_ID'
          Visible = False
        end
        object gSubHOWTO_IMAGE: TcxGridDBColumn
          DataBinding.FieldName = 'HOWTO_IMAGE'
          Visible = False
        end
        object gSubVIDEO_ID: TcxGridDBColumn
          DataBinding.FieldName = 'VIDEO_ID'
          Visible = False
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = gSub
      end
    end
  end
  object q_check_item_tree: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHECK_ITEM_TREE'
      
        '  (ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, HOWTO' +
        '_IMAGE, VIDEO_ID)'
      'VALUES'
      
        '  (:ID, :PARENT_ID, :IMAGE_ID, :ITEM_NAME, :BODY_ID, :RESULT_ID,' +
        ' :HOWTO_IMAGE, :VIDEO_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CHECK_ITEM_TREE'
      'SET'
      
        '  ID = :ID, PARENT_ID = :PARENT_ID, IMAGE_ID = :IMAGE_ID, ITEM_N' +
        'AME = :ITEM_NAME, BODY_ID = :BODY_ID, RESULT_ID = :RESULT_ID, HO' +
        'WTO_IMAGE = :HOWTO_IMAGE, VIDEO_ID = :VIDEO_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CHECK_ITEM_TREE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, H' +
        'OWTO_IMAGE, VIDEO_ID FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CHECK_ITEM_TREE'
      ''
      ') q')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      
        'select id, parent_id, image_id, item_name from check_item_tree w' +
        'here parent_id = 0'
      'order by image_id')
    Left = 64
    Top = 192
    object q_check_item_treeID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_check_item_treePARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object q_check_item_treeIMAGE_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'IMAGE_ID'
    end
    object q_check_item_treeITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
  end
  object d_check_item_tree: TDataSource
    DataSet = q_check_item_tree
    Left = 64
    Top = 240
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 7864384
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000705120D39113D2A9E19593EDD1F6A49FF1E6A48FF1B5D
          3EE313422EAB0717104900000009000000020000000000000000000000000000
          000201020210113C299D20724EFF229A6DFF22B481FF24C78FFF24C890FF23B5
          81FF229C6FFF20724FFF154831B5010503190000000300000000000000010102
          020E174E36C0218A61FF25C58EFF26C992FF44D7ABFF3AD3A1FF28CB94FF26CA
          92FF27CA93FF25C18BFF218860FF19593CD5020503180000000200000005113C
          2995238A63FF27C993FF26CA94FF27CB95FF0D824EFF1F9063FF42D1A5FF31CE
          9AFF29CB95FF27CB95FF29CB95FF238F66FF144731AF00000009040F0B2D2176
          53FA2BC693FF29CB95FF2BCC97FF2FCF9BFF0C804EFFABCBBBFF227F56FF43C0
          98FF42D6A7FF2DCE99FF2ACB96FF2DC996FF247C58FF07191147113A288F2DA1
          78FF2ECD98FF4AD8ACFF59DEB8FF5ADFB8FF0D7F4DFFF8F4F0FFDEEAE5FF4488
          68FF32A077FF52DCB2FF39D3A3FF30CF9BFF30A67DFF154933AF195A3ECA35C1
          93FF38D2A2FF239165FF0C7849FF0D7B4AFF0C7C4BFFF7EFEAFFF9F2EDFFFAFA
          F8FF86B09CFF207B54FF52CFAAFF48D8ACFF36C395FF1C694AE51C6B4AE946D1
          A4FF40D6A8FF0D7143FFFFFFFFFFFFFFFFFFFFFFFFFFF8F4F0FFF9F4F0FFF8F3
          F0FFFBF8F6FFC3D3CAFF296D4CFF35AA81FF49D5ABFF207853FA1D6B4BE35CD8
          B3FF45D9ACFF0C6E42FFDFD0CAFFE0D2CDFFE1D4CEFFF9F6F3FFFAF7F4FFF9F6
          F2FFECE3DFFFAEB9ABFF296D4CFF32AA81FF62DFBBFF227D59FC195E43C367D0
          B1FF50DEB2FF1C895DFF0C6E41FF0C7043FF0B7244FFFAF8F6FFF8F5F2FFE5DD
          D9FF74957FFF1D7651FF48CEA5FF52E0B5FF6CD7B7FF1F7050DF113C2B7D5BB7
          98FF61E3BEFF54E1B9FF57E3BCFF5AE4BFFF0C6E42FFF2EEEAFFC8CAC2FF3A73
          55FF339D77FF59E3BDFF58E3BBFF63E4C0FF65C1A5FF164F399E040E0A1F2C89
          67F58CE8CEFF5BE3BDFF5DE5BFFF5FE8C1FF0C6B3FFF95A797FF1E6948FF50C6
          A4FF61E9C5FF5FE8C1FF5FE5BFFF91EBD4FF2F9670FC07181236000000021242
          307C4CAE8CFF97F0DAFF67E8C4FF62EAC4FF0D673CFF2B8462FF65E5C3FF69ED
          CBFF67EAC8FF6EECC9FF9EF3DCFF52B493FF16543D9A00000005000000000002
          0105195D44A550B393FFA3EDDAFF95F2D9FF86EFD6FF78EED0FF79EFD1FF87F0
          D7FF96F2DDFFA0ECD8FF4CB592FF1C6C4FB80103030C00000001000000000000
          000000000002124633782F9F77F76AC9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1
          C9FF6DCEAFFF30A67DF916563F8F010201080000000100000000000000000000
          00000000000000000001040F0B1B144E3A7E207F5FC226926DDA269670DF2185
          63C816543F850617112900000003000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          001100000011000000100000000B00000003000000000000000017417CCA2159
          A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
          A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
          B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
          E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
          BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
          E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
          D2FF3C87C6FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
          EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
          E6FF4FA0D5FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
          EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
          F5FF75C8EDFF55A3D7FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
          FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
          FEFF97E5FCFF62BBE7FF4AA0D6FF4A9DD5FF91C3E3FF8DBCDCFF8FBDE0FF5FA3
          D6FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
          FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFFBBE6F3FFA68E78FFA6BABDFFB2E1
          F3FFB9E6F7FFB3E0F0FF8EADD1FF000000180000000B00000007398ECBFFD0F8
          FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFD3EDF3FFAD744CFF9A6841FFBEB8
          ADFFD1E1E3FF975D32FF8A6E59FF0C07032E00000007000000013B92CEFFD3F9
          FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF9CC3E0FFAD886CFFDBB891FFB07F
          53FF9B643AFF9F663DFFDBB67EFF8E5D33EF311D0F67000000063D97D1FFE2FC
          FEFFE2FCFEFFE1FCFEFFD3F3FAFF428FC1EC0B111523382A1E58C49870FFEAD2
          B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000082E739DBF3E9A
          D3FF3E99D3FF3E99D3FF3E97D2FF143245590000000200000003382C204E9877
          58CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B00000003000000020000
          0003000000030000000400000003000000020000000000000000000000010000
          000200000005CAA27AFF846A50AC110D0A1B0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090101
          010E010101100101011001010110010101100101011001010111010101110101
          011101010111010101100101010B0000000300000000000000001D4783CA2860
          AFFF2962B1FF2961B1FF2860B0FF285FB0FF275EAFFF275EAEFF275CAEFF275C
          AEFF275BADFF265AADFF2659ABFF214C94E304091129000000022965AFFF3671
          B7FF5C9FD8FF75C1EFFF4BAAE8FF49A7E8FF46A5E7FF44A3E6FF41A3E6FF40A1
          E5FF3D9FE4FF3B9FE5FF3A9EE5FF2E7AC7FF132C528B000000082F6FB8FF4E89
          C4FF4A8FCDFF9FDAF7FF67BDEFFF59B3ECFF56B2ECFF52B0EBFF91C9F0FFA1CE
          EBFF9DC9E6FF9BC8E6FF9DCBEAFF83BBE7FF214D8DD50101010D3376BDFF70AB
          D6FF428DCCFFA2D6F2FF97D7F7FF6AC1F2FF67BEF1FF64BDEFFFAAD5EFFF2B7F
          5FFF046635FF046633FF2C7E61FFA3CFECFF306DBBFF060C162F367BC2FF92CA
          E9FF54A3DAFF83BFE5FFC4EFFDFF7BCCF5FF78CBF5FF76C9F4FFB1D9EEFF067B
          45FF2FD19DFF23CD94FF057A44FFA9D4EBFF4690CFFF153052813982C5FFB1E4
          F6FF78CBF0FF5AA7DCFFD3F5FEFFE8F9FDFFE2F2F7FFDDF0F4FFD4E7ECFF077D
          48FF36D6A5FF27D199FF067C47FFC1DBE7FFB9D6E8FF7692B4E13C88CAFFC9F6
          FFFF9AE7FEFF66BFEBFF50A4DBFFA3CCE6FF05723FFF05713EFF05703DFF087F
          4AFF3EDBACFF2DD49FFF077D48FF046C39FF046C39FF046B38FF3B8ECEFFCEF8
          FFFFA9EDFFFF9FEAFFFF95E5FDFFC5EDFAFF469B7FFF6BB498FF4DDCB1FF34D9
          A9FF36D9A9FF34D9A9FF30D6A3FF40D7A8FF63AA8EFF04391CB53E93D0FFD1F9
          FFFFB1F1FFFFADEFFFFFA9EEFFFFC2F1FEFFCEECEEFF2D966CFF8BD1BAFF58E3
          BEFF5CE6C0FF5BE5BEFF51DFB7FF7DCCB2FF0E633BE40006031A4097D3FFD4FA
          FFFFB8F4FFFFB5F2FEFFB3F3FFFFBBEEFBFF98C4E3FF7AB3C0FF359C71FF9DE5
          D2FF6EEDCBFF6DECC9FF91E2CAFF2E895EFD021A0E4700000003429CD6FFE2FC
          FEFFE2FCFEFFE1FCFEFFD4F5FBFF4793C6EC080E121E0303030C0B472F8964B4
          94FF96EDD7FF8BEAD2FF5CA98AFF053A228A00000005000000013276A0BF439F
          D8FF439ED8FF439ED8FF439CD7FF16344759000000020000000000020107136F
          4AC791CCB6FF8BC9B2FF0A6039CB000101090000000100000000000000020000
          0003000000030000000400000003000000020000000000000000000000010313
          0D252D956CF321875AF501100A27000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010A35245D052F1D6000000002000000000000000000000000}
      end>
  end
  object il1: TImageList
    Left = 184
    Top = 376
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008080800000000000000000000000000000000000000000000080
      8000000000000080800000000000008080000000000000808000000000000000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000FFFF0000FFFF00000000000000
      00000000FF000000800000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008000
      0000800000008000000080000000000000000000000000808000000000000080
      800000000000008080000000000000FFFF0000FFFF0000FFFF00000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000000000000000000000000000000000000008080000000
      0000008080000000000000808000808080008080800080808000008080000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00000000008080
      8000808080008080800000000000808080008080800080808000800000008000
      0000000000000000000000000000000000000000000000808000000000000080
      8000000000000080800000000000008080000000000000808000000000000000
      0000008080000000000000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00008080000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00808080008080800080000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000080808000808080008080800080808000808080008080800000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00808080008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000080808000FFFFFF0080808000808080000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080008080800000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000008080800080808000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808000008080000080800000808000008080000080800000808000008080
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      FF00000000008080800000000000000000000000000080808000000000000000
      FF00000000000000000000000000000000000000000000000000808080008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080800000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000008080800000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000008080800000000000000000000000000000000000808080000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      0000808080000000000000000000000000000000000000000000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF008080800000000000808080000000FF000000FF000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000808080000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000FF000000FF000000FF000000FF000000FF00000000008080
      8000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000FF000000FF000000FF000000FF000000FF00000000008080
      8000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000008080
      800000000000FF000000FF000000FF000000FF000000FF000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00808080000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00008080800000000000FF000000FF000000FF00000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000FF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000008080800000000000FF0000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000FF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080800000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808000008080000080800000808000008080000080800000808000008080
      0000808080000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00C001FFCFFFFF0000C000FFC7C0070000
      D000FFC3AAA30000E000000100010000F00100012A210000F0013FC354110000
      00011DC700000000000122072AA000000001000780100000002F3027C0080000
      000F004700050000001F3867F00B0000001F008700010000001F3CE7FC060000
      001F000700000000001F0007FFFF0000F81FFFFFFFFFFFFFE007FFFF8003CFE7
      C00300008003C387800100008003C10780010000C007E00F00000000C007E00F
      00000000E00FE00F00000000E00FC00700000000F01F800300000000F01F0001
      00000000F83FF83F80010000F83FF83F80010000FC7FFC7FC0030000FC7FFC7F
      E0070000FEFFFEFFF81FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object q_npractice_assign: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO NPRACTICE_ASSIGN'
      '  (ID, RESULT_ID, PRACTICE_ID, DIRECTION_KIND)'
      'VALUES'
      '  (:ID, :RESULT_ID, :PRACTICE_ID, :DIRECTION_KIND)')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM NPRACTICE_ASSIGN'
      ''
      ') q')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from npractice_assign'
      'where result_id = :result_id'
      'order by practice_id')
    Left = 624
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result_id'
        ParamType = ptInput
      end>
    object q_npractice_assignID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_npractice_assignRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object q_npractice_assignPRACTICE_ID: TIntegerField
      FieldName = 'PRACTICE_ID'
    end
    object q_npractice_assignDIRECTION_KIND: TSmallintField
      Alignment = taCenter
      DisplayLabel = #48169#54693
      FieldName = 'DIRECTION_KIND'
    end
  end
  object d_npractice_assign: TDataSource
    DataSet = q_npractice_assign
    Left = 624
    Top = 280
  end
  object CHECK_ITEM_TREE_RESULT_SEL: TUniStoredProc
    StoredProcName = 'CHECK_ITEM_TREE_RESULT_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 640
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ITEM_NAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CHECK_ITEM_TREE_RESULT_SEL'
    object CHECK_ITEM_TREE_RESULT_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CHECK_ITEM_TREE_RESULT_SELITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
  end
  object ds_CHECK_ITEM_TREE_RESULT_SEL: TDataSource
    DataSet = CHECK_ITEM_TREE_RESULT_SEL
    Left = 640
    Top = 496
  end
  object il2: TImageList
    Left = 520
    Top = 200
    Bitmap = {
      494C01010D001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF0000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF0000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008080800000000000000000000000000000000000000000000080
      8000000000000080800000000000008080000000000000808000000000000000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000FFFF0000FFFF00000000000000
      00000000FF000000800000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008000
      0000800000008000000080000000000000000000000000808000000000000080
      800000000000008080000000000000FFFF0000FFFF0000FFFF00000000000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000000000000000000000000000000000000008080000000
      0000008080000000000000808000808080008080800080808000008080000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000800000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000008080000080800000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FFFF0000FFFF00008080000000
      00000000FF0000008000000000000000000000000000FFFFFF00000000008080
      8000808080008080800000000000808080008080800080808000800000008000
      0000000000000000000000000000000000000000000000808000000000000080
      8000000000000080800000000000008080000000000000808000000000000000
      0000008080000000000000808000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      000000000000FF000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00008080000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00808080008080800080000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000FFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000080808000808080008080800080808000808080008080800000000000FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000808000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00808080008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF00FFFFFF000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000080808000FFFFFF0080808000808080000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF0000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00808080008080800000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000008080800080808000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808000008080000080800000808000008080000080800000808000008080
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      FF00000000008080800000000000000000000000000080808000000000000000
      FF00000000000000000000000000000000000000000000000000808080008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080800000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000008080800000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000008080800000000000000000000000000000000000808080000000
      00000000FF0000000000000000000000000000000000000000000000FF000000
      0000808080000000000000000000000000000000000000000000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF008080800000000000808080000000FF000000FF000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000808080000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000FF000000FF000000FF000000FF000000FF00000000008080
      8000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000FF000000FF000000FF000000FF000000FF00000000008080
      8000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000008080
      800000000000FF000000FF000000FF000000FF000000FF000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00808080000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00008080800000000000FF000000FF000000FF00000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000FF008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000008080800000000000FF0000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000000000FF000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      0000808000008080000080800000808000008080000080800000808000008080
      0000808000008080800000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808000008080000080800000808000008080000080800000808000008080
      0000808080000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000808000008080000080800000808000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FDBF000000000000
      F99F000000000000F18F000000000000E187000000000000C183000000000000
      818100000000000000000000000000008181000000000000C183000000000000
      E187000000000000F18F000000000000F99F000000000000FDBF000000000000
      FFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFBDFFBFFFFFF7F
      FFF99FF9FEFFFF3F80000000FCFFFF1FFFF99FF9F8FFFF0FFFFBDFFBF0FFFF07
      E1C7E01FE0FFFF03F18FF18FC0FF0001F18FF18F8000FF03F18FF18FC0FFFF07
      F01FF01FE0FFFF0FF18FF18FF0FFFF1FF18FF18FF8FFFF3FF18FF18FFCFFFF7F
      E01FE01FFEFFFFFFFFFFFFFFFFFFFFFFC001FFCFFFFFFFFFC000FFC7C007DFFF
      D000FFC3AAA39FFFE000000100010001F00100012A219FFFF0013FC35411DFFF
      00011DC70000E007000122072AA0F1FB000100078010F1FF002F3027C008F1FF
      000F00470005F1FF001F3867F00BF1FF001F00870001F1FF001F3CE7FC06F1FF
      001F00070000E1FF001F0007FFFFFFFFF81FFFFFFFFFFFFFE007FFFF8003CFE7
      C00300008003C387800100008003C10780010000C007E00F00000000C007E00F
      00000000E00FE00F00000000E00FC00700000000F01F800300000000F01F0001
      00000000F83FF83F80010000F83FF83F80010000FC7FFC7FC0030000FC7FFC7F
      E0070000FEFFFEFFF81FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object NPRACTICE_DEL: TUniStoredProc
    StoredProcName = 'NPRACTICE_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 752
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'NPRACTICE_DEL'
  end
  object NPRACTICE_INS: TUniStoredProc
    StoredProcName = 'NPRACTICE_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 752
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FOR_PAIN'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FOR_BODY'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'NPRACTICE_INS'
  end
  object NPRACTICE_UPD: TUniStoredProc
    StoredProcName = 'NPRACTICE_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 752
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P_NAME'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FOR_PAIN'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FOR_BODY'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'NPRACTICE_UPD'
  end
  object q_check_item_sub: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHECK_ITEM_TREE'
      
        '  (ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, HOWTO' +
        '_IMAGE, VIDEO_ID)'
      'VALUES'
      
        '  (:ID, :PARENT_ID, :IMAGE_ID, :ITEM_NAME, :BODY_ID, :RESULT_ID,' +
        ' :HOWTO_IMAGE, :VIDEO_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CHECK_ITEM_TREE'
      'SET'
      
        '  ID = :ID, PARENT_ID = :PARENT_ID, IMAGE_ID = :IMAGE_ID, ITEM_N' +
        'AME = :ITEM_NAME, BODY_ID = :BODY_ID, RESULT_ID = :RESULT_ID, HO' +
        'WTO_IMAGE = :HOWTO_IMAGE, VIDEO_ID = :VIDEO_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CHECK_ITEM_TREE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, H' +
        'OWTO_IMAGE, VIDEO_ID FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CHECK_ITEM_TREE'
      ''
      ') q')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      
        'select id, parent_id, image_id, item_name from check_item_tree w' +
        'here parent_id = :p_id'
      'order by image_id')
    Left = 208
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
      end>
    object q_check_item_subID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_check_item_subPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object q_check_item_subIMAGE_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'IMAGE_ID'
    end
    object q_check_item_subITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
  end
  object d_check_item_sub: TDataSource
    DataSet = q_check_item_sub
    Left = 208
    Top = 240
  end
  object q_check_item_sub2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHECK_ITEM_TREE'
      
        '  (ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, HOWTO' +
        '_IMAGE, VIDEO_ID)'
      'VALUES'
      
        '  (:ID, :PARENT_ID, :IMAGE_ID, :ITEM_NAME, :BODY_ID, :RESULT_ID,' +
        ' :HOWTO_IMAGE, :VIDEO_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CHECK_ITEM_TREE'
      'SET'
      
        '  ID = :ID, PARENT_ID = :PARENT_ID, IMAGE_ID = :IMAGE_ID, ITEM_N' +
        'AME = :ITEM_NAME, BODY_ID = :BODY_ID, RESULT_ID = :RESULT_ID, HO' +
        'WTO_IMAGE = :HOWTO_IMAGE, VIDEO_ID = :VIDEO_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CHECK_ITEM_TREE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, H' +
        'OWTO_IMAGE, VIDEO_ID FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CHECK_ITEM_TREE'
      ''
      ') q')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      
        'select id, parent_id, image_id, item_name, howto_image, video_id' +
        ' from check_item_tree where parent_id = :p_id'
      'order by image_id')
    Left = 392
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_id'
        ParamType = ptInput
      end>
    object q_check_item_sub2ID: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_check_item_sub2PARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object q_check_item_sub2IMAGE_ID: TIntegerField
      Alignment = taCenter
      FieldName = 'IMAGE_ID'
    end
    object q_check_item_sub2ITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object q_check_item_sub2HOWTO_IMAGE: TSmallintField
      FieldName = 'HOWTO_IMAGE'
    end
    object q_check_item_sub2VIDEO_ID: TStringField
      FieldName = 'VIDEO_ID'
      Size = 30
    end
  end
  object d_check_item_sub2: TDataSource
    DataSet = q_check_item_sub2
    Left = 392
    Top = 248
  end
end
