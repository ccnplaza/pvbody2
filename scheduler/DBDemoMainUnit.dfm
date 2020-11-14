inherited DBDemoMainForm: TDBDemoMainForm
  Caption = #51068#51221#44288#47532
  ClientHeight = 676
  ClientWidth = 1094
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnClose = FormClose
  ExplicitWidth = 1110
  ExplicitHeight = 715
  PixelsPerInch = 96
  TextHeight = 15
  inherited Scheduler: TcxScheduler
    Top = 29
    Width = 1094
    Height = 628
    DateNavigator.RowCount = 4
    Font.Name = #45208#45588#44256#46357
    OptionsView.ViewPosition = vpRight
    Storage = SchedulerDBStorage
    ExplicitTop = 29
    ExplicitWidth = 1094
    ExplicitHeight = 628
    Selection = 1
    Splitters = {
      01000000F5010000A9000000FA010000A900000001000000AE00000073020000}
    StoredClientBounds = {01000000010000004504000073020000}
    inherited pnlControls: TPanel
      Width = 168
      Height = 121
      ExplicitHeight = 121
      inherited Memo1: TMemo
        Width = 168
        Height = 121
        TabOrder = 1
        Visible = False
        ExplicitHeight = 121
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        TabOrder = 0
        ExplicitWidth = 143
        Height = 121
        Width = 168
        object cxCheckBox1: TcxCheckBox
          Left = 19
          Top = 3
          Caption = 'Smart refresh'
          State = cbsChecked
          TabOrder = 0
          OnClick = chDataModeClick
          Width = 121
        end
      end
    end
  end
  inherited StatusBar: TStatusBar
    Top = 657
    Width = 1094
    SimplePanel = False
    ExplicitTop = 657
    ExplicitWidth = 1094
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1094
    Height = 29
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 52
      Height = 15
      Caption = #45236#48372#45236#44592':'
    end
    object Label2: TLabel
      Left = 252
      Top = 7
      Width = 52
      Height = 15
      Caption = #45804#47141#47784#46300':'
    end
    object ComboBox1: TComboBox
      Left = 76
      Top = 3
      Width = 83
      Height = 22
      Style = csOwnerDrawFixed
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 0
      Text = #50641#49472
      Items.Strings = (
        #50641#49472
        #53581#49828#53944
        'HTML'
        'XML')
    end
    object ComboBox2: TComboBox
      Left = 312
      Top = 3
      Width = 83
      Height = 22
      Style = csOwnerDrawFixed
      ImeName = 'Microsoft IME 2010'
      ItemIndex = 0
      TabOrder = 1
      Text = #51068#48324
      OnChange = ComboBox2Change
      Items.Strings = (
        #51068#48324
        #51089#50629#51452#48324
        #51452#48324
        #50900#48324
        #49884#44036#48324
        #45380#48324)
    end
    object BitBtn1: TBitBtn
      Left = 159
      Top = 1
      Width = 75
      Height = 25
      Caption = #45236#48372#45236#44592
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object btnSaveSchedule: TBitBtn
      Left = 584
      Top = 1
      Width = 105
      Height = 25
      Caption = #51068#51221#51200#51109
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
        030AA03300000000030DD03333333333330AA03300000000330DD03088888888
        030AA03088888888030DD03088888888030AA03088888888030DD03088888888
        000AA03088888888080DD00000000000000AADADADADADADADAD}
      TabOrder = 3
      Visible = False
      OnClick = btnSaveScheduleClick
    end
  end
  inherited Timer1: TTimer
    Left = 424
    Top = 192
  end
  inherited SaveDialog: TSaveDialog
    Left = 424
    Top = 136
  end
  inherited lfController: TcxLookAndFeelController
    Left = 424
    Top = 88
  end
  object SchedulerDataSource: TDataSource
    DataSet = q_Events
    Left = 264
    Top = 176
  end
  object SchedulerDBStorage: TcxSchedulerDBStorage
    UseActualTimeRange = True
    Resources.Items = <>
    Resources.ResourceID = 'ResourceID'
    Resources.ResourceName = 'ResourceName'
    SmartRefresh = True
    CustomFields = <
      item
        FieldName = 'SyncIDField'
      end>
    DataSource = SchedulerDataSource
    FieldNames.ActualFinish = 'ActualFinish'
    FieldNames.ActualStart = 'ActualStart'
    FieldNames.Caption = 'Caption'
    FieldNames.EventType = 'Type'
    FieldNames.Finish = 'Finish'
    FieldNames.ID = 'ID'
    FieldNames.LabelColor = 'LabelColor'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Message'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'ParentID'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'ReminderDate'
    FieldNames.ReminderMinutesBeforeStart = 'ReminderMinutes'
    FieldNames.ResourceID = 'ResourceID'
    FieldNames.Start = 'EVENT_START'
    FieldNames.State = 'State'
    UseIndexedID = True
    Left = 264
    Top = 80
  end
  object mdEvents: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F13000000040000000C000300494400040000000300
      0900506172656E7449440004000000030005005479706500080000000B000600
      537461727400080000000B00070046696E6973680004000000030008004F7074
      696F6E7300FF0000000100080043617074696F6E000400000003001000526563
      757272656E6365496E64657800000000000D000F00526563757272656E636549
      6E666F00000000000D000B005265736F75726365494400FF000000010009004C
      6F636174696F6E00FF000000010008004D65737361676500080000000B000D00
      52656D696E6465724461746500040000000300100052656D696E6465724D696E
      757465730004000000030006005374617465000400000003000B004C6162656C
      436F6C6F7200080000000B000C0041637475616C537461727400080000000B00
      0D0041637475616C46696E69736800FF00000001000C0053796E634944466965
      6C6400}
    SortOptions = []
    AfterPost = mdEventsAfterPost
    Left = 264
    Top = 128
    object mdEventsID: TAutoIncField
      FieldName = 'ID'
    end
    object mdEventsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object mdEventsType: TIntegerField
      FieldName = 'Type'
    end
    object mdEventsStart: TDateTimeField
      FieldName = 'Start'
    end
    object mdEventsFinish: TDateTimeField
      FieldName = 'Finish'
    end
    object mdEventsOptions: TIntegerField
      FieldName = 'Options'
    end
    object mdEventsCaption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object mdEventsRecurrenceIndex: TIntegerField
      FieldName = 'RecurrenceIndex'
    end
    object mdEventsRecurrenceInfo: TBlobField
      FieldName = 'RecurrenceInfo'
    end
    object mdEventsResourceID: TBlobField
      FieldName = 'ResourceID'
    end
    object mdEventsLocation: TStringField
      FieldName = 'Location'
      Size = 255
    end
    object mdEventsMessage: TStringField
      FieldName = 'Message'
      Size = 255
    end
    object mdEventsReminderDate: TDateTimeField
      FieldName = 'ReminderDate'
    end
    object mdEventsReminderMinutes: TIntegerField
      FieldName = 'ReminderMinutes'
    end
    object mdEventsState: TIntegerField
      FieldName = 'State'
    end
    object mdEventsLabelColor: TIntegerField
      FieldName = 'LabelColor'
    end
    object mdEventsActualStart: TDateTimeField
      FieldName = 'ActualStart'
    end
    object mdEventsActualFinish: TDateTimeField
      FieldName = 'ActualFinish'
    end
    object mdEventsSyncIDField: TStringField
      FieldName = 'SyncIDField'
      Size = 255
    end
  end
  object q_Events: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO SCHEDULERTABLE'
      
        '  (ID, PARENTID, TYPE, EVENT_START, FINISH, OPTIONS, CAPTION, RE' +
        'CURRENCEINDEX, RECURRENCEINFO, RESOURCEID, LOCATION, MESSAGE, RE' +
        'MINDERDATE, REMINDERMINUTES, STATE, LABELCOLOR, ACTUALSTART, ACT' +
        'UALFINISH, SYNCIDFIELD, COMPANY_ID)'
      'VALUES'
      
        '  (:ID, :PARENTID, :TYPE, :EVENT_START, :FINISH, :OPTIONS, :CAPT' +
        'ION, :RECURRENCEINDEX, :RECURRENCEINFO, :RESOURCEID, :LOCATION, ' +
        ':MESSAGE, :REMINDERDATE, :REMINDERMINUTES, :STATE, :LABELCOLOR, ' +
        ':ACTUALSTART, :ACTUALFINISH, :SYNCIDFIELD, :COMPANY_ID)')
    SQLDelete.Strings = (
      'DELETE FROM SCHEDULERTABLE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE SCHEDULERTABLE'
      'SET'
      
        '  ID = :ID, PARENTID = :PARENTID, TYPE = :TYPE, EVENT_START = :E' +
        'VENT_START, FINISH = :FINISH, OPTIONS = :OPTIONS, CAPTION = :CAP' +
        'TION, RECURRENCEINDEX = :RECURRENCEINDEX, RECURRENCEINFO = :RECU' +
        'RRENCEINFO, RESOURCEID = :RESOURCEID, LOCATION = :LOCATION, MESS' +
        'AGE = :MESSAGE, REMINDERDATE = :REMINDERDATE, REMINDERMINUTES = ' +
        ':REMINDERMINUTES, STATE = :STATE, LABELCOLOR = :LABELCOLOR, ACTU' +
        'ALSTART = :ACTUALSTART, ACTUALFINISH = :ACTUALFINISH, SYNCIDFIEL' +
        'D = :SYNCIDFIELD, COMPANY_ID = :COMPANY_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM SCHEDULERTABLE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, PARENTID, TYPE, EVENT_START, FINISH, OPTIONS, CAPTION' +
        ', RECURRENCEINDEX, RECURRENCEINFO, RESOURCEID, LOCATION, MESSAGE' +
        ', REMINDERDATE, REMINDERMINUTES, STATE, LABELCOLOR, ACTUALSTART,' +
        ' ACTUALFINISH, SYNCIDFIELD, COMPANY_ID FROM SCHEDULERTABLE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from SCHEDULERTABLE'
      'where company_id = :company_id')
    RefreshOptions = [roAfterUpdate]
    Options.UpdateAllFields = True
    BeforePost = q_EventsBeforePost
    Left = 264
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'company_id'
        ParamType = ptInput
      end>
    object q_EventsID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
    end
    object q_EventsPARENTID: TIntegerField
      FieldName = 'PARENTID'
    end
    object q_EventsTYPE: TIntegerField
      FieldName = 'TYPE'
    end
    object q_EventsSTART: TDateTimeField
      FieldName = 'EVENT_START'
    end
    object q_EventsFINISH: TDateTimeField
      FieldName = 'FINISH'
    end
    object q_EventsOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
    object q_EventsCAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 255
    end
    object q_EventsRECURRENCEINDEX: TIntegerField
      FieldName = 'RECURRENCEINDEX'
    end
    object q_EventsRECURRENCEINFO: TBlobField
      FieldName = 'RECURRENCEINFO'
    end
    object q_EventsRESOURCEID: TIntegerField
      FieldName = 'RESOURCEID'
    end
    object q_EventsLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 255
    end
    object q_EventsMESSAGE: TStringField
      FieldName = 'MESSAGE'
      Size = 255
    end
    object q_EventsREMINDERDATE: TDateTimeField
      FieldName = 'REMINDERDATE'
    end
    object q_EventsREMINDERMINUTES: TIntegerField
      FieldName = 'REMINDERMINUTES'
    end
    object q_EventsSTATE: TIntegerField
      FieldName = 'STATE'
    end
    object q_EventsLABELCOLOR: TIntegerField
      FieldName = 'LABELCOLOR'
    end
    object q_EventsACTUALSTART: TIntegerField
      FieldName = 'ACTUALSTART'
    end
    object q_EventsACTUALFINISH: TIntegerField
      FieldName = 'ACTUALFINISH'
    end
    object q_EventsSYNCIDFIELD: TStringField
      FieldName = 'SYNCIDFIELD'
      Size = 255
    end
    object q_EventsCOMPANY_ID: TStringField
      FieldName = 'COMPANY_ID'
      Size = 17
    end
  end
end
