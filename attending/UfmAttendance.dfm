object fmAttendance: TfmAttendance
  Left = 0
  Top = 0
  Caption = #52636#49437#44288#47532
  ClientHeight = 641
  ClientWidth = 1016
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel12: TPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 641
    Align = alClient
    TabOrder = 0
    object Panel13: TPanel
      Left = 1
      Top = 1
      Width = 1014
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label6: TLabel
        Left = 8
        Top = 6
        Width = 48
        Height = 15
        Caption = #51312#54924#44592#44036
      end
      object edtInDate: TcxDateEdit
        Left = 64
        Top = 2
        EditValue = 0d
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnEditValueChanged = edtInDatePropertiesEditValueChanged
        TabOrder = 0
        Width = 102
      end
      object edtOutDate: TcxDateEdit
        Left = 165
        Top = 2
        EditValue = 0d
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.OnEditValueChanged = edtOutDatePropertiesEditValueChanged
        TabOrder = 1
        Width = 102
      end
      object btnRetrieve: TBitBtn
        Left = 266
        Top = 0
        Width = 68
        Height = 25
        Caption = #54869#51064
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADAD00CDADADDADADAD00CDADADAAD000070CDADADADD0DADA0BDADA
          DADA0DAFFFF0000000000AF7F770FFFFFFF00DFFFFF0FFFFFFF00AF77F70F7FF
          FFF0A0FFFF0FFFFFFFF0DA00007F77FFFFF0AD0FFFFFFFFFFFF0DA0F7777F77F
          FFF0AD0FFFFFFFFFFFF0DA00000000000000ADADADADADADADAD}
        TabOrder = 2
        OnClick = btnRetrieveClick
      end
      object btnAttendOut: TBitBtn
        Left = 507
        Top = 0
        Width = 71
        Height = 25
        Caption = #49325#51228
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF1E1E
          1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E7E1E1E1E7E0000
          000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E811E1E1E810000
          000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E81000000001E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
        TabOrder = 3
        OnClick = btnAttendOutClick
      end
      object icbCenter: TcxImageComboBox
        Left = 336
        Top = 2
        Properties.Items = <>
        Properties.OnCloseUp = icbCenterPropertiesCloseUp
        TabOrder = 4
        Width = 80
      end
      object btnAdd: TBitBtn
        Left = 436
        Top = 0
        Width = 71
        Height = 25
        Caption = #46321#47197
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0FBFBFBFB0B8007D0BFBFBFBF000007F0F7BFBFBBFBFB077BB7FB7BFFBF
          BF07A7F7B7BFBBFBFB07777F7FBFBFBFBF07FB7BF7777000000DD7B7B7BADADA
          DADA7BA7FD7BADADADADBAD7BAD7DADADADAADA7FDADADADADAD}
        TabOrder = 5
        OnClick = btnAddClick
      end
      object btnHistory: TBitBtn
        Left = 686
        Top = 0
        Width = 93
        Height = 25
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
        TabOrder = 6
        OnClick = btnHistoryClick
      end
      object btnCustInfo: TBitBtn
        Left = 594
        Top = 0
        Width = 93
        Height = 25
        Caption = #51064#51201#49324#54637
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD08800080ADADADDAD00FF00ADADADAADAD0F000DADADAD00000FFFF000
          000A7FF000FFF0FFFF0D7F000FFFFF00000A7F000FFF00FF0E0D7F00000FF0FF
          000A7F0000000F0F0B0D7F700000000F000A7F7F00000FFF0D0D7F7FFF70F77F
          000A7F7F77F0FFFF0A0D777FFF087FFF000AAD77778887777DAD}
        ParentShowHint = False
        ShowHint = False
        TabOrder = 7
        OnClick = btnCustInfoClick
      end
    end
    object cxGrid8: TcxGrid
      Left = 1
      Top = 27
      Width = 1014
      Height = 613
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      object gridAttendance: TcxGridDBTableView
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
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnFocusedRecordChanged = gridAttendanceFocusedRecordChanged
        DataController.DataSource = dmDBCommon.d_LESSON_ATTENDANCE_SEL
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridAttendanceID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gridAttendanceIS_ACTIVE: TcxGridDBColumn
          Caption = #49468#53552#47749
          DataBinding.FieldName = 'IS_ACTIVE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'C_NAME'
            end>
          Width = 51
        end
        object gridAttendanceATT_DATE: TcxGridDBColumn
          Caption = #52636#49437#51068#51088
          DataBinding.FieldName = 'ATT_DATE'
          Width = 86
        end
        object gridAttendanceLEC_CODE: TcxGridDBColumn
          DataBinding.FieldName = 'LEC_CODE'
          Visible = False
        end
        object gridAttendanceMEMBER_ID: TcxGridDBColumn
          DataBinding.FieldName = 'MEMBER_ID'
          Visible = False
        end
        object gridAttendanceIN_TIME: TcxGridDBColumn
          Caption = #49884#44036
          DataBinding.FieldName = 'IN_TIME'
          Width = 48
        end
        object gridAttendanceCOMPANY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'COMPANY_ID'
          Visible = False
        end
        object gridAttendanceL_NAME: TcxGridDBColumn
          Caption = #44053#51340#47749
          DataBinding.FieldName = 'L_NAME'
          Width = 153
        end
        object gridAttendanceCNAME: TcxGridDBColumn
          Caption = #54924#50896#47749
          DataBinding.FieldName = 'CNAME'
        end
        object gridAttendanceSEX: TcxGridDBColumn
          Caption = #49457#48324
          DataBinding.FieldName = 'SEX'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Items = <
            item
              Description = #45224
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = #50668
              Value = '1'
            end>
          Width = 37
        end
        object gridAttendanceCTEL: TcxGridDBColumn
          Caption = #51204#54868#48264#54840
          DataBinding.FieldName = 'CTEL'
          Width = 149
        end
        object gridAttendanceJOBKIND: TcxGridDBColumn
          Caption = #51649#50629
          DataBinding.FieldName = 'JOBKIND'
          Width = 141
        end
      end
      object cxGrid8Level1: TcxGridLevel
        GridView = gridAttendance
      end
    end
  end
  object LESSON_ATTENDANCE_DEL: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 368
    Top = 432
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
        Size = 17
      end>
    CommandStoredProcName = 'LESSON_ATTENDANCE_DEL'
  end
  object UniAlerter1: TUniAlerter
    Connection = dmDBCommon.UniDBConnection
    Events = 'LESSON_ATTENDANCE_AIUD0'
    Active = True
    OnEvent = UniAlerter1Event
    Left = 128
    Top = 376
  end
  object LESSON_ATTENDANCE_INS: TUniStoredProc
    StoredProcName = 'LESSON_ATTENDANCE_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 368
    Top = 376
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
end
