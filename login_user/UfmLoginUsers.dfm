object fmLoginUsers: TfmLoginUsers
  Left = 0
  Top = 0
  Caption = #47196#44536#51064' '#49324#50857#51088
  ClientHeight = 613
  ClientWidth = 934
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
    Width = 934
    Height = 29
    Align = alTop
    TabOrder = 0
    object btnRefresh: TBitBtn
      Left = 32
      Top = 2
      Width = 75
      Height = 25
      Caption = #49352#47196#44256#52840
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnRefreshClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 934
    Height = 584
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 208
    ExplicitTop = 152
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = d_login_user
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 158
      end
      object cxGrid1DBTableView1USER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'USER_ID'
        Visible = False
      end
      object cxGrid1DBTableView1COMP_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'COMP_NAME'
        Width = 160
      end
      object cxGrid1DBTableView1LOCATION_AREA: TcxGridDBColumn
        DataBinding.FieldName = 'LOCATION_AREA'
        Width = 81
      end
      object cxGrid1DBTableView1USER_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'USER_NAME'
      end
      object cxGrid1DBTableView1LOGIN_ID: TcxGridDBColumn
        DataBinding.FieldName = 'LOGIN_ID'
      end
      object cxGrid1DBTableView1USER_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'USER_KIND'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = #49324#50857#51088
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #44288#47532#51088
            Value = 1
          end
          item
            Description = #49884#49828#53596
            Value = 2
          end>
      end
      object cxGrid1DBTableView1EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'EMAIL'
      end
      object cxGrid1DBTableView1IS_ANALYZER: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ANALYZER'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #48516#49437#44032
            Value = 1
          end>
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object t_login_user: TUniTable
    TableName = 'CURRENT_LOGINUSER_VIEW'
    Connection = dmDBCommon.UniDBConnection
    Left = 136
    Top = 280
    object t_login_userID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object t_login_userUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 17
    end
    object t_login_userUSER_NAME: TStringField
      DisplayLabel = #49324#50857#51088#47749
      FieldName = 'USER_NAME'
      Size = 10
    end
    object t_login_userLOGIN_ID: TStringField
      DisplayLabel = #47196#44536#51064'ID'
      FieldName = 'LOGIN_ID'
      Size = 10
    end
    object t_login_userUSER_KIND: TIntegerField
      DisplayLabel = #49324#50857#51088#44396#48516
      FieldName = 'USER_KIND'
    end
    object t_login_userEMAIL: TStringField
      DisplayLabel = #51060#47700#51068
      FieldName = 'EMAIL'
      Size = 50
    end
    object t_login_userIS_ANALYZER: TSmallintField
      DisplayLabel = #48516#49437#44032
      FieldName = 'IS_ANALYZER'
    end
    object t_login_userCOMP_NAME: TStringField
      DisplayLabel = #45800#52404#47749
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object t_login_userLOCATION_AREA: TStringField
      DisplayLabel = #51648#50669#47749
      FieldName = 'LOCATION_AREA'
    end
  end
  object d_login_user: TDataSource
    DataSet = t_login_user
    Left = 136
    Top = 328
  end
end
