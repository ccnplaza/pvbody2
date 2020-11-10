object fmCustomerQuestion: TfmCustomerQuestion
  Left = 0
  Top = 0
  Caption = #47928#51652
  ClientHeight = 700
  ClientWidth = 1091
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
  object pnlTumbnail: TPanel
    Left = 0
    Top = 510
    Width = 1091
    Height = 190
    Align = alBottom
    TabOrder = 0
    object ImageEnMView: TImageEnMView
      Left = 1
      Top = 1
      Width = 1089
      Height = 188
      Cursor = crHandPoint
      Background = clInactiveCaptionText
      ScrollBars = ssNone
      BorderStyle = bsNone
      GridWidth = 25
      StoreType = ietNormal
      ThumbWidth = 230
      ThumbHeight = 185
      HorizBorder = 2
      VertBorder = 1
      BottomGap = 0
      UpperGap = 2
      LeftGap = 0
      TextMargin = 0
      ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxFillWithImgBackground, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
      PopupMenus = []
      MouseInteract = [mmiScroll, mmiSelect]
      SelectionColor = clRed
      Style = iemsFlat
      AutoAdjustStyle = False
      ThumbnailsBackground = clWhite
      ThumbnailsBorderWidth = 2
      ThumbnailsBorderColor = clInactiveCaptionText
      ThumbnailsInternalBorder = True
      MultiSelectionOptions = []
      DefaultTopText = iedtNone
      DefaultInfoText = iedtNone
      DefaultBottomText = iedtNone
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1091
    Height = 510
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlMember: TPanel
      Left = 0
      Top = 0
      Width = 201
      Height = 510
      Align = alLeft
      TabOrder = 0
      object cxGroupBox1: TcxGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 112
        Align = alClient
        Alignment = alTopCenter
        Caption = #49324#51652#45936#51060#53552
        Style.LookAndFeel.SkinName = 'Black'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 0
        Height = 394
        Width = 193
        object cxGrid1: TcxGrid
          Left = 3
          Top = 15
          Width = 187
          Height = 369
          Align = alClient
          TabOrder = 0
          LookAndFeel.SkinName = 'Black'
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
            DataController.DataSource = d_picture_data
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
        TabOrder = 1
        Height = 105
        Width = 193
        object Panel10: TPanel
          Left = 3
          Top = 16
          Width = 78
          Height = 26
          Caption = #54924#50896#47749
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
        end
        object Panel11: TPanel
          Left = 3
          Top = 42
          Width = 78
          Height = 26
          Caption = #54924#50896#48264#54840
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
        end
        object pnlName: TPanel
          Left = 81
          Top = 16
          Width = 109
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object pnlNo: TPanel
          Left = 81
          Top = 42
          Width = 109
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object btnSelectMember: TBitBtn
          Left = 49
          Top = 69
          Width = 96
          Height = 25
          Caption = #54924#50896#49440#53469
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADAD0ADADA0ADADA5ADA0DA000ADADA55DADD00AD0DADA55
            55DAAD0D000DA555555DD00ADAD0DA5555550000ADA0ADA55D55000ADADA0ADA
            5AD5000DAD00ADADADA500000AD0DADADAD50000000D0DADAD5DD00000000ADA
            DADAAD00000DADADADADDADADADADADADADAADADADADADADADAD}
          TabOrder = 4
          OnClick = btnSelectMemberClick
        end
      end
    end
    object Panel2: TPanel
      Left = 201
      Top = 0
      Width = 890
      Height = 510
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 890
        Height = 33
        Align = alTop
        TabOrder = 0
        object btnAddQuestion: TcxButton
          Left = 15
          Top = 4
          Width = 40
          Height = 25
          Hint = #51077#47141
          LookAndFeel.SkinName = 'Seven'
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
            DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
            DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object cxButton2: TcxButton
          Left = 54
          Top = 4
          Width = 38
          Height = 25
          Hint = #49688#51221
          LookAndFeel.SkinName = 'Seven'
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
            0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
            BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
            DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object cxButton3: TcxButton
          Left = 91
          Top = 4
          Width = 39
          Height = 25
          Hint = #49325#51228
          LookAndFeel.SkinName = 'Seven'
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
            DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
            DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
            DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object cxButton4: TcxButton
          Left = 133
          Top = 4
          Width = 82
          Height = 25
          Hint = #49325#51228
          Caption = #47532#49828#53944
          LookAndFeel.SkinName = 'Seven'
          OptionsImage.Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
            FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
            FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
            FF0A444444444444444D444444444444444A444444444444444D}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 33
        Width = 890
        Height = 477
        Align = alClient
        TabOrder = 1
        LookAndFeel.SkinName = 'Black'
        object cxGridQuestion: TcxGridDBTableView
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
          DataController.DataSource = dsCheck_Question
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.NoDataToDisplayInfoText = '<'#51088#47308#50630#51020'>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.ExpandButtonsForEmptyDetails = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGridQuestionUID: TcxGridDBColumn
            DataBinding.FieldName = 'UID'
            Visible = False
          end
          object cxGridQuestionNo: TcxGridDBColumn
            Caption = 'No'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 51
          end
          object cxGridQuestionITEM_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'ITEM_NAME'
            Width = 983
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGridQuestion
        end
      end
    end
  end
  object tblCheck_Question: TUniTable
    TableName = 'CHECK_QUESTION'
    Connection = dmDBCommon.UniDBConnection
    Left = 696
    Top = 512
    object tblCheck_QuestionUID: TStringField
      FieldName = 'UID'
      Required = True
      FixedChar = True
      Size = 17
    end
    object tblCheck_QuestionITEM_NAME: TStringField
      DisplayLabel = #47928#51652#45236#50857
      FieldName = 'ITEM_NAME'
      Size = 255
    end
  end
  object dsCheck_Question: TUniDataSource
    DataSet = tblCheck_Question
    Left = 696
    Top = 560
  end
  object t_member: TUniTable
    TableName = 'CUSTOMER'
    Connection = dmDBCommon.UniDBConnection
    Left = 312
    Top = 528
    object t_memberUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 40
    end
    object t_memberCNAME: TStringField
      FieldName = 'CNAME'
    end
    object t_memberCID: TStringField
      FieldName = 'CID'
      Size = 14
    end
    object t_memberSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object t_memberCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object t_memberREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object t_memberCHART_NO: TStringField
      FieldName = 'CHART_NO'
    end
    object t_memberJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
    object t_memberCAGE: TStringField
      FieldName = 'CAGE'
      Size = 3
    end
    object t_memberBIRTH: TDateField
      FieldName = 'BIRTH'
    end
    object t_memberIS_ACTIVE: TSmallintField
      FieldName = 'IS_ACTIVE'
    end
  end
  object d_member: TDataSource
    DataSet = t_member
    Left = 312
    Top = 576
  end
  object d_image: TDataSource
    DataSet = q_image
    Left = 232
    Top = 576
  end
  object q_image: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMER_IMAGE2'
      
        '  (ID, CHECK_ID, CUST_UID, IMAGE_IDX, IMAGE_NAME, DRAW_NAME, PIC' +
        'TURE_DATE)'
      'VALUES'
      
        '  (:ID, :CHECK_ID, :CUST_UID, :IMAGE_IDX, :IMAGE_NAME, :DRAW_NAM' +
        'E, :PICTURE_DATE)')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMER_IMAGE2'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMER_IMAGE2'
      'SET'
      
        '  ID = :ID, CHECK_ID = :CHECK_ID, CUST_UID = :CUST_UID, IMAGE_ID' +
        'X = :IMAGE_IDX, IMAGE_NAME = :IMAGE_NAME, DRAW_NAME = :DRAW_NAME' +
        ', PICTURE_DATE = :PICTURE_DATE'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMER_IMAGE2'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, CHECK_ID, CUST_UID, IMAGE_IDX, IMAGE_NAME, DRAW_NAME,' +
        ' PICTURE_DATE FROM CUSTOMER_IMAGE2'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from CUSTOMER_IMAGE2'
      'where check_id = :check_id'
      'order by id')
    Left = 232
    Top = 528
    ParamData = <
      item
        DataType = ftString
        Name = 'check_id'
        ParamType = ptInput
      end>
    object q_imageID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_imageCHECK_ID: TStringField
      FieldName = 'CHECK_ID'
      Size = 17
    end
    object q_imageCUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object q_imageIMAGE_IDX: TIntegerField
      FieldName = 'IMAGE_IDX'
    end
    object q_imageIMAGE_NAME: TStringField
      FieldName = 'IMAGE_NAME'
      Size = 200
    end
    object q_imageDRAW_NAME: TStringField
      FieldName = 'DRAW_NAME'
      Size = 200
    end
    object q_imagePICTURE_DATE: TDateTimeField
      FieldName = 'PICTURE_DATE'
    end
  end
  object q_picture_data: TUniQuery
    UpdatingTable = 'PICTURE_DATA'
    SQLInsert.Strings = (
      'INSERT INTO PICTURE_DATA'
      '  (UID, CUST_UID, PICTURE_DATE, PIC_CNT)'
      'VALUES'
      '  (:UID, :CUST_UID, :PICTURE_DATE, :PIC_CNT)')
    SQLDelete.Strings = (
      'DELETE FROM PICTURE_DATA'
      'WHERE'
      '  UID = :Old_UID')
    SQLUpdate.Strings = (
      'UPDATE PICTURE_DATA'
      'SET'
      
        '  UID = :UID, CUST_UID = :CUST_UID, PICTURE_DATE = :PICTURE_DATE' +
        ', PIC_CNT = :PIC_CNT'
      'WHERE'
      '  UID = :Old_UID')
    SQLLock.Strings = (
      'SELECT NULL FROM PICTURE_DATA'
      'WHERE'
      'UID = :Old_UID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT UID, CUST_UID, PICTURE_DATE, PIC_CNT FROM PICTURE_DATA'
      'WHERE'
      '  UID = :UID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from picture_data'
      'where cust_uid = :cust_uid'
      'order by cust_uid')
    Left = 152
    Top = 528
    ParamData = <
      item
        DataType = ftString
        Name = 'cust_uid'
        ParamType = ptInput
      end>
    object q_picture_dataUID: TStringField
      FieldName = 'UID'
      Required = True
      Size = 17
    end
    object q_picture_dataCUST_UID: TStringField
      FieldName = 'CUST_UID'
      Size = 17
    end
    object q_picture_dataPICTURE_DATE: TDateField
      FieldName = 'PICTURE_DATE'
    end
    object q_picture_dataPIC_CNT: TIntegerField
      Alignment = taCenter
      FieldName = 'PIC_CNT'
    end
  end
  object d_picture_data: TDataSource
    DataSet = q_picture_data
    Left = 152
    Top = 576
  end
end
