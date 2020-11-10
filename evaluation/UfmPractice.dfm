object fmPractice: TfmPractice
  Left = 0
  Top = 0
  Caption = #50836#44032#50868#46041#47532#49828#53944
  ClientHeight = 638
  ClientWidth = 1135
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 638
    Align = alLeft
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 311
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object btnItemIn: TBitBtn
        Left = 184
        Top = 1
        Width = 41
        Height = 25
        Hint = #52628#44032
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnItemInClick
      end
      object btnItemEdit: TBitBtn
        Left = 224
        Top = 1
        Width = 41
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnItemEditClick
      end
      object btnItemDel: TBitBtn
        Left = 264
        Top = 1
        Width = 41
        Height = 25
        Hint = #49325#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 29
      Width = 311
      Height = 608
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
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = d_PRACTICE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGrid1DBTableView1PRACTICE_NAME: TcxGridDBColumn
          Caption = #52376#48169#50868#46041
          DataBinding.FieldName = 'PRACTICE_NAME'
        end
        object cxGrid1DBTableView1PRACTICE_DESCRIPT: TcxGridDBColumn
          DataBinding.FieldName = 'PRACTICE_DESCRIPT'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 313
    Top = 0
    Width = 822
    Height = 638
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 822
      Height = 28
      Align = alTop
      ParentBackground = False
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 280
        Top = 1
        Width = 41
        Height = 25
        Hint = #52628#44032
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADA000ADA
          DADAADADAD030DADADADDADADA030ADADADAADA000030000ADADDAD033333330
          DADAADA000030000ADADDADADA030ADADADAADADAD030DADADADDADADA000ADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 320
        Top = 1
        Width = 41
        Height = 25
        Hint = #49688#51221
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAAD77777777777777D000000000000007A0FBFBFBFB00FB07D0BFBFBFBF08
          0F07A0F0F0F0FB0B8007D0BFBFB00F000007A0FBFBF0B0FBFB07D0BFBFB0B0BF
          BF07A0FBFBF0BB0BFB07D0BFBFB0BB0FBF07A00000000BB0000DDADADADA0BB0
          DADAADADADADA0000DADDADADADAD0110ADAADADADADAD00ADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 360
        Top = 1
        Width = 41
        Height = 25
        Hint = #49325#51228
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADA000000000ADADDAD033333330
          DADAADA000000000ADADDADADADADADADADAADADADADADADADADDADADADADADA
          DADAADADADADADADADADDADADADADADADADAADADADADADADADAD}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object btnOpenImage: TBitBtn
        Left = 64
        Top = 1
        Width = 97
        Height = 25
        Caption = #51060#48120#51648#54028#51068
        TabOrder = 3
        OnClick = btnOpenImageClick
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 28
      Width = 822
      Height = 610
      Align = alClient
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Image1: TImage
        Left = 609
        Top = 408
        Width = 105
        Height = 105
      end
      object cxDBImage1: TcxDBImage
        Left = 1
        Top = 1
        Align = alClient
        DataBinding.DataField = 'PRACTICE_DESCRIPT'
        DataBinding.DataSource = d_PRACTICE_IMAGE
        Properties.Center = False
        Properties.FitMode = ifmNormal
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ImmediatePost = True
        Properties.ShowFocusRect = False
        TabOrder = 0
        Height = 608
        Width = 820
      end
    end
  end
  object d_PRACTICE: TDataSource
    DataSet = q_PRACTICE
    Left = 80
    Top = 448
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 392
    Top = 128
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
  object q_PRACTICE: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO PRACTICE'
      '  (ID, PRACTICE_NAME)'
      'VALUES'
      '  (:ID, :PRACTICE_NAME)')
    SQLDelete.Strings = (
      'DELETE FROM PRACTICE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE PRACTICE'
      'SET'
      '  ID = :ID, PRACTICE_NAME = :PRACTICE_NAME'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM PRACTICE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      'SELECT ID, PRACTICE_NAME FROM PRACTICE'
      'WHERE'
      '  ID = :ID')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select id, practice_name from PRACTICE')
    Left = 80
    Top = 400
    object q_PRACTICEID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 17
    end
    object q_PRACTICEPRACTICE_NAME: TStringField
      FieldName = 'PRACTICE_NAME'
      Size = 100
    end
  end
end
