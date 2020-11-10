object fmUserMessage: TfmUserMessage
  Left = 0
  Top = 0
  Caption = #47700#49884#51648' '#51452#44256#48155#44592
  ClientHeight = 628
  ClientWidth = 1000
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 628
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 489
      Height = 51
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        Left = 13
        Top = 6
        Width = 91
        Height = 13
        Caption = '['#48155#51008' '#47700#49884#51648']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 27
        Width = 56
        Height = 13
        Caption = #51312#54924#44592#44036':'
      end
      object DateTimePicker3: TDateTimePicker
        Left = 76
        Top = 24
        Width = 108
        Height = 21
        Date = 41463.308493576390000000
        Time = 41463.308493576390000000
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
      object DateTimePicker4: TDateTimePicker
        Left = 185
        Top = 24
        Width = 108
        Height = 21
        Date = 41463.308493576390000000
        Time = 41463.308493576390000000
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
      end
      object BitBtn4: TBitBtn
        Left = 293
        Top = 22
        Width = 59
        Height = 25
        Caption = #51312#54924
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
          FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
          FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
          FF0A444444444444444D444444444444444A444444444444444D}
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object btnReceiveEdit: TBitBtn
        Left = 352
        Top = 22
        Width = 65
        Height = 25
        Caption = #54869#51064
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
          BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
          DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btnReceiveEditClick
      end
      object BitBtn6: TBitBtn
        Left = 417
        Top = 22
        Width = 64
        Height = 25
        Caption = #49325#51228
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
          0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
          BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
          DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        TabOrder = 4
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 51
      Width = 489
      Height = 577
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object cxGrid1DBTableView1: TcxGridDBTableView
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
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = d_receive_message
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGrid1DBTableView1WRITE_DATE: TcxGridDBColumn
          Caption = #51089#49457#51068
          DataBinding.FieldName = 'WRITE_DATE'
          Width = 79
        end
        object cxGrid1DBTableView1WRITER_ID: TcxGridDBColumn
          Caption = #51089#49457#51088
          DataBinding.FieldName = 'WRITER_ID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'USER_NAME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = d_user_look
          Width = 85
        end
        object cxGrid1DBTableView1RECEIVER_ID: TcxGridDBColumn
          DataBinding.FieldName = 'RECEIVER_ID'
          Visible = False
          Width = 300
        end
        object cxGrid1DBTableView1MSG_TITLE: TcxGridDBColumn
          Caption = #51228#47785
          DataBinding.FieldName = 'MSG_TITLE'
        end
        object cxGrid1DBTableView1MSG_KIND: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'MSG_KIND'
        end
        object cxGrid1DBTableView1MSG_CONTENT: TcxGridDBColumn
          DataBinding.FieldName = 'MSG_CONTENT'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 489
    Top = 0
    Width = 511
    Height = 628
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 511
      Height = 51
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 6
        Width = 91
        Height = 13
        Caption = '['#48372#45240' '#47700#49884#51648']'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 27
        Width = 56
        Height = 13
        Caption = #51312#54924#44592#44036':'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 76
        Top = 24
        Width = 108
        Height = 21
        Date = 41463.308493576390000000
        Time = 41463.308493576390000000
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 185
        Top = 24
        Width = 108
        Height = 21
        Date = 41463.308493576390000000
        Time = 41463.308493576390000000
        ImeName = 'Microsoft IME 2010'
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 293
        Top = 22
        Width = 59
        Height = 25
        Caption = #51312#54924
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
          FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
          FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
          FF0A444444444444444D444444444444444A444444444444444D}
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 352
        Top = 22
        Width = 83
        Height = 25
        Caption = #49352#47700#49884#51648
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
          BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
          DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 434
        Top = 22
        Width = 64
        Height = 25
        Caption = #49325#51228
        DoubleBuffered = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB0770BFBFBFBF08
          0F0710FBFBFBFB0B800711BFBF71BF000007717BF717FBFBFB07D117B11FBFBF
          BF07A71111FBFBFBFB07D7111FBFBFBFBF07711117000000000D117A117ADADA
          DADAADADA117ADADADADDADADA117ADADADAADADADADADADADAD}
        ParentDoubleBuffered = False
        TabOrder = 4
      end
      object btnEditSend: TBitBtn
        Left = 299
        Top = -2
        Width = 75
        Height = 25
        Caption = 'btnEditSend'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 5
        Visible = False
        OnClick = btnEditSendClick
      end
    end
    object cxGrid2: TcxGrid
      Left = 0
      Top = 51
      Width = 511
      Height = 577
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object cxGridDBTableView1: TcxGridDBTableView
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
        OnCellDblClick = cxGridDBTableView1CellDblClick
        DataController.DataSource = d_send_message
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGridDBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGridDBTableView1WRITER_ID: TcxGridDBColumn
          DataBinding.FieldName = 'WRITER_ID'
          Visible = False
        end
        object cxGridDBTableView1WRITE_DATE: TcxGridDBColumn
          Caption = #51089#49457#51068
          DataBinding.FieldName = 'WRITE_DATE'
          Width = 89
        end
        object cxGridDBTableView1MSG_TITLE: TcxGridDBColumn
          Caption = #51228#47785
          DataBinding.FieldName = 'MSG_TITLE'
          Width = 311
        end
        object cxGridDBTableView1RECEIVER_ID: TcxGridDBColumn
          Caption = #49688#49888#51088
          DataBinding.FieldName = 'RECEIVER_ID'
          Width = 300
        end
        object cxGridDBTableView1MSG_KIND: TcxGridDBColumn
          Caption = #44396#48516
          DataBinding.FieldName = 'MSG_KIND'
          Visible = False
        end
        object cxGridDBTableView1MSG_CONTENT: TcxGridDBColumn
          DataBinding.FieldName = 'MSG_CONTENT'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object q_receive_message: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO USER_MESSAGE'
      
        '  (ID, WRITER_ID, RECEIVER_ID, MSG_KIND, MSG_CONTENT, WRITE_DATE' +
        ', MSG_TITLE)'
      'VALUES'
      
        '  (:ID, :WRITER_ID, :RECEIVER_ID, :MSG_KIND, :MSG_CONTENT, :WRIT' +
        'E_DATE, :MSG_TITLE)')
    SQLDelete.Strings = (
      'DELETE FROM USER_MESSAGE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE USER_MESSAGE'
      'SET'
      
        '  ID = :ID, WRITER_ID = :WRITER_ID, RECEIVER_ID = :RECEIVER_ID, ' +
        'MSG_KIND = :MSG_KIND, MSG_CONTENT = :MSG_CONTENT, WRITE_DATE = :' +
        'WRITE_DATE, MSG_TITLE = :MSG_TITLE'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM USER_MESSAGE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, WRITER_ID, RECEIVER_ID, MSG_KIND, MSG_CONTENT, WRITE_' +
        'DATE, MSG_TITLE FROM USER_MESSAGE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from user_message'
      
        'where (RECEIVER_ID containing :user_id) and (WRITE_DATE between ' +
        ':sdate and :edate)'
      'order by WRITE_DATE desc')
    Left = 208
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'user_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'sdate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'edate'
        ParamType = ptInput
      end>
    object q_receive_messageID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_receive_messageWRITER_ID: TStringField
      FieldName = 'WRITER_ID'
      Size = 17
    end
    object q_receive_messageRECEIVER_ID: TStringField
      FieldName = 'RECEIVER_ID'
      Size = 10240
    end
    object q_receive_messageMSG_KIND: TIntegerField
      FieldName = 'MSG_KIND'
    end
    object q_receive_messageMSG_CONTENT: TStringField
      FieldName = 'MSG_CONTENT'
      Size = 10240
    end
    object q_receive_messageWRITE_DATE: TDateTimeField
      FieldName = 'WRITE_DATE'
    end
    object q_receive_messageMSG_TITLE: TStringField
      FieldName = 'MSG_TITLE'
      Size = 50
    end
  end
  object q_send_message: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO USER_MESSAGE'
      
        '  (ID, WRITER_ID, RECEIVER_ID, MSG_KIND, MSG_CONTENT, WRITE_DATE' +
        ', MSG_TITLE)'
      'VALUES'
      
        '  (:ID, :WRITER_ID, :RECEIVER_ID, :MSG_KIND, :MSG_CONTENT, :WRIT' +
        'E_DATE, :MSG_TITLE)')
    SQLDelete.Strings = (
      'DELETE FROM USER_MESSAGE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE USER_MESSAGE'
      'SET'
      
        '  ID = :ID, WRITER_ID = :WRITER_ID, RECEIVER_ID = :RECEIVER_ID, ' +
        'MSG_KIND = :MSG_KIND, MSG_CONTENT = :MSG_CONTENT, WRITE_DATE = :' +
        'WRITE_DATE, MSG_TITLE = :MSG_TITLE'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM USER_MESSAGE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, WRITER_ID, RECEIVER_ID, MSG_KIND, MSG_CONTENT, WRITE_' +
        'DATE, MSG_TITLE FROM USER_MESSAGE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from user_message'
      
        'where (WRITER_ID = :user_id) and (WRITE_DATE between :sdate and ' +
        ':edate)'
      'order by WRITE_DATE desc')
    Left = 656
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'user_id'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'sdate'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'edate'
        ParamType = ptInput
      end>
    object q_send_messageID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_send_messageWRITER_ID: TStringField
      FieldName = 'WRITER_ID'
      Size = 17
    end
    object q_send_messageRECEIVER_ID: TStringField
      FieldName = 'RECEIVER_ID'
      Size = 10240
    end
    object q_send_messageMSG_KIND: TIntegerField
      FieldName = 'MSG_KIND'
    end
    object q_send_messageMSG_CONTENT: TStringField
      FieldName = 'MSG_CONTENT'
      Size = 10240
    end
    object q_send_messageWRITE_DATE: TDateTimeField
      FieldName = 'WRITE_DATE'
    end
    object q_send_messageMSG_TITLE: TStringField
      FieldName = 'MSG_TITLE'
      Size = 50
    end
  end
  object d_receive_message: TDataSource
    DataSet = q_receive_message
    Left = 208
    Top = 280
  end
  object d_send_message: TDataSource
    DataSet = q_send_message
    Left = 656
    Top = 288
  end
  object t_user_look: TUniTable
    TableName = 'COMPANY'
    Connection = dmDBCommon.UniDBConnection
    Left = 56
    Top = 240
    object t_user_lookID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object t_user_lookUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 10
    end
    object t_user_lookLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
      Required = True
      Size = 10
    end
  end
  object d_user_look: TDataSource
    DataSet = t_user_look
    Left = 56
    Top = 288
  end
end
