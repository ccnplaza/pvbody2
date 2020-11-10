object fmPracticeView: TfmPracticeView
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #52376#48169#50868#46041
  ClientHeight = 590
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBImage1: TcxDBImage
    Left = 0
    Top = 0
    Align = alClient
    DataBinding.DataField = 'PRACTICE_DESCRIPT'
    DataBinding.DataSource = d_PRACTICE_IMAGE
    Properties.Center = False
    Properties.FitMode = ifmNormal
    Properties.GraphicClassName = 'TJPEGImage'
    Properties.ImmediatePost = True
    Properties.ShowFocusRect = False
    TabOrder = 0
    Height = 590
    Width = 774
  end
  object q_PRACTICE_IMAGE: TUniQuery
    UpdatingTable = 'PRACTICE'
    SQLInsert.Strings = (
      'INSERT INTO PRACTICE'
      '  (ID, PRACTICE_NAME, PRACTICE_DESCRIPT)'
      'VALUES'
      '  (:ID, :PRACTICE_NAME, :PRACTICE_DESCRIPT)')
    SQLDelete.Strings = (
      'DELETE FROM PRACTICE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE PRACTICE'
      'SET'
      
        '  ID = :ID, PRACTICE_NAME = :PRACTICE_NAME, PRACTICE_DESCRIPT = ' +
        ':PRACTICE_DESCRIPT'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM PRACTICE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, PRACTICE_NAME, PRACTICE_DESCRIPT FROM PRACTICE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from PRACTICE'
      'where ID = :ID')
    Left = 464
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    object q_PRACTICE_IMAGEID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_PRACTICE_IMAGEPRACTICE_NAME: TStringField
      FieldName = 'PRACTICE_NAME'
      Size = 100
    end
    object q_PRACTICE_IMAGEPRACTICE_DESCRIPT: TBlobField
      FieldName = 'PRACTICE_DESCRIPT'
    end
  end
  object d_PRACTICE_IMAGE: TDataSource
    DataSet = q_PRACTICE_IMAGE
    Left = 464
    Top = 336
  end
end
