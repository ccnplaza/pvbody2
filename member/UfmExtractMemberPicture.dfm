object fmExtractMemberPicture: TfmExtractMemberPicture
  Left = 0
  Top = 0
  Caption = #51060#48120#51648#54028#51068' '#52628#52636
  ClientHeight = 644
  ClientWidth = 1036
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 33
    Align = alTop
    TabOrder = 0
    object edtID: TEdit
      Left = 88
      Top = 6
      Width = 153
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
      Text = '20150718183657548'
    end
    object btn1: TButton
      Left = 247
      Top = 4
      Width = 75
      Height = 25
      Caption = #51312#54924
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 344
      Top = 4
      Width = 113
      Height = 25
      Caption = #51060#48120#51648#52628#52636
      TabOrder = 2
      OnClick = btn2Click
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 33
    Width = 1036
    Height = 611
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    ExplicitLeft = -8
    ExplicitTop = 25
    object gridList: TcxGridDBTableView
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
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.DataSource = ds1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.ShowHourglassCursor = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.Indicator = True
      object gridListID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 164
      end
      object gridListCHECK_ID: TcxGridDBColumn
        DataBinding.FieldName = 'CHECK_ID'
        Width = 175
      end
      object gridListCUST_UID: TcxGridDBColumn
        DataBinding.FieldName = 'CUST_UID'
        Width = 160
      end
      object gridListIMAGE_IDX: TcxGridDBColumn
        DataBinding.FieldName = 'IMAGE_IDX'
      end
      object gridListPICTURE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'PICTURE_DATE'
        Width = 187
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridList
    end
  end
  object UniQuery1: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select ID,  CHECK_ID, CUST_UID, IMAGE_IDX, PICTURE_DATE '
      'from CUSTOMER_IMAGE3 where id > :id'
      'order by id')
    Left = 232
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    object UniQuery1ID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object UniQuery1CHECK_ID: TStringField
      FieldName = 'CHECK_ID'
      Size = 17
    end
    object UniQuery1CUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object UniQuery1IMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
    object UniQuery1PICTURE_DATE: TDateTimeField
      FieldName = 'PICTURE_DATE'
    end
  end
  object ds1: TDataSource
    DataSet = UniQuery1
    Left = 232
    Top = 456
  end
  object UniQuery2: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select ID,  IMAGE_DATA '
      'from CUSTOMER_IMAGE3 where id = :id')
    Left = 336
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    object StringField1: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object BlobField1: TBlobField
      FieldName = 'IMAGE_DATA'
    end
  end
  object ds2: TDataSource
    DataSet = UniQuery2
    Left = 336
    Top = 456
  end
end
