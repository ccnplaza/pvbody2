object fmCompanyRegist: TfmCompanyRegist
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #44144#47000#52376#46321#47197
  ClientHeight = 426
  ClientWidth = 453
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
    Left = 8
    Top = 8
    Width = 433
    Height = 409
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 52
      Height = 13
      Caption = #46321#47197#51068#51088
      FocusControl = cxDBDateEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 52
      Height = 13
      Caption = #44144#47000#52376#47749
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 288
      Top = 64
      Width = 52
      Height = 13
      Caption = #45824#54364#51088#47749
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 24
      Top = 112
      Width = 52
      Height = 13
      Caption = #51204#54868#48264#54840
      FocusControl = cxDBTextEdit3
    end
    object Label5: TLabel
      Left = 240
      Top = 112
      Width = 52
      Height = 13
      Caption = #54057#49828#48264#54840
      FocusControl = cxDBTextEdit4
    end
    object Label6: TLabel
      Left = 24
      Top = 155
      Width = 26
      Height = 13
      Caption = #51452#49548
      FocusControl = cxDBTextEdit5
    end
    object Label7: TLabel
      Left = 24
      Top = 200
      Width = 65
      Height = 13
      Caption = #49324#50629#51088#48264#54840
      FocusControl = cxDBTextEdit6
    end
    object Label8: TLabel
      Left = 24
      Top = 248
      Width = 39
      Height = 13
      Caption = #51008#54665#47749
      FocusControl = cxDBTextEdit7
    end
    object Label9: TLabel
      Left = 151
      Top = 248
      Width = 52
      Height = 13
      Caption = #44228#51340#48264#54840
      FocusControl = cxDBTextEdit8
    end
    object Label10: TLabel
      Left = 288
      Top = 248
      Width = 39
      Height = 13
      Caption = #50696#44552#51452
      FocusControl = cxDBTextEdit9
    end
    object Label11: TLabel
      Left = 24
      Top = 296
      Width = 52
      Height = 13
      Caption = #48708#44256#49324#54637
      FocusControl = cxDBTextEdit10
    end
    object Label12: TLabel
      Left = 151
      Top = 16
      Width = 88
      Height = 13
      Caption = #51648#50669#47749'('#46020#49884#47749')'
      FocusControl = cxDBTextEdit11
    end
    object Label13: TLabel
      Left = 288
      Top = 16
      Width = 65
      Height = 13
      Caption = #44144#47000#52376#44396#48516
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 24
      Top = 32
      DataBinding.DataField = 'REG_DATE'
      DataBinding.DataSource = vd_company
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 24
      Top = 80
      DataBinding.DataField = 'COMP_NAME'
      DataBinding.DataSource = vd_company
      TabOrder = 3
      Width = 248
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 288
      Top = 80
      DataBinding.DataField = 'CHIEF_NAME'
      DataBinding.DataSource = vd_company
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 24
      Top = 128
      DataBinding.DataField = 'TEL_NO'
      DataBinding.DataSource = vd_company
      TabOrder = 5
      Width = 177
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 240
      Top = 128
      DataBinding.DataField = 'FAX_NO'
      DataBinding.DataSource = vd_company
      TabOrder = 6
      Width = 169
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 24
      Top = 171
      DataBinding.DataField = 'ADDR'
      DataBinding.DataSource = vd_company
      TabOrder = 7
      Width = 385
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 24
      Top = 216
      DataBinding.DataField = 'BUS_ID'
      DataBinding.DataSource = vd_company
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 24
      Top = 264
      DataBinding.DataField = 'BANK_NAME'
      DataBinding.DataSource = vd_company
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 151
      Top = 264
      DataBinding.DataField = 'BANK_NO'
      DataBinding.DataSource = vd_company
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 288
      Top = 264
      DataBinding.DataField = 'BANK_OWNER'
      DataBinding.DataSource = vd_company
      TabOrder = 11
      Width = 121
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 24
      Top = 312
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = vd_company
      TabOrder = 12
      Width = 385
    end
    object BitBtn1: TBitBtn
      Left = 126
      Top = 352
      Width = 75
      Height = 25
      Caption = #51200#51109
      DoubleBuffered = True
      Kind = bkOK
      ParentDoubleBuffered = False
      TabOrder = 13
    end
    object BitBtn2: TBitBtn
      Left = 217
      Top = 352
      Width = 75
      Height = 25
      Caption = #52712#49548
      DoubleBuffered = True
      Kind = bkCancel
      ParentDoubleBuffered = False
      TabOrder = 14
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 151
      Top = 32
      DataBinding.DataField = 'LOCATION_AREA'
      DataBinding.DataSource = vd_company
      TabOrder = 1
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox
      Left = 288
      Top = 32
      DataBinding.DataField = 'COMP_KIND'
      DataBinding.DataSource = vd_company
      Properties.Items = <
        item
          Description = #50836#44032
          ImageIndex = 0
          Value = 1
        end
        item
          Description = #53468#44428#46020
          Value = 2
        end
        item
          Description = #54764#49828
          Value = 3
        end
        item
          Description = #44592#53440
          Value = 4
        end>
      TabOrder = 2
      Width = 121
    end
  end
  object vt_company: TVirtualTable
    Left = 312
    Top = 360
    Data = {03000000000000000000}
    object vt_companyCOMP_ID: TStringField
      FieldName = 'COMP_ID'
      Size = 17
    end
    object vt_companyCHIEF_NAME: TStringField
      DisplayLabel = #45824#54364#51088#47749
      FieldName = 'CHIEF_NAME'
    end
    object vt_companyTEL_NO: TStringField
      DisplayLabel = #51204#54868#48264#54840
      FieldName = 'TEL_NO'
      Size = 50
    end
    object vt_companyFAX_NO: TStringField
      DisplayLabel = #54057#49828#48264#54840
      FieldName = 'FAX_NO'
      Size = 50
    end
    object vt_companyADDR: TStringField
      DisplayLabel = #51452#49548
      FieldName = 'ADDR'
      Size = 100
    end
    object vt_companyLOCATION_AREA: TStringField
      DisplayLabel = #51648#50669#47749
      FieldName = 'LOCATION_AREA'
    end
    object vt_companyBUS_ID: TStringField
      DisplayLabel = #49324#50629#51088#48264#54840
      FieldName = 'BUS_ID'
    end
    object vt_companyBANK_NAME: TStringField
      DisplayLabel = #51008#54665#47749
      FieldName = 'BANK_NAME'
      Size = 30
    end
    object vt_companyBANK_NO: TStringField
      DisplayLabel = #44228#51340#48264#54840
      FieldName = 'BANK_NO'
      Size = 30
    end
    object vt_companyBANK_OWNER: TStringField
      DisplayLabel = #50696#44552#51452
      FieldName = 'BANK_OWNER'
    end
    object vt_companyREMARK: TStringField
      DisplayLabel = #48708#44256#49324#54637
      FieldName = 'REMARK'
      Size = 200
    end
    object vt_companyCOMP_KIND: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = #44144#47000#52376#44396#48516
      FieldName = 'COMP_KIND'
    end
    object vt_companyCOMP_NAME: TStringField
      DisplayLabel = #44144#47000#52376#47749
      FieldName = 'COMP_NAME'
      Size = 30
    end
    object vt_companyAPPROVED: TSmallintField
      DisplayLabel = #49849#51064#50668#48512
      FieldName = 'APPROVED'
    end
    object vt_companyREG_DATE: TDateField
      DisplayLabel = #46321#47197#51068#51088
      FieldName = 'REG_DATE'
    end
  end
  object vd_company: TDataSource
    DataSet = vt_company
    Left = 384
    Top = 360
  end
end
