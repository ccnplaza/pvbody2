object fmPracticeMethod: TfmPracticeMethod
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #50868#46041#52376#48169
  ClientHeight = 542
  ClientWidth = 994
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 31
    Align = alTop
    TabOrder = 0
    object btn1: TBitBtn
      Left = 36
      Top = 3
      Width = 65
      Height = 25
      Caption = #52628#44032
      TabOrder = 0
      Visible = False
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 296
      Top = 3
      Width = 94
      Height = 25
      Caption = #51060#48120#51648#48320#44221
      TabOrder = 1
      Visible = False
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 166
      Top = 3
      Width = 65
      Height = 25
      Caption = #49325#51228
      TabOrder = 2
      Visible = False
    end
    object btnEdit: TBitBtn
      Left = 101
      Top = 3
      Width = 65
      Height = 25
      Caption = #49688#51221
      TabOrder = 3
      Visible = False
      OnClick = btnEditClick
    end
    object btnPlay: TcxButton
      Left = 448
      Top = 3
      Width = 113
      Height = 25
      Caption = #46041#50689#49345#48372#44592
      LookAndFeel.SkinName = 'DevExpressStyle'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000020000
        000A0000000F0000001100000011000000110000001100000012000000120000
        0012000000120000001300000013000000120000000C00000003000000097B54
        30C1AA7442FFA97340FFA8713EFFA7703DFFA66E3CFFA56D3BFFA46C3AFFA46B
        38FFA26A37FFA16936FFA16735FFA16634FF734925C30000000B0000000DAD77
        45FFE1B67EFFDAA768FFD9A768FFBA7F47FFC1884FFFD29D5FFFDAA668FFDAA7
        68FFD9A668FFDAA668FFDAA668FFDAA667FFA06635FF000000100000000EAE78
        46FFE3BA86FFDCAB6FFFDBAB6EFFC0864EFFF1E4D7FFCFA47AFFC68F56FFD5A2
        66FFDCAA6EFFDCAA6EFFDBAA6EFFDCAB6EFFA16735FF000000110000000DAF79
        47FFE4C08FFFDDB077FFDEB076FFC48C55FFFFFFFFFFFFFFFFFFF2E5D9FFD5AD
        85FFCA955CFFD8A86EFFDDB076FFDDB076FFA26836FF000000100000000CB07B
        49FFE7C699FFE0B67FFFE0B67FFFC9935BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE7D0B8FFCA945DFFDFB67FFFE0B67FFFA36937FF0000000F0000000BB27C
        4BFFE9CCA6FFE4BF8FFFE5C395FFCC9860FFFFFFFFFFFFFFFFFFF4E8DBFFD9B1
        88FFD3A36DFFDFB889FFE4BF90FFE2BC8BFFA46B38FF0000000E0000000AB27E
        4CFFF0DBBCFFEACDA5FFEBCEA5FFCF9C65FFF3E7D9FFDCB58AFFD6A975FFE4C2
        96FFEBCEA5FFEACDA5FFEACEA5FFEACDA5FFA46C39FF0000000E00000009B47F
        4DFFF2E1C6FFEDD4B1FFEDD4B1FFD2A068FFD9AD7AFFE7C8A0FFEDD4B1FFEDD4
        B1FFEDD4B1FFEDD4B1FFEDD4B1FFEDD4B1FFA66D3BFF0000000D00000008AB72
        5FFFA7907FFF6A4F45FF684E43FF836754FF9E8265FF9D8064FF806551FF6349
        3EFF62473DFF7D614DFF987A5EFF96795DFFA36753FF0000000C00000008AE77
        64FFF9F4F2FFB4A39BFF705449FF6E5348FFB1A098FFF6EFEBFFF6EFEBFFB09F
        98FF674C43FF674B41FFAD9C95FFF6EFEBFFA56956FF0000000B00000007B27B
        69FFFAF6F4FFF8F1EEFFB8A7A0FF755A4FFF73584DFFB4A39DFFF7F2EEFFF8F2
        EEFFB3A39CFF6D5147FF6B5045FFB09F98FFA86D59FF0000000A00000006B681
        6EFF9F8C85FF745F55FF735E54FF604C44FF5F4C44FF5E4B43FF675349FF6A55
        4AFF67544AFF5C4840FF5B4840FF5A473FFF916354FF0000000900000005B985
        73FFFDFAF9FFFBF8F5FFC0AFA9FF85675CFF83675AFFBFAFA8FFFAF7F6FFFBF8
        F6FFBBACA5FF7B5F53FF795E52FFBAABA4FFAE7563FF0000000800000004BD8B
        79FFFDFCFAFFDACFCAFFB19A8FFFAE968DFFD7CCC7FFFEFBFBFFFDFBFBFFD0C4
        C0FF9F867BFF9C8378FFCDC0BAFFFCFBF9FFB27A68FF00000007000000038F6B
        5EC0967366FF6D584FFF6C574EFF947163FFBC8A77FFBC8876FF926D60FF6954
        4CFF68534BFF8F6B5DFFB7826FFFB6806EFF865F51C100000004}
      TabOrder = 4
      OnClick = btnPlayClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 31
    Width = 250
    Height = 511
    Align = alLeft
    TabOrder = 1
    LookAndFeel.SkinName = 'Black'
    object gridImage: TcxGridDBTableView
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
      OnFocusedRecordChanged = gridImageFocusedRecordChanged
      DataController.DataSource = ds_NPRACTICE_METHOD_SEL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gridImageID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
      end
      object gridImageIMG_TITLE: TcxGridDBColumn
        Caption = #50868#46041#47749
        DataBinding.FieldName = 'IMG_TITLE'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gridImage
    end
  end
  object pnl2: TPanel
    Left = 250
    Top = 31
    Width = 744
    Height = 511
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnl1'
    DoubleBuffered = True
    Enabled = False
    ParentDoubleBuffered = False
    TabOrder = 2
    object wb1: TWebBrowser
      Left = 0
      Top = 0
      Width = 744
      Height = 511
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 416
      ExplicitTop = 80
      ExplicitWidth = 300
      ExplicitHeight = 150
      ControlData = {
        4C000000E54C0000D03400000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object OpenImageEnDialog1: TOpenImageEnDialog
    Filter = 
      #48372#53685' '#51060#48120#51648' '#54028#51068'|*.tif;*.tiff;*.fax;*.g3n;*.g3f;*.xif;*.gif;*.jpg;*.jpe' +
      'g;*.jpe;*.jif;*.pcx;*.bmp;*.dib;*.rle;*.ico;*.cur;*.png;*.dcm;*.' +
      'dic;*.dicom;*.v2;*.wmf;*.emf;*.tga;*.targa;*.vda;*.icb;*.vst;*.p' +
      'ix;*.pxm;*.ppm;*.pgm;*.pbm;*.wbmp;*.jp2;*.j2k;*.jpc;*.j2c;*.dcx;' +
      '*.crw;*.cr2;*.nef;*.raw;*.pef;*.raf;*.x3f;*.bay;*.orf;*.srf;*.mr' +
      'w;*.dcr;*.sr2;*.psd;*.psb;*.iev;*.lyr;*.all;*.wdp;*.hdp;*.jxr;*.' +
      'avi;*.mpeg;*.mpg;*.wmv|'#47784#46304' '#54028#51068' (*.*)|*.*|JPEG Bitmap (*.jpg;*.jpeg' +
      ';*.jpe;*.jif)|*.jpg;*.jpeg;*.jpe;*.jif|TIFF Bitmap (*.tif;*.tiff' +
      ';*.fax;*.g3n;*.g3f;*.xif)|*.tif;*.tiff;*.fax;*.g3n;*.g3f;*.xif|C' +
      'ompuServe Bitmap (*.gif)|*.gif|PaintBrush (*.pcx)|*.pcx|Windows ' +
      'Bitmap (*.bmp;*.dib;*.rle)|*.bmp;*.dib;*.rle|Windows Icon (*.ico' +
      ')|*.ico|Windows Cursor (*.cur)|*.cur|Portable Network Graphics (' +
      '*.png)|*.png|DICOM Bitmap (*.dcm;*.dic;*.dicom;*.v2)|*.dcm;*.dic' +
      ';*.dicom;*.v2|Windows Metafile (*.wmf)|*.wmf|Enhanced Windows Me' +
      'tafile (*.emf)|*.emf|Targa Bitmap (*.tga;*.targa;*.vda;*.icb;*.v' +
      'st;*.pix)|*.tga;*.targa;*.vda;*.icb;*.vst;*.pix|Portable Pixmap,' +
      ' GrayMap, BitMap (*.pxm;*.ppm;*.pgm;*.pbm)|*.pxm;*.ppm;*.pgm;*.p' +
      'bm|Wireless Bitmap (*.wbmp)|*.wbmp|JPEG2000 (*.jp2)|*.jp2|JPEG20' +
      '00 Code Stream (*.j2k;*.jpc;*.j2c)|*.j2k;*.jpc;*.j2c|Multipage P' +
      'CX (*.dcx)|*.dcx|Camera RAW (*.crw;*.cr2;*.nef;*.raw;*.pef;*.raf' +
      ';*.x3f;*.bay;*.orf;*.srf;*.mrw;*.dcr;*.sr2)|*.crw;*.cr2;*.nef;*.' +
      'raw;*.pef;*.raf;*.x3f;*.bay;*.orf;*.srf;*.mrw;*.dcr;*.sr2|Photos' +
      'hop PSD (*.psd;*.psb)|*.psd;*.psb|Vectorial objects (*.iev)|*.ie' +
      'v|Layers (*.lyr)|*.lyr|Layers and objects (*.all)|*.all|Microsof' +
      't HD Photo (*.wdp;*.hdp;*.jxr)|*.wdp;*.hdp;*.jxr|'#50952#46020#50857' '#48708#46356#50724' (*.avi)' +
      '|*.avi|MPEG (*.mpeg;*.mpg)|*.mpeg;*.mpg|Windows Media Video (*.w' +
      'mv)|*.wmv'
    Left = 320
    Top = 376
  end
  object NPRACTICE_METHOD_INS: TUniStoredProc
    StoredProcName = 'NPRACTICE_METHOD_INS'
    Connection = dmDBCommon.UniConnCommon
    Left = 608
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMG_TITLE'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftBlob
        Name = 'IMG_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'NPRACTICE_METHOD_INS'
  end
  object NPRACTICE_METHOD_SEL: TUniStoredProc
    StoredProcName = 'NPRACTICE_METHOD_SEL'
    Connection = dmDBCommon.UniConnCommon
    Left = 104
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'IMG_TITLE'
        ParamType = ptOutput
        Size = 50
      end>
    CommandStoredProcName = 'NPRACTICE_METHOD_SEL'
    object NPRACTICE_METHOD_SELID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
    end
    object NPRACTICE_METHOD_SELIMG_TITLE: TStringField
      FieldName = 'IMG_TITLE'
      Size = 50
    end
  end
  object ds_NPRACTICE_METHOD_SEL: TDataSource
    DataSet = NPRACTICE_METHOD_SEL
    Left = 104
    Top = 272
  end
  object NPRACTICE_METHOD_SEL_IMAGE: TUniStoredProc
    StoredProcName = 'NPRACTICE_METHOD_SEL_IMAGE'
    Connection = dmDBCommon.UniConnCommon
    Left = 352
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'IMG_DATA'
        ParamType = ptOutput
        Value = ''
      end>
    CommandStoredProcName = 'NPRACTICE_METHOD_SEL_IMAGE'
    object NPRACTICE_METHOD_SEL_IMAGEIMG_DATA: TBlobField
      FieldName = 'IMG_DATA'
    end
  end
  object ds_NPRACTICE_METHOD_SEL_IMAGE: TDataSource
    DataSet = NPRACTICE_METHOD_SEL_IMAGE
    Left = 352
    Top = 296
  end
  object NPRACTICE_METHOD_UPD_TITLE: TUniStoredProc
    StoredProcName = 'NPRACTICE_METHOD_UPD_TITLE'
    Connection = dmDBCommon.UniConnCommon
    Left = 608
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IMG_TITLE'
        ParamType = ptInput
        Size = 50
      end>
    CommandStoredProcName = 'NPRACTICE_METHOD_UPD_TITLE'
  end
  object NPRACTICE_METHOD_UPD_IMAGE: TUniStoredProc
    StoredProcName = 'NPRACTICE_METHOD_UPD_IMAGE'
    Connection = dmDBCommon.UniConnCommon
    Left = 608
    Top = 280
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftBlob
        Name = 'IMG_DATA'
        ParamType = ptInput
        Value = ''
      end>
    CommandStoredProcName = 'NPRACTICE_METHOD_UPD_IMAGE'
  end
end
