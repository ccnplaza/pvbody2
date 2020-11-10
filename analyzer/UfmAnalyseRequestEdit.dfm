object fmAnalyseRequestEdit: TfmAnalyseRequestEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #48516#49437#50836#52397
  ClientHeight = 242
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 525
    Height = 236
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 43
      Width = 97
      Height = 29
      Caption = #50836#52397#51068#51088
      TabOrder = 7
    end
    object Panel3: TPanel
      Left = 8
      Top = 78
      Width = 97
      Height = 29
      Caption = #54924#50896#47749
      TabOrder = 8
    end
    object Panel5: TPanel
      Left = 8
      Top = 113
      Width = 97
      Height = 29
      Caption = #48516#49437#44032
      TabOrder = 9
    end
    object Panel6: TPanel
      Left = 8
      Top = 148
      Width = 97
      Height = 29
      Caption = #48708#44256#49324#54637
      TabOrder = 10
    end
    object Panel7: TPanel
      Left = 111
      Top = 43
      Width = 202
      Height = 29
      TabOrder = 0
      object EditRequestDate: TcxDateEdit
        Left = 7
        Top = 4
        TabOrder = 0
        Width = 121
      end
    end
    object Panel8: TPanel
      Left = 111
      Top = 78
      Width = 202
      Height = 29
      TabOrder = 1
      object EditCustName: TEdit
        Left = 7
        Top = 4
        Width = 121
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel10: TPanel
      Left = 111
      Top = 113
      Width = 202
      Height = 29
      TabOrder = 2
      object EditAnalyzerCode: TcxLookupComboBox
        Left = 7
        Top = 4
        Properties.DropDownRows = 1
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'USER_NAME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = d_analyzer
        TabOrder = 0
        Width = 122
      end
    end
    object Panel11: TPanel
      Left = 111
      Top = 148
      Width = 402
      Height = 29
      TabOrder = 4
      object EditBigo: TEdit
        Left = 7
        Top = 4
        Width = 386
        Height = 21
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 176
      Top = 191
      Width = 75
      Height = 25
      Caption = #51200#51109
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAAD0000000000000DD03300000088030AA03300000088030DD03300000088
        030AA03300000000030DD03333333333330AA03300000000330DD03088888888
        030AA03088888888030DD03088888888030AA03088888888030DD03088888888
        000AA03088888888080DD00000000000000AADADADADADADADAD}
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 252
      Top = 191
      Width = 75
      Height = 25
      Caption = #52712#49548
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 6
    end
    object btnSelectMember: TBitBtn
      Left = 321
      Top = 115
      Width = 112
      Height = 25
      Caption = #48516#49437#44032#49440#53469
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADADADADAD0ADADA0ADADA5ADA0DA000ADADA55DADD00AD0DADA55
        55DAAD0D000DA555555DD00ADAD0DA5555550000ADA0ADA55D55000ADADA0ADA
        5AD5000DAD00ADADADA500000AD0DADADAD50000000D0DADAD5DD00000000ADA
        DADAAD00000DADADADADDADADADADADADADAADADADADADADADAD}
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnSelectMemberClick
    end
    object Panel4: TPanel
      Left = 126
      Top = 5
      Width = 249
      Height = 31
      Caption = #48516#49437#50836#52397
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
  end
  object d_analyzer: TDataSource
    DataSet = q_analyzer
    Left = 424
    Top = 64
  end
  object q_analyzer: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO COMPANY'
      
        '  (ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KIND, ' +
        'APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_ANALYZ' +
        'ER)'
      'VALUES'
      
        '  (:ID, :USER_NAME, :LOGIN_ID, :LOGIN_PASS, :LOGIN_PASS2, :USER_' +
        'KIND, :APPROVED, :REG_DATE, :COMP_ID, :REMARK, :EMAIL, :CONFIRME' +
        'D, :IS_ANALYZER)')
    SQLDelete.Strings = (
      'DELETE FROM COMPANY'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE COMPANY'
      'SET'
      
        '  ID = :ID, USER_NAME = :USER_NAME, LOGIN_ID = :LOGIN_ID, LOGIN_' +
        'PASS = :LOGIN_PASS, LOGIN_PASS2 = :LOGIN_PASS2, USER_KIND = :USE' +
        'R_KIND, APPROVED = :APPROVED, REG_DATE = :REG_DATE, COMP_ID = :C' +
        'OMP_ID, REMARK = :REMARK, EMAIL = :EMAIL, CONFIRMED = :CONFIRMED' +
        ', IS_ANALYZER = :IS_ANALYZER'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM COMPANY'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, USER_NAME, LOGIN_ID, LOGIN_PASS, LOGIN_PASS2, USER_KI' +
        'ND, APPROVED, REG_DATE, COMP_ID, REMARK, EMAIL, CONFIRMED, IS_AN' +
        'ALYZER FROM COMPANY'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from company'
      'where IS_ANALYZER = 1')
    Left = 424
    Top = 16
    object q_analyzerID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_analyzerUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 10
    end
    object q_analyzerLOGIN_ID: TStringField
      FieldName = 'LOGIN_ID'
      Required = True
      Size = 10
    end
    object q_analyzerLOGIN_PASS: TStringField
      FieldName = 'LOGIN_PASS'
      Required = True
      Size = 10
    end
    object q_analyzerLOGIN_PASS2: TStringField
      FieldName = 'LOGIN_PASS2'
      Size = 10
    end
    object q_analyzerUSER_KIND: TIntegerField
      FieldName = 'USER_KIND'
    end
    object q_analyzerAPPROVED: TIntegerField
      FieldName = 'APPROVED'
    end
    object q_analyzerREG_DATE: TDateField
      FieldName = 'REG_DATE'
    end
    object q_analyzerCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Required = True
      Size = 17
    end
    object q_analyzerREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
    object q_analyzerEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object q_analyzerCONFIRMED: TSmallintField
      FieldName = 'CONFIRMED'
    end
    object q_analyzerIS_ANALYZER: TSmallintField
      FieldName = 'IS_ANALYZER'
    end
  end
end
