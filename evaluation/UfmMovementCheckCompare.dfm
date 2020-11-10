object fmMovementCheckCompare: TfmMovementCheckCompare
  Left = 0
  Top = 0
  Caption = #46041#51201#54217#44032' '#48708#44368
  ClientHeight = 647
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMember: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 647
    Align = alLeft
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Margins.Bottom = 0
      Align = alTop
      Alignment = alTopCenter
      Caption = #54924#50896#51221#48372
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 71
      Width = 193
      object Panel10: TPanel
        Left = 3
        Top = 16
        Width = 60
        Height = 22
        Caption = #54924#50896#47749
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 3
        Top = 38
        Width = 60
        Height = 22
        Caption = #50672#46973#52376
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
      end
      object pnlName: TPanel
        Left = 63
        Top = 16
        Width = 127
        Height = 22
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = pnlNameClick
      end
      object pnlNo: TPanel
        Left = 63
        Top = 38
        Width = 127
        Height = 22
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = pnlNameClick
      end
    end
    object cxGroupBox3: TcxGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 75
      Margins.Top = 0
      Align = alClient
      Alignment = alTopCenter
      Caption = #52769#51221#45936#51060#53552
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      ExplicitTop = 99
      Height = 568
      Width = 193
      object cxGrid2: TcxGrid
        Left = 3
        Top = 15
        Width = 187
        Height = 543
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Black'
        ExplicitHeight = 519
        object gridCheck: TcxGridDBTableView
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
          OnCellClick = gridCheckCellClick
          DataController.DataSource = dmDBCommon.d_picture_data
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridCheckColumn1: TcxGridDBColumn
            Caption = 'No'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnGetDisplayText = gridCheckColumn1GetDisplayText
            HeaderAlignmentHorz = taCenter
            Width = 34
          end
          object gridCheckUID: TcxGridDBColumn
            DataBinding.FieldName = 'UID'
            Visible = False
          end
          object gridCheckCUST_UID: TcxGridDBColumn
            DataBinding.FieldName = 'CUST_UID'
            Visible = False
          end
          object gridCheckPICTURE_DATE: TcxGridDBColumn
            Caption = #52524#50689#51068#51088
            DataBinding.FieldName = 'PICTURE_DATE'
            Width = 90
          end
          object gridCheckPIC_CNT: TcxGridDBColumn
            Caption = #49324#51652
            DataBinding.FieldName = 'PIC_CNT'
            HeaderAlignmentHorz = taCenter
            Width = 49
          end
        end
        object cxL1: TcxGridLevel
          GridView = gridCheck
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 201
    Top = 0
    Width = 851
    Height = 647
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 851
      Height = 29
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 158
        Top = 8
        Width = 56
        Height = 13
        Caption = #48708#44368#52264#49688':'
      end
      object btnAddList: TBitBtn
        Tag = 1
        Left = 297
        Top = 2
        Width = 102
        Height = 25
        Caption = #45936#51060#53552#52628#44032
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADAD000000AADADADADADADADADDADADADADAD7
          777AADADADADADADADADDADADADADAD7777AADADADADADADADADDA0000DAD000
          000AAD0FB0ADADADADAD000BF000DAD7777A0FBFBFB0ADADADAD0BFBFBF0DAD7
          777A000FB000ADADADADDA0BF0DAD000000AAD0000ADADADADAD}
        TabOrder = 0
        OnClick = btnAddListClick
      end
      object btnDelete: TBitBtn
        Tag = 2
        Left = 398
        Top = 2
        Width = 102
        Height = 25
        Caption = #45936#51060#53552#49325#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADAD000000AADADADADADADADADDADADADADAD7
          777AADADADADADADADADDADADADADAD7777AADADADADADADADADDADADADAD000
          000AADADADADADADADAD00000000DAD7777A0FBFBFB0ADADADAD0BFBFBF0DAD7
          777A00000000ADADADADDADADADAD000000AADADADADADADADAD}
        TabOrder = 1
        OnClick = btnDeleteClick
      end
      object cbSequence: TComboBox
        Left = 220
        Top = 4
        Width = 75
        Height = 22
        Style = csOwnerDrawFixed
        ImeName = 'Microsoft IME 2010'
        ItemIndex = 0
        TabOrder = 2
        Text = #51228'1'#52264
        Items.Strings = (
          #51228'1'#52264
          #51228'2'#52264
          #51228'3'#52264
          #51228'4'#52264
          #51228'5'#52264)
      end
      object btnGenerateBasic: TBitBtn
        Left = 6
        Top = 2
        Width = 115
        Height = 25
        Caption = #54217#44032#54637#47785#49373#49457
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADA000000000000DDAD7FFFFFFFFFF0AADA7FF000000FF0DDAD7FFFFFFFF
          FF0AA007FF000000FF0DDB00FFFFFFFFFF0AA7B000000000FF0DDA7FB0000000
          FF0A0000FB00FFFFFF0D7FBBBBB00FF7000AA7FB00FFFFF7F0ADDA7FB00FFFF7
          0ADAAD7FBB007777ADADDAD7FBB00ADADADAADAD7FBB00ADADAD}
        TabOrder = 3
        OnClick = btnGenerateBasicClick
      end
      object btnInitData: TBitBtn
        Left = 499
        Top = 2
        Width = 129
        Height = 25
        Caption = #54217#44032#54637#47785#52488#44592#54868
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADA77DADADADDADADA7007DADADAADADA70FB07DADADDADA70FBFB07
          DADAADA70FB00FB07DADDA70FBFBFBFB07DAA70FBFB00FBFB07DD07BFBF00BFB
          F70AAD0FBFB00FBFB07DDAD0FBF00BFB07DAADAD0FB00FB07DADDADAD0FBFB07
          DADAADADAD0FB07DADADDADADAD007DADADAADADADAD7DADADAD}
        TabOrder = 4
        OnClick = btnInitDataClick
      end
      object btnReport: TBitBtn
        Left = 652
        Top = 2
        Width = 129
        Height = 25
        Caption = #48708#44368#54217#44032' '#52636#47141
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000084
          840084848400C6C6C6000000FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333333333
          3333330000000000033330313131313010330000000000000103013131355531
          0003031313122213010300000000000001100131313131301010300000000003
          0100330666666660301044446000002203033333066666663033444444000002
          2203333333066666633044444444000000003333333333333333}
        TabOrder = 5
        OnClick = btnReportClick
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 29
      Width = 851
      Height = 618
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridCompare: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = d_result_compare
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.InvertSelect = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = #46041#51201#54217#44032
          end
          item
            Caption = '1'#52264' '#52769#51221
            Width = 150
          end
          item
            Caption = '2'#52264' '#52769#51221
            Width = 150
          end
          item
            Caption = '3'#52264' '#52769#51221
            Width = 150
          end
          item
            Caption = '4'#52264' '#52769#51221
            Width = 150
          end
          item
            Caption = '5'#52264' '#52769#51221
            Width = 150
          end>
        object gridCompareID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridCompareCUSTOMER_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CUSTOMER_ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridCompareCHECK_BODY_ID: TcxGridDBBandedColumn
          Caption = #52769#51221#51088#49464
          DataBinding.FieldName = 'CHECK_BODY_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_NAME'
            end>
          Properties.ListSource = d_item_text
          Options.CellMerging = True
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gridCompareCHECK_POINT_ID: TcxGridDBBandedColumn
          Caption = #52769#51221#54252#51064#53944
          DataBinding.FieldName = 'CHECK_POINT_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'UID'
          Properties.ListColumns = <
            item
              FieldName = 'ITEM_QUESTION'
            end>
          Properties.ListSource = d_item_question_text
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gridCompareCHECK1_VALUE: TcxGridDBBandedColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK1_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = ImageList1
          Properties.Items = <
            item
              Description = #51221#49345
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #44221#48120
              ImageIndex = 1
              Value = 2
            end
            item
              Description = #51473#46321
              ImageIndex = 2
              Value = 3
            end
            item
              Description = #49900#44033
              ImageIndex = 3
              Value = 4
            end
            item
              ImageIndex = 4
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridCompareCHECK2_VALUE: TcxGridDBBandedColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK2_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = ImageList1
          Properties.Items = <
            item
              Description = #51221#49345
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #44221#48120
              ImageIndex = 1
              Value = 2
            end
            item
              Description = #51473#46321
              ImageIndex = 2
              Value = 3
            end
            item
              Description = #49900#44033
              ImageIndex = 3
              Value = 4
            end
            item
              ImageIndex = 4
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridCompareCHECK3_VALUE: TcxGridDBBandedColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK3_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = ImageList1
          Properties.Items = <
            item
              Description = #51221#49345
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #44221#48120
              ImageIndex = 1
              Value = 2
            end
            item
              Description = #51473#46321
              ImageIndex = 2
              Value = 3
            end
            item
              Description = #49900#44033
              ImageIndex = 3
              Value = 4
            end
            item
              ImageIndex = 4
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridCompareCHECK4_VALUE: TcxGridDBBandedColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK4_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = ImageList1
          Properties.Items = <
            item
              Description = #51221#49345
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #44221#48120
              ImageIndex = 1
              Value = 2
            end
            item
              Description = #51473#46321
              ImageIndex = 2
              Value = 3
            end
            item
              Description = #49900#44033
              ImageIndex = 3
              Value = 4
            end
            item
              ImageIndex = 4
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridCompareCHECK5_VALUE: TcxGridDBBandedColumn
          Caption = #44208#44284
          DataBinding.FieldName = 'CHECK5_VALUE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = ImageList1
          Properties.Items = <
            item
              Description = #51221#49345
              ImageIndex = 0
              Value = 1
            end
            item
              Description = #44221#48120
              ImageIndex = 1
              Value = 2
            end
            item
              Description = #51473#46321
              ImageIndex = 2
              Value = 3
            end
            item
              Description = #49900#44033
              ImageIndex = 3
              Value = 4
            end
            item
              ImageIndex = 4
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gridCompareCHECK1_DATE: TcxGridDBBandedColumn
          Caption = #52769#51221#51068
          DataBinding.FieldName = 'CHECK1_DATE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridCompareCHECK2_DATE: TcxGridDBBandedColumn
          Caption = #52769#51221#51068
          DataBinding.FieldName = 'CHECK2_DATE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridCompareCHECK3_DATE: TcxGridDBBandedColumn
          Caption = #52769#51221#51068
          DataBinding.FieldName = 'CHECK3_DATE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridCompareCHECK4_DATE: TcxGridDBBandedColumn
          Caption = #52769#51221#51068
          DataBinding.FieldName = 'CHECK4_DATE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gridCompareCHECK5_DATE: TcxGridDBBandedColumn
          Caption = #52769#51221#51068
          DataBinding.FieldName = 'CHECK5_DATE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridCompare
      end
    end
  end
  object t_item_text: TUniTable
    TableName = 'CHECK_ITEM_TXT'
    Connection = dmDBCommon.UniDBConnection
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 360
    Top = 480
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
    Left = 360
    Top = 528
  end
  object d_item_question_text: TDataSource
    DataSet = t_item_question_text
    Left = 464
    Top = 528
  end
  object t_item_question_text: TUniTable
    TableName = 'CHECK_ITEM_QUESTION_TXT'
    Connection = dmDBCommon.UniDBConnection
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 464
    Top = 480
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
  object ImageList1: TImageList
    Left = 72
    Top = 240
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FFFFFFFFFFFFFE007FFFF8003CFE7
      C00300008003C387800100008003C10780010000C007E00F00000000C007E00F
      00000000E00FE00F00000000E00FC00700000000F01F800300000000F01F0001
      00000000F83FF83F80010000F83FF83F80010000FC7FFC7FC0030000FC7FFC7F
      E0070000FEFFFEFFF81FFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object q_result_compare: TUniQuery
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from MOVEMENT_RESULT_COMPARE'
      'where CUSTOMER_ID = :CUSTOMER_ID')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 688
    Top = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'CUSTOMER_ID'
        ParamType = ptInput
      end>
    object q_result_compareID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_result_compareCUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 17
    end
    object q_result_compareCHECK_BODY_ID: TStringField
      FieldName = 'CHECK_BODY_ID'
      Size = 17
    end
    object q_result_compareCHECK_POINT_ID: TStringField
      FieldName = 'CHECK_POINT_ID'
      Size = 17
    end
    object q_result_compareCHECK1_VALUE: TIntegerField
      FieldName = 'CHECK1_VALUE'
    end
    object q_result_compareCHECK2_VALUE: TIntegerField
      FieldName = 'CHECK2_VALUE'
    end
    object q_result_compareCHECK3_VALUE: TIntegerField
      FieldName = 'CHECK3_VALUE'
    end
    object q_result_compareCHECK4_VALUE: TIntegerField
      FieldName = 'CHECK4_VALUE'
    end
    object q_result_compareCHECK5_VALUE: TIntegerField
      FieldName = 'CHECK5_VALUE'
    end
    object q_result_compareCHECK1_DATE: TDateField
      Alignment = taCenter
      FieldName = 'CHECK1_DATE'
      DisplayFormat = 'mm-dd'
    end
    object q_result_compareCHECK2_DATE: TDateField
      Alignment = taCenter
      FieldName = 'CHECK2_DATE'
      DisplayFormat = 'mm-dd'
    end
    object q_result_compareCHECK3_DATE: TDateField
      Alignment = taCenter
      FieldName = 'CHECK3_DATE'
      DisplayFormat = 'mm-dd'
    end
    object q_result_compareCHECK4_DATE: TDateField
      Alignment = taCenter
      FieldName = 'CHECK4_DATE'
      DisplayFormat = 'mm-dd'
    end
    object q_result_compareCHECK5_DATE: TDateField
      Alignment = taCenter
      FieldName = 'CHECK5_DATE'
      DisplayFormat = 'mm-dd'
    end
  end
  object d_result_compare: TDataSource
    DataSet = q_result_compare
    Left = 688
    Top = 528
  end
  object d_result_value: TDataSource
    DataSet = q_result_value
    Left = 584
    Top = 528
  end
  object q_result_value: TUniQuery
    UpdatingTable = 'CUST_MOVEMENT_RESULT_VALUE'
    SQLInsert.Strings = (
      'INSERT INTO CUST_MOVEMENT_RESULT_VALUE'
      
        '  (ID, MOVEMENT_RESULT_ID, CHECK_POINT_ID, CHECK_VALUE, CUSTOMER' +
        '_ID, COMPANY_ID, CHECK_ITEM_ID)'
      'VALUES'
      
        '  (:ID, :MOVEMENT_RESULT_ID, :CHECK_POINT_ID, :CHECK_VALUE, :CUS' +
        'TOMER_ID, :COMPANY_ID, :CHECK_ITEM_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CUST_MOVEMENT_RESULT_VALUE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CUST_MOVEMENT_RESULT_VALUE'
      'SET'
      
        '  ID = :ID, MOVEMENT_RESULT_ID = :MOVEMENT_RESULT_ID, CHECK_POIN' +
        'T_ID = :CHECK_POINT_ID, CHECK_VALUE = :CHECK_VALUE, CUSTOMER_ID ' +
        '= :CUSTOMER_ID, COMPANY_ID = :COMPANY_ID, CHECK_ITEM_ID = :CHECK' +
        '_ITEM_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CUST_MOVEMENT_RESULT_VALUE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, MOVEMENT_RESULT_ID, CHECK_POINT_ID, CHECK_VALUE, CUST' +
        'OMER_ID, COMPANY_ID, CHECK_ITEM_ID FROM CUST_MOVEMENT_RESULT_VAL' +
        'UE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from CUST_MOVEMENT_RESULT_VALUE'
      'where MOVEMENT_RESULT_ID = :MOVEMENT_RESULT_ID')
    SpecificOptions.Strings = (
      'InterBase.FetchAll=True')
    Left = 584
    Top = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'MOVEMENT_RESULT_ID'
        ParamType = ptInput
      end>
    object q_result_valueID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_result_valueMOVEMENT_RESULT_ID: TStringField
      FieldName = 'MOVEMENT_RESULT_ID'
      Size = 17
    end
    object q_result_valueCHECK_POINT_ID: TStringField
      FieldName = 'CHECK_POINT_ID'
      Size = 17
    end
    object q_result_valueCHECK_VALUE: TIntegerField
      FieldName = 'CHECK_VALUE'
    end
    object q_result_valueCUSTOMER_ID: TStringField
      FieldName = 'CUSTOMER_ID'
      Size = 17
    end
    object q_result_valueCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object q_result_valueCHECK_ITEM_ID: TStringField
      FieldName = 'CHECK_ITEM_ID'
      Size = 17
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PrintTitle = #46041#51201#54217#44032' '#44208#44284' '#48708#44368#54364
    Version = 0
    Left = 504
    Top = 144
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41972.473094733800000000
      ReportTitle.Text = #46041#51201#54217#44032' '#44208#44284' '#48708#44368#54364
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Footers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
end
