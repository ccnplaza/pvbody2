object fmAttendMain: TfmAttendMain
  Left = 0
  Top = 0
  Caption = #52636#49437#44288#47532
  ClientHeight = 604
  ClientWidth = 919
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lblMessage: TLabel
      Left = 477
      Top = 87
      Width = 221
      Height = 28
      Caption = #54924#50896#51221#48372#44032' '#50630#49845#45768#45796'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = #45208#45588#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDateTime: TLabel
      Left = 477
      Top = 52
      Width = 250
      Height = 29
      Caption = '2014-11-20 '#50724#51204' 8:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 488
      Top = 16
      Width = 47
      Height = 19
      Caption = #49468#53552':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 465
      Height = 545
      TabOrder = 0
      object Label1: TLabel
        Left = 72
        Top = 497
        Width = 297
        Height = 24
        Caption = #51204#54868#48264#54840' '#47560#51648#47561' 4'#51088#47532' '#49707#51088' '#51077#47141
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -21
        Font.Name = #45208#45588#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton1: TcxButton
        Tag = 1
        Left = 16
        Top = 73
        Width = 140
        Height = 100
        Caption = '1'
        Colors.Default = clBlue
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Tag = 2
        Left = 162
        Top = 73
        Width = 140
        Height = 100
        Caption = '2'
        Colors.Default = clBlack
        Colors.DefaultText = clLime
        Colors.Hot = clFuchsia
        Colors.HotText = clRed
        Colors.Pressed = clLime
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton3: TcxButton
        Tag = 3
        Left = 308
        Top = 73
        Width = 140
        Height = 100
        Caption = '3'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton4: TcxButton
        Tag = 4
        Left = 16
        Top = 179
        Width = 140
        Height = 100
        Caption = '4'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton5: TcxButton
        Tag = 5
        Left = 162
        Top = 179
        Width = 140
        Height = 100
        Caption = '5'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton6: TcxButton
        Tag = 6
        Left = 308
        Top = 179
        Width = 140
        Height = 100
        Caption = '6'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton7: TcxButton
        Tag = 7
        Left = 16
        Top = 285
        Width = 140
        Height = 100
        Caption = '7'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton8: TcxButton
        Tag = 8
        Left = 162
        Top = 285
        Width = 140
        Height = 100
        Caption = '8'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object cxButton9: TcxButton
        Tag = 9
        Left = 308
        Top = 285
        Width = 140
        Height = 100
        Caption = '9'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object btnDelete: TcxButton
        Left = 16
        Top = 391
        Width = 140
        Height = 100
        Caption = #49325#51228
        Colors.HotText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = #45208#45588#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnDeleteClick
      end
      object cxButton11: TcxButton
        Left = 162
        Top = 391
        Width = 140
        Height = 100
        Caption = '0'
        Colors.DefaultText = clLime
        Colors.HotText = clRed
        Colors.PressedText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -80
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton1Click
      end
      object btnCheck: TcxButton
        Left = 308
        Top = 391
        Width = 140
        Height = 100
        Caption = #54869#51064
        Colors.HotText = clBlue
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressDarkStyle'
        TabOrder = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -40
        Font.Name = #45208#45588#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnCheckClick
      end
      object pnlNumbers: TPanel
        Left = 16
        Top = 8
        Width = 433
        Height = 59
        BevelOuter = bvLowered
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -40
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 12
      end
    end
    object btnAttending: TcxButton
      Left = 726
      Top = 354
      Width = 140
      Height = 59
      Caption = #52636#49437
      Colors.HotText = clBlue
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = #45208#45588#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAttendingClick
    end
    object GroupBox1: TGroupBox
      Left = 477
      Top = 167
      Width = 412
      Height = 165
      Caption = #54924#50896#49464#48512#51221#48372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #45208#45588#44256#46357
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object mmoComment: TMemo
        AlignWithMargins = True
        Left = 5
        Top = 26
        Width = 402
        Height = 134
        Align = alClient
        ImeName = 'Microsoft IME 2010'
        Lines.Strings = (
          #50630#51020'.')
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object btnViewCalendar: TcxButton
      Left = 502
      Top = 354
      Width = 209
      Height = 59
      Caption = #52636#49437#54788#54889
      Colors.HotText = clBlue
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = #45208#45588#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnViewCalendarClick
    end
    object CENTER_ID: TcxLookupComboBox
      Left = 540
      Top = 12
      Enabled = False
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'C_NAME'
        end>
      Properties.ListSource = dmDBCommon.d_center
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = #44404#47548
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = clBtnFace
      StyleDisabled.TextColor = clBtnText
      StyleDisabled.ButtonStyle = btsUltraFlat
      TabOrder = 4
      Width = 145
    end
    object edtLectureCode: TEdit
      Left = 512
      Top = 456
      Width = 121
      Height = 21
      TabOrder = 5
      Visible = False
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 840
    Top = 8
  end
  object LESSON_ATTENDANCE_INS: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 592
    Top = 448
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftDate
        Name = 'ATT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LEC_CODE'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'MEMBER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IN_TIME'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'COMPANY_ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'LESSON_ATTENDANCE_INS'
  end
  object LESSON_ATTENDANCE_CHECKUSER: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_CHECKUSER'
    Connection = dmDBCommon.UniDBConnection
    Left = 592
    Top = 400
    ParamData = <
      item
        DataType = ftDate
        Name = 'IN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'USER_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptOutput
        Size = 17
      end>
    CommandStoredProcName = 'LESSON_ATTENDANCE_CHECKUSER'
  end
  object LESSON_CUSTOMER_UPD_BYID: TUniStoredProc
    StoredProcName = 'LESSON_CUSTOMER_UPD_BYID'
    Connection = dmDBCommon.UniDBConnection
    Left = 784
    Top = 424
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'CURRENT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'UPDOWN_KIND'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'LESSON_CUSTOMER_UPD_BYID'
  end
  object ds_ATTENDING_TEMP_SEL: TDataSource
    DataSet = ATTENDING_TEMP_SEL
    Left = 784
    Top = 528
  end
  object ATTENDING_TEMP_DEL: TUniStoredProc
    StoredProcName = 'ATTENDING_TEMP_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 592
    Top = 544
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'ATTENDING_TEMP_DEL'
  end
  object UniAlerter1: TUniAlerter
    Connection = dmDBCommon.UniDBConnection
    Events = 'ATTENDING_TEMP_AI0'
    AutoRegister = True
    OnEvent = UniAlerter1Event
    Left = 496
    Top = 512
  end
  object REGISTED_CENTER_SEL: TUniStoredProc
    StoredProcName = 'REGISTED_CENTER_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 840
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptOutput
        Size = 20
      end>
    CommandStoredProcName = 'REGISTED_CENTER_SEL'
    object REGISTED_CENTER_SELID: TIntegerField
      FieldName = 'ID'
    end
    object REGISTED_CENTER_SELC_NAME: TStringField
      FieldName = 'C_NAME'
    end
  end
  object ds_REGISTED_CENTER_SEL: TDataSource
    DataSet = REGISTED_CENTER_SEL
    Left = 840
    Top = 104
  end
  object ATTENDING_TEMP_INS: TUniStoredProc
    StoredProcName = 'ATTENDING_TEMP_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 592
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MSG_STR'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'LECTURE_NAME'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'START_DATE'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'END_DATE'
        ParamType = ptInput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_TEL'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'ATTENDING_TEMP_INS'
  end
  object ATTENDING_TEMP_SEL: TUniStoredProc
    StoredProcName = 'ATTENDING_TEMP_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 784
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = 'C_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CENTER_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MSG_STR'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'LECTURE_NAME'
        ParamType = ptOutput
        Size = 255
      end
      item
        DataType = ftString
        Name = 'START_DATE'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'END_DATE'
        ParamType = ptOutput
        Size = 100
      end
      item
        DataType = ftString
        Name = 'LOCKER_NO'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_NAME'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'C_TEL'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'ATTENDING_TEMP_SEL'
    object ATTENDING_TEMP_SELID: TIntegerField
      FieldName = 'ID'
    end
    object ATTENDING_TEMP_SELCENTER_ID: TIntegerField
      FieldName = 'CENTER_ID'
    end
    object ATTENDING_TEMP_SELMSG_STR: TStringField
      FieldName = 'MSG_STR'
      Size = 255
    end
    object ATTENDING_TEMP_SELLECTURE_NAME: TStringField
      FieldName = 'LECTURE_NAME'
      Size = 255
    end
    object ATTENDING_TEMP_SELSTART_DATE: TStringField
      FieldName = 'START_DATE'
      Size = 100
    end
    object ATTENDING_TEMP_SELEND_DATE: TStringField
      FieldName = 'END_DATE'
      Size = 100
    end
    object ATTENDING_TEMP_SELLOCKER_NO: TStringField
      FieldName = 'LOCKER_NO'
    end
    object ATTENDING_TEMP_SELC_NAME: TStringField
      FieldName = 'C_NAME'
    end
    object ATTENDING_TEMP_SELC_TEL: TStringField
      FieldName = 'C_TEL'
      Size = 50
    end
  end
end
