object fmYearMonth: TfmYearMonth
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #47564#44592#51088#51312#54924
  ClientHeight = 153
  ClientWidth = 296
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 265
    Height = 129
    Caption = #47564#44592#51088' '#51312#54924
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 30
      Height = 13
      Caption = #45380#46020':'
    end
    object Label2: TLabel
      Left = 157
      Top = 24
      Width = 17
      Height = 13
      Caption = #50900':'
    end
    object Label3: TLabel
      Left = 68
      Top = 56
      Width = 138
      Height = 13
      Caption = #51312#54924#45380#50900#51012' '#49440#53469#54616#49464#50836'.'
    end
    object cxImageComboBox1: TcxImageComboBox
      Left = 68
      Top = 20
      EditValue = '2016'
      Properties.Items = <
        item
          Description = '2016'
          ImageIndex = 0
          Value = '2016'
        end
        item
          Description = '2017'
          Value = '2017'
        end
        item
          Description = '2018'
          Value = '2018'
        end
        item
          Description = '2019'
          Value = '2019'
        end
        item
          Description = '2020'
          Value = '2020'
        end
        item
          Description = '2021'
          Value = '2021'
        end
        item
          Description = '2022'
          Value = '2022'
        end
        item
          Description = '2023'
          Value = '2023'
        end
        item
          Description = '2024'
          Value = '2024'
        end
        item
          Description = '2025'
          Value = '2025'
        end
        item
          Description = '2026'
          Value = '2026'
        end
        item
          Description = '2027'
          Value = '2027'
        end
        item
          Description = '2028'
          Value = '2028'
        end
        item
          Description = '2029'
          Value = '2029'
        end
        item
          Description = '2030'
          Value = '2030'
        end>
      TabOrder = 0
      Width = 69
    end
    object cxImageComboBox2: TcxImageComboBox
      Left = 180
      Top = 20
      EditValue = 1
      Properties.Items = <
        item
          Description = '1'#50900
          ImageIndex = 0
          Value = 1
        end
        item
          Description = '2'#50900
          Value = 2
        end
        item
          Description = '3'#50900
          Value = 3
        end
        item
          Description = '4'#50900
          Value = 4
        end
        item
          Description = '5'#50900
          Value = 5
        end
        item
          Description = '6'#50900
          Value = 6
        end
        item
          Description = '7'#50900
          Value = 7
        end
        item
          Description = '8'#50900
          Value = 8
        end
        item
          Description = '9'#50900
          Value = 9
        end
        item
          Description = '10'#50900
          Value = 10
        end
        item
          Description = '11'#50900
          Value = 11
        end
        item
          Description = '12'#50900
          Value = 12
        end>
      TabOrder = 1
      Width = 61
    end
    object cxButton1: TcxButton
      Left = 99
      Top = 88
      Width = 75
      Height = 25
      Caption = #54869#51064
      LookAndFeel.SkinName = 'DevExpressStyle'
      ModalResult = 1
      TabOrder = 2
    end
  end
end
