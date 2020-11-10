object fmPostureEditor2: TfmPostureEditor2
  Left = 0
  Top = 0
  Caption = #51088#49464#48516#49437
  ClientHeight = 723
  ClientWidth = 1348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline frmImageEditor21: TfrmImageEditor2
    Left = 0
    Top = 0
    Width = 1348
    Height = 723
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1348
    ExplicitHeight = 723
    inherited pnl1: TPanel
      Width = 1348
      Height = 723
      ExplicitWidth = 1348
      ExplicitHeight = 723
      inherited pnlTools: TPanel
        Left = 1166
        Height = 723
        ExplicitLeft = 1166
        ExplicitHeight = 723
        inherited cxPageControl1: TcxPageControl
          Height = 723
          ExplicitHeight = 723
          ClientRectBottom = 718
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 25
            ExplicitWidth = 175
            ExplicitHeight = 693
            inherited pnl2: TPanel
              Height = 693
              ExplicitHeight = 693
              inherited cxGroupBox1: TcxGroupBox
                inherited colorLine: TdxColorEdit
                  Style.IsFontAssigned = True
                  ExplicitHeight = 24
                end
                inherited cbbPenStyle: TcxImageComboBox
                  Style.IsFontAssigned = True
                  ExplicitHeight = 24
                end
                inherited colorBrush: TdxColorEdit
                  Style.IsFontAssigned = True
                  ExplicitHeight = 24
                end
                inherited cbbBrushStyle: TcxImageComboBox
                  Style.IsFontAssigned = True
                  ExplicitHeight = 24
                end
                inherited efontColor: TdxColorEdit
                  Style.IsFontAssigned = True
                  ExplicitHeight = 24
                end
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 25
            ExplicitWidth = 175
            ExplicitHeight = 655
          end
          inherited cxTabSheet3: TcxTabSheet
            ExplicitLeft = 2
            ExplicitTop = 25
            ExplicitWidth = 175
            ExplicitHeight = 655
          end
        end
      end
      inherited pnl5: TPanel
        Width = 1166
        Height = 723
        ExplicitWidth = 1166
        ExplicitHeight = 723
        inherited pnl6: TPanel
          Width = 1166
          ExplicitWidth = 1166
          inherited btnSaveDraw: TBitBtn
            OnClick = frmImageEditor21btnSaveDrawClick
          end
        end
        inherited Panel1: TPanel
          Width = 1166
          Height = 697
          ExplicitWidth = 1166
          ExplicitHeight = 697
          inherited Splitter1: TSplitter
            Left = 986
            Height = 695
            ExplicitLeft = 986
            ExplicitHeight = 695
          end
          inherited Splitter2: TSplitter
            Height = 695
            ExplicitHeight = 695
          end
          inherited ImageEnVect1: TImageEnVect
            Width = 806
            Height = 695
            ExplicitWidth = 806
            ExplicitHeight = 695
          end
          inherited ImageEnView1: TImageEnView
            Height = 695
            ExplicitHeight = 695
          end
          inherited ImageEnView2: TImageEnView
            Left = 989
            Height = 695
            ExplicitLeft = 989
            ExplicitHeight = 695
          end
        end
      end
    end
  end
  object CUSTOMER_IMAGE_DESCRIPT_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 344
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRIPT_NAME'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_UPD'
  end
  object CUSTOMER_IMAGE_DESCRIPT_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 344
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRIPT_NAME'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_INS'
  end
  object CUSTOMER_IMAGE_DESCRIPT_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 344
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'IMG_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID_NO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'DESCRIPT_NAME'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_SEL'
    object CUSTOMER_IMAGE_DESCRIPT_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUSTOMER_IMAGE_DESCRIPT_SELID_NO: TIntegerField
      Alignment = taCenter
      FieldName = 'ID_NO'
    end
    object CUSTOMER_IMAGE_DESCRIPT_SELIMAGE_ID: TStringField
      FieldName = 'IMAGE_ID'
      Size = 17
    end
    object CUSTOMER_IMAGE_DESCRIPT_SELDESCRIPT_NAME: TStringField
      FieldName = 'DESCRIPT_NAME'
      Size = 50
    end
  end
  object dsCUSTOMER_IMAGE_DESCRIPT_SEL: TDataSource
    DataSet = CUSTOMER_IMAGE_DESCRIPT_SEL
    Left = 344
    Top = 192
  end
  object CUSTOMER_IMAGE_COMMENT_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_COMMENT_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 344
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IMAGE_COMMET'
        ParamType = ptOutput
        Size = 1024
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_COMMENT_SEL'
    object CUSTOMER_IMAGE_COMMENT_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET: TStringField
      FieldName = 'IMAGE_COMMET'
      Size = 1024
    end
  end
  object dsCUSTOMER_IMAGE_COMMENT_SEL: TDataSource
    DataSet = CUSTOMER_IMAGE_COMMENT_SEL
    Left = 344
    Top = 288
  end
  object CUSTOMER_IMAGE_COMMENT_UPD: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_COMMENT_UPD'
    Connection = dmDBCommon.UniDBConnection
    Left = 296
    Top = 656
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMAGE_COMMET'
        ParamType = ptInput
        Size = 1024
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_COMMENT_UPD'
  end
  object CUSTOMER_IMAGE_COMMENT_INS: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_COMMENT_INS'
    Connection = dmDBCommon.UniDBConnection
    Left = 296
    Top = 600
    ParamData = <
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftString
        Name = 'IMAGE_COMMET'
        ParamType = ptInput
        Size = 1024
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_COMMENT_INS'
  end
  object CUSTOMER_IMAGE_DESCRIPT_DEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_DEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 344
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'CUSTOMER_IMAGE_DESCRIPT2_DEL'
  end
  object CUSTOMER_DESCRIPT_IMAGE_IU: TUniStoredProc
    StoredProcName = 'CUSTOMER_DESCRIPT_IMAGE2_IU'
    Connection = dmDBCommon.UniDBConnection
    Left = 104
    Top = 544
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DESC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptInput
        Size = 17
      end
      item
        DataType = ftBlob
        Name = 'DESC_IMAGE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'DESC_DRAW'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'CUSTOMER_DESCRIPT_IMAGE2_IU'
  end
  object CUSTOMER_DESCRIPT_IMAGE_SEL: TUniStoredProc
    StoredProcName = 'CUSTOMER_DESCRIPT_IMAGE2_SEL'
    Connection = dmDBCommon.UniDBConnection
    Left = 104
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DESC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'DESCRIPT_NO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IMAGE_ID'
        ParamType = ptOutput
        Size = 17
      end
      item
        DataType = ftBlob
        Name = 'DESC_IMAGE'
        ParamType = ptOutput
        Value = ''
      end
      item
        DataType = ftBlob
        Name = 'DESC_DRAW'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'CUSTOMER_DESCRIPT_IMAGE2_SEL'
    object CUSTOMER_DESCRIPT_IMAGE_SELID: TIntegerField
      FieldName = 'ID'
    end
    object CUSTOMER_DESCRIPT_IMAGE_SELDESCRIPT_NO: TIntegerField
      FieldName = 'DESCRIPT_NO'
    end
    object CUSTOMER_DESCRIPT_IMAGE_SELIMAGE_ID: TStringField
      FieldName = 'IMAGE_ID'
      Size = 17
    end
    object CUSTOMER_DESCRIPT_IMAGE_SELDESC_IMAGE: TBlobField
      FieldName = 'DESC_IMAGE'
    end
    object CUSTOMER_DESCRIPT_IMAGE_SELDESC_DRAW: TBlobField
      FieldName = 'DESC_DRAW'
    end
  end
  object q_check_item_tree: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO CHECK_ITEM_TREE'
      
        '  (ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, HOWTO' +
        '_IMAGE, VIDEO_ID)'
      'VALUES'
      
        '  (:ID, :PARENT_ID, :IMAGE_ID, :ITEM_NAME, :BODY_ID, :RESULT_ID,' +
        ' :HOWTO_IMAGE, :VIDEO_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE CHECK_ITEM_TREE'
      'SET'
      
        '  ID = :ID, PARENT_ID = :PARENT_ID, IMAGE_ID = :IMAGE_ID, ITEM_N' +
        'AME = :ITEM_NAME, BODY_ID = :BODY_ID, RESULT_ID = :RESULT_ID, HO' +
        'WTO_IMAGE = :HOWTO_IMAGE, VIDEO_ID = :VIDEO_ID'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT NULL FROM CHECK_ITEM_TREE'
      'WHERE'
      'ID = :Old_ID'
      'FOR UPDATE WITH LOCK')
    SQLRefresh.Strings = (
      
        'SELECT ID, PARENT_ID, IMAGE_ID, ITEM_NAME, BODY_ID, RESULT_ID, H' +
        'OWTO_IMAGE, VIDEO_ID FROM CHECK_ITEM_TREE'
      'WHERE'
      '  ID = :ID')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CHECK_ITEM_TREE'
      ''
      ') q')
    Connection = dmDBCommon.UniDBConnection
    SQL.Strings = (
      'select * from check_item_tree'
      'order by id')
    Left = 96
    Top = 96
    object q_check_item_treeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object q_check_item_treePARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object q_check_item_treeIMAGE_ID: TIntegerField
      FieldName = 'IMAGE_ID'
    end
    object q_check_item_treeITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 50
    end
    object q_check_item_treeBODY_ID: TIntegerField
      FieldName = 'BODY_ID'
    end
    object q_check_item_treeRESULT_ID: TIntegerField
      FieldName = 'RESULT_ID'
    end
    object q_check_item_treeHOWTO_IMAGE: TSmallintField
      FieldName = 'HOWTO_IMAGE'
    end
    object q_check_item_treeVIDEO_ID: TStringField
      FieldName = 'VIDEO_ID'
      Size = 30
    end
  end
  object d_check_item_tree: TDataSource
    DataSet = q_check_item_tree
    Left = 96
    Top = 144
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 3145824
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000705120D39113D2A9E19593EDD1F6A49FF1E6A48FF1B5D
          3EE313422EAB0717104900000009000000020000000000000000000000000000
          000201020210113C299D20724EFF229A6DFF22B481FF24C78FFF24C890FF23B5
          81FF229C6FFF20724FFF154831B5010503190000000300000000000000010102
          020E174E36C0218A61FF25C58EFF26C992FF44D7ABFF3AD3A1FF28CB94FF26CA
          92FF27CA93FF25C18BFF218860FF19593CD5020503180000000200000005113C
          2995238A63FF27C993FF26CA94FF27CB95FF0D824EFF1F9063FF42D1A5FF31CE
          9AFF29CB95FF27CB95FF29CB95FF238F66FF144731AF00000009040F0B2D2176
          53FA2BC693FF29CB95FF2BCC97FF2FCF9BFF0C804EFFABCBBBFF227F56FF43C0
          98FF42D6A7FF2DCE99FF2ACB96FF2DC996FF247C58FF07191147113A288F2DA1
          78FF2ECD98FF4AD8ACFF59DEB8FF5ADFB8FF0D7F4DFFF8F4F0FFDEEAE5FF4488
          68FF32A077FF52DCB2FF39D3A3FF30CF9BFF30A67DFF154933AF195A3ECA35C1
          93FF38D2A2FF239165FF0C7849FF0D7B4AFF0C7C4BFFF7EFEAFFF9F2EDFFFAFA
          F8FF86B09CFF207B54FF52CFAAFF48D8ACFF36C395FF1C694AE51C6B4AE946D1
          A4FF40D6A8FF0D7143FFFFFFFFFFFFFFFFFFFFFFFFFFF8F4F0FFF9F4F0FFF8F3
          F0FFFBF8F6FFC3D3CAFF296D4CFF35AA81FF49D5ABFF207853FA1D6B4BE35CD8
          B3FF45D9ACFF0C6E42FFDFD0CAFFE0D2CDFFE1D4CEFFF9F6F3FFFAF7F4FFF9F6
          F2FFECE3DFFFAEB9ABFF296D4CFF32AA81FF62DFBBFF227D59FC195E43C367D0
          B1FF50DEB2FF1C895DFF0C6E41FF0C7043FF0B7244FFFAF8F6FFF8F5F2FFE5DD
          D9FF74957FFF1D7651FF48CEA5FF52E0B5FF6CD7B7FF1F7050DF113C2B7D5BB7
          98FF61E3BEFF54E1B9FF57E3BCFF5AE4BFFF0C6E42FFF2EEEAFFC8CAC2FF3A73
          55FF339D77FF59E3BDFF58E3BBFF63E4C0FF65C1A5FF164F399E040E0A1F2C89
          67F58CE8CEFF5BE3BDFF5DE5BFFF5FE8C1FF0C6B3FFF95A797FF1E6948FF50C6
          A4FF61E9C5FF5FE8C1FF5FE5BFFF91EBD4FF2F9670FC07181236000000021242
          307C4CAE8CFF97F0DAFF67E8C4FF62EAC4FF0D673CFF2B8462FF65E5C3FF69ED
          CBFF67EAC8FF6EECC9FF9EF3DCFF52B493FF16543D9A00000005000000000002
          0105195D44A550B393FFA3EDDAFF95F2D9FF86EFD6FF78EED0FF79EFD1FF87F0
          D7FF96F2DDFFA0ECD8FF4CB592FF1C6C4FB80103030C00000001000000000000
          000000000002124633782F9F77F76AC9ACFF89DEC6FFA7EDDBFFA9F0DEFF8CE1
          C9FF6DCEAFFF30A67DF916563F8F010201080000000100000000000000000000
          00000000000000000001040F0B1B144E3A7E207F5FC226926DDA269670DF2185
          63C816543F850617112900000003000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E000000100000001000000010000000100000001000000011000000110000
          001100000011000000100000000B00000003000000000000000017417CCA2159
          A8FF225BAAFF225AAAFF2159A9FF2158A9FF2057A8FF2057A7FF2055A7FF1F55
          A7FF1F54A6FF1E53A6FF1E52A4FF1A458DE303080F2900000002225DA8FF2F6B
          B0FF579AD3FF71BEECFF46A6E4FF44A3E4FF41A1E3FF3FA0E2FF3C9EE2FF3B9C
          E1FF389BE0FF369AE0FF3498DFFF2875C1FF0F284E8B000000082868B1FF4884
          BFFF4489C7FF9CD8F5FF63B9EBFF55B0E8FF52AEE8FF4EACE7FF4CA9E6FF49A8
          E5FF47A6E4FF44A4E4FF41A2E3FF3991D7FF1B4787D50000000D2C6FB7FF6CA7
          D2FF3C87C6FFA0D4EFFF94D5F4FF66BDEEFF63BBEDFF60B9EBFF5DB6EBFF5BB5
          EAFF57B2EAFF55B0E9FF51AEE7FF4FABE7FF2967B4FF040B142F2F75BCFF8FC7
          E6FF4FA0D5FF7FBCE2FFC3EEFCFF78CAF2FF74C8F1FF72C5F0FF6FC4F0FF6DC2
          EFFF69C0EEFF66BDEEFF63BBEDFF60B9EBFF408ACAFF112C4E81327CBFFFAFE3
          F5FF75C8EDFF55A3D7FFD2F5FDFFD4F6FEFFD2F4FEFFCDF3FDFFC8F1FDFFC2EE
          FCFFBCEBFBFFB5E7FAFFADE3F9FFA5DFF8FF82C0E6FF1E5189CB3582C4FFC7F5
          FEFF97E5FCFF62BBE7FF4AA0D6FF4A9DD5FF91C3E3FF8DBCDCFF8FBDE0FF5FA3
          D6FF4394CFFF4292CEFF2D73BAFF2D72B9FF2C71B8FF2765A7EA3688C8FFCDF7
          FEFFA6ECFEFF9CE8FDFF93E4FBFF8EE1FBFFBBE6F3FFA68E78FFA6BABDFFB2E1
          F3FFB9E6F7FFB3E0F0FF8EADD1FF000000180000000B00000007398ECBFFD0F8
          FEFFAEF0FEFFAAEEFEFFA6EDFEFFA5EBFDFFD3EDF3FFAD744CFF9A6841FFBEB8
          ADFFD1E1E3FF975D32FF8A6E59FF0C07032E00000007000000013B92CEFFD3F9
          FEFFB6F3FEFFB3F1FDFFB0F1FEFFB8EDFAFF9CC3E0FFAD886CFFDBB891FFB07F
          53FF9B643AFF9F663DFFDBB67EFF8E5D33EF311D0F67000000063D97D1FFE2FC
          FEFFE2FCFEFFE1FCFEFFD3F3FAFF428FC1EC0B111523382A1E58C49870FFEAD2
          B1FFFCF0D0FFFEF2D3FFFEE9BBFFF7E6C5FFA36C43FF000000082E739DBF3E9A
          D3FF3E99D3FF3E99D3FF3E97D2FF143245590000000200000003382C204E9877
          58CABF946DFAC3966DFFEAD3B4FFB7906CEE3D2E215B00000003000000020000
          0003000000030000000400000003000000020000000000000000000000010000
          000200000005CAA27AFF846A50AC110D0A1B0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090101
          010E010101100101011001010110010101100101011001010111010101110101
          011101010111010101100101010B0000000300000000000000001D4783CA2860
          AFFF2962B1FF2961B1FF2860B0FF285FB0FF275EAFFF275EAEFF275CAEFF275C
          AEFF275BADFF265AADFF2659ABFF214C94E304091129000000022965AFFF3671
          B7FF5C9FD8FF75C1EFFF4BAAE8FF49A7E8FF46A5E7FF44A3E6FF41A3E6FF40A1
          E5FF3D9FE4FF3B9FE5FF3A9EE5FF2E7AC7FF132C528B000000082F6FB8FF4E89
          C4FF4A8FCDFF9FDAF7FF67BDEFFF59B3ECFF56B2ECFF52B0EBFF91C9F0FFA1CE
          EBFF9DC9E6FF9BC8E6FF9DCBEAFF83BBE7FF214D8DD50101010D3376BDFF70AB
          D6FF428DCCFFA2D6F2FF97D7F7FF6AC1F2FF67BEF1FF64BDEFFFAAD5EFFF2B7F
          5FFF046635FF046633FF2C7E61FFA3CFECFF306DBBFF060C162F367BC2FF92CA
          E9FF54A3DAFF83BFE5FFC4EFFDFF7BCCF5FF78CBF5FF76C9F4FFB1D9EEFF067B
          45FF2FD19DFF23CD94FF057A44FFA9D4EBFF4690CFFF153052813982C5FFB1E4
          F6FF78CBF0FF5AA7DCFFD3F5FEFFE8F9FDFFE2F2F7FFDDF0F4FFD4E7ECFF077D
          48FF36D6A5FF27D199FF067C47FFC1DBE7FFB9D6E8FF7692B4E13C88CAFFC9F6
          FFFF9AE7FEFF66BFEBFF50A4DBFFA3CCE6FF05723FFF05713EFF05703DFF087F
          4AFF3EDBACFF2DD49FFF077D48FF046C39FF046C39FF046B38FF3B8ECEFFCEF8
          FFFFA9EDFFFF9FEAFFFF95E5FDFFC5EDFAFF469B7FFF6BB498FF4DDCB1FF34D9
          A9FF36D9A9FF34D9A9FF30D6A3FF40D7A8FF63AA8EFF04391CB53E93D0FFD1F9
          FFFFB1F1FFFFADEFFFFFA9EEFFFFC2F1FEFFCEECEEFF2D966CFF8BD1BAFF58E3
          BEFF5CE6C0FF5BE5BEFF51DFB7FF7DCCB2FF0E633BE40006031A4097D3FFD4FA
          FFFFB8F4FFFFB5F2FEFFB3F3FFFFBBEEFBFF98C4E3FF7AB3C0FF359C71FF9DE5
          D2FF6EEDCBFF6DECC9FF91E2CAFF2E895EFD021A0E4700000003429CD6FFE2FC
          FEFFE2FCFEFFE1FCFEFFD4F5FBFF4793C6EC080E121E0303030C0B472F8964B4
          94FF96EDD7FF8BEAD2FF5CA98AFF053A228A00000005000000013276A0BF439F
          D8FF439ED8FF439ED8FF439CD7FF16344759000000020000000000020107136F
          4AC791CCB6FF8BC9B2FF0A6039CB000101090000000100000000000000020000
          0003000000030000000400000003000000020000000000000000000000010313
          0D252D956CF321875AF501100A27000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010A35245D052F1D6000000002000000000000000000000000}
      end>
  end
end
