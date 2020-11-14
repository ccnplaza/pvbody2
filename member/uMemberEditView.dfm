object fmMemberEditView: TfmMemberEditView
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896#51221#48372
  ClientHeight = 531
  ClientWidth = 560
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
  object Panel4: TPanel
    Left = 282
    Top = 40
    Width = 120
    Height = 28
    TabOrder = 1
    object CNAME: TEdit
      Left = 4
      Top = 2
      Width = 112
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 84
    Top = 40
    Width = 120
    Height = 28
    TabOrder = 0
    object REG_DATE: TcxDateEdit
      Left = 4
      Top = 2
      Properties.DateOnError = deNull
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseNullString = True
      TabOrder = 0
      Width = 112
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 76
    Height = 28
    Caption = #46321#47197#51068#51088
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 18
  end
  object Panel2: TPanel
    Left = 204
    Top = 40
    Width = 78
    Height = 28
    Caption = #49457#47749
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 19
  end
  object Panel5: TPanel
    Left = 8
    Top = 68
    Width = 76
    Height = 28
    Caption = #45208#51060
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 20
  end
  object Panel6: TPanel
    Left = 84
    Top = 68
    Width = 120
    Height = 28
    TabOrder = 2
    object Label3: TLabel
      Left = 52
      Top = 5
      Width = 12
      Height = 15
      Caption = #49464
    end
    object edtAge: TEdit
      Left = 4
      Top = 2
      Width = 44
      Height = 23
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel7: TPanel
    Left = 204
    Top = 68
    Width = 78
    Height = 28
    Caption = #49457#48324
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 21
  end
  object Panel8: TPanel
    Left = 282
    Top = 68
    Width = 120
    Height = 28
    TabOrder = 3
    object SEX: TcxImageComboBox
      Left = 4
      Top = 2
      EditValue = #50668
      Properties.Items = <
        item
          Description = #50668#51088
          ImageIndex = 0
          Value = #50668
        end
        item
          Description = #45224#51088
          Value = #45224
        end>
      TabOrder = 0
      Width = 90
    end
  end
  object Panel9: TPanel
    Left = 8
    Top = 180
    Width = 76
    Height = 28
    Caption = #54792#50517
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 22
  end
  object Panel10: TPanel
    Left = 84
    Top = 180
    Width = 120
    Height = 28
    TabOrder = 8
    object BLOOD_PRESSURE: TcxImageComboBox
      Left = 4
      Top = 2
      EditValue = ''
      Properties.Items = <
        item
          Description = #45458#51020
          ImageIndex = 0
          Value = #45458#51020
        end
        item
          Description = #48372#53685
          Value = #48372#53685
        end
        item
          Description = #45230#51020
          Value = #45230#51020
        end>
      TabOrder = 0
      Width = 105
    end
  end
  object Panel17: TPanel
    Left = 8
    Top = 124
    Width = 76
    Height = 28
    Caption = #51204#54868#48264#54840
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 23
  end
  object Panel18: TPanel
    Left = 84
    Top = 124
    Width = 318
    Height = 28
    TabOrder = 6
    object CTEL: TEdit
      Left = 4
      Top = 2
      Width = 310
      Height = 23
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel21: TPanel
    Left = 8
    Top = 152
    Width = 76
    Height = 28
    Caption = #51060#47700#51068
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 24
  end
  object Panel22: TPanel
    Left = 84
    Top = 152
    Width = 318
    Height = 28
    TabOrder = 7
    object CEMAIL: TEdit
      Left = 4
      Top = 2
      Width = 310
      Height = 23
      ImeMode = imSAlpha
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel23: TPanel
    Left = 84
    Top = 208
    Width = 318
    Height = 28
    TabOrder = 10
    object CBIGO: TEdit
      Left = 4
      Top = 2
      Width = 310
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel24: TPanel
    Left = 8
    Top = 208
    Width = 76
    Height = 28
    Caption = #48708#44256#49324#54637
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 25
  end
  object BitBtn2: TBitBtn
    Left = 285
    Top = 499
    Width = 75
    Height = 25
    Caption = #45803#44592
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAADADADADADADA0ADDAD0DADADADADADAAD000DADADAD0DADDA000ADADAD0
      DADAADA000ADAD00ADADDADA000AD00ADADAADADA00000ADADADDADADA000ADA
      DADAADADA00000ADADADDADA000AD0DADADAAD0000ADAD00ADADD0000ADADAD0
      0ADAA00DADADADAD00ADDADADADADADADADAADADADADADADADAD}
    ModalResult = 2
    TabOrder = 17
  end
  object Panel25: TPanel
    Left = 8
    Top = 96
    Width = 76
    Height = 28
    Caption = #51649#50629
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 26
  end
  object Panel27: TPanel
    Left = 84
    Top = 96
    Width = 120
    Height = 28
    TabOrder = 4
    object JOBKIND: TEdit
      Left = 4
      Top = 2
      Width = 112
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel11: TPanel
    Left = 402
    Top = 40
    Width = 149
    Height = 196
    TabOrder = 27
    object Panel12: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 141
      Height = 158
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object ImageEnView1: TImageEnView
        Left = 1
        Top = 1
        Width = 139
        Height = 156
        Background = clBtnFace
        AutoStretch = True
        AutoShrink = True
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Panel26: TPanel
    Left = 204
    Top = 96
    Width = 78
    Height = 28
    Caption = #52712#48120
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 28
  end
  object Panel28: TPanel
    Left = 282
    Top = 96
    Width = 120
    Height = 28
    TabOrder = 5
    object HOBBY: TEdit
      Left = 4
      Top = 2
      Width = 112
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel29: TPanel
    Left = 204
    Top = 180
    Width = 78
    Height = 28
    Caption = #54792#50529#54805
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 29
  end
  object Panel30: TPanel
    Left = 282
    Top = 180
    Width = 120
    Height = 28
    TabOrder = 9
    object BLOOD: TEdit
      Left = 4
      Top = 2
      Width = 44
      Height = 23
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
  end
  object Panel31: TPanel
    Left = 8
    Top = 236
    Width = 76
    Height = 28
    Caption = #49688#47144#44221#47196
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 30
  end
  object Panel32: TPanel
    Left = 84
    Top = 236
    Width = 467
    Height = 28
    TabOrder = 11
    object Label1: TLabel
      Left = 121
      Top = 5
      Width = 52
      Height = 15
      Caption = #44592#53440#54637#47785':'
    end
    object Label4: TLabel
      Left = 351
      Top = 6
      Width = 62
      Height = 15
      Caption = '('#54620#44544'15'#51088')'
    end
    object HOW_TO_COME: TcxImageComboBox
      Left = 4
      Top = 2
      EditValue = ''
      Properties.Items = <
        item
          Description = #51648#51064#49548#44060
          ImageIndex = 0
          Value = #51648#51064#49548#44060
        end
        item
          Description = #44036#54032
          Value = #44036#54032
        end
        item
          Description = #54788#49688#47561
          Value = #54788#49688#47561
        end
        item
          Description = #51204#45800
          Value = #51204#45800
        end
        item
          Description = #51064#53552#45367
          Value = #51064#53552#45367
        end
        item
          Description = #44592#53440
          Value = #44592#53440
        end>
      TabOrder = 0
      Width = 105
    end
    object edtEtcComming: TEdit
      Left = 181
      Top = 2
      Width = 164
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      MaxLength = 30
      TabOrder = 1
    end
  end
  object Panel33: TPanel
    Left = 8
    Top = 264
    Width = 76
    Height = 78
    Caption = #49688#47144#47785#51201
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 31
  end
  object Panel34: TPanel
    Left = 84
    Top = 264
    Width = 467
    Height = 78
    TabOrder = 12
    object Label7: TLabel
      Left = 320
      Top = 52
      Width = 62
      Height = 15
      Caption = '('#54620#44544'15'#51088')'
    end
    object chkItem1: TCheckBox
      Left = 7
      Top = 5
      Width = 74
      Height = 17
      Caption = #52404#54805#44368#51221
      TabOrder = 0
    end
    object chkItem8: TCheckBox
      Left = 351
      Top = 28
      Width = 91
      Height = 17
      Caption = #52404#51648#48169#44048#47049
      TabOrder = 1
    end
    object chkItem9: TCheckBox
      Left = 7
      Top = 51
      Width = 81
      Height = 17
      Caption = #44540#47141#44053#54868
      TabOrder = 2
    end
    object chkItem4: TCheckBox
      Left = 351
      Top = 5
      Width = 74
      Height = 17
      Caption = #53685#51613#44060#49440
      TabOrder = 3
    end
    object chkItem5: TCheckBox
      Left = 7
      Top = 28
      Width = 77
      Height = 17
      Caption = #51656#48337#52824#50976
      TabOrder = 4
    end
    object chkItem2: TCheckBox
      Left = 115
      Top = 5
      Width = 98
      Height = 17
      Caption = #49828#53944#47112#49828#54644#49548
      TabOrder = 5
    end
    object chkItem7: TCheckBox
      Left = 239
      Top = 28
      Width = 81
      Height = 17
      Caption = #50668#44032#49440#50857
      TabOrder = 6
    end
    object chkItem6: TCheckBox
      Left = 115
      Top = 28
      Width = 84
      Height = 17
      Caption = #44618#51008#49688#54665
      TabOrder = 7
    end
    object chkItem3: TCheckBox
      Left = 239
      Top = 5
      Width = 88
      Height = 17
      Caption = #51648#46020#51088#44284#51221
      TabOrder = 8
    end
    object chkItem10: TCheckBox
      Left = 115
      Top = 51
      Width = 51
      Height = 17
      Caption = #44592#53440
      TabOrder = 9
    end
    object edtEtcPurpose: TEdit
      Left = 168
      Top = 49
      Width = 147
      Height = 23
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      MaxLength = 30
      TabOrder = 10
    end
  end
  object Panel43: TPanel
    Left = 375
    Top = 342
    Width = 76
    Height = 28
    Caption = #49885#49324#54943#49688
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 32
  end
  object Panel44: TPanel
    Left = 451
    Top = 342
    Width = 100
    Height = 28
    TabOrder = 15
    object FOOD_HOW_OFTEN: TcxImageComboBox
      Left = 4
      Top = 2
      EditValue = ''
      Properties.Items = <
        item
          Description = #44508#52825#51201
          ImageIndex = 0
          Value = #44508#52825#51201
        end
        item
          Description = #48520#44508#52825#51201
          Value = #48520#44508#52825#51201
        end>
      TabOrder = 0
      Width = 89
    end
  end
  object Panel45: TPanel
    Left = 8
    Top = 370
    Width = 76
    Height = 125
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 33
    object Label5: TLabel
      Left = 13
      Top = 7
      Width = 48
      Height = 15
      Caption = #49464#48512#49324#54637
    end
    object Label6: TLabel
      Left = 7
      Top = 23
      Width = 58
      Height = 15
      Caption = '('#49888#52404#49345#53468')'
    end
  end
  object Panel46: TPanel
    Left = 84
    Top = 370
    Width = 467
    Height = 125
    TabOrder = 16
    object BODY_STATUS: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 459
      Height = 117
      Align = alClient
      ImeMode = imSHanguel
      ImeName = 'Microsoft IME 2010'
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel47: TPanel
    Left = 8
    Top = 342
    Width = 76
    Height = 28
    Caption = #49885#49373#54876#49845#44288
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 34
  end
  object Panel48: TPanel
    Left = 84
    Top = 342
    Width = 103
    Height = 28
    TabOrder = 13
    object FOOD_KIND: TcxImageComboBox
      Left = 4
      Top = 2
      EditValue = ''
      Properties.Items = <
        item
          Description = #52292#49885'>'#50977#49885
          ImageIndex = 0
          Value = #52292#49885'>'#50977#49885
        end
        item
          Description = #52292#49885'='#50977#49885
          Value = #52292#49885'='#50977#49885
        end
        item
          Description = #52292#49885'<'#50977#49885
          Value = #52292#49885'<'#50977#49885
        end>
      TabOrder = 0
      Width = 96
    end
  end
  object Panel49: TPanel
    Left = 187
    Top = 342
    Width = 76
    Height = 28
    Caption = #49885#49324#47049
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 35
  end
  object Panel50: TPanel
    Left = 263
    Top = 342
    Width = 112
    Height = 28
    TabOrder = 14
    object FOOD_HOW_MUCH: TcxImageComboBox
      Left = 6
      Top = 2
      EditValue = ''
      Properties.Items = <
        item
          Description = #49548#49885
          ImageIndex = 0
          Value = #49548#49885
        end
        item
          Description = #48372#53685
          Value = #48372#53685
        end
        item
          Description = #44284#49885
          Value = #44284#49885
        end>
      TabOrder = 0
      Width = 98
    end
  end
  object Panel13: TPanel
    Left = 8
    Top = 12
    Width = 76
    Height = 28
    Caption = #49468#53552#47749
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 36
  end
  object Panel14: TPanel
    Left = 84
    Top = 12
    Width = 467
    Height = 28
    TabOrder = 37
    object Label2: TLabel
      Left = 124
      Top = 6
      Width = 256
      Height = 15
      Caption = #49468#53552#44032' '#50668#47084' '#44275#51068' '#44221#50864' '#54644#45817' '#49468#53552#47484' '#49440#53469#54616#49464#50836'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
    end
    object cbCenter: TcxLookupComboBox
      Left = 4
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'C_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      Width = 112
    end
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 499
    Width = 75
    Height = 25
    Caption = #51200#51109
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
      DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
      030AA03300000000030DD03333333333330AA03300000000330DD03088888888
      030AA03088888888030DD03088888888030AA03088888888030DD03088888888
      000AA03088888888080DD00000000000000AADADADADADADADAD}
    TabOrder = 38
    OnClick = BitBtn1Click
  end
  object CUSTOMER_SEL_BYID: TUniStoredProc
    StoredProcName = 'CUSTOMER_SEL_BYID'
    Connection = dmDBCommon.UniDBConnection
    Left = 168
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'CUSTOMER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'UID'
        ParamType = ptOutput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CNAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptOutput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CAGE'
        ParamType = ptOutput
        Size = 3
      end
      item
        DataType = ftString
        Name = 'CTEL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CEMAIL'
        ParamType = ptOutput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CBIGO'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftDate
        Name = 'REG_DATE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'JOBKIND'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOBBY'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'BLOOD'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BLOOD_PRESSURE'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'BODY_STATUS'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'FOOD_KIND'
        ParamType = ptOutput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_MUCH'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'FOOD_HOW_OFTEN'
        ParamType = ptOutput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'HOW_TO_COME_ETC'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_ETC'
        ParamType = ptOutput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PURPOSE_DESC'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'IS_ACTIVE'
        ParamType = ptOutput
      end
      item
        DataType = ftBlob
        Name = 'PHOTO'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CUSTOMER_SEL_BYID'
    object CUSTOMER_SEL_BYIDUID: TStringField
      FieldName = 'UID'
      Size = 40
    end
    object CUSTOMER_SEL_BYIDCNAME: TStringField
      FieldName = 'CNAME'
    end
    object CUSTOMER_SEL_BYIDSEX: TStringField
      FieldName = 'SEX'
      Size = 2
    end
    object CUSTOMER_SEL_BYIDCAGE: TStringField
      FieldName = 'CAGE'
      Size = 3
    end
    object CUSTOMER_SEL_BYIDCTEL: TStringField
      FieldName = 'CTEL'
      Size = 50
    end
    object CUSTOMER_SEL_BYIDCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 50
    end
    object CUSTOMER_SEL_BYIDCBIGO: TStringField
      FieldName = 'CBIGO'
      Size = 255
    end
    object CUSTOMER_SEL_BYIDREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object CUSTOMER_SEL_BYIDJOBKIND: TStringField
      FieldName = 'JOBKIND'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDHOBBY: TStringField
      FieldName = 'HOBBY'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDHOW_TO_COME: TStringField
      FieldName = 'HOW_TO_COME'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDPURPOSE: TStringField
      FieldName = 'PURPOSE'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDBLOOD: TStringField
      FieldName = 'BLOOD'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDBLOOD_PRESSURE: TStringField
      FieldName = 'BLOOD_PRESSURE'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDBODY_STATUS: TStringField
      FieldName = 'BODY_STATUS'
      Size = 255
    end
    object CUSTOMER_SEL_BYIDFOOD_KIND: TStringField
      FieldName = 'FOOD_KIND'
      Size = 12
    end
    object CUSTOMER_SEL_BYIDFOOD_HOW_MUCH: TStringField
      FieldName = 'FOOD_HOW_MUCH'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDFOOD_HOW_OFTEN: TStringField
      FieldName = 'FOOD_HOW_OFTEN'
      Size = 10
    end
    object CUSTOMER_SEL_BYIDHOW_TO_COME_ETC: TStringField
      FieldName = 'HOW_TO_COME_ETC'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDPURPOSE_ETC: TStringField
      FieldName = 'PURPOSE_ETC'
      Size = 30
    end
    object CUSTOMER_SEL_BYIDPURPOSE_DESC: TStringField
      FieldName = 'PURPOSE_DESC'
      Size = 255
    end
    object CUSTOMER_SEL_BYIDIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object CUSTOMER_SEL_BYIDPHOTO: TBlobField
      FieldName = 'PHOTO'
    end
  end
  object CUSTOMER_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 168
    Top = 432
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
      end>
    CommandStoredProcName = 'CUSTOMER_UPD'
  end
end
