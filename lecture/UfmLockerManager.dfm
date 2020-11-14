object fmLockerManager: TfmLockerManager
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #46973#52964#44288#47532
  ClientHeight = 499
  ClientWidth = 702
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 401
    Height = 499
    Align = alLeft
    TabOrder = 0
    LookAndFeel.SkinName = 'Black'
    object gridLocker: TcxGridDBTableView
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
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dmDBCommon.d_LOCKER_DATA_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      OptionsView.Indicator = True
      object gridLockerID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object gridLockerLOCKER_NO: TcxGridDBColumn
        Caption = #46973#52964#48264#54840
        DataBinding.FieldName = 'LOCKER_NO'
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object gridLockerLOCKER_STATUS: TcxGridDBColumn
        Caption = #49345#53468
        DataBinding.FieldName = 'LOCKER_STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Images = ImageList1
        Properties.Items = <
          item
            Description = #49324#50857#44032#45733
            ImageIndex = 0
            Value = 0
          end
          item
            Description = #49324#50857#51473
            ImageIndex = 1
            Value = 1
          end
          item
            Description = #44256#51109'('#48520#47049')'
            ImageIndex = 2
            Value = 2
          end>
        HeaderAlignmentHorz = taCenter
        Width = 97
      end
      object gridLockerLOCKER_USER: TcxGridDBColumn
        Caption = #49324#50857#51088
        DataBinding.FieldName = 'LOCKER_USER'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'UID'
        Properties.ListColumns = <
          item
            FieldName = 'CNAME'
          end>
        Properties.ListSource = dmDBCommon.d_CUSTOMER_SEL_LOOK
        Width = 79
      end
      object gridLockerBIGO: TcxGridDBColumn
        Caption = #48708#44256#49324#54637
        DataBinding.FieldName = 'BIGO'
        Width = 147
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridLocker
    end
  end
  object GroupBox1: TGroupBox
    Left = 408
    Top = 6
    Width = 281
    Height = 115
    Caption = #51068#44292#49373#49457
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 57
      Width = 52
      Height = 15
      Caption = #49884#51089#48264#54840':'
    end
    object Label2: TLabel
      Left = 32
      Top = 79
      Width = 52
      Height = 15
      Caption = #51333#47308#48264#54840':'
    end
    object Label5: TLabel
      Left = 32
      Top = 35
      Width = 52
      Height = 15
      Caption = #46973#52964#44536#47353':'
    end
    object Label6: TLabel
      Left = 153
      Top = 35
      Width = 70
      Height = 15
      Caption = '('#50508#54028#48307' 2'#51088')'
    end
    object edtStart: TEdit
      Left = 94
      Top = 54
      Width = 53
      Height = 23
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 1
      Text = '1'
    end
    object edtEnd: TEdit
      Left = 94
      Top = 76
      Width = 53
      Height = 23
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 2
      Text = '100'
    end
    object btnAddNo: TBitBtn
      Left = 183
      Top = 75
      Width = 65
      Height = 25
      Caption = #49373#49457
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      TabOrder = 3
      OnClick = btnAddNoClick
    end
    object edtPreStr: TEdit
      Left = 94
      Top = 32
      Width = 53
      Height = 23
      Alignment = taCenter
      MaxLength = 2
      TabOrder = 0
      Text = 'A'
    end
  end
  object GroupBox2: TGroupBox
    Left = 408
    Top = 131
    Width = 281
    Height = 89
    Caption = #49345#53468#48320#44221
    TabOrder = 2
    object Label3: TLabel
      Left = 32
      Top = 32
      Width = 52
      Height = 15
      Caption = #48320#44221#49345#53468':'
    end
    object Label4: TLabel
      Left = 32
      Top = 54
      Width = 52
      Height = 15
      Caption = #48708#44256#49324#54637':'
    end
    object edtStatus: TcxImageComboBox
      Left = 94
      Top = 27
      EditValue = 0
      Properties.Images = ImageList1
      Properties.Items = <
        item
          Description = #49324#50857#44032#45733
          ImageIndex = 0
          Value = 0
        end
        item
          Description = #49324#50857#51473
          ImageIndex = 1
          Value = 1
        end
        item
          Description = #44256#51109'('#48520#47049')'
          ImageIndex = 2
          Value = 2
        end>
      TabOrder = 0
      Width = 105
    end
    object btnEditStatus: TBitBtn
      Left = 201
      Top = 25
      Width = 65
      Height = 25
      Caption = #48320#44221
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
        0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
        BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
        DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
      TabOrder = 1
      OnClick = btnEditStatusClick
    end
    object edtBigo: TEdit
      Left = 94
      Top = 51
      Width = 171
      Height = 23
      TabOrder = 2
    end
  end
  object Button1: TButton
    Left = 591
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
  object GroupBox3: TGroupBox
    Left = 407
    Top = 226
    Width = 282
    Height = 56
    Caption = #49440#53469#49325#51228
    TabOrder = 4
    object Label7: TLabel
      Left = 18
      Top = 24
      Width = 144
      Height = 15
      Caption = #49325#51228#54624' '#46973#52964#47484' '#49440#53469#54616#49464#50836'.'
    end
    object btnDel: TBitBtn
      Left = 183
      Top = 19
      Width = 65
      Height = 25
      Caption = #49325#51228
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888898888898888888888888899988888889888889998888889
        8888888999888899888888889998899888888888899999888888888888999888
        8888888889999988888888889998898888888899998888998888899998888889
        9888899888888888998888888888888888888888888888888888}
      TabOrder = 0
      OnClick = btnDelClick
    end
  end
  object LOCKER_DATA_INS: TUniStoredProc
    StoredProcName = 'LOCKER_DATA_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 296
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'LOCKER_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'LOCKER_USER'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'LOCKER_GROUP'
        ParamType = ptInput
        Size = 2
      end>
    CommandStoredProcName = 'LOCKER_DATA_INS'
  end
  object LOCKER_DATA_STATUS_UPD: TUniStoredProc
    StoredProcName = 'LOCKER_DATA_STATUS_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 296
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'LOCKER_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptInput
        Size = 20
      end>
    CommandStoredProcName = 'LOCKER_DATA_STATUS_UPD'
  end
  object ImageList1: TImageList
    Left = 72
    Top = 112
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0D2A50092B26200759E
      380092B26200C0D2A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1B08E00BF8F
      6100B57D4600B0743900BE8E5E0000000000A1BC7900759E3800759E3800759E
      3800759E3800759E3800A1BC7900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEC3A900AE703400AF713400AF71
      3400AF713400AF713400EDE1D400C0D2A500759E3800759E3800FFFFFF00B2C9
      8F00759E3800759E3800759E3800C0D2A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2733400AE703400AF713400AF71
      3400AF713400AF7134000000000092B26200759E3800FFFFFF00FFFFFF00FFFF
      FF00B2C98F00759E3800759E380092B262000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3773B00AE703400AF713400AF71
      3400AF713400AF71340000000000759E3800FFFFFF00FFFFFF00B2C98F00FFFF
      FF00FFFFFF00B2C98F00759E3800759E38000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3AF8B00AE703300AF713400AF71
      3400AF713400AE7135000000000092B26200759E3800B2C98F00759E3800759E
      3800FFFFFF00FFFFFF00B2C98F0092B262000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AE703300AF713400AF71
      3400AF7134000000000000000000C0D2A500759E3800759E3800759E3800759E
      3800759E3800FFFFFF00759E3800C0D2A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2E9E100AE703400AF71
      340000000000000000000000000000000000A1BC7900759E3800759E3800759E
      3800759E3800759E3800A1BC7900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4B59600C8976800EADBCC0000000000C0D2A50092B26200759E
      380092B26200C0D2A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AE703400AF713400AE703300AF713400BE8D5D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AE71
      3600AF713400AF713400AF713400AF713400AF713400AE703300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD70
      3300AF713400AF713400AF713400AF713400AF713400AE703300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD70
      3300AF713400AF713400AF713400AF713400AF713400AE703300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AD6F
      3300AF713400AF713400AF713400AF713400AF713400AE703300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4ED
      E500AE703300AF713400AF713400AF713400AF713400EADCD000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C79D7400B9855100C59A70000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E9005BB2E9005AB1E90057B0E70057B0E7005BB2
      E9005BB2E9005BB2E9005BB2E90060B3E8000000000000000000056805000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000000000000000000000000000000000000000000000
      00000000000093A1E300596ED4003B53CD003A51CD005669D3008B99E100E2E4
      F6000000000000000000000000000000000000000000000000005EB3E9005BB2
      E9005BB2E9005BB2E9005AB1E90058B0E70058B0E7005BB2E9005BB2E9005BB2
      E9005BB2E9005BB2E90000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E9005AB1E9005AB1E70084C4ED0083C5ED0057B0
      E7005BB2E9005BB2E9005BB2E9005CB1E7000000000000000000006500000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000000000000000000000000000000000000000009AA7
      E4002C45C9002540C9002540C9002540C9002540C9002540C9002540C9002842
      C8008A9AE10000000000000000000000000000000000000000005BB1E9005BB2
      E9005BB2E9005AB1E9005AB1E70075BEEC0074BDEC0058B0E7005BB2E9005BB2
      E9005BB2E9005BB2E90000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E9005AB1E90051ADE600FFFFFF00FFFFFF004EAB
      E6005BB2E9005BB2E9005BB2E9005CB2E7000000000000000000006500000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000000000000000000000000000000000007B8ADD002540
      C9002540C9002540C9002D47C9005A6ED500697BD8004C62D100243FC7002540
      C9002540C9006678D800000000000000000000000000000000005BB1E9005BB2
      E9005BB2E9005AB1E7005AB1E700FFFFFF00FFFFFF0050ADE6005AB1E9005BB2
      E9005BB2E9005BB2E90000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E9005BB2E9004FADE600EFF6FC00E4F2FB0050AD
      E6005BB2E9005BB2E9005BB2E9005CB2E7000000000000000000006500000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000000000000000000000000000A2ADE6002540C9002540
      C9002540C9005D71D50000000000000000000000000000000000D8DBF3005368
      D3002540C9002540C9008A98E0000000000000000000000000005BB1E9005BB2
      E9005BB2E9005BB2E9004EABE600F8FCFD00EAF4FC004FADE6005BB2E9005BB2
      E9005BB2E9005BB2E90000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E9005BB2E9004FADE600CDE6F800C1E2F60051AD
      E6005BB2E9005BB2E9005BB2E9005CB2E7000000000000000000006500000066
      0000006600000066000000660000006600000066000000660000006600000066
      00000066000000660000000000000000000000000000304ACA002540C9002540
      C9002540C900253FC700A5B0E700000000000000000000000000000000000000
      00005469D3002540C9002842C800E1E5F60000000000000000005BB1E9005BB2
      E9005BB2E9005BB2E9004FADE600D2E9F800C4E3F60050ADE6005BB2E9005BB2
      E9005BB2E9005BB2E90000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E90059B1E70066B6E900FFFFFF00FFFFFF005DB2
      E7005AB1E7005BB2E9005BB2E9005CB2E7000000000000000000006500000066
      0000006600000066000000660000006600000066000000660000006600000066
      000000660000006600000000000000000000A2AEE7002540C9002540C9006578
      D7002B45C9002540C900253FC700A5B0E7000000000000000000000000000000
      0000DBE0F5002641C7002540C9008B99E10000000000000000005BB1E9005BB2
      E9005BB2E90059B1E70069B8E900FFFFFF00FFFFFE005DB2E7005AB1E7005BB2
      E9005BB2E9005BB2E90000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E90059B1E70066B6E900FFFFFF00FFFFFF005CB2
      E7005AB1E7005BB2E9005BB2E9005CB2E7000000000000000000006500000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000000000000000006B7DD9002540C9002641C7000000
      0000C1CAEE002B45C9002540C900253FC700A5B0E70000000000000000000000
      000000000000586CD4002540C9005469D30000000000000000005BB1E9005BB2
      E9005BB2E90058B0E70073BDEB00FFFFFF00FFFFFF0066B6E90059B1E7005BB2
      E9005BB2E9005BB2E90000000000000000000000000000000000000000000000
      00005BB2E9005BB2E9005BB2E9005BB2E90057B0E7006DBAEB0069B8E90058B0
      E7005BB2E9005BB2E9005BB2E9005CB2E7000000000000000000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000006600000066000000000000000000005166D2002540C900465DD0000000
      000000000000C1CAEE002B45C9002540C900253FC700A5B0E700000000000000
      0000000000008191DE002540C9003A51CD0000000000000000005CB3EB005BB2
      E9005BB2E9005BB2E90055AFE70081C3ED0079BFEC0056B0E7005BB2E9005BB2
      E9005BB2E9005BB2E9000000000000000000DDF0FC00E3F2FD00000000000000
      00005BB2E9005BB2E9005BB2E9005BB2E9005BB2E90059B1E70059B1E7005BB2
      E9005BB2E9005BB2E9005BB2E9005BB2E9000000000000000000006600000066
      0000006600000066000000660000006600000066000000660000006600000066
      0000026602000066000000000000000000005268D3002540C9004F65D2000000
      00000000000000000000C1CAEE002B45C9002540C900253FC700A5B0E7000000
      0000000000007F8DDD002540C9003A53CD0000000000000000005CB3EB005BB2
      E9005BB2E9005BB2E9005BB2E90057B0E70058B0E7005BB2E9005BB2E9005BB2
      E9005BB1E7005BB2E90000000000000000005BB2E90082C5EF00000000000000
      00000000000000000000000000000000000077BEEB005BB2E900000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      00003F8A3F000000000000000000000000000000000000000000000000003C8A
      3C00006600000000000000000000000000006F82DA002540C900314ACA000000
      0000000000000000000000000000C1CAEE002B45C9002540C900253FC700A5B0
      E700000000005268D3002540C900586CD4000000000000000000000000005BB2
      E90082C3ED0000000000000000000000000000000000000000000000000080C2
      EC005BB2E9000000000000000000000000005BB2E90089C8F000000000000000
      00000000000000000000000000000000000078C1EE005BB2E900000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      00003A873A000000000000000000000000000000000000000000000000003886
      380000660000000000000000000000000000ABB6E9002540C9002540C900B4BD
      EB0000000000000000000000000000000000C1CAEE002B45C9002540C900253F
      C7008292DF00243FC7002540C90093A1E3000000000000000000000000005BB2
      E90080C4EF000000000000000000000000000000000000000000000000007FC4
      F1005BB2E9000000000000000000000000005BB2E90083C4ED00000000000000
      00000000000000000000000000000000000071BBEA005BB2E900000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      0000338333000000000000000000000000000000000000000000000000003182
      310000660000000000000000000000000000000000003950CC002540C9003A51
      CD000000000000000000000000000000000000000000C1CAEE002B45C9002540
      C9002540C9002540C9002C45C900000000000000000000000000000000005BB2
      E9007AC0EA0000000000000000000000000000000000000000000000000079C0
      EC005BB2E90000000000000000000000000065B6E8005BB2E900000000000000
      0000000000000000000000000000000000005BB2E9006BB8E900000000000000
      0000000000000000000000000000000000000000000000000000000000000F6E
      0F00006600000000000000000000000000000000000000000000000000000066
      00000D6D0D0000000000000000000000000000000000B3BCEA00243FC7002540
      C9003A51CD00B9C2EC0000000000000000000000000000000000909CE2002540
      C9002540C9002540C9009AA7E4000000000000000000000000000000000063B5
      E8005BB2E9000000000000000000000000000000000000000000000000005BB2
      E90062B4E800000000000000000000000000B9DDF4005BB2E90071BBEA000000
      000000000000000000000000000068B6E8005BB2E900C2E1F600000000000000
      00000000000000000000000000000000000000000000000000000000000096BF
      9600006600001C761C00000000000000000000000000000000001E771E000066
      000093BD93000000000000000000000000000000000000000000919FE200243F
      C7002540C9002540C9003B53CD006678D800697BD8004159CE002540C9002540
      C9002540C9007B8CDD000000000000000000000000000000000000000000BBDF
      F6005BB2E9006CB9EA00000000000000000000000000000000006DB9E9005BB2
      E900B9DDF4000000000000000000000000000000000088C6ED005BB2E9005BB2
      E90077BEEB0076BDEB005BB2E9005BB2E90093CBEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004E934E000066000000660000338333003584350000660000006600004890
      480000000000000000000000000000000000000000000000000000000000B3BC
      EB003750CC002540C9002540C9002540C9002540C9002540C9002540C900304A
      CA00A2AEE7000000000000000000000000000000000000000000000000000000
      00008CC8EE005BB2E9005BB2E9007AC0EA007CC1EB005BB2E9005BB2E90088C6
      ED00000000000000000000000000000000000000000000000000C9E5F6007CC0
      EB005BB2E9005BB2E9007EC1EC00CEE7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACCCAC003082300000660000006600002C7F2C00A6C8A6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABB6E9007183DA005368D3005266D2006D7FD900A5B0E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8E4F6007ABFEB005BB2E9005BB2E90076BEEB00C4E2F5000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FF83000000000000C101000000000000
      0000000000000000020000000000000002000000000000000200000000000000
      86000000000000008F01000000000000F883000000000000F07F000000000000
      E03F000000000000E03F000000000000E03F000000000000E03F000000000000
      E03F000000000000F8FF000000000000F000C003F80FC003F000C003E007C003
      F000C003C003C003F000C00383C1C003F000C00381F0C003F000C00300F0C003
      F000C0031078C003F000C0031838C0033000C0031C18C0033F3FE7E71E08E7E7
      3F3FE7E70F00E7E73F3FE7E78F81E7E73F3FE7E783C1E7E71E3FE3C7C003E3C7
      807FF00FE007F00FC0FFF81FF81FF81F00000000000000000000000000000000
      000000000000}
  end
  object LOCKER_DATA_UPD: TUniStoredProc
    StoredProcName = 'LOCKER_DATA_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 296
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftSmallint
        Name = 'LOCKER_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'LOCKER_USER'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'BIGO'
        ParamType = ptInput
        Size = 20
      end>
    CommandStoredProcName = 'LOCKER_DATA_UPD'
  end
  object LOCKER_DATA_DEL: TUniStoredProc
    StoredProcName = 'LOCKER_DATA_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 456
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LOCKER_DATA_DEL'
  end
end
