object fmMember: TfmMember
  Left = 0
  Top = 0
  Caption = #54924#50896#44288#47532
  ClientHeight = 669
  ClientWidth = 1261
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 329
    Top = 28
    Width = 932
    Height = 641
    Align = alClient
    PopupMenu = PopupMember
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object gridMember: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Enabled = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      OnCellDblClick = gridMemberCellDblClick
      OnFocusedRecordChanged = gridMemberFocusedRecordChanged
      DataController.DataSource = dmDBCommon.d_CUSTOMER_SEL
      DataController.KeyFieldNames = 'UID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #54596#53552#47484' '#51201#50857#54616#47140#47732' '#51060#44275#51012' '#53364#47533#54616#49464#50836
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridMemberUID: TcxGridDBColumn
        DataBinding.FieldName = 'UID'
        Visible = False
      end
      object gridMemberREG_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'REG_DATE'
        Width = 87
      end
      object gridMemberIS_ACTIVE: TcxGridDBColumn
        Caption = #49468#53552#47749
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListSource = dmDBCommon.ds_REGISTED_CENTER_LOOK
        Width = 46
      end
      object gridMemberC_KIND: TcxGridDBColumn
        DataBinding.FieldName = 'C_KIND'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'K_NAME'
          end>
        Properties.ListSource = dmDBCommon.d_customer_kind
      end
      object gridMemberCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 79
      end
      object gridMemberSEX: TcxGridDBColumn
        Caption = #49457#48324
        DataBinding.FieldName = 'SEX'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList2
        Properties.Items = <
          item
            Description = #45224
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = #50668
            ImageIndex = 1
            Value = '1'
          end>
        Width = 39
      end
      object gridMemberCAGE: TcxGridDBColumn
        Caption = #45208#51060
        DataBinding.FieldName = 'CAGE'
        Width = 39
      end
      object gridMemberCTEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'CTEL'
        Width = 110
      end
      object gridMemberJOBKIND: TcxGridDBColumn
        Caption = #51649#50629
        DataBinding.FieldName = 'JOBKIND'
        Width = 106
      end
      object gridMemberCEMAIL: TcxGridDBColumn
        Caption = #51060#47700#51068
        DataBinding.FieldName = 'CEMAIL'
        Width = 154
      end
      object gridMemberCBIGO: TcxGridDBColumn
        DataBinding.FieldName = 'CBIGO'
        Visible = False
      end
      object gridMemberHOBBY: TcxGridDBColumn
        DataBinding.FieldName = 'HOBBY'
        Visible = False
      end
      object gridMemberPURPOSE: TcxGridDBColumn
        Caption = #49688#47144#47785#51201
        DataBinding.FieldName = 'PURPOSE'
        Visible = False
        Width = 162
      end
      object gridMemberBLOOD: TcxGridDBColumn
        Caption = #54792#50529#54805
        DataBinding.FieldName = 'BLOOD'
        Width = 47
      end
      object gridMemberBLOOD_PRESSURE: TcxGridDBColumn
        Caption = #54792#50517
        DataBinding.FieldName = 'BLOOD_PRESSURE'
        Width = 58
      end
      object gridMemberBODY_STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'BODY_STATUS'
        Visible = False
      end
      object gridMemberFOOD_KIND: TcxGridDBColumn
        Caption = #49885#49845#44288
        DataBinding.FieldName = 'FOOD_KIND'
        Width = 68
      end
      object gridMemberFOOD_HOW_MUCH: TcxGridDBColumn
        Caption = #49885#49324#47049
        DataBinding.FieldName = 'FOOD_HOW_MUCH'
        Width = 57
      end
      object gridMemberFOOD_HOW_OFTEN: TcxGridDBColumn
        Caption = #49885#49324#54924#49688
        DataBinding.FieldName = 'FOOD_HOW_OFTEN'
        Width = 59
      end
      object gridMemberHOW_TO_COME: TcxGridDBColumn
        Caption = #49688#47144#44221#47196
        DataBinding.FieldName = 'HOW_TO_COME'
        Width = 83
      end
      object gridMemberHOW_TO_COME_ETC: TcxGridDBColumn
        Caption = #49688#47144#44221#47196#44592#53440
        DataBinding.FieldName = 'HOW_TO_COME_ETC'
        Width = 95
      end
      object gridMemberPURPOSE_DESC: TcxGridDBColumn
        Caption = #49688#47144#47785#51201
        DataBinding.FieldName = 'PURPOSE_DESC'
        Width = 351
      end
      object gridMemberPURPOSE_ETC: TcxGridDBColumn
        Caption = #49688#47144#47785#51201#44592#53440
        DataBinding.FieldName = 'PURPOSE_ETC'
        Visible = False
        Width = 124
      end
      object gridMemberSMS_YESNO: TcxGridDBColumn
        Caption = 'SMS'#47928#51088
        DataBinding.FieldName = 'SMS_YESNO'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = #49688#49888
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #44144#48512
            Value = 1
          end>
      end
    end
    object G1L1: TcxGridLevel
      GridView = gridMember
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1261
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 52
      Height = 22
      Margins.Left = 5
      Align = alLeft
      Caption = #46321#47197#45380#46020':'
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object lbl2: TLabel
      AlignWithMargins = True
      Left = 121
      Top = 3
      Width = 9
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Caption = '~'
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 228
      Top = 0
      Width = 28
      Height = 28
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = #44160#49353':'
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object btnAdd: TBitBtn
      AlignWithMargins = True
      Left = 415
      Top = 3
      Width = 59
      Height = 22
      Margins.Left = 10
      Margins.Right = 0
      Action = ActAdd
      Align = alLeft
      Caption = #46321#47197
      TabOrder = 0
      ExplicitLeft = 422
    end
    object btnEdit: TBitBtn
      AlignWithMargins = True
      Left = 474
      Top = 3
      Width = 59
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Action = ActEdit
      Align = alLeft
      Caption = #49688#51221
      TabOrder = 1
      ExplicitLeft = 481
    end
    object btnDel: TBitBtn
      AlignWithMargins = True
      Left = 533
      Top = 3
      Width = 59
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Action = ActDel
      Align = alLeft
      Caption = #49325#51228
      TabOrder = 2
      ExplicitLeft = 540
    end
    object btnSMSSending: TBitBtn
      AlignWithMargins = True
      Left = 776
      Top = 3
      Width = 35
      Height = 22
      Hint = #47928#51088#51204#49569
      Margins.Left = 10
      Margins.Right = 0
      Action = ActSMS
      Align = alLeft
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006596
        1EFA000100010000000000000000000000000000000000000000060402088357
        2CBDB1763CFFB1763CFFB1763CFFB0763CFC402A165B0000000067991FFF6799
        1FFF67991FFF00000000000000000000000000000000000000008D5E30CBB176
        3CFFB1763CFFB1763CFFE4D3C3FC5E5E5E5E0000000067991FFF67991FFF6799
        1FFF67991FFF67991FFF00000000000000000000000000000000B1763CFFB176
        3CFFB1763CFFB37A41FF837A70910000000067991FFF67991FFF67991FFF0000
        00005E8B1CE867991FFF67991FFF000000000000000000000000B1763CFFB176
        3CFFB1763CFFB37A41FF6E49259E0000000067991FFF67991FFF00000000150E
        071E0000000062921EF367991FFF67991FFF0000000000000000B0763CFEB176
        3CFFFEFDFDFFFEFDFDFFFDFDFDFE67676767000000000608020C48484848F6F5
        F5F7472F18660000000065951EF967991FFF67991FFF00000000B1763CFFB176
        3CFFFEFDFDFFFEFDFDFFFEFEFEFFFEFEFEFE8E8E8E8F7E7E7E7EF6F6F6F7FEFD
        FDFFB0763CFE442E17620000000066981FFD67991FFF65961EFAB1763CFFB176
        3CFFFEFDFDFFFEFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFD
        FDFFB1763CFFB1763DFD000000000000000067991FFF04050109B1763CFFB176
        3CFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFFEFDFDFFFEFDFDFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFD
        FDFFB1763CFFB2773DFF00000000000000000000000000000000B2773DFFB277
        3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB2773DFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB1763CFFB2773DFF00000000000000000000000000000000B1763CFFB176
        3CFFB1763CFFB37A41FFB1763CFFB1763CFFB1763CFFB1763CFFB1763CFFB176
        3CFFB1763CFFB1763CFF000000000000000000000000000000008D5E30CBB176
        3CFFB1763CFFB1763CFFE7D6C5FFFFFFFFFFFFFFFFFFE7D6C5FFB1763CFFB176
        3CFFB1763CFF8B5D30C700000000000000000000000000000000060402088357
        2CBDB1763CFFB1763CFFB1763CFFB2773DFFB2773DFFB1763CFFB1763CFFB176
        3CFF80562CB90604020800000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      ExplicitLeft = 783
    end
    object btnReportActive: TBitBtn
      AlignWithMargins = True
      Left = 846
      Top = 3
      Width = 35
      Height = 22
      Hint = #52636#47141
      Margins.Left = 0
      Margins.Right = 0
      Action = ActPrint
      Align = alLeft
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      ExplicitLeft = 853
    end
    object btnExcelActive: TBitBtn
      AlignWithMargins = True
      Left = 881
      Top = 3
      Width = 35
      Height = 22
      Hint = #50641#49472#51200#51109
      Margins.Left = 0
      Margins.Right = 0
      Action = ActExcel
      Align = alLeft
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      ExplicitLeft = 888
    end
    object btnGridSave: TBitBtn
      AlignWithMargins = True
      Left = 996
      Top = 3
      Width = 35
      Height = 22
      Hint = #52972#47100#51200#51109
      Margins.Left = 10
      Margins.Right = 0
      Action = ActColumnSet
      Align = alLeft
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      ExplicitLeft = 1003
    end
    object edtSYear: TcxSpinEdit
      AlignWithMargins = True
      Left = 60
      Top = 3
      Margins.Left = 0
      Align = alLeft
      Properties.MaxValue = 9999.000000000000000000
      Properties.MinValue = 1000.000000000000000000
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 7
      Value = 1000
      OnClick = edtSYearClick
      ExplicitLeft = 64
      Width = 58
    end
    object edtEYear: TcxSpinEdit
      AlignWithMargins = True
      Left = 133
      Top = 3
      Margins.Right = 0
      Align = alLeft
      Properties.MaxValue = 9999.000000000000000000
      Properties.MinValue = 1000.000000000000000000
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 8
      Value = 1000
      OnClick = edtEYearClick
      ExplicitLeft = 138
      Width = 58
    end
    object btnView: TBitBtn
      AlignWithMargins = True
      Left = 191
      Top = 3
      Width = 34
      Height = 22
      Hint = #51312#54924
      Margins.Left = 0
      Align = alLeft
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
      TabOrder = 9
      OnClick = btnViewClick
      ExplicitLeft = 196
    end
    object btnCenter: TBitBtn
      AlignWithMargins = True
      Left = 916
      Top = 3
      Width = 35
      Height = 22
      Hint = #49468#53552#46321#47197
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0A0A0A0A
        DADAADADADADAD00ADADDADA0000000B0ADAADAD0FFFFF0B0DADDADA0F99990B
        B0DAADAD0FFFFFF0B0ADDADA0F999990BB0AADAD0FFFFFFF0000DAD4FF99999F
        0110AD444FFFFFFF000DD44447F99F0007DA444D44FFFF0F0DAD74DAD44FFF00
        DADAADADAD47F00DADADDADADAD4DADADADAADADADAD4DADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = btnCenterClick
      ExplicitLeft = 923
    end
    object btnHistory: TBitBtn
      AlignWithMargins = True
      Left = 592
      Top = 3
      Width = 87
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Caption = #44060#51064#44592#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00D77777777777
        777700000000000000070FFFFFFFFFFFFF070F00000000000F070FFFFFFFFFFF
        FF070F00000000000F070FFFFFFFFFFFFF070F00000000000F070FFFFFFFFFFF
        FF070F000F000F000F070FF08F80FFFFFF070FF80008FF000F070FFF777FFFFF
        FF070FFFF0FFFF000F070FFFFFFFFFFFFF07000000000000000D}
      ParentShowHint = False
      ShowHint = False
      TabOrder = 11
      OnClick = btnHistoryClick
      ExplicitLeft = 599
    end
    object btnAddFavorite: TBitBtn
      AlignWithMargins = True
      Left = 679
      Top = 3
      Width = 87
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Caption = #51600#44200#52286#44592
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      TabOrder = 12
      OnClick = btnAddFavoriteClick
      ExplicitLeft = 686
    end
    object btnCustKind: TBitBtn
      AlignWithMargins = True
      Left = 951
      Top = 3
      Width = 35
      Height = 22
      Hint = #54924#50896#48516#47448
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF847DF4FFAFABF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF241CEDFF241CEDFF847DF4FFF6EFE8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF847DF4FFFCF9
        F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF847D
        F4FFAFABF8FFF4ECE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
        EDFF241CEDFF847DF4FFAFABF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF241CEDFF241CEDFF241CEDFF241CEDFF241CEDFF241C
        EDFF847DF4FFAFABF8FFFDFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF241CEDFF241CEDFF241CEDFF847DF4FF847DF4FFAFAB
        F8FFFDFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFF241CEDFF847DF4FFAFABF8FFAFABF8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00FF000000FFFFFFFFFFAFABF8FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btnCustKindClick
      ExplicitLeft = 958
    end
    object btnNoSMS: TBitBtn
      AlignWithMargins = True
      Left = 811
      Top = 3
      Width = 35
      Height = 22
      Hint = #49688#49888#44144#48512
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000608161C1C2A
        718D283B9EC6283B9EC61C2A718D0608161C000000000000000085592EBDB278
        3EFEB3783EFFB3783EFFB07337FF955F2ADA01010002111944552D43B5E2334C
        CCFF334CCCFF334CCCFF334CCCFF2D43B5E21119445500000000B3783EFFB378
        3EFFB3783EFFAD6D2FFFD2AF8DFF3C3A383E0608161C2D43B5E2334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF2D43B5E20608161CB3783EFFB378
        3EFFB07236FFD6B99BFFDCDCDCDC0B0B0B0B1C2A718D334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF1C2A718DB3783EFFB378
        3EFFAD6D2FFFFFFFFFFFDCDCDCDC02010003283B9EC6334CCCFFADB8EAFFADB8
        EAFFADB8EAFFADB8EAFFADB8EAFFADB8EAFF334CCCFF283B9EC6B3783EFFB378
        3EFFAD6D2FFFFFFFFFFFDCDCDCDC00000000283B9EC6334CCCFFF4F6FCFFF4F6
        FCFFF4F6FCFFF4F6FCFFF4F6FCFFF4F6FCFF334CCCFF283B9EC6B3783EFFB378
        3EFFB07236FFD6B99BFFDCDCDCDC030303031C2A718D334CCCFF334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF334CCCFF1C2A718DB3783EFFB378
        3EFFB3783EFFAD6D2FFFD2AF8DFF363433380608161C2D43B5E2334CCCFF334C
        CCFF334CCCFF334CCCFF334CCCFF334CCCFF2D43B5E20608161CB3783EFFB378
        3EFFB3783EFFB3783EFFB07337FF96602ADC01000001111944552D43B5E2334C
        CCFF334CCCFF334CCCFF334CCCFF2D43B5E21119445500000000B3783EFFB479
        40FFB3783EFFB3783EFFB3783EFFB3783EFF724D28A3010000010608161C1C2A
        718D283B9EC6283B9EC61C2A718D0608161C0000000000000000B3783EFFB378
        3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7D72F2F2F2F0202
        0202000000000100000100000000000000000000000000000000B3783EFFB378
        3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDC
        DCDC9A6835DC9A6835DC00000000000000000000000000000000B3783EFFB378
        3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB3783EFFB3783EFF01000001000000000000000000000000B3783EFFB378
        3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB3783EFFB3783EFF01000001000000000000000000000000B3783EFFB379
        3FFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB378
        3EFFB3783EFFB3783EFF0100000100000000000000000000000081572DB8AE75
        3CF8AE753CF8AE753CF8AE753CF8AE753CF8AE753CF8AE753CF8AE753CF8AE75
        3CF8AE753CF87E542CB300000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btnNoSMSClick
      ExplicitLeft = 818
    end
    object edtFind: TEdit
      AlignWithMargins = True
      Left = 256
      Top = 3
      Width = 94
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      ImeMode = imSHanguel
      TabOrder = 15
      ExplicitHeight = 23
    end
    object btnFilter: TcxButton
      AlignWithMargins = True
      Left = 350
      Top = 3
      Width = 28
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000D000000190000001A0000
        000E000000030000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000D112B4A8C1A4E9CF6194D9BF60F28
        478D0000000E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000172762ABFFD6EDF7FF5DB1E5FF225C
        A5FF000000190000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000019255FA9FFC1E6F5FF56AEE3FF2058
        A3FF0000001B0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000017235CA7FFABE2F6FF4DABE4FF1F56
        A2FF000000190000000000000000000000000000000000000000000000000000
        00000000000000000000000000020000001B225BA6FF8FD6F4FF45A5E1FF1E54
        A1FF0000001E0000000200000000000000000000000000000000000000000000
        00000000000000000005000102160F28498A225AA6FF77CAEEFF3BA0DEFF1E53
        A1FF081E3F8D0001021800000006000000010000000000000000000000000000
        000000000005040B112D22568DD03B81C4FF4E96D2FF4AA1D9FF3592D1FF2F7E
        C6FF2465B0FF113A76D202070E31000000070000000100000000000000000000
        0004060F18332F70AFEE569FD6FF7CC0E8FF93CFEFFF5BBFE9FF41ADDFFF3287
        CEFF3485D2FF3181C9FF1A5095EF030A14390000000500000000000000010000
        000B265D8FC962ACDDFF86CDEFFFC3EAF9FFA8E2F8FF6BCFF0FF47BAE6FF398F
        D4FF2F7ACBFF3C92DBFF368ACFFF17417BCD0000000F00000001000000030E23
        34534992CCFF8BD2F1FFBAE9F9FFE2F7FDFFAFE7F9FF72D4F2FF4ABFE8FF3F98
        D8FF2B73C8FF3486D2FF43A2E2FF2A70BAFF09182E5A00000005000000062252
        7AA96BB6E1FF99E1F7FFDFF7FDFFF5FCFFFFB1EBFBFF76D7F3FF4DC5EAFF47A2
        DEFF2A72C6FF2F7ACBFF44A2E4FF3891D4FF163C6CAE0000000A00000007357D
        B5EC91D5F2FFC5EFFBFFF1FCFEFFEBFAFDFFE4F9FDFFDFF8FDFFDAF7FDFFD5F6
        FDFFC7ECF9FFA1D1EEFF86CBF1FF4FADE5FF21599FEC0000000C000000053C8B
        C8FFF2FAFDFFB9C6E2FF6884C0FF3C64B1FF0F43A4FF1451ADFF1B60B8FF2471
        C1FF529CD6FF76BBE6FFAAE0F4FFC5F0FBFF2665B0FE0000000A000000021530
        455E468DC1F093C7E7FFC7E6F4FFE4F4FBFFE8F7FCFFF4FCFEFFEFFBFDFFD6F2
        FAFFCAEBF8FFA6D6EFFF71AFDCFF316FB0F10D233D6400000004000000000000
        000203070A111633476026577BA1316F9FCF3275AADE3885C4FF3681C2FF2D6C
        A5DE286298D11D4872A410284164020509150000000400000001}
      TabOrder = 16
      OnClick = btnFilterClick
      ExplicitLeft = 357
    end
    object btnFilterClear: TcxButton
      AlignWithMargins = True
      Left = 378
      Top = 3
      Width = 27
      Height = 22
      Margins.Left = 0
      Margins.Right = 0
      Align = alLeft
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000203110C50961910
        74DB0504172D000000000504172D181071DB100B4E9600000203000000000000
        000000000000000000040000000D0000001100000011120D55A1414FC0FF4762
        D6FF252390EE09062C5223238FEE415CD4FF3949BCFF110C539C000000000000
        0000000000000000000C3B73B7FF2C5CA8FF87A2CEFF312C99FF8596E1FF5B7C
        E6FF4F6DDEFF2F34A7FE4C6ADDFF5574E4FF7486DDFF1A1276DB000000000000
        0000000000000000000F255FA9FFC1E6F5FF9FD1EFFF7C92C6FF38369AEF8EA1
        E8FF5E7FE7FF5B7BE5FF5B7BE6FF8397E6FF312F93ED0504172A000000000000
        0000000000000000000E235CA7FFABE2F6FF5EB3E7FF86A4CDFF0B09305C4348
        B3FE83A0F1FF84A1F2FF829FF0FF4145B0FE0A082F5200000000000000000000
        0000000000010000000E225BA6FF8FD6F4FF96CCEEFF798EC3FF2F3191EF87A1
        EDFF97B2F6FFC1D0F8FF96B1F6FF859EECFF2D2E8EEE0403172D000000000000
        0001000000060B162549225AA6FF77CAEEFF90C9ECFF3333A9FFA8B7EFFFA4BC
        F8FFCAD3F5FF6261BBFEC7D1F4FFA2BBF8FFA6B5EEFF1F1A88E1000000010000
        000611233A633C75B7FB67A5D8FF7FC9EBFF94D1EDFF525FBEFF9C9CDAFFD6D9
        F3FF4744AAEF0C0B34534542A8EED1D5F1FF9597D6FF1613649F000000041123
        395E4885C3FF84CBEEFFC3EAF9FF8EDAF2FF81D0EEFF9DC7E9FF5867C5FF3738
        B3FF343F67910000000507061E2D221F92DE1614609300000203020406133468
        A5E882C8EBFFBAE9F9FFE2F7FDFF90DEF5FF4BC0E8FF79B7E4FF8AB2E0FF90BB
        E4FF809FC6F10305071500000001000000000000000000000000162C456A5797
        CEFF99E1F7FFDFF7FDFFF5FCFFFF8BDFF5FF4DC5EAFF4CA6DEFF2D74C6FF337E
        CCFF4083C6FF1428436C00000004000000000000000000000000284F7DB284C2
        E6FFC3EDFAFFE6F7FDFFE2F5FCFFDFF6FCFFDEF6FCFFD7F5FBFFB7DCF2FF8FC0
        E7FF5EA6DCFF254979B3000000060000000000000000000000003975B3F4D5EF
        FAFF9BB8DDFF648AC7FF1348A7FF114AA9FF144FADFF1856B1FF6698D1FF99C2
        E5FFC5ECF9FF3468AAEF000000060000000000000000000000001A3450735A91
        C5F9AAD2EBFFCEEAF7FFDCF1FAFFE2F5FBFFE0F5FBFFD6F2FBFFC2E7F6FF9CCC
        EAFF538CC2F918314D740000000300000000000000000000000000000003070D
        14211D3B597E2D5C8BBE32669BD53D7BBDFF3D7ABCFF31639AD52B5888BF1C38
        587F070E16250000000300000001000000000000000000000000}
      TabOrder = 17
      OnClick = btnFilterClearClick
      ExplicitLeft = 385
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 28
    Width = 329
    Height = 641
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object cxGroupBox3: TcxGroupBox
      AlignWithMargins = True
      Left = 1
      Top = 0
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alTop
      Alignment = alTopCenter
      Caption = #54924#50896' '#44592#48376#51221#48372
      ParentBackground = False
      ParentColor = False
      Style.BorderColor = clInactiveCaption
      Style.Color = clBtnFace
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 161
      Width = 327
      object cxLabel1: TcxLabel
        Left = 3
        Top = 14
        AutoSize = False
        Caption = #46321#47197#51068#51088
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = clSkyBlue
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 23
        Width = 73
        AnchorX = 40
        AnchorY = 26
      end
      object cxDBLabel1: TcxDBLabel
        Left = 76
        Top = 14
        DataBinding.DataField = 'REG_DATE'
        DataBinding.DataSource = dmDBCommon.d_CUSTOMER_SEL
        ImeName = 'Microsoft IME 2010'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsSingle
        Style.TransparentBorder = True
        Height = 23
        Width = 139
        AnchorY = 26
      end
      object cxLabel3: TcxLabel
        Left = 3
        Top = 36
        AutoSize = False
        Caption = #54924#50896#49457#47749
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = clSkyBlue
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 23
        Width = 73
        AnchorX = 40
        AnchorY = 48
      end
      object cxDBLabel3: TcxDBLabel
        Left = 76
        Top = 36
        DataBinding.DataField = 'CNAME'
        DataBinding.DataSource = dmDBCommon.d_CUSTOMER_SEL
        ImeName = 'Microsoft IME 2010'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsSingle
        Style.TransparentBorder = True
        Height = 23
        Width = 139
        AnchorY = 48
      end
      object cxLabel5: TcxLabel
        Left = 3
        Top = 58
        AutoSize = False
        Caption = #51649'      '#50629
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = clSkyBlue
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 23
        Width = 73
        AnchorX = 40
        AnchorY = 70
      end
      object cxDBLabel5: TcxDBLabel
        Left = 76
        Top = 58
        DataBinding.DataField = 'JOBKIND'
        DataBinding.DataSource = dmDBCommon.d_CUSTOMER_SEL
        ImeName = 'Microsoft IME 2010'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsSingle
        Style.TransparentBorder = True
        Height = 23
        Width = 139
        AnchorY = 70
      end
      object cxLabel6: TcxLabel
        Left = 3
        Top = 102
        AutoSize = False
        Caption = #52712'      '#48120
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = clSkyBlue
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 23
        Width = 73
        AnchorX = 40
        AnchorY = 114
      end
      object cxDBLabel6: TcxDBLabel
        Left = 76
        Top = 102
        DataBinding.DataField = 'HOBBY'
        DataBinding.DataSource = dmDBCommon.d_CUSTOMER_SEL
        ImeName = 'Microsoft IME 2010'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsSingle
        Style.TransparentBorder = True
        Height = 23
        Width = 139
        AnchorY = 114
      end
      object cxLabel7: TcxLabel
        Left = 3
        Top = 80
        AutoSize = False
        Caption = #51204#54868#48264#54840
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = clSkyBlue
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 23
        Width = 73
        AnchorX = 40
        AnchorY = 92
      end
      object cxDBLabel7: TcxDBLabel
        Left = 76
        Top = 80
        DataBinding.DataField = 'CTEL'
        DataBinding.DataSource = dmDBCommon.d_CUSTOMER_SEL
        ImeName = 'Microsoft IME 2010'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsSingle
        Style.TransparentBorder = True
        Height = 23
        Width = 139
        AnchorY = 92
      end
      object cxLabel9: TcxLabel
        Left = 3
        Top = 124
        AutoSize = False
        Caption = #51060' '#47700' '#51068
        ParentColor = False
        Style.BorderStyle = ebsSingle
        Style.Color = clSkyBlue
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 23
        Width = 73
        AnchorX = 40
        AnchorY = 136
      end
      object cxDBLabel9: TcxDBLabel
        Left = 76
        Top = 124
        DataBinding.DataField = 'CEMAIL'
        DataBinding.DataSource = dmDBCommon.d_CUSTOMER_SEL
        ImeName = 'Microsoft IME 2010'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Style.BorderStyle = ebsSingle
        Style.TransparentBorder = True
        Height = 23
        Width = 246
        AnchorY = 136
      end
      object ImageEnView1: TImageEnView
        Left = 216
        Top = 15
        Width = 105
        Height = 108
        Background = clBtnFace
        AutoStretch = True
        AutoShrink = True
        TabOrder = 12
      end
    end
    object cxGroupBox1: TcxGroupBox
      AlignWithMargins = True
      Left = 1
      Top = 161
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alClient
      Alignment = alTopCenter
      Caption = #44053#51032#46321#47197' '#54788#54889
      Style.LookAndFeel.SkinName = 'Black'
      Style.Shadow = False
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Height = 480
      Width = 327
      object cxGrid4: TcxGrid
        Left = 3
        Top = 17
        Width = 321
        Height = 428
        Align = alClient
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Black'
        ExplicitTop = 15
        ExplicitHeight = 430
        object gridCLRegist: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OnCellDblClick = gridCLRegistCellDblClick
          DataController.DataSource = d_LESSON_CUSTOMER_SEL_BYUSER
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.HideFocusRectOnExit = False
          OptionsSelection.UnselectFocusedRecordOnExit = False
          OptionsView.ScrollBars = ssVertical
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridCLRegistID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object gridCLRegistREG_DATE: TcxGridDBColumn
            Caption = #46321#47197#51068#51088
            DataBinding.FieldName = 'REG_DATE'
            Width = 91
          end
          object gridCLRegistLEC_CODE: TcxGridDBColumn
            Caption = #44053#51032#47749
            DataBinding.FieldName = 'LEC_CODE'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'L_NAME'
              end>
            Properties.ListSource = dmDBCommon.d_LESSON_SEL_LOOK
            Width = 84
          end
          object gridCLRegistMEMBER_UID: TcxGridDBColumn
            DataBinding.FieldName = 'MEMBER_UID'
            Visible = False
          end
          object gridCLRegistSTART_DATE: TcxGridDBColumn
            Caption = #49884#51089#51068#51088
            DataBinding.FieldName = 'START_DATE'
            Width = 95
          end
          object gridCLRegistEND_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'END_DATE'
            Visible = False
          end
          object gridCLRegistLEC_MONTH: TcxGridDBColumn
            Caption = #44060#50900
            DataBinding.FieldName = 'LEC_MONTH'
            Width = 37
          end
          object gridCLRegistLEC_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'LEC_PRICE'
            Visible = False
          end
          object gridCLRegistLEC_DESC: TcxGridDBColumn
            DataBinding.FieldName = 'LEC_DESC'
            Visible = False
          end
          object gridCLRegistCOMPANY_ID: TcxGridDBColumn
            DataBinding.FieldName = 'COMPANY_ID'
            Visible = False
          end
          object gridCLRegistIS_DONE: TcxGridDBColumn
            DataBinding.FieldName = 'IS_DONE'
            Visible = False
          end
          object gridCLRegistM_KIND: TcxGridDBColumn
            DataBinding.FieldName = 'M_KIND'
            Visible = False
          end
          object gridCLRegistLOCKER_NO: TcxGridDBColumn
            DataBinding.FieldName = 'LOCKER_NO'
            Visible = False
          end
          object gridCLRegistNEW_OR_RENEW: TcxGridDBColumn
            DataBinding.FieldName = 'NEW_OR_RENEW'
            Visible = False
          end
          object gridCLRegistPAY_KIND: TcxGridDBColumn
            DataBinding.FieldName = 'PAY_KIND'
            Visible = False
          end
        end
        object G4L1: TcxGridLevel
          GridView = gridCLRegist
        end
      end
      object Panel2: TPanel
        Left = 3
        Top = 445
        Width = 321
        Height = 25
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object btnEditCustLec: TBitBtn
          Left = 37
          Top = 1
          Width = 38
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
          TabOrder = 0
          OnClick = btnEditCustLecClick
        end
      end
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    OverWriteExistingFiles = True
    PreviewOptions.Caption = #52636#47141' '#48120#47532#48372#44592
    Version = 0
    Left = 528
    Top = 472
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxGrid1
      DesignerCaption = #52636#47141#49444#51221
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
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
      ReportDocument.CreationDate = 44149.370156712960000000
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clBlack
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = #44404#47548
      ReportTitle.Font.Style = [fsBold]
      ReportTitle.Text = #54924#50896' '#46321#47197#54788#54889
      BuiltInReportLink = True
    end
  end
  object ImageList1: TImageList
    Left = 480
    Top = 184
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF00000000000000FF00000000
      000000FF00000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000FF00000000000000000000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000000000FF
      00000000000000FF00000000000000FF00000000000000FF0000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000000000000000000080000000800000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      800080808000808080008080800080808000808080000000000080800000FFFF
      0000FFFF0000FFFFFF000000000000FF000000000000C0C0C000C0C0C0000000
      0000800080008000800080008000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000800080008000800080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000000000
      00000000000000000000000000000000000000FF000000000000FFFF00008080
      0000808000008080000080800000808000000000000080800000FFFF0000FFFF
      0000FFFFFF000000000000FF00000000000000000000FFFFFF00C0C0C0000000
      0000800080008000800080008000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000800080008000800080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000000000FFFF
      00008080000080800000808000000000000080800000FFFF0000FFFF0000FFFF
      FF0000000000808000000000000000FF00000000000080000000800000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF00000000000000FF00000000
      0000FFFF0000808000000000000080800000FFFF0000FFFF0000FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00800000008000000080000000FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF00000000000000FF
      0000000000000000000080800000FFFF0000FFFF0000FFFFFF000000000000FF
      00000000000000FF00000000000000FF000000000000FFFFFF00C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF008000000080000000FFFFFF00FFFFFF00C0C0
      C000FFFFFF0080000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000FF00000000000000FF00000000
      00000000000080800000FFFF0000FFFF0000FFFFFF0000000000000000000000
      000000FF00000000000000FF0000000000000000000080000000800000000000
      0000C0C0C000C0C0C000C0C0C00080000000C0C0C00080000000800000008000
      000080000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000FF0000000000000000
      000080800000FFFF0000FFFF0000FFFFFF000000000080800000808080000000
      00000000000000FF00000000000000FF000000000000C0C0C000C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000FF000000000000000000008080
      0000FFFF0000FFFF0000FFFFFF0000000000FFFF000080800000808000008080
      8000000000000000000000FF00000000000000000000FFFFFF00C0C0C0000000
      0000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000000000000000000080800000FFFF
      0000FFFF0000FFFFFF000000000000FF000000000000FFFF0000808000008080
      000080808000000000000000000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000FF00000000000000FF000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000080808000808080008000
      0000C0C0C000C0C0C000C0C0C00080000000C0C0C000C0C0C000C0C0C0008000
      0000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000FF00000000000000FF0000000000000000
      000000000000000000000000000000FF000000000000C0C0C000808080008000
      0000FFFFFF00FFFFFF00C0C0C00080000000FFFFFF00FFFFFF00C0C0C0008000
      0000FFFFFF00FFFFFF00C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF00000000000000FF00000000
      000000FF00000000000000FF00000000000000FF00000000000000FF00000000
      000000FF00000000000000FF0000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF0000000000808080000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF0000000000808080000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000FFFFFF0000FFFF0000000000808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000FFFFFF000000000080808000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000FFFFFF000000000080808000808080000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000FFFFFF0000000000808080000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000808080000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000808080000000800000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      000000000000000000000000000080808000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF00000000000000
      000000000000000000000000000080808000000080000000800000FFFF00FFFF
      FF0000FFFF00FFFFFF00808080000000800000FFFF00FFFFFF00000000000000
      000000000000000000000000000080808000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF000000000000000000FFFFFF0000000000FFFFFF008080
      800000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000808080000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000FFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000008080800080808000000080008080800000FF
      FF00FFFFFF00808080000000800080808000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000080808000000000000000000000000000FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000008080800000FFFF0000FFFF008080
      8000FFFFFF0000FFFF008080800000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000080808000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000FFFF000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000808080000000000000008000000080008080
      800000FFFF000000800000008000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008000000080000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
      FF00000000000000800000008000000000000000000080808000FFFFFF008080
      800000FFFF008080800000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000808080000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FFFF000000000000FF
      FF00FFFFFF0000FFFF0000000000808080000000000080808000000080000000
      80000000800000008000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000808080008000000080000000800000008000
      0000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000808080008080800080808000FFFF
      FF0080808000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF000000000080808000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000FFFF0000FFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000000000808080000000000080808000000080000000
      800000008000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000808080008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00000000000000
      000000000000808080000000000000000000FFFFFF0000FFFF008080800000FF
      FF00FFFFFF008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000008080800000008000000080000000
      8000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000000000008080800000FFFF008080
      800000FFFF008080800000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000800000008000808080000000
      0000000080000000800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000008080800000FFFF00000000008080
      8000FFFFFF00000000008080800000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000800000008000808080000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000008080
      800000FFFF000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008000000080000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFAAAAFFFF0000C007555590010000
      BFEBAAA09001000000050000900100007E310000900100007E35000190010000
      00068000900100007FEA4001900100008014A00A90010000C00A501590010000
      E001A00A90010000E007400590010000F0078002FFFF0000F003010180010000
      F803028080010000FFFF5555FFFF0000FFFFFFFFFFFFF55FC000C000C000FFCF
      800080008000F007800080008000F007801080100010F003800880080008F003
      800080000000E001000080000000E00000008000800000008000800080000001
      0000800080000003000180010001000781FFFF0F11FF000F24FFFF87F8FF001F
      66FFFF87FC7FF1FFE7FFFFCFFFFFF3FF00000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 392
    Top = 504
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      TextColor = clBlack
    end
  end
  object d_LESSON_CUSTOMER_SEL_BYUSER: TDataSource
    DataSet = LESSON_CUSTOMER_SEL_BYUSER
    Left = 664
    Top = 376
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 480
    Top = 136
    object ActAdd: TAction
      Caption = #46321#47197
      ImageIndex = 0
      OnExecute = ActAddExecute
    end
    object ActEdit: TAction
      Caption = #49688#51221
      ImageIndex = 1
      OnExecute = ActEditExecute
    end
    object ActDel: TAction
      Caption = #49325#51228
      ImageIndex = 2
      OnExecute = ActDelExecute
    end
    object ActSMS: TAction
      ImageIndex = 3
      OnExecute = ActSMSExecute
    end
    object ActPrint: TAction
      ImageIndex = 4
      OnExecute = ActPrintExecute
    end
    object ActExcel: TAction
      ImageIndex = 5
      OnExecute = ActExcelExecute
    end
    object ActColumnSet: TAction
      ImageIndex = 6
      OnExecute = ActColumnSetExecute
    end
  end
  object PopupMember: TPopupMenu
    AutoHotkeys = maManual
    Images = ImageList1
    Left = 480
    Top = 88
    object N1: TMenuItem
      Action = ActAdd
    end
    object N2: TMenuItem
      Action = ActEdit
    end
    object N3: TMenuItem
      Action = ActDel
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Action = ActSMS
    end
    object N6: TMenuItem
      Action = ActPrint
    end
    object N7: TMenuItem
      Action = ActExcel
    end
    object N8: TMenuItem
      Action = ActColumnSet
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 928
    Top = 496
  end
  object CUSTOMER_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 392
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CAGE'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CBIGO'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOBBY'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BLOOD'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BLOOD_PRESSURE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BODY_STATUS'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'FOOD_KIND'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_MUCH'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_OFTEN'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME_ETC'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_ETC'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_DESC'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SMS_YESNO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_INS'
  end
  object CUSTOMER_DEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 392
    Top = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 40
      end>
    CommandStoredProcName = 'CUSTOMER_DEL'
  end
  object CUSTOMER_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 392
    Top = 448
    ParamData = <
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CAGE'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CBIGO'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOBBY'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BLOOD'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BLOOD_PRESSURE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BODY_STATUS'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'FOOD_KIND'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_MUCH'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_OFTEN'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME_ETC'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_ETC'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_DESC'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'C_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'SMS_YESNO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_UPD'
  end
  object UniAlerter: TUniAlerter
    Connection = dmDBCommon.UniDBConnection
    Events = 'CUSTOMER_AIUD_event'
    Active = True
    OnEvent = UniAlerterEvent
    Left = 392
    Top = 224
  end
  object LESSON_CUSTOMER_SEL_BYUSER: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_SEL_BYUSER'
    Connection = dmDBCommon.UniDBConnection
    Left = 664
    Top = 328
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'USER_UID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'MEMBER_UID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'START_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'END_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'LEC_MONTH'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'LEC_PRICE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_DESC'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftSmallint
        Name = 'IS_DONE'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'M_KIND'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'NEW_OR_RENEW'
        ParamType = ptOutput
      end
      item
        DataType = ftSmallint
        Name = 'PAY_KIND'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_SEL_BYUSER'
    object LESSON_CUSTOMER_SEL_BYUSERID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERMEMBER_UID: TStringField
      FieldName = 'MEMBER_UID'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERSTART_DATE: TDateField
      FieldName = 'START_DATE'
    end
    object LESSON_CUSTOMER_SEL_BYUSEREND_DATE: TDateField
      FieldName = 'END_DATE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_MONTH: TSmallintField
      Alignment = taCenter
      FieldName = 'LEC_MONTH'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_PRICE: TFloatField
      FieldName = 'LEC_PRICE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLEC_DESC: TStringField
      FieldName = 'LEC_DESC'
      Size = 50
    end
    object LESSON_CUSTOMER_SEL_BYUSERCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
    object LESSON_CUSTOMER_SEL_BYUSERIS_DONE: TSmallintField
      FieldName = 'IS_DONE'
    end
    object LESSON_CUSTOMER_SEL_BYUSERM_KIND: TSmallintField
      FieldName = 'M_KIND'
    end
    object LESSON_CUSTOMER_SEL_BYUSERLOCKER_NO: TStringField
      FieldName = 'LOCKER_NO'
      Size = 10
    end
    object LESSON_CUSTOMER_SEL_BYUSERNEW_OR_RENEW: TSmallintField
      FieldName = 'NEW_OR_RENEW'
    end
    object LESSON_CUSTOMER_SEL_BYUSERPAY_KIND: TSmallintField
      FieldName = 'PAY_KIND'
    end
  end
  object ImageList2: TImageList
    Left = 480
    Top = 240
    Bitmap = {
      494C01010E001100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9A17900BD8B5A00B780
      4B00B1784100B2773E00B2773E00AF723800AF723700B1784100B2773E00B277
      3E00B7804B00BF8F5F00CCA58000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009AA6
      E400000000000000000000000000000000000000000000000000000000000000
      00008F9DE200000000000000000000000000AC6B2C00AC6B2C00AC6B2C00AC6B
      2C00AB6A2B00AA672600A7652300A7652300A7652300AA672500AA692800AC6B
      2C00AC6B2C00AC6B2C00AC6B2C00AC6B2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000093A0E300334C
      CC003D56CD00000000000000000000000000000000000000000000000000485E
      CF00334CCC00808EDD000000000000000000AB6C2E00AC6B2C00AC6B2C00AB6A
      2B00A35E1900AB6A2B00B2783E00B8814C00B57C4500AE713600A45F1B00A45F
      1B00AC6B2D00AC6B2C00AC6B2C00B7804B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009FABE500334CCC00334C
      CC00334CCC003D56CD0000000000000000000000000000000000485ECF00334C
      CC00334CCC00334CCC008B99E10000000000BB875500AC6B2C00AC6B2C00A45E
      1900D5B79700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C89F
      7600A5611E00AC6B2C00AC6B2C00C69B72000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000455DCF00334C
      CC00334CCC00334CCC003D56CD000000000000000000485ECF00334CCC00334C
      CC00334CCC004158CE000000000000000000D2B19100AC6B2C00AC6B2C00A561
      1E00C5996F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA86
      5400A7652100AC6B2C00AC6B2C00DFC8B3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000455D
      CF00334CCC00334CCC00334CCC003D56CD00475DCF00334CCC00334CCC00334C
      CC004158CE0000000000000000000000000000000000C59A7000AB6A2C00A765
      2400AF753B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A058
      1000AB6A2A00AB6A2C00CEAB8800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000455DCF00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC004158
      CE0000000000000000000000000000000000000000000000000000000000E6D4
      C400BC885600FFFFFF00DEC7B0009F540D00A45F1A00F4EDE500FFFFFF00C294
      6900EADCCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000455DCF00334CCC00334CCC00334CCC00334CCC004158CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3EDE600CCA58100A45E1900F8F7F300F3E9E10098490000DAC0A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000485ECF00334CCC00334CCC00334CCC00334CCC003D56CD000000
      000000000000000000000000000000000000000000000000000000000000EDDB
      C800AA6726009F540D00FFFFFF00FFFFFF00FFFFFF00FFFFFF0097490000AA69
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000485ECF00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC003D56
      CD0000000000000000000000000000000000000000000000000000000000D9B3
      8E00A25C1600D7B89D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C9A17B00A45F
      1B00EBD5C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000485E
      CF00334CCC00334CCC00334CCC004158CE00455DCF00334CCC00334CCC00334C
      CC003D56CD00000000000000000000000000000000000000000000000000DDBC
      9B009F540B00F5F3EC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6D5C400A158
      1000EEDCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000485ECF00334C
      CC00334CCC00334CCC004158CE000000000000000000455DCF00334CCC00334C
      CC00334CCC003D56CD000000000000000000000000000000000000000000E9D3
      BD009E520900FFFFFF00CAA47E00D8B89900FFFFFF00FFFFFF00F6F3EB009F55
      0D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFC6ED00354FCB00334C
      CC00334CCC004158CE0000000000000000000000000000000000455DCF00334C
      CC00334CCC00344CCA00B7BFEB00000000000000000000000000000000000000
      0000AA692B00A45E1A00A35D1700A35C17009A4F0300AC6C2B00AC692C00A969
      2800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BBC2EC00354F
      CB004158CE00000000000000000000000000000000000000000000000000455D
      CF00344CCA00B4BEEB0000000000000000000000000000000000000000000000
      0000AB6A2B00AA692A00AC6B2C00AC6B2C00AC6C2D00AA672700AA692700AA6A
      2B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCC5
      ED00000000000000000000000000000000000000000000000000000000000000
      0000B8C1EC000000000000000000000000000000000000000000000000000000
      0000C4997100AC6B2C00AC6B2C00AC6B2C00AC6B2C00AC6B2C00AC6B2C00E0CA
      B300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DABFA500B2793F00AC6B2C00AA6A2C00B57D4600E8D8CA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C1936600B3783E00B378
      3E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00E7D6C60000000000000000000000000000000000000000000000
      000000000000A96A2B00DEC7B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5D1BE00B9835000B074
      3A00B0723600B0733900B9834F00E7D5C4000000000000000000000000000000
      00000000000000000000000000000000000000000000C0D2A50092B26200759E
      380092B26200C0D2A500000000000000000000000000B1773E00F6EFE800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4EDE7000000000000000000B47B4300AB6D2E00A96D3000AC73
      380000000000E1CCB800AB6B2B00A96A2B000000000000000000DBC3AB00A86C
      2E00A96D3000AB6D2E00B47B4300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3753700B0723600B072
      3600B0723600B0723600B0723600B07236000000000000000000000000000000
      000000000000000000000000000000000000A1BC7900759E3800759E3800759E
      3800759E3800759E3800A1BC79000000000000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C007D6D5B00727272007070
      7000BFBFBF0000000000A96A2B000000000000000000A96A2B0000000000C5C5
      C500717171007D6D5B00B1763C000000000082C3EC0066B7EA0066B7EA0066B7
      EA0066B7EA0066B7EA0066B7EA006EBAE90000000000B77D4400B0723600B072
      3600B0723600B0723600B0723600BA855200000000000000000000000000334C
      CC00000000000000000000000000C0D2A500759E3800759E3800FFFFFF00B2C9
      8F00759E3800759E3800759E3800C0D2A50000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F800FFFF
      FF00FDFDFD00000000000000000000000000AB6B2B00AC6E3100A96A2B000000
      0000FAFAFA006E6C6800B1763C000000000067B6E80066B7EA0066B7EA0066B7
      EA0066B7EA0066B7EA0066B7EA0066B7EA00CAE5F60000000000B0723600B37A
      4200ECDFD300B9835000B072360000000000000000000000000000000000334C
      CC00334CCC00000000000000000092B26200759E3800FFFFFF00FFFFFF00FFFF
      FF00B2C98F00759E3800759E380092B2620000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F8009898
      980098989800ABABAB0000000000A96A2B00AD713400AB6B2B00AC6E3100A96A
      2B0000000000C3C3C100B1773D000000000067B6E80066B7EA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FDFDFD00000000000000
      0000D0AD8B00F0E6DD000000000000000000000000000000000000000000334C
      CC00334CCC00334CCC0000000000759E3800FFFFFF00FFFFFF00B2C98F00FFFF
      FF00FFFFFF00B2C98F00759E3800759E380000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F800FFFF
      FF00FFFFFF00FFFFFF00FDFDFD0000000000A96A2B00AD713400AB6B2B00AC6E
      3100A96A2B0000000000DFC8B0000000000067B6E80066B7EA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00E5CEB800B072
      3600B0723600B0723600DABDA10000000000334CCC004158CE004158CE00334C
      CC00334CCC00334CCC000000000092B26200759E3800B2C98F00759E3800759E
      3800FFFFFF00FFFFFF00B2C98F0092B2620000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F8009898
      98009898980098989800E2E2E200D2D2D20000000000A96A2B00AD713400AB6B
      2B00AC6E3100A96A2B00000000000000000067B6E80066B7EA00FFFFFF00FFFF
      FF00FFFFFF00324BCC00324BCC00FFFFFF00FDFDFD0000000000BA804500B072
      3600B0723600B0723600B37537000000000000000000334CCC00334CCC00334C
      CC00334CCC00334CCC00D4D9F300C0D2A500759E3800759E3800759E3800759E
      3800759E3800FFFFFF00759E3800C0D2A50000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C9C9C900FDFDFD0000000000A96A2B00AD71
      3400AB6B2B00AC6E3100000000000000000067B6E80066B7EA00FFFFFF00FFFF
      FF00324BCC00324BCC00324BCC00324BCC00FFFFFF0000000000C89B6C00B072
      3600B0723600B0723600BD895500000000000000000000000000334CCC00334C
      CC00334CCC00334CCC005B6FD50000000000A1BC7900759E3800759E3800759E
      3800759E3800759E3800A1BC79000000000000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F8009898
      98009898980098989800E2E2E200C9C9C900E2E2E200ACACAC0000000000A96A
      2B00AD7134000000000000000000A96A2B0067B6E80066B7EA00FFFFFF00324B
      CC00324BCC00324BCC00324BCC00324BCC00324BCC00FDFDFD0000000000B882
      4E00B0723600B37A42000000000000000000000000000000000000000000334C
      CC00334CCC00334CCC00334CCC00A3AEE60000000000C0D2A50092B26200759E
      380092B26200C0D2A500000000000000000000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C9C9C900FFFFFF00FFFFFF00FDFDFD000000
      00000000000000000000A96A2B00A96A2B0067B6E80066B7EA00FFFFFF00324B
      CC00324BCC00FFFFFF00FFFFFF00324BCC00324BCC00334BCA00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000334CCC00334CCC00334CCC00334CCC005B6FD500D4D9F300000000000000
      00000000000000000000000000000000000000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F8009898
      98009898980098989800E2E2E200C9C9C900E2E2E2009898980098989800ADAD
      AD0000000000A96A2B00A96A2B00E8D7C70067B6E80066B7EA00FFFFFF00FCFC
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF005052CE00324BCC00324BCC00FDFD
      FD0086C5EC0072BAEA0000000000000000000000000000000000000000000000
      000000000000334CCC00334CCC00334CCC00334CCC00334CCC00334CCC00334C
      CC000000000000000000000000000000000000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00F1E7DC00F1E7DC00F1E7DC00F1E7DC00F1E7DC00F1E7
      DC00B3783E00B3783E000000000000000000B1763C006F6D6900F8F8F800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C9C9C900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700C1C0BF00E0C9B2000000000066B7EA0066B7EA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00324BCC00324BCC00FFFF
      FF0066B7EA0066B7EA0000000000000000000000000000000000000000000000
      00000000000000000000334CCC00334CCC00334CCC00334CCC00334CCC00334C
      CC00334CCC0000000000000000000000000000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00F1E7DC00F1E7DC00F1E7DC00F1E7DC00F1E7DC00F1E7
      DC00B3783E00B3783E000000000000000000AD6F32006F6D6900F8F8F8009898
      98009898980098989800E2E2E200C9C9C900E2E2E20098989800989898009898
      9800F8F8F8006F6D6900AD6F32000000000067B6E80066B7EA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0066B7EA0065B5E80000000000000000000000000000000000000000000000
      0000000000000000000000000000334CCC00334CCC00334CCC00334CCC00334C
      CC00334CCC00334CCC00000000000000000000000000B3783E00B3783E00EBDB
      CC00B3783E00B3783E00F2E8DE00F1E7DC00F1E7DC00F1E7DC00F1E7DC00F2E8
      DE00B3783E00B3783E000000000000000000C49F7A006D6C6900F8F8F800FFFF
      FF00FFFFFF00FEFEFE00EEEEEE009F9F9F00EEEEEE00FEFEFE00FFFFFF00FFFF
      FF00F8F8F8006D6C6900C49F7A000000000067B6E80066B7EA00FFFFFF009393
      93007878780078787800787878007878780078787800787878008F8F8F00FFFF
      FF0066B7EA0065B5E80000000000000000000000000000000000000000000000
      000000000000000000000000000000000000334CCC00334CCC00334CCC00334C
      CC00374FCB00C1C8EE00000000000000000000000000B2783F00B3783E00EBDB
      CC00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
      3E00B3783E00B3783E000000000000000000000000009C9A99006D6D6D007070
      7000707070006C6C6C007777770093939300777777006C6C6C00707070007070
      70006D6D6D009C9A9900000000000000000082C3EC0066B7EA0069B7E700A6CB
      E200AEBAC20082838300787878007878780080818100B2BBC100ADCCE0006AB8
      E70066B7EA0081C3EC0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000334CCC00334CCC00374F
      CB00C1C8EE0000000000000000000000000000000000DDC4AB00B7824D00E9DA
      CC00B47A4200B47A4200B47A4200B47A4200B47A4200B47A4200B47A4200B47A
      4200B47A4200B47A410000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B8B9007878780078787800B2B3B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000334CCC00C3C9
      EE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B99E100000000000000
      000000000000000000008996E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000068992200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008B99E100000000000000
      000000000000000000008996E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000068992200000000000000
      000000000000000000000000000000000000DBDBDB0000000000000000000000
      0000000000000000000000000000000000008A98E2001733C5001733C5000000
      0000000000001733C5001733C5008A98E000DBDBDB0000000000000000000000
      00000000000000000000000000000000000067991F0067991F0067991F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A98E2001733C5001733C5000000
      0000000000001733C5001733C5008A98E0000000000000000000000000000000
      00000000000000000000000000000000000067991F0067991F0067991F000000
      0000000000000000000000000000000000007A7A7A006F6F6F0080808000A3A3
      A300BBBBBB00CBCBCB00CFCFCF00E2E2E200000000001733C5001733C5002942
      C8003149CA001733C5001733C500000000007A7A7A006F6F6F0080808000A3A3
      A300BCBCBC00EBEBEB000000000067991F0067991F0067991F0067991F006799
      1F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001733C5001733C5002942
      C8003149CA001733C5001733C500000000000000000000000000000000000000
      000000000000000000000000000067991F0067991F0067991F0067991F006799
      1F0000000000000000000000000000000000E2E2E2006F6F6F006F6F6F00A4A4
      A400E8E8E800000000000000000000000000EAEAEA0000000000334BCA001733
      C5001733C500334CCB000000000000000000E2E2E2006F6F6F006F6F6F00A4A4
      A400000000000000000067991F0067991F0067991F000000000073A032006799
      1F0067991F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000334BCA001733
      C5001733C500334CCB0000000000000000000000000000000000000000000000
      0000000000000000000067991F0067991F0067991F000000000073A032006799
      1F0067991F0000000000000000000000000000000000EDEDED00E9E9E900BFBF
      BF00717171006F6F6F006F6F6F006F6F6F00D5D5D500000000003049C9001733
      C5001733C5002942C800000000000000000000000000EDEDED00E9E9E900BFBF
      BF00A7A7A7000000000067991F0067991F000000000000000000000000006C9C
      280067991F0067991F0000000000000000000000000000000000000000000000
      0000E5F2FB0091CBF10059B1E90059B0E700C1E0F500000000003049C9001733
      C5001733C5002942C80000000000000000000000000000000000000000000000
      0000000000000000000067991F0067991F000000000000000000000000006C9C
      280067991F0067991F00000000000000000000000000000000007D7D7D006F6F
      6F006D6D6D006767670067676700B7B7B700000000001733C5001733C500334B
      CA003149CA001733C5001733C5000000000000000000000000007D7D7D006F6F
      6F006C6C6C00C0C0C0000000000000000000D4D4D40072727200EBEBEB000000
      00006999230067991F0067991F00000000000000000000000000000000007FC2
      EC0058B0E90054AFE8004FADE600AAD5F100000000001733C5001733C500334B
      CA003149CA001733C5001733C500000000000000000000000000000000007FC2
      EC0057AEE700B8DDF4000000000000000000CAE6F70050ABE400B7DCF3000000
      00006999230067991F0067991F000000000000000000868686006F6F6F006969
      69007C7C7C00C3C3C300CFCFCF00DEDEDE008593E1001733C5001733C5000000
      0000000000001733C5001733C5008E9BE10000000000868686006F6F6F006969
      69007C7C7C00C1C1C100E2E2E200D0D0D000676767006E6E6E006E6E6E000000
      00000000000066981F0067991F006899220000000000C1E1F60058B0E90052AE
      E8004CABE60087C5EE00C9E8FB00FAFDFD008593E1001733C5001733C5000000
      0000000000001733C5001733C5008E9BE10000000000C1E1F60058B0E90052AE
      E8004CABE60085C3EC00DFF0FB00F9FDFD00FDFDFA00FFFFFF00E3F6FD00D9EB
      F8000000000066981F0067991F0068992200D9D9D9006F6F6F006B6B6B009595
      9500FFFFFF00F5F5F500DDDDDD00FDFDFD00F9F9F9008695E10000000000D3D3
      D30000000000000000008A98E10000000000D9D9D9006F6F6F006B6B6B009595
      9500FFFFFF00F5F5F500DDDDDD00FFFFFF00E6E6E600656565006E6E6E008A8A
      8A00000000000000000067991F0000000000A2D2F10057B0E8004BAAE5009CD0
      F100FDFDFD00FFFFFF00F5E9DB00C6986D00F1E7DE008695E10000000000FDFD
      FD00FDFDFD00000000008A98E100E3F1FA00A2D2F10057B0E8004BAAE5009CD0
      F100FDFDFD00FFFFFF00F5E9DB00C3916100BA824C00BB875000E1C5AC00FDFD
      FD00FDFDFD000000000067991F0000000000A6A6A6006E6E6E0066666600FFFF
      FF00C8C8C8005D5D5D006464640075757500FDFDFD00E2E2E200B6B6B6006F6F
      6F0000000000000000000000000000000000A6A6A6006E6E6E0066666600FFFF
      FF00C8C8C8005D5D5D006464640075757500FFFFFF00B0B0B0006A6A6A006F6F
      6F000000000000000000000000000000000057B0E8006AB9EA00FBFCFD00FFFF
      FF00FFFFFF00F6F0EA00B8824C00C38F5B00CB9A6900EAD7C500DCC2A900DBC2
      AC00FDFDFD00FDFDFD00DDEDF8005EB2E70057B0E8006AB9EA00FBFCFD00FFFF
      FF00FFFFFF00F6F0EA00B8824C00C38F5B00C9935D00C8925D00BA834D00DDC4
      AD00FDFDFD00FDFDFD0000000000DDEEF9008D8D8D006C6C6C008B8B8B00FFFF
      FF00707070006E6E6E006B6B6B0065656500CBCBCB00E2E2E200666666006F6F
      6F00DCDCDC000000000000000000000000008D8D8D006C6C6C008B8B8B00FFFF
      FF00707070006E6E6E006B6B6B0065656500CBCBCB00E2E2E200666666006F6F
      6F00DCDCDC000000000000000000000000005BB1E7004FACE600CEE8F800FFFF
      FF00FFFFFF00D1AE8B00C28D58007B5E42000F151B0039302600C18A5300BA87
      5100FFFFFF00E6F3FC004EACE60059AFE7005BB1E7004FACE600CEE8F800FFFF
      FF00FFFFFF00D1AE8B00C28D58007B5E42000F151B0039302600C18A5300BA87
      5100FFFFFF00E4F1FA0070BBE90060B3E800909090006C6C6C0083838300FFFF
      FF0072727200FFFFFF00B0B0B0005D5D5D00D9D9D900DADADA00666666006F6F
      6F00E0E0E000000000000000000000000000909090006C6C6C0083838300FFFF
      FF0072727200FFFFFF00B0B0B0005D5D5D00D9D9D900DADADA00666666006F6F
      6F00E0E0E000000000000000000000000000B7DCF40058B0E9004AAAE500C8E4
      F600FFFFFF00C4966800CA935D00191B1E00191A1A0080828600DDC8B400BC80
      4700F1EDE80056B0E90057B0E800B1D9F300B7DCF40058B0E9004AAAE500C8E4
      F600FFFFFF00C4966800CA935D00191B1E00191A1A0080828600DDC8B400BC80
      4700F1EDE80056B0E90057B0E800B1D9F300B0B0B0006F6F6F0062626200F5F5
      F500EAEAEA008B8B8B0062626200A3A3A300FFFFFF00989898006B6B6B006F6F
      6F0000000000000000000000000000000000B0B0B0006F6F6F0062626200F5F5
      F500EAEAEA008B8B8B0062626200A3A3A300FFFFFF00989898006B6B6B006F6F
      6F00000000000000000000000000000000000000000072BCEB0058B0E9004AAA
      E6009DD4FB00CD9D6E00CE905400322A23000E0E0E00E2E2E200FFFFFD00AD87
      5E005AB0E60056B0E90062B4E800000000000000000072BCEB0058B0E9004AAA
      E6009DD4FB00CD9D6E00CE905400322A23000E0E0E00E2E2E200FFFFFD00AD87
      5E005AB0E60056B0E90062B4E80000000000000000006F6F6F006D6D6D007676
      7600FBFBFB00FFFFFF00FFFFFF00FFFFFF00B8B8B800646464006F6F6F009E9E
      9E0000000000000000000000000000000000000000006F6F6F006D6D6D007676
      7600FBFBFB00FFFFFF00FFFFFF00FFFFFF00B8B8B800646464006F6F6F009E9E
      9E0000000000000000000000000000000000000000000000000065B5E80059B1
      E90052AEE90054AFE90084A2AC00938F800044505700727C7D0081ACC1004FB2
      F00057B1E90059B1E9000000000000000000000000000000000065B5E80059B1
      E90052AEE90054AFE90084A2AC00938F800044505700727C7D0081ACC1004FB2
      F00057B1E90059B1E900000000000000000000000000AFAFAF006F6F6F006D6D
      6D0065656500898989009696960073737300666666006F6F6F006F6F6F000000
      00000000000000000000000000000000000000000000AFAFAF006F6F6F006D6D
      6D0065656500898989009696960073737300666666006F6F6F006F6F6F000000
      0000000000000000000000000000000000000000000000000000000000007CC0
      EC0059B1E90058B1E90054B2ED0054B4F0005AB8F30056B4F00054B1EB0058B1
      E90059B1E9000000000000000000000000000000000000000000000000007CC0
      EC0059B1E90058B1E90054B2ED0054B4F0005AB8F30056B4F00054B1EB0058B1
      E90059B1E9000000000000000000000000000000000000000000ABABAB006E6E
      6E0069696900EDEDED00E8E8E800A2A2A2006B6B6B006E6E6E00000000000000
      0000000000000000000000000000000000000000000000000000ABABAB006E6E
      6E0069696900EDEDED00E8E8E800A2A2A2006B6B6B006E6E6E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEE8F80073BCEA0059B1E90059B1E90059B1E90059B1E9005AB0E700A3D2
      F100000000000000000000000000000000000000000000000000000000000000
      0000CEE8F80073BCEA0059B1E90059B1E90059B1E90059B1E9005AB0E700A3D2
      F10000000000000000000000000000000000000000000000000000000000E8E8
      E800A5A5A50082828200858585008F8F8F00C1C1C10000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E800A5A5A50082828200858585008F8F8F00C1C1C10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5F3FC00E0F1FC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5F3FC00E0F1FC0000000000000000000000
      000000000000000000000000000000000000D9BCA200B0753C00A35F1B00A45F
      1900A45E1900A45E1800A45E1800A9652500A8642500A45E1800A45E1800A45E
      1800A45F1900A5601C00AD713400D0AD8B0000000000C991B600BC78A500B66A
      9C00B1629700B1609600B1609600AE5B9200AE5A9200B1629700B1609600B160
      9600B66A9C00BE7BA700CB96B900000000000000000000000000000000000000
      00000000000098A4E3006275D600485ECF00495FD0006377D70099A5E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BED1A4009DBB74008DB05D008DB05D009EBB7500BFD2A5000000
      000000000000000000000000000000000000A7642200B7804900DDC2AA00E6D5
      C300ECDED000EEE3D800F1EAE100AC6E3000AC6E3000F2EBE300EEE3D800EDE1
      D200E8D8C700DFC7B000BD8C5B00A7642100AB528D00AB528D00AB528D00AB52
      8D00AA518C00A94E8900A74C8900A74A8700A74A8700A74C8900A94F8B00AB52
      8D00AB528D00AB528D00AB528D00AB528D0000000000000000000000000096A2
      E300364ECB00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC003850
      CB009DA8E500000000000000000000000000000000000000000000000000BDD1
      A20082A84D0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0083A9
      4F00C1D4A800000000000000000000000000A45F1900EBDECF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BA875400BA875400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F8F2EF00A35D1700AA548D00AB528D00AB528D00AA51
      8C00A3438400AB508D00B1619600B76C9E00B4679B00AE5A9300A4448200A445
      8400AB528D00AB528D00AB528D00B66B9D0000000000000000007385DB00334C
      CC00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC00334C
      CC00334CCC007C8CDC0000000000000000000000000000000000A8C2850081A8
      4B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0081A8
      4B0081A84B00ACC58A000000000000000000AC6F3300D4B49200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C99E7400C99E7400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E1CBB300A5601C00BA74A200AB528D00AB528D00A442
      8200D4AAC600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C88D
      B400A4468400AB528D00AB528D00C68BB2000000000095A1E300334CCC00334C
      CC00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC00354ECC00334C
      CC00334CCC00334CCC009DA8E5000000000000000000BCD0A10081A84B0081A8
      4B0081A84B0081A84B00A6C18000AEC68B0081A84B0081A84B0081A84B0081A8
      4B0081A84B0081A84B00C1D4A80000000000C79D7500AA672800EEE1D400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B2773D00B2773D00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4EBE300B0723600B8824E00D2A4C200AB528D00AB528D00A545
      8500C58AB200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BA72
      A200A74A8700AB528D00AB528D00DFC0D400E3E6F600364ECB00334CCC00334C
      CC007586DC00FFFFFF003D55CE00334CCC00334CCC003E56CE00FFFFFF008594
      E000334CCC00334CCC003951CC0000000000EDF2E60082A84D0081A84B0081A8
      4B0081A84B00A6C18100FCFCFA00FDFDFC00ACC5880081A84B0081A84B0081A8
      4B0081A84B0081A84B0083A950000000000000000000B2773F00A35D1700A966
      2700C2926400E4D2BF00FFFFFF00D8BB9E00D8BB9E00FFFFFF00EBDDCF00C496
      6C00AC6C2E00A35D1600AA692B000000000000000000C48AB000AA528C00A74C
      8900B05F9600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A03E
      7E00AA518C00AA518C00CD9DBD000000000094A1E200334CCC00334CCC00344D
      CC00FFFFFF00FFFFFF00FFFFFF003D55CE003E56CE00FFFFFF00FFFFFF00FFFF
      FF00364FCC00334CCC00334CCC009BA7E400BBD09F0081A84B0081A84B0081A8
      4B00A8C28100FCFDFA00FFFFFF00FFFFFF00FDFDFC00ACC5890081A84B0081A8
      4B0081A84B0081A84B0081A84B00C0D3A7000000000000000000EDDFD100C79C
      7400A1581200EBDACC00E0CAB300A9662500A9652600DEC4AB00F6F1EB00A056
      0E00C1926500E7D4C2000000000000000000000000000000000000000000D5AC
      C7009D357900FBFBFC00E1C4D7009E397C00A3448300F7F0F300E2C7D900A03C
      7F00EBD8E4000000000000000000000000005D70D500334CCC00334CCC00334C
      CC004159CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004058
      CF00334CCC00334CCC00334CCC006577D7009AB86F0081A84B0081A84B00A8C2
      8200FCFDFB00FFFFFF00EDF2E500EFF3E800FFFFFF00FDFDFC00ADC5890081A8
      4B0081A84B0081A84B0081A84B009FBC76000000000000000000000000000000
      000000000000DEC6AE009E540A00DAC0A500DEC6AD00A0571100DCC3AC000000
      000000000000000000000000000000000000000000000000000000000000E1BB
      D400AA528C009A307700A5468500F9F5F800F1E7EE00972A7300A03B7E00AB53
      8D00000000000000000000000000000000004259CE00334CCC00334CCC00334C
      CC00334CCC004159CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004058CF00334C
      CC00334CCC00334CCC00334CCC004A60D00089AD580081A84B008BAE5900F9FB
      F600FFFFFF00EDF2E5008FB15E0090B26000EEF3E800FFFFFF00FDFDFC00ADC5
      8A0081A84B0081A84B0081A84B008EB15F000000000000000000000000000000
      000000000000A0561000E9D6C700FFFFFF00FFFFFF00EFE4D9009F560D000000
      000000000000000000000000000000000000000000000000000000000000DEB0
      CF00A94F8B00A13D7E00FFFFFF00FFFFFF00FFFFFF00FFFFFF009A2F7600A951
      8C00F1DFEB000000000000000000000000004158CE00334CCC00334CCC00334C
      CC00334CCC003E56CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D55CE00334C
      CC00334CCC00334CCC00334CCC00495FD00089AD570081A84B0081A84B00A6C1
      8100EAF0E1008FB15F0081A84B0081A84B0090B16000EEF3E800FFFFFF00FDFD
      FC00AEC68B0081A84B0081A84B008EB05E000000000000000000000000000000
      0000DABB9F00B47B4400FFFFFF00FFFFFF00FFFFFF00FFFFFF00BC8A5700D7B8
      990000000000000000000000000000000000000000000000000000000000DFB4
      D100A2408100D6AEC900FFFFFF00FFFFFF00FFFFFF00FFFFFF00C992B600A445
      8400F1DFEB000000000000000000000000005A6ED400334CCC00334CCC00334C
      CC003E56CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D55
      CE00334CCC00334CCC00334CCC006174D60098B76D0081A84B0081A84B0081A8
      4B0082A94D0081A84B0081A84B0081A84B0081A84B0090B16000EEF3E600FFFF
      FF00FDFEFD00ADC5890081A84B009DBA74000000000000000000000000000000
      0000B9804A00D5B59600FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC2AA00B47C
      450000000000000000000000000000000000000000000000000000000000E2BB
      D5009D377A00F7F1F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CEDE009F3C
      7F00F2E3ED000000000000000000000000008E9BE100334CCC00334CCC00344D
      CC00FFFFFF00FFFFFF00FFFFFF004158CF004158CF00FFFFFF00FFFFFF00FFFF
      FF00354DCC00334CCC00334CCC0095A3E300B8CE9B0081A84B0081A84B0081A8
      4B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B008FB16000EEF3
      E600F6F9F3009AB96E0081A84B00BDD1A2000000000000000000000000000000
      0000A6601C00E9D9C900FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE5DA00A45E
      190000000000000000000000000000000000000000000000000000000000E8C9
      DD009C357900FFFFFF00CB95BA00D6ACC800FFFFFF00FFFFFF00F7EFF5009E38
      7C0000000000000000000000000000000000DEE2F500344CCA00334CCC00334C
      CC007A8ADD00FFFFFF004158CF00334CCC00334CCC004158CF00FFFFFF008291
      DF00334CCC00334CCC00364ECB0000000000EAF0E10080A74B0081A84B0081A8
      4B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B008FB1
      5F009BB96F0081A84B0082A84D00000000000000000000000000000000000000
      0000AB662500B2763D00BF8F5F00D0AB8700E9D9C900FFFFFF00BD8B5800A763
      2100000000000000000000000000000000000000000000000000000000000000
      0000A9518B00A3448300A3418200A24181009B317700AB518D00A9528B00A94F
      8B0000000000000000000000000000000000000000008B99E100334CCC00334C
      CC00334CCC00354DCC00334CCC00334CCC00334CCC00334CCC00364ECC00334C
      CC00334CCC00334CCC0093A0E3000000000000000000B7CD990081A84B0081A8
      4B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0081A8
      4B0081A84B0081A84B00BCD0A000000000000000000000000000000000000000
      0000AD6E3000A9652400A7632100A6611E00A45E1800A7642200A7632000AB6A
      2C00000000000000000000000000000000000000000000000000000000000000
      0000AA518C00A9508B00AB528D00AB528D00AB538E00A94E8900A94E8B00A951
      8C00000000000000000000000000000000000000000000000000697AD800334C
      CC00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC00334C
      CC00334CCC006F81DA0000000000000000000000000000000000A1BE7A0081A8
      4B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0081A8
      4B0081A84B00A6C1800000000000000000000000000000000000000000000000
      0000D0AC8900AA672700AA672700AA672700AA672700A9662600AA672700CDA8
      8400000000000000000000000000000000000000000000000000000000000000
      0000C489B000AB528D00AB528D00AB528D00AB528D00AB528D00AB528D00E0C0
      D500000000000000000000000000000000000000000000000000000000008796
      E000334CCA00334CCC00334CCC00334CCC00334CCC00334CCC00334CCC00344C
      CA008D9CE100000000000000000000000000000000000000000000000000B4CB
      960080A74B0081A84B0081A84B0081A84B0081A84B0081A84B0081A84B0080A7
      4B00B8CD9B000000000000000000000000000000000000000000000000000000
      000000000000D4B49700B47A4300A9662700A8662600B3794100D3B191000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DAB5CD00B1619600AB528D00A9528C00B4679A00E8D2E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DADEF4008997E0005367D2003A52CC003B53CC005569D3008B99E100DDE2
      F500000000000000000000000000000000000000000000000000000000000000
      0000E8EEDE00B5CB960094B4670084AA510085AA520095B56800B7CD9900EAEF
      E20000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FFFF800100000000EFF7000000000000
      C7E300000000000083C1000000000000C183000000000000E007800100000000
      F00FE00700000000F81FF01F00000000F81FE00F00000000F00FE00700000000
      E007E00700000000C183E00F0000000083C1F00F00000000C7E3F00F00000000
      EFF7F00F00000000FFFFF81F000000008003F9FFFF80FF83800308C1FF80FF01
      800305A10080EE00800307110041E600800302090033E2008003010500010200
      8003008300418000800300430041C101800300260023E0838003001C001FF03F
      800300080003F80F800300010003FC07800300010003FE03800300010003FF03
      800380030003FF878003FFFFF87FFFCFFFBDFFBFFFBDFFBF7F187F1FFF18FF1F
      0081020FFF81FE0F07430C47FFC3FC47804384E3F043FCE3C081C311E081E311
      8018801880188008002D000D00240005000F000F000000020007000700000000
      0007000700000000000F000F80018001800F800FC003C003801F801FE007E007
      C03FC03FF00FF00FE07FE07FFE7FFE7F00008001F81FF81F00000000E007E007
      00000000C003C003000000008001800100000000000100018001800100000000
      C003E00700000000F81FE00F00000000F81FE00700000000F00FE00700000000
      F00FE00700000000F00FE00F00010001F00FF00F80018001F00FF00FC003C003
      F00FF00FE007E007F81FF81FF00FF00F00000000000000000000000000000000
      000000000000}
  end
  object LESSON_ATTENDANCE_SELID: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_SELID'
    Connection = dmDBCommon.UniDBConnection
    Left = 664
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'M_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'ATT_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptOutput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'L_NAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end>
    CommandStoredProcName = 'LESSON_ATTENDANCE_SELID'
    object LESSON_ATTENDANCE_SELIDID: TStringField
      FieldName = 'ID'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELIDATT_DATE: TDateField
      Alignment = taCenter
      FieldName = 'ATT_DATE'
    end
    object LESSON_ATTENDANCE_SELIDLEC_CODE: TStringField
      FieldName = 'LEC_CODE'
      Size = 17
    end
    object LESSON_ATTENDANCE_SELIDIN_TIME: TStringField
      Alignment = taCenter
      FieldName = 'IN_TIME'
      Size = 5
    end
    object LESSON_ATTENDANCE_SELIDL_NAME: TStringField
      Alignment = taCenter
      FieldName = 'L_NAME'
      Size = 30
    end
    object LESSON_ATTENDANCE_SELIDCNAME: TStringField
      FieldName = 'CNAME'
    end
    object LESSON_ATTENDANCE_SELIDIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
  end
  object d_LESSON_ATTENDANCE_SELID: TDataSource
    DataSet = LESSON_ATTENDANCE_SELID
    Left = 664
    Top = 480
  end
  object cxGridPopupMenu2: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 1112
    Top = 528
  end
end
