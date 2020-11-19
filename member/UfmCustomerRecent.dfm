object fmCustomerRecent: TfmCustomerRecent
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #52572#44540' '#46321#47197#51088
  ClientHeight = 544
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 0
    Top = 31
    Width = 296
    Height = 513
    Align = alClient
    TabOrder = 0
    LookAndFeel.SkinName = 'Black'
    ExplicitTop = 30
    ExplicitWidth = 224
    ExplicitHeight = 514
    object gridMember: TcxGridDBTableView
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
      OnCellDblClick = gridMemberCellDblClick
      DataController.DataSource = dmDBCommon.ds_CUSTOMER_SEL_RECENT_REG
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridMemberUID: TcxGridDBColumn
        DataBinding.FieldName = 'UID'
        Visible = False
      end
      object gridMemberREG_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'REG_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'yy-mm-dd'
        Width = 70
      end
      object gridMemberCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 83
      end
      object gridMemberSEX: TcxGridDBColumn
        DataBinding.FieldName = 'SEX'
        Visible = False
      end
      object gridMemberCTEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'CTEL'
        Width = 133
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMember
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 296
    Height = 31
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 68
      Height = 23
      Align = alLeft
      Caption = #52572#44540#46321#47197#51068': '
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object btnSelect: TBitBtn
      AlignWithMargins = True
      Left = 193
      Top = 2
      Width = 70
      Height = 27
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = #49440#53469
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 202
      ExplicitHeight = 25
    end
    object DateTimePicker1: TDateTimePicker
      AlignWithMargins = True
      Left = 76
      Top = 3
      Width = 115
      Height = 25
      Margins.Left = 1
      Margins.Top = 2
      Margins.Right = 1
      Margins.Bottom = 2
      Align = alLeft
      Date = 44154.210441342590000000
      Time = 44154.210441342590000000
      TabOrder = 1
      OnChange = DateTimePicker1Change
      ExplicitLeft = 70
      ExplicitTop = 4
      ExplicitHeight = 22
    end
  end
end
