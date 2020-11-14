object fmMemberSelect: TfmMemberSelect
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896#49440#53469
  ClientHeight = 494
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 29
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 119
      Top = 8
      Width = 40
      Height = 15
      Caption = #54924#50896#47749':'
    end
    object Label2: TLabel
      Left = 9
      Top = 8
      Width = 28
      Height = 15
      Caption = #49468#53552':'
    end
    object btnSelect: TBitBtn
      Left = 304
      Top = 2
      Width = 63
      Height = 25
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
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnSelectClick
    end
    object btnCancel: TBitBtn
      Left = 366
      Top = 2
      Width = 65
      Height = 25
      Caption = #52712#49548
      Kind = bkCancel
      TabOrder = 3
    end
    object edtSearch: TEdit
      Left = 166
      Top = 4
      Width = 79
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
    object btnFilter: TBitBtn
      Left = 245
      Top = 2
      Width = 60
      Height = 25
      Hint = #44160#49353
      Caption = #44160#49353
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FAFAFA00EAEAEA00E9E9E900FFFFFF00FFFFFF00FFFFFF00F5F5
        F500E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
        E800E3E3E300BBBBBB007171710073737300E8E8E800FFFFFF00F5F5F500A5A5
        A500666666005959590059595900595959005959590059595900595959005959
        5900746867008E80A0006183A90059595900DEDEDE00FFFFFF008CBAD1001D82
        B5001B81B300187EB000167CAE001379AB001076A8000D73A5000B71A3003B79
        9E008E81A0004A8DDC00359CDE004E505100B1B1B100F7F7F7001F84B70045AA
        DD00D5F8FF007AD7FF006FD4FF006FD4FF006FD4FF006FD4FF007FC9ED009488
        A8004C8CD80052BBFF000B71A6002C5265007D7D7D00EDEDED002489BC002A8F
        C200D9FCFF00AFECFF0096C8D800CACCC100C5C7B600ADB9B80093A5B2005E93
        D00054BDFF0075DAFF00147AAC00105F87005E5E5E00E1E1E100288DC0002E93
        C60086CFF300CCC7C900F4EEE500FFFFEA00FFFFD900FFF5C300DCB5990090C5
        DA007FE6FF0085EBFF00379CCF001B81AB0052525200B7B7B7002A8FC2004CB1
        E4003C9FD100DAC8B200FFFFFC00FFFFF900FFFFE000FFF4C000FFE9B700B0CE
        CD0091F7FF0091F7FF0057BCEF00157BA70035515F00757575002D92C5006CD1
        FC002489BC00E3D2B200FFFFE600FFFFE800FFFFD900FFEDB800FFEDBE00D9D2
        BB0099FFFF0099FFFF0060C5F80047ACC800155E82004E4E4E002F94C7007BE0
        FF0046ABD500DEC5A500FFFFD000FFF9C900FFF4C200FFE9C200FFF7D100E8CF
        C300FFFFFF00FFFFFF0081E6FF0079DEE900066697005A5A5A003196C90085EB
        FF006FD4F200828B9400FCE8B600FFEDB600FFF0C000FFFFF700EBDCD100518F
        B4002489BC002085B8001C81B4001B81B300056B9D00DBE1E3003398CB0091F7
        FF008EF4FF0090EAF400B9BFB800EBCDAD00E6CCA900DDC5B800E8D9D900FFFF
        FF00FFFFFF00FFFFFF00167CAE0071717100E8E8E800FFFFFF003499CC00FFFF
        FF0099FFFF0099FFFF0099FFFF0099FFFF00FFFFFF00258ABD002287BA001F84
        B7001D82B5001B81B300187EB000E8E8E800FFFFFF00FFFFFF00FFFFFF003499
        CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF002A8FC200D0D0D000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF003499CC003398CB003196C9002F94C700E8E8E800FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnFilterClick
    end
    object btnAddNew: TBitBtn
      Left = 432
      Top = 2
      Width = 86
      Height = 25
      Caption = #49888#44508#46321#47197
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      TabOrder = 4
      OnClick = btnAddNewClick
    end
    object btnAddFavorite: TBitBtn
      Left = 551
      Top = 2
      Width = 32
      Height = 25
      Hint = #51600#44200#52286#44592#50640' '#52628#44032
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888880088888880088888090788870908888870900800907888888099707990
        8888888709999907888888870999990788888800999999900888807999999999
        7088000000999000000888888079708888888888870907888888888888090888
        8888888888707888888888888880888888888888888888888888}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnAddFavoriteClick
    end
    object btnMember: TBitBtn
      Left = 519
      Top = 2
      Width = 32
      Height = 25
      Hint = #54924#50896#49464#48512#51221#48372
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADA1ADADDADADADADA117ADA0DADAD0DA1111DAD0AD000DA111A
        11DAA00DA0ADA1ADA11DDA0A000ADADADA11A00DADA0ADADADA10000DAD0DADA
        DADA000DADAD0DADADAD000ADA00DADADADA00000DA0ADADADAD0000000A0ADA
        DADAA00000000DADADADDA00000ADADADADAADADADADADADADAD}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnMemberClick
    end
    object icbCenter: TcxImageComboBox
      Left = 41
      Top = 4
      Properties.Items = <>
      Properties.OnCloseUp = icbCenterPropertiesCloseUp
      TabOrder = 7
      Width = 72
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 29
    Width = 590
    Height = 465
    Align = alClient
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridMember: TcxGridDBTableView
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
      OnCellDblClick = gridMemberCellDblClick
      DataController.DataSource = dmDBCommon.dsCUSTOMER_SELECT_NAME
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridMemberUID: TcxGridDBColumn
        DataBinding.FieldName = 'UID'
        Visible = False
      end
      object gridMemberIS_ACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'C_NAME'
          end>
        Properties.ListSource = dmDBCommon.ds_REGISTED_CENTER_LOOK
        HeaderAlignmentHorz = taCenter
        Width = 51
      end
      object gridMemberCNAME: TcxGridDBColumn
        Caption = #54924#50896#47749
        DataBinding.FieldName = 'CNAME'
        Width = 88
      end
      object gridMemberSEX: TcxGridDBColumn
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
        Width = 39
      end
      object gridMemberCTEL: TcxGridDBColumn
        Caption = #51204#54868#48264#54840
        DataBinding.FieldName = 'CTEL'
        Width = 118
      end
      object gridMemberJOBKIND: TcxGridDBColumn
        Caption = #51649#50629
        DataBinding.FieldName = 'JOBKIND'
        Width = 110
      end
      object gridMemberREG_DATE: TcxGridDBColumn
        Caption = #46321#47197#51068#51088
        DataBinding.FieldName = 'REG_DATE'
        Width = 112
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridMember
    end
  end
  object CUSTOMER_BASIC_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_BASIC_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 184
    Top = 320
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
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SMS_YESNO'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_BASIC_INS'
  end
end
