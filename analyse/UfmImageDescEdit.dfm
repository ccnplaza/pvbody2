object fmImageDescEdit: TfmImageDescEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #52404#54805#48320#54805' '#48276#47168
  ClientHeight = 132
  ClientWidth = 274
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
    Left = 8
    Top = 8
    Width = 249
    Height = 73
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 56
      Height = 13
      Caption = #50500#51060#53080'No'
    end
    object Label2: TLabel
      Left = 24
      Top = 43
      Width = 56
      Height = 13
      Caption = ' '#48320#54805#49444#47749
    end
    object edtNo: TEdit
      Left = 86
      Top = 13
      Width = 51
      Height = 21
      ImeName = 'Microsoft IME 2010'
      NumbersOnly = True
      TabOrder = 0
    end
    object edtDesc: TcxLookupComboBox
      Left = 86
      Top = 40
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'DESCRIPTS'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmDBCommon.dsIMAGE_DESCRIPT_LIST
      TabOrder = 1
      Width = 145
    end
  end
  object BitBtn1: TBitBtn
    Left = 70
    Top = 87
    Width = 75
    Height = 25
    Caption = #51200#51109
    Kind = bkOK
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 151
    Top = 87
    Width = 75
    Height = 25
    Caption = #52712#49548
    Kind = bkCancel
    TabOrder = 2
  end
end
