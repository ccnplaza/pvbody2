object fmAnalyzerEdit: TfmAnalyzerEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #48516#49437#44032' '#46321#47197'/'#49688#51221
  ClientHeight = 329
  ClientWidth = 460
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
  object Panel1: TPanel
    Left = 2
    Top = 3
    Width = 455
    Height = 323
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 6
      Top = 50
      Width = 77
      Height = 27
      Caption = #48516#49437#44032#47749
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 6
      Top = 77
      Width = 77
      Height = 27
      Caption = #51204#54868#48264#54840
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 6
      Top = 104
      Width = 77
      Height = 27
      Caption = #49548' '#49549' '#47749
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 6
      Top = 131
      Width = 77
      Height = 27
      Caption = #51060' '#47700' '#51068
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 3
    end
    object Panel6: TPanel
      Left = 6
      Top = 158
      Width = 77
      Height = 27
      Caption = #46321#47197#51068#51088
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 4
    end
    object Panel7: TPanel
      Left = 6
      Top = 185
      Width = 77
      Height = 27
      Caption = #48708#44256#49324#54637
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 5
    end
    object Panel8: TPanel
      Left = 6
      Top = 212
      Width = 77
      Height = 27
      Caption = #54876#46041#50668#48512
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 6
    end
    object Panel9: TPanel
      Left = 6
      Top = 239
      Width = 77
      Height = 27
      Caption = #51648' '#50669' '#47749
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 7
    end
    object Panel10: TPanel
      Left = 83
      Top = 50
      Width = 361
      Height = 27
      TabOrder = 8
      object DBEdit1: TDBEdit
        Left = 6
        Top = 3
        Width = 128
        Height = 21
        DataField = 'A_NAME'
        DataSource = fmAnalyzerManager.d_analyzer
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel12: TPanel
      Left = 83
      Top = 77
      Width = 361
      Height = 27
      TabOrder = 9
      object DBEdit2: TDBEdit
        Left = 6
        Top = 3
        Width = 186
        Height = 21
        DataField = 'A_TEL'
        DataSource = fmAnalyzerManager.d_analyzer
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 83
      Top = 104
      Width = 361
      Height = 27
      TabOrder = 10
      object DBEdit3: TDBEdit
        Left = 6
        Top = 3
        Width = 186
        Height = 21
        DataField = 'A_COMPANY'
        DataSource = fmAnalyzerManager.d_analyzer
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel14: TPanel
      Left = 83
      Top = 131
      Width = 361
      Height = 27
      TabOrder = 11
      object DBEdit4: TDBEdit
        Left = 6
        Top = 3
        Width = 186
        Height = 21
        DataField = 'A_EMAIL'
        DataSource = fmAnalyzerManager.d_analyzer
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel15: TPanel
      Left = 83
      Top = 158
      Width = 361
      Height = 27
      TabOrder = 12
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 6
        Top = 3
        DataBinding.DataField = 'A_DATE'
        DataBinding.DataSource = fmAnalyzerManager.d_analyzer
        TabOrder = 0
        Width = 121
      end
    end
    object Panel16: TPanel
      Left = 83
      Top = 185
      Width = 361
      Height = 27
      TabOrder = 13
      object DBEdit8: TDBEdit
        Left = 6
        Top = 3
        Width = 347
        Height = 21
        DataField = 'A_BIGO'
        DataSource = fmAnalyzerManager.d_analyzer
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object Panel17: TPanel
      Left = 83
      Top = 212
      Width = 361
      Height = 27
      TabOrder = 14
      object cxDBImageComboBox1: TcxDBImageComboBox
        Left = 6
        Top = 3
        DataBinding.DataField = 'A_ACTIVE'
        DataBinding.DataSource = fmAnalyzerManager.d_analyzer
        Properties.Items = <
          item
            Description = #54876#46041
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #48708#54876#46041
            Value = 0
          end>
        TabOrder = 0
        Width = 121
      end
    end
    object Panel18: TPanel
      Left = 83
      Top = 239
      Width = 361
      Height = 27
      TabOrder = 15
      object DBEdit9: TDBEdit
        Left = 6
        Top = 3
        Width = 121
        Height = 21
        DataField = 'A_AREA'
        DataSource = fmAnalyzerManager.d_analyzer
        ImeName = 'Microsoft IME 2010'
        TabOrder = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 148
      Top = 280
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
      TabOrder = 16
    end
    object BitBtn2: TBitBtn
      Left = 224
      Top = 280
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
      TabOrder = 17
    end
    object Panel11: TPanel
      Left = 83
      Top = 11
      Width = 270
      Height = 30
      Caption = #48516#49437#44032' '#46321#47197'/'#49688#51221
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = #44404#47548
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
  end
end
