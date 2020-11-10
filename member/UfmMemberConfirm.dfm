object fmMemberConfirm: TfmMemberConfirm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896#49440#53469
  ClientHeight = 211
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 27
    Align = alTop
    Caption = #46041#51068' '#54924#50896#47749' '#44160#49353'! '#46041#51068#54924#50896' '#50668#48512#47484' '#54869#51064#54616#49464#50836'.'
    TabOrder = 0
    ExplicitWidth = 542
  end
  object Panel2: TPanel
    Left = 0
    Top = 178
    Width = 333
    Height = 33
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 192
    ExplicitWidth = 542
    object BitBtn1: TBitBtn
      Left = 90
      Top = 3
      Width = 75
      Height = 25
      Caption = #54869#51064
      Kind = bkOK
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 168
      Top = 3
      Width = 75
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 27
    Width = 333
    Height = 151
    Align = alClient
    TabOrder = 2
    LookAndFeel.SkinName = 'Black'
    ExplicitLeft = 104
    ExplicitTop = 33
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gridCustomer: TcxGridDBTableView
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
      DataController.DataSource = dsCustomer
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.FocusRect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridCustomerCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 76
      end
      object gridCustomerSEX: TcxGridDBColumn
        Caption = #49457#48324
        DataBinding.FieldName = 'SEX'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = #45224#51088
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = #50668#51088
            Value = '1'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object gridCustomerCTEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'CTEL'
        Width = 185
      end
      object gridCustomerUID: TcxGridDBColumn
        DataBinding.FieldName = 'UID'
        Visible = False
      end
      object gridCustomerIS_ACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ACTIVE'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridCustomer
    end
  end
  object qryCustomer: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      
        'select uid, cname, sex, ctel, is_active from customer where comp' +
        'any_id = :c_id and cname = :c_name'
      'order by sex, ctel;')
    Left = 32
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'c_id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'c_name'
        ParamType = ptInput
      end>
    object qryCustomerCNAME: TStringField
      FieldName = 'CNAME'
    end
    object qryCustomerSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object qryCustomerCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object qryCustomerUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 40
    end
    object qryCustomerIS_ACTIVE: TSmallintField
      FieldName = 'IS_ACTIVE'
    end
  end
  object dsCustomer: TDataSource
    DataSet = qryCustomer
    Left = 32
    Top = 104
  end
end
