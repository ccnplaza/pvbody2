object fmHowTo: TfmHowTo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #52769#51221#48169#48277
  ClientHeight = 515
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 31
    Align = alTop
    TabOrder = 0
    Visible = False
    object BitBtn1: TBitBtn
      Left = 43
      Top = 3
      Width = 47
      Height = 25
      Caption = #52628#44032
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 472
      Top = 3
      Width = 94
      Height = 25
      Caption = #51060#48120#51648#48320#44221
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 137
      Top = 3
      Width = 47
      Height = 25
      Caption = #49325#51228
      TabOrder = 2
    end
    object btnEdit: TBitBtn
      Left = 90
      Top = 3
      Width = 47
      Height = 25
      Caption = #49688#51221
      TabOrder = 3
      OnClick = btnEditClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 31
    Width = 250
    Height = 484
    Align = alLeft
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridImage: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
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
      OnFocusedRecordChanged = gridImageFocusedRecordChanged
      DataController.DataSource = ds_CHECK_HOWTO_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridImageID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
      end
      object gridImageIMG_TITLE: TcxGridDBColumn
        Caption = #52769#51221#54637#47785
        DataBinding.FieldName = 'IMG_TITLE'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridImage
    end
  end
  object pnl1: TPanel
    Left = 250
    Top = 31
    Width = 744
    Height = 484
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnl1'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 2
    object wb1: TWebBrowser
      Left = 0
      Top = 0
      Width = 744
      Height = 484
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 416
      ExplicitTop = 80
      ExplicitWidth = 300
      ExplicitHeight = 150
      ControlData = {
        4C000000E54C0000063200000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object OpenImageEnDialog1: TOpenImageEnDialog
    Left = 304
    Top = 72
  end
  object CHECK_HOWTO_INS: TUniStoredProc
    StoredProcName = 'CHECK_HOWTO_INS'
    Left = 448
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMG_TITLE'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftBlob
        Name = 'IMG_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'CHECK_HOWTO_INS'
  end
  object CHECK_HOWTO_SEL: TUniStoredProc
    StoredProcName = 'CHECK_HOWTO_SEL'
    Left = 72
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IMG_TITLE'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CHECK_HOWTO_SEL'
    object CHECK_HOWTO_SELID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object CHECK_HOWTO_SELIMG_TITLE: TStringField
      FieldName = 'IMG_TITLE'
      Size = 50
    end
  end
  object ds_CHECK_HOWTO_SEL: TDataSource
    DataSet = CHECK_HOWTO_SEL
    Left = 72
    Top = 360
  end
  object CHECK_HOWTO_SEL_IMAGE: TUniStoredProc
    StoredProcName = 'CHECK_HOWTO_SEL_IMAGE'
    Left = 440
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'IMG_DATA'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CHECK_HOWTO_SEL_IMAGE'
    object CHECK_HOWTO_SEL_IMAGEIMG_DATA: TBlobField
      FieldName = 'IMG_DATA'
    end
  end
  object ds_CHECK_HOWTO_SEL_IMAGE: TDataSource
    DataSet = CHECK_HOWTO_SEL_IMAGE
    Left = 440
    Top = 376
  end
  object CHECK_HOWTO_UPD_IMAGE: TUniStoredProc
    StoredProcName = 'CHECK_HOWTO_UPD_IMAGE'
    Left = 448
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'IMG_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'CHECK_HOWTO_UPD_IMAGE'
  end
  object CHECK_HOWTO_UPD_TITLE: TUniStoredProc
    StoredProcName = 'CHECK_HOWTO_UPD_TITLE'
    Left = 448
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMG_TITLE'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'CHECK_HOWTO_UPD_TITLE'
  end
end
