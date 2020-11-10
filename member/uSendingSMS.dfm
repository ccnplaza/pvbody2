object fmSendingSMS: TfmSendingSMS
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #47928#51088#51204#49569
  ClientHeight = 597
  ClientWidth = 984
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 276
    Height = 597
    Align = alLeft
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 274
      Height = 584
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label5: TLabel
        Left = 16
        Top = 11
        Width = 52
        Height = 13
        Caption = #51204#49569#45236#50857
      end
      object Label4: TLabel
        Left = 8
        Top = 40
        Width = 68
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'SMS('#45800#47928')'
      end
      object Label6: TLabel
        Left = 13
        Top = 56
        Width = 55
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '90 '#48148#51060#53944
      end
      object lblBytes: TLabel
        Left = 16
        Top = 102
        Width = 55
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '0/90'
      end
      object Label11: TLabel
        Left = 16
        Top = 163
        Width = 52
        Height = 13
        Caption = #49569#49888#48264#54840
      end
      object Label2: TLabel
        Left = 33
        Top = 185
        Width = 211
        Height = 78
        Caption = 
          'SMS('#45800#47928') : 90'#48148#51060#53944' '#44620#51648' '#51077#45768#45796'. '#13#10'90'#48148#51060#53944#44032' '#45336#50612#44032#47732' '#51088#46041#51004#47196' '#13#10'LMS('#51109#47928')'#51004#47196' '#51204#49569' '#46121#45768#45796'. '#13 +
          #10#44033' '#49436#48708#49828' '#51333#47448#50640' '#46384#46972' '#48708#50857#51060' '#13#10#45796#47476#44172' '#52293#51221#46120#51012' '#51452#51032#54616#49464#50836'. '#13#10' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 117
        Width = 55
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = #48148#51060#53944
      end
      object Memo1: TMemo
        Left = 77
        Top = 8
        Width = 151
        Height = 151
        Color = clCream
        ImeMode = imSHanguel
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
        OnChange = Memo1Change
      end
      object GroupBox1: TGroupBox
        Left = 5
        Top = 260
        Width = 261
        Height = 112
        Caption = #49324#50857#51088' '#51221#48372
        TabOrder = 1
        object Label3: TLabel
          Left = 39
          Top = 21
          Width = 47
          Height = 13
          Caption = #54924#49324#47749':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCorpName: TLabel
          Left = 92
          Top = 21
          Width = 42
          Height = 13
          Caption = #54924#49324#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 11
          Top = 40
          Width = 75
          Height = 13
          Caption = #49324#50629#51088#48264#54840':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCorpID: TLabel
          Left = 92
          Top = 40
          Width = 70
          Height = 13
          Caption = #49324#50629#51088#48264#54840
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 25
          Top = 59
          Width = 61
          Height = 13
          Caption = #45812#45817#51088#47749':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUserName: TLabel
          Left = 92
          Top = 59
          Width = 56
          Height = 13
          Caption = #45812#45817#51088#47749
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 11
          Top = 87
          Width = 75
          Height = 13
          Caption = #51092#50668#54252#51064#53944':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblRestPoint: TLabel
          Left = 92
          Top = 87
          Width = 42
          Height = 13
          Caption = #54252#51064#53944
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 5
        Top = 378
        Width = 261
        Height = 199
        Caption = #49569#49888#48264#54840
        TabOrder = 2
        object btnAdd: TBitBtn
          Left = 19
          Top = 16
          Width = 59
          Height = 25
          Caption = #46321#47197
          TabOrder = 0
          OnClick = btnAddClick
        end
        object btnEdit: TBitBtn
          Left = 77
          Top = 16
          Width = 59
          Height = 25
          Caption = #49688#51221
          TabOrder = 1
          OnClick = btnEditClick
        end
        object btnDel: TBitBtn
          Left = 136
          Top = 16
          Width = 59
          Height = 25
          Caption = #49325#51228
          TabOrder = 2
          OnClick = btnDelClick
        end
        object cxGrid2: TcxGrid
          Left = 4
          Top = 43
          Width = 253
          Height = 149
          TabOrder = 3
          LookAndFeel.SkinName = 'Black'
          object gridSender: TcxGridDBTableView
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
            DataController.DataSource = ds_SMS_SENDER_TEL_SEL
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
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.GroupByHeaderLayout = ghlHorizontal
            OptionsView.Indicator = True
            object gridSenderID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Width = 33
            end
            object gridSenderCENTER_NAME: TcxGridDBColumn
              Caption = #49468#53552#47749
              DataBinding.FieldName = 'CENTER_NAME'
              Width = 85
            end
            object gridSenderTEL_NO: TcxGridDBColumn
              Caption = #49569#49888#48264#54840
              DataBinding.FieldName = 'TEL_NO'
              Width = 121
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = gridSender
          end
        end
      end
      object edtSender: TcxLookupComboBox
        Left = 77
        Top = 160
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'TEL_NO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_SMS_SENDER_TEL_LOOK
        EditValue = '1'
        TabOrder = 3
        Width = 151
      end
    end
  end
  object Panel1: TPanel
    Left = 276
    Top = 0
    Width = 708
    Height = 597
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 28
      Width = 706
      Height = 568
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'DevExpressStyle'
      object gridSMS: TcxGridDBTableView
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
        Navigator.Buttons.Filter.Visible = True
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellDblClick = gridSMSCellDblClick
        DataController.DataSource = dSMS
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridSMSRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gridSMSid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object gridSMScheck_send: TcxGridDBColumn
          DataBinding.FieldName = 'check_send'
          HeaderAlignmentHorz = taCenter
          Width = 41
        end
        object gridSMScname: TcxGridDBColumn
          DataBinding.FieldName = 'cname'
          Options.Editing = False
          Options.Focusing = False
          Width = 110
        end
        object gridSMSctel: TcxGridDBColumn
          DataBinding.FieldName = 'ctel'
          Options.Editing = False
          Options.Focusing = False
          Width = 175
        end
        object gridSMSsex: TcxGridDBColumn
          Caption = #45224'/'#50668
          DataBinding.FieldName = 'sex'
        end
        object gridSMSjob: TcxGridDBColumn
          Caption = #51649#50629
          DataBinding.FieldName = 'job'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridSMS
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 706
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label8: TLabel
        Left = 422
        Top = 7
        Width = 182
        Height = 13
        Caption = '1'#54924' '#52572#45824' 999'#44148' '#44620#51648#47564' '#51204#49569' '#46120'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
      end
      object btnSelectAll: TBitBtn
        Left = 9
        Top = 1
        Width = 92
        Height = 25
        Caption = #51204#52404#49440#53469
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0A0A0A0A
          DADAADADADADAD00ADADDADA0000000B0ADAADAD0FFFFF0B0DADDADA0F99990B
          B0DAADAD0FFFFFF0B0ADDADA0F999990BB0AADAD0FFFFFFF0000DAD4FF99999F
          0110AD444FFFFFFF000DD44447F99F0007DA444D44FFFF0F0DAD74DAD44FFF00
          DADAADADAD47F00DADADDADADAD4DADADADAADADADAD4DADADAD}
        TabOrder = 0
        OnClick = btnSelectAllClick
      end
      object btnDeselect: TBitBtn
        Left = 100
        Top = 1
        Width = 92
        Height = 25
        Caption = #51204#52404#54644#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA0A0A0A0A
          DADAADADADADAD00ADADDADA0000000B0ADAADAD0FFFFF0B0DADDADA0F99990B
          B0DAADAD0FFFFFF0B0ADDADA0F999990BB0AA1AD0FFFFFFF0000D11A0F99199F
          0110A717FF717FFF000DDA117711FF0007DAAD71111FFF0F0DADDA7111FFFF00
          DADAA711117F000DADADD117D117DADADADAADADAD117DADADAD}
        TabOrder = 1
        OnClick = btnDeselectClick
      end
      object BitBtn2: TBitBtn
        Left = 198
        Top = 1
        Width = 67
        Height = 25
        Caption = #52628#44032
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object btnSMSSend: TBitBtn
        Left = 341
        Top = 1
        Width = 77
        Height = 25
        Caption = #51204#49569
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADAD0DADA
          DADAADADAD00ADADADADDADAD0E00000DADAADAD0EEEEEE0ADADDAD70EEEEEE0
          DADAAD04C0E00000ADADD0CCC200C40ADADA74CCC2202C470DAD7CCCC22226C7
          00DA7CC2222200000E0D7C2222240EEEEEE07C8224220EEEEEE077CF8CCC0000
          0E0AA7F8F222220D00ADDA77682220DA0ADAADA777777DADADAD}
        TabOrder = 3
        OnClick = btnSMSSendClick
      end
      object BitBtn1: TBitBtn
        Left = 620
        Top = 1
        Width = 77
        Height = 25
        Caption = #51333#47308
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
          DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
          DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
          0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
        ModalResult = 1
        TabOrder = 4
      end
      object BitBtn3: TBitBtn
        Left = 264
        Top = 1
        Width = 67
        Height = 25
        Caption = #49325#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        TabOrder = 5
        OnClick = BitBtn3Click
      end
    end
  end
  object mdSMS: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 456
    Top = 424
    object mdSMSid: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object mdSMScheck_send: TBooleanField
      Alignment = taCenter
      DisplayLabel = #9733
      FieldName = 'check_send'
    end
    object mdSMScname: TStringField
      DisplayLabel = #49457#47749
      FieldName = 'cname'
      Size = 30
    end
    object mdSMSctel: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'ctel'
      Size = 30
    end
    object mdSMSsex: TStringField
      Alignment = taCenter
      FieldName = 'sex'
      Size = 10
    end
    object mdSMSjob: TStringField
      FieldName = 'job'
    end
  end
  object dSMS: TDataSource
    DataSet = mdSMS
    Left = 456
    Top = 472
  end
  object SMS_USER_SEL: TUniStoredProc
    StoredProcName = 'SMS_USER_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 328
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CERTKEY'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COPRNUM'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CORPNAME'
        ParamType = ptOutput
        Size = 70
      end
      item
        DataType = ftString
        Name = 'CEONAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BIZTYPE'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'BIZCLASS'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'POSTNUM'
        ParamType = ptOutput
        Size = 9
      end
      item
        DataType = ftString
        Name = 'ADDR1'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftString
        Name = 'ADDR2'
        ParamType = ptOutput
        Size = 200
      end
      item
        DataType = ftString
        Name = 'MEMBERNAME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'PWD'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'EMAIL'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'MASTER_TEL'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_USER_SEL'
    object SMS_USER_SELUID: TIntegerField
      FieldName = 'UID'
    end
    object SMS_USER_SELCERTKEY: TStringField
      FieldName = 'CERTKEY'
      Size = 50
    end
    object SMS_USER_SELCOPRNUM: TStringField
      FieldName = 'COPRNUM'
      Size = 10
    end
    object SMS_USER_SELCORPNAME: TStringField
      FieldName = 'CORPNAME'
      Size = 70
    end
    object SMS_USER_SELCEONAME: TStringField
      FieldName = 'CEONAME'
      Size = 30
    end
    object SMS_USER_SELBIZTYPE: TStringField
      FieldName = 'BIZTYPE'
      Size = 40
    end
    object SMS_USER_SELBIZCLASS: TStringField
      FieldName = 'BIZCLASS'
      Size = 40
    end
    object SMS_USER_SELPOSTNUM: TStringField
      FieldName = 'POSTNUM'
      Size = 9
    end
    object SMS_USER_SELADDR1: TStringField
      FieldName = 'ADDR1'
      Size = 200
    end
    object SMS_USER_SELADDR2: TStringField
      FieldName = 'ADDR2'
      Size = 200
    end
    object SMS_USER_SELMEMBERNAME: TStringField
      FieldName = 'MEMBERNAME'
      Size = 30
    end
    object SMS_USER_SELID: TStringField
      FieldName = 'ID'
    end
    object SMS_USER_SELPWD: TStringField
      FieldName = 'PWD'
    end
    object SMS_USER_SELTEL: TStringField
      FieldName = 'TEL'
    end
    object SMS_USER_SELEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object SMS_USER_SELMASTER_TEL: TStringField
      FieldName = 'MASTER_TEL'
    end
  end
  object ds_SMS_USER_SEL: TDataSource
    DataSet = SMS_USER_SEL
    Left = 328
    Top = 344
  end
  object SMS_SENDER_TEL_SEL: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 328
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CENTER_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_SEL'
    object SMS_SENDER_TEL_SELID: TIntegerField
      FieldName = 'ID'
    end
    object SMS_SENDER_TEL_SELCENTER_NAME: TStringField
      FieldName = 'CENTER_NAME'
    end
    object SMS_SENDER_TEL_SELTEL_NO: TStringField
      FieldName = 'TEL_NO'
    end
  end
  object SMS_SENDER_TEL_INS: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 328
    Top = 488
    ParamData = <
      item
        DataType = ftString
        Name = 'CENTER_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptInput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_INS'
  end
  object SMS_SENDER_TEL_UPD: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 328
    Top = 536
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CENTER_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptInput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_UPD'
  end
  object ds_SMS_SENDER_TEL_SEL: TDataSource
    DataSet = SMS_SENDER_TEL_SEL
    Left = 328
    Top = 440
  end
  object SMS_SENDER_TEL_DEL: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 496
    Top = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_DEL'
  end
  object SMS_SENDER_TEL_LOOK: TUniStoredProc
    StoredProcName = 'SMS_SENDER_TEL_LOOK'
    Connection = dmDBCommon.UniDBConnection
    Left = 480
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'TEL_NO'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'SMS_SENDER_TEL_LOOK'
    object SMS_SENDER_TEL_LOOKID: TIntegerField
      FieldName = 'ID'
    end
    object SMS_SENDER_TEL_LOOKTEL_NO: TStringField
      FieldName = 'TEL_NO'
    end
  end
  object ds_SMS_SENDER_TEL_LOOK: TDataSource
    DataSet = SMS_SENDER_TEL_LOOK
    Left = 480
    Top = 344
  end
end
