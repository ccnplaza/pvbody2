object fmMemberEditBasic: TfmMemberEditBasic
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #54924#50896#51221#48372
  ClientHeight = 253
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 84
    Top = 40
    Width = 120
    Height = 28
    TabOrder = 1
    object REG_DATE: TcxDateEdit
      Left = 4
      Top = 4
      Properties.DateOnError = deNull
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.UseNullString = True
      TabOrder = 0
      Width = 112
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 76
    Height = 28
    Caption = #46321#47197#51068#51088
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 10
  end
  object Panel5: TPanel
    Left = 8
    Top = 68
    Width = 76
    Height = 28
    Caption = #49457#47749
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 11
  end
  object Panel6: TPanel
    Left = 84
    Top = 68
    Width = 120
    Height = 28
    TabOrder = 3
    object CNAME: TEdit
      Left = 4
      Top = 4
      Width = 112
      Height = 21
      TabOrder = 0
    end
  end
  object Panel7: TPanel
    Left = 204
    Top = 68
    Width = 78
    Height = 28
    Caption = #49457#48324
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 12
  end
  object Panel8: TPanel
    Left = 282
    Top = 68
    Width = 122
    Height = 28
    TabOrder = 4
    object SEX: TcxImageComboBox
      Left = 4
      Top = 4
      EditValue = #50668
      Properties.Items = <
        item
          Description = #50668#51088
          ImageIndex = 0
          Value = #50668
        end
        item
          Description = #45224#51088
          Value = #45224
        end>
      TabOrder = 0
      Width = 90
    end
  end
  object Panel9: TPanel
    Left = 204
    Top = 40
    Width = 78
    Height = 28
    Caption = #51649#50629
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 13
  end
  object Panel10: TPanel
    Left = 282
    Top = 40
    Width = 122
    Height = 28
    TabOrder = 2
    object JOBKIND: TEdit
      Left = 4
      Top = 4
      Width = 113
      Height = 21
      TabOrder = 0
    end
  end
  object Panel17: TPanel
    Left = 8
    Top = 96
    Width = 76
    Height = 28
    Caption = #51204#54868#48264#54840
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 14
  end
  object Panel18: TPanel
    Left = 84
    Top = 96
    Width = 320
    Height = 28
    TabOrder = 5
    object CTEL: TEdit
      Left = 4
      Top = 4
      Width = 308
      Height = 21
      TabOrder = 0
    end
  end
  object Panel21: TPanel
    Left = 8
    Top = 124
    Width = 76
    Height = 28
    Caption = #51060#47700#51068
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 15
  end
  object Panel22: TPanel
    Left = 84
    Top = 124
    Width = 320
    Height = 28
    TabOrder = 6
    object CEMAIL: TEdit
      Left = 4
      Top = 4
      Width = 308
      Height = 21
      TabOrder = 0
    end
  end
  object Panel23: TPanel
    Left = 84
    Top = 152
    Width = 320
    Height = 28
    TabOrder = 7
    object CBIGO: TEdit
      Left = 4
      Top = 4
      Width = 308
      Height = 21
      TabOrder = 0
    end
  end
  object Panel24: TPanel
    Left = 8
    Top = 152
    Width = 76
    Height = 28
    Caption = #48708#44256#49324#54637
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 16
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 197
    Width = 75
    Height = 25
    Caption = #51200#51109
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
    TabOrder = 8
  end
  object BitBtn2: TBitBtn
    Left = 204
    Top = 197
    Width = 75
    Height = 25
    Caption = #52712#49548
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
    TabOrder = 9
  end
  object Panel2: TPanel
    Left = 8
    Top = 12
    Width = 76
    Height = 28
    Caption = #49468#53552#47749
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 17
  end
  object Panel4: TPanel
    Left = 84
    Top = 12
    Width = 320
    Height = 28
    TabOrder = 0
    object cbCenter: TcxLookupComboBox
      Left = 4
      Top = 4
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'C_NAME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmDBCommon.d_center
      TabOrder = 0
      Width = 112
    end
  end
end
