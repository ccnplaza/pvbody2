inherited fmStaticResultView: TfmStaticResultView
  Caption = #51221#51201#48516#49437#44208#44284#51312#54924
  ClientHeight = 515
  ClientWidth = 819
  Font.Name = #45208#45588#44256#46357
  OnShow = FormShow
  ExplicitWidth = 825
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 97
    Align = alTop
    TabOrder = 0
    object btnPrint: TBitBtn
      Left = 687
      Top = 49
      Width = 122
      Height = 26
      Caption = #50868#46041#52376#48169#52636#47141
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000084
        840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
        3333330000000000033330313131313010330000000000000103013131355531
        0003031313122213010300000000000001100131313131301010300000000003
        0100330666666660301044446000002203033333066666663033444444000002
        2203333333066666633044444444000000003333333333333333}
      TabOrder = 0
      OnClick = btnPrintClick
    end
    object btnPlayVideo: TBitBtn
      Left = 687
      Top = 21
      Width = 122
      Height = 26
      Caption = #50689#49345#48372#44592
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AD6A27FF7144
        19A9000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AD6A27FFAA67
        26FFAA6726FF79491BB500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AD6A27FFAA67
        26FFAA6726FFAA6726FFAA6726FF704319A70000000000000000875B2FC1B378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF0806030CAD6A27FFAA67
        26FFAA6726FFAA6726FFAA6726FFAA6726FFAA6726FF643D1695B3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF0806030CAD6A27FFAA67
        26FFAA6726FFAA6726FFAA6726FFAA6726FFAA6726FF55341380B3783EFFB378
        3EFFEEE1D4FFFFFFFFFFFFFFFFFFEEE1D4FFB3783EFF0806030CAD6A27FFAA67
        26FFAA6726FFAA6726FFAA6726FF613B16910302010400000000B3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF0806030CAD6A27FFAA67
        26FFAA6726FF6940189E010100023E291558986635D900000000B3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF0D090513AD6A27FF7748
        1BB20100000100000000936233D1B3783EFFB2773EFD00000000B3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF69462495130D071B3524
        124C8E5F31CA02010103B3783EFFB3783EFFB2773EFD00000000B3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFF04030106B3783EFFB3783EFFB3783EFF00000000B3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFF01000001B3783EFFB3783EFFB3783EFF00000000B3783EFFB378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFF0000000000000000B3783EFFB3783EFF0000000067452493B378
        3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFF66452392000000000000000000000000B3783EFF00000000000000000000
        0000040201050806030C06040208B3783EFFB3783EFFB2783EFE000000000000
        0000000000000000000000000000000000000000000000000000000000005237
        1C75B2783EFEB3783EFFB3783EFFB3783EFFB2783EFE00000000000000000000
        0000000000000000000000000000000000000000000000000000000000005237
        1C75B2783EFEB3783EFFB3783EFFB2773EFD0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = btnPlayVideoClick
    end
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Align = alLeft
      Caption = #51333#54633#51032#44204
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 2
      Height = 89
      Width = 557
      object Memo1: TMemo
        Left = 3
        Top = 17
        Width = 551
        Height = 62
        Align = alClient
        TabOrder = 0
        WantTabs = True
        ExplicitTop = 15
        ExplicitHeight = 64
      end
    end
    object btnSave: TBitBtn
      Left = 576
      Top = 49
      Width = 97
      Height = 25
      Caption = #51032#44204#51200#51109
      TabOrder = 3
      OnClick = btnSaveClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 97
    Width = 819
    Height = 418
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridResult: TcxGridDBTableView
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
      OnCellDblClick = gridResultCellDblClick
      DataController.DataSource = d_MemResult
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.OnGetContentStyle = gridResultStylesGetContentStyle
      object gridResultRecId: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'RecId'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 58
      end
      object gridResultid: TcxGridDBColumn
        Caption = 'No'
        DataBinding.FieldName = 'id'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object gridResultbody_point: TcxGridDBColumn
        Caption = #49888#52404#48512#50948
        DataBinding.FieldName = 'body_point'
        Options.CellMerging = True
        Width = 149
      end
      object gridResultdirection_kind: TcxGridDBColumn
        Caption = #51340'/'#50864
        DataBinding.FieldName = 'direction_kind'
        HeaderAlignmentHorz = taCenter
        Width = 63
      end
      object gridResultcheck_item: TcxGridDBColumn
        Caption = #54217#44032#44208#44284
        DataBinding.FieldName = 'check_item'
        Options.CellMerging = True
        Width = 192
      end
      object gridResultcheck_level: TcxGridDBColumn
        Caption = #44396#48516
        DataBinding.FieldName = 'check_level'
        HeaderAlignmentHorz = taCenter
      end
      object gridResultpractice_name: TcxGridDBColumn
        Caption = #52376#48169#50868#46041#47749
        DataBinding.FieldName = 'practice_name'
        Width = 269
      end
      object gridResultpractice_id: TcxGridDBColumn
        DataBinding.FieldName = 'practice_id'
        Visible = False
      end
      object gridResultcheck_level_no: TcxGridDBColumn
        DataBinding.FieldName = 'check_level_no'
        Visible = False
        Width = 48
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridResult
    end
  end
  object dxMemResult: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 184
    Top = 248
    object dxMemResultid: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
    end
    object dxMemResultbody_point: TStringField
      FieldName = 'body_point'
      Size = 30
    end
    object dxMemResultcheck_item: TStringField
      FieldName = 'check_item'
      Size = 50
    end
    object dxMemResultpractice_name: TStringField
      FieldName = 'practice_name'
      Size = 50
    end
    object dxMemResultpractice_id: TIntegerField
      FieldName = 'practice_id'
    end
    object dxMemResultcheck_level: TStringField
      Alignment = taCenter
      FieldName = 'check_level'
      Size = 8
    end
    object dxMemResultcheck_level_no: TSmallintField
      Alignment = taCenter
      FieldName = 'check_level_no'
    end
    object dxMemResultdirection_kind: TStringField
      Alignment = taCenter
      DisplayLabel = #48169#54693
      FieldName = 'direction_kind'
      Size = 10
    end
  end
  object d_MemResult: TDataSource
    DataSet = dxMemResult
    Left = 184
    Top = 296
  end
  object frxReport1: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42106.655737060200000000
    ReportOptions.LastChange = 42226.358497858800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (<frxDBDataset1."check_level_no"> = 2) then begin  '
      '       frxDBDataset1body_point.Font.Color := clBlue;'
      
        '       frxDBDataset1check_item.Font.Color := clBlue;            ' +
        ' '
      '       frxDBDataset1check_level.Font.Color := clBlue;  '
      '       frxDBDataset1practice_name.Font.Color := clBlue;'
      '  end else if (<frxDBDataset1."check_level_no"> = 3) then begin'
      '       frxDBDataset1body_point.Font.Color := clRed;'
      '       frxDBDataset1check_item.Font.Color := clRed;             '
      '       frxDBDataset1check_level.Font.Color := clRed;  '
      '       frxDBDataset1practice_name.Font.Color := clRed;'
      '  end else begin'
      '       frxDBDataset1body_point.Font.Color := clBlack;'
      
        '       frxDBDataset1check_item.Font.Color := clBlack;           ' +
        '  '
      '       frxDBDataset1check_level.Font.Color := clBlack;  '
      '       frxDBDataset1practice_name.Font.Color := clBlack;'
      '  end;            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 424
    Top = 304
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'CustomerName'
        Value = ''
      end
      item
        Name = 'CustomerTel'
        Value = ''
      end
      item
        Name = 'CheckDate'
        Value = ''
      end
      item
        Name = 'CheckChasoo'
        Value = ''
      end
      item
        Name = 'CustomerComments'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 222.992111340000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 3.779527560000000000
          Top = 188.063080000000000000
          Width = 710.551640000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 15790320
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 30.236240000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #51221#51201#51088#49464#54217#44032#44208#44284)
          ParentFont = False
        end
        object CustomerName: TfrxMemoView
          Left = 89.606370000000000000
          Top = 94.488250000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[CustomerName]([CustomerTel])')
          ParentFont = False
        end
        object CheckChasoo: TfrxMemoView
          Left = 476.220780000000000000
          Top = 94.488250000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #51228'[CheckChasoo]'#52264': [CheckDate]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.779530000000000000
          Top = 94.488250000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #44256#44061#47749':')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 193.842610000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #52769#51221#48512#50948)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 205.315090000000000000
          Top = 193.842610000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #52769#51221#44208#44284)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 440.527830000000000000
          Top = 193.842610000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #50868#46041#52376#48169#47749)
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779527560000000000
          Top = 188.283550000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 221.299320000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 373.275590550000000000
          Top = 193.842610000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #44396#48516)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 151.181200000000000000
          Top = 193.842610000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #44396#48516)
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 11.338590000000000000
          Top = 121.724490000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 15790320
          HAlign = haCenter
          Memo.UTF8W = (
            #51333#54633#51032#44204)
          ParentFont = False
        end
        object CustomerComments: TfrxMemoView
          Left = 117.944960000000000000
          Top = 124.724490000000000000
          Width = 589.606680000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = []
          Memo.UTF8W = (
            '[CustomerComments]')
          ParentFont = False
          WordBreak = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        OnMasterDetail = 'MasterData1OnMasterDetail'
        object frxDBDataset1body_point: TfrxMemoView
          Left = 1.559060000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'body_point'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."body_point"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object frxDBDataset1check_item: TfrxMemoView
          Left = 197.535560000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'check_item'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."check_item"]')
          ParentFont = False
          SuppressRepeated = True
        end
        object frxDBDataset1practice_name: TfrxMemoView
          Left = 425.527830000000000000
          Top = 3.779530000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'practice_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."practice_name"]')
          ParentFont = False
        end
        object frxDBDataset1check_level: TfrxMemoView
          Left = 373.275820000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'check_level'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."check_level"]')
          ParentFont = False
        end
        object frxDBDataset1direction_kind: TfrxMemoView
          Left = 150.960730000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'direction_kind'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          Memo.UTF8W = (
            '[frxDBDataset1."direction_kind"]')
          ParentFont = False
          SuppressRepeated = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #48148#53461#52404
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'id=id'
      'body_point=body_point'
      'check_item=check_item'
      'practice_name=practice_name'
      'practice_id=practice_id'
      'check_level=check_level'
      'check_level_no=check_level_no'
      'direction_kind=direction_kind')
    DataSet = dxMemResult
    BCDToCurrency = False
    Left = 424
    Top = 352
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 128
    PixelsPerInch = 96
    object cxStyleNormal: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clBlue
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = []
      TextColor = clRed
    end
  end
  object NSTATIC_CHECK_DATA_UPD: TUniStoredProc
    StoredProcName = 'NSTATIC_CHECK_DATA_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 184
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'C_COMMENTS'
        ParamType = ptInput
        Size = 10240
      end>
    CommandStoredProcName = 'NSTATIC_CHECK_DATA_UPD'
  end
end
