object fmCompareWindowList: TfmCompareWindowList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #48708#44368#48516#49437' '#50952#46020#50864
  ClientHeight = 574
  ClientWidth = 236
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 1
    Top = 1
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    Caption = #48708#44368#45936#51060#53552
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 0
    ExplicitTop = 364
    ExplicitWidth = 208
    ExplicitHeight = 210
    Height = 572
    Width = 234
    object Panel2: TPanel
      Left = 3
      Top = 15
      Width = 228
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 204
      object btnAdd: TBitBtn
        Left = 33
        Top = 0
        Width = 48
        Height = 25
        Hint = #49888#44508#46321#47197
        Caption = #51312#54924
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnAddClick
      end
      object btnSave: TBitBtn
        Left = 81
        Top = 0
        Width = 48
        Height = 25
        Hint = #48320#44221#51200#51109
        Caption = #51200#51109
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object btnDel: TBitBtn
        Left = 129
        Top = 0
        Width = 48
        Height = 25
        Hint = #49440#53469#49325#51228
        Caption = #49325#51228
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object cxGrid3: TcxGrid
      Left = 3
      Top = 42
      Width = 228
      Height = 520
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      ExplicitLeft = 2
      ExplicitTop = 25
      ExplicitWidth = 204
      ExplicitHeight = 183
      object gridCompareWin: TcxGridDBTableView
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
        OnCellDblClick = gridCompareWinCellDblClick
        DataController.DataSource = dmDBCommon.ds_CUST_COMPARE_WIN_SEL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridCompareWinID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridCompareWinMEMBER_ID: TcxGridDBColumn
          DataBinding.FieldName = 'MEMBER_ID'
          Visible = False
        end
        object gridCompareWinMAKE_DATE: TcxGridDBColumn
          Caption = #51089#49457#51068#51088
          DataBinding.FieldName = 'MAKE_DATE'
          Options.Editing = False
          Width = 81
        end
        object gridCompareWinCOMPARE_NAME: TcxGridDBColumn
          Caption = #51228#47785
          DataBinding.FieldName = 'COMPARE_NAME'
          Width = 169
        end
        object gridCompareWinCOMPANY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'COMPANY_ID'
          Visible = False
        end
        object gridCompareWinIMAGE1_ID: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE1_ID'
          Visible = False
        end
        object gridCompareWinIMAGE2_ID: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE2_ID'
          Visible = False
        end
        object gridCompareWinIMAGE3_ID: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE3_ID'
          Visible = False
        end
        object gridCompareWinIMAGE4_ID: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE4_ID'
          Visible = False
        end
        object gridCompareWinIMAGE_DATE1: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE_DATE1'
          Visible = False
        end
        object gridCompareWinIMAGE_DATE2: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE_DATE2'
          Visible = False
        end
        object gridCompareWinIMAGE_DATE3: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE_DATE3'
          Visible = False
        end
        object gridCompareWinIMAGE_DATE4: TcxGridDBColumn
          DataBinding.FieldName = 'IMAGE_DATE4'
          Visible = False
        end
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = gridCompareWin
      end
    end
  end
end
