object fmCompareList3: TfmCompareList3
  Left = 0
  Top = 0
  Caption = #51088#49464#49324#51652#51312#54924
  ClientHeight = 669
  ClientWidth = 1304
  Color = clBtnFace
  DoubleBuffered = True
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
  object pnlMember: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 669
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object pnlRoot: TPanel
      Left = 0
      Top = 0
      Width = 353
      Height = 669
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 1
        Top = 1
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 0
        Align = alClient
        Alignment = alTopCenter
        Caption = #54924#50896#51221#48372
        Style.LookAndFeel.SkinName = 'Black'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Black'
        StyleFocused.LookAndFeel.SkinName = 'Black'
        StyleHot.LookAndFeel.SkinName = 'Black'
        TabOrder = 0
        Height = 668
        Width = 351
        object cxGrid1: TcxGrid
          Left = 3
          Top = 40
          Width = 345
          Height = 618
          Align = alClient
          TabOrder = 0
          LookAndFeel.SkinName = 'Black'
          object gridCustomer: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
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
            OnFocusedRecordChanged = gridCustomerFocusedRecordChanged
            DataController.DataSource = dmDBCommon.ds_IMAGES_SEL_BYDATE_PERIOD
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.FocusRect = False
            OptionsView.ScrollBars = ssVertical
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clRed
            object gridCustomerColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'CUST_ID'
              Visible = False
              Width = 120
            end
            object gridCustomerP_DATE: TcxGridDBColumn
              Caption = #52524#50689#51068#51088
              DataBinding.FieldName = 'P_DATE'
              OnCustomDrawCell = gridCustomerP_DATECustomDrawCell
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 63
            end
            object gridCustomerCUST_ID: TcxGridDBColumn
              Caption = #54924#50896#47749
              DataBinding.FieldName = 'CUST_ID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'UID'
              Properties.ListColumns = <
                item
                  FieldName = 'CNAME'
                end>
              Properties.ListSource = dmDBCommon.ds_CUSTOMER_SEL_LOOK_TEL
              Width = 114
            end
            object gridCustomerCNT: TcxGridDBColumn
              Caption = #49324#51652
              DataBinding.FieldName = 'CNT'
              HeaderAlignmentHorz = taCenter
              Width = 34
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gridCustomer
          end
        end
        object Panel1: TPanel
          Left = 3
          Top = 15
          Width = 345
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            Left = 5
            Top = 5
            Width = 56
            Height = 13
            Caption = #51312#54924#44592#44036':'
          end
          object s_date: TDateTimePicker
            Left = 63
            Top = 2
            Width = 93
            Height = 21
            Date = 41963.425637268520000000
            Time = 41963.425637268520000000
            ImeName = 'Microsoft IME 2010'
            TabOrder = 0
          end
          object e_date: TDateTimePicker
            Left = 157
            Top = 2
            Width = 93
            Height = 21
            Date = 41963.425637268520000000
            Time = 41963.425637268520000000
            ImeName = 'Microsoft IME 2010'
            TabOrder = 1
          end
          object btnView: TBitBtn
            Left = 250
            Top = 0
            Width = 35
            Height = 24
            Hint = #51312#54924
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              000000000000000000000000000200000006000000090000000A0000000A0000
              000B0000000B0000000B0000000B0000000B0000000700000002000000000000
              000000000000000000000000000579462CBDA7613EFFA7623DFFA7623DFFA661
              3DFFA6623CFFA8613DFFA7623DFFA7613EFF78462BBF00000007000000090000
              000E0000000F0000000F00000017A96440FFCE8A5BFFCB8454FFC77F50FFC785
              59FFC37C4EFFC98151FFCB8354FFC98153FFA9643FFF0000000A7D5345C0A96E
              5CFFA86D5AFFA76B58FFBD9589FFAB6641FFCF8C62FFC67C4FFFCD9371FFFFEA
              E0FFF7DAD0FFC2764AFFC67E51FFCA8358FFAB6641FF0000000AB17865FFF9F3
              EFFFF8F1ECFFF8F1ECFFF3EDEAFFAE6844FFD19066FFC77F53FFCD9575FFFFEA
              E3FFF9E0D6FFC27B4EFFC98055FFCB885BFFAE6843FF0000000AB37C6BFFF9F5
              F0FFF5EFE9FFF6EEE8FFF2ECE8FFB16B45FFD2946CFFCB8458FFC37D51FFBF81
              59FFBC784FFFC68054FFCA8459FFCD8B5FFFB16B46FF00000009B78371FFFAF5
              F1FFC69F8FFFC69E90FFD3B9B0FFB36E49FFD79F79FFD19268FFC9895FFFE9CA
              BAFFDEB9A3FFC38258FFCE8C63FFD19169FFB36E48FF00000009BB8876FFFAF7
              F3FFF7F1ECFFF7F0ECFFF4EFECFFB6714BFFD9A784FFCD936AFFC2855DFFE4C6
              B4FFFFF0EDFFDFBEABFFC98F6BFFD59D76FFB6714BFF00000008BF8C7BFFFBF8
              F4FFC8A294FFC8A193FFD5BBB1FFBA7750FFD6A782FFE0BFA9FFE8CEC0FFC08B
              69FFFEF2EDFFFFF4EFFFE4C7B4FFD49D76FFB9744DFF00000008C29281FFFCF9
              F7FFF9F4F0FFF9F3F0FFF6F2F0FFC07F58FFD9AC89FFE5CAB9FFFFF7F2FFD0A9
              93FFFAECE7FFFFF4F1FFE7CBBDFFD6A27CFFC07F58FF00000007C59787FFFCF9
              F7FFCAA697FFC9A597FFD8BEB5FFC4845DFFE3BA98FFD09F79FFECD7CAFFFFF8
              F4FFFFF8F4FFE8CFC1FFCF9D78FFDDB18BFFC4845DFF00000006CA9C8CFFFCF9
              F9FFFAF6F4FFFBF6F3FFF8F5F3FFC78861FFE8C3A1FFDCAF86FFD6A47CFFCF9F
              77FFD09F77FFD7A57CFFDEB087FFE4BA93FFC68860FF00000006CDA293FFFDFB
              FAFFCCA89AFFCCA79AFFD9C2B9FFCA8C65FFEBC8A8FFEAC8A7FFE9C8A8FFE8C7
              A5FFE9C6A5FFEAC7A6FFEAC6A5FFEAC6A4FFCA8C65FF00000005D0A797FFFDFC
              FBFFFCF8F7FFFBF8F7FFFAF8F7FFD8A98CFFCE8F69FFCE8F69FFCC8F69FFCE8F
              69FFCC8F69FFCE8F69FFCC8F68FFCE8F69FF976A4EC000000003D3AB9CFFFEFC
              FBFFFEFCFBFFFEFCFBFFFEFDFCFFFDFCFBFFFCFBFAFFFBFAF9FFFAFAF8FFFAFA
              F9FFD0ACA1FF0000000E000000040000000400000003000000019F8277C2D5AE
              9FFFD3AC9CFFD2AA9AFFD1A898FFCFA695FFCEA293FFCCA191FFCA9E8DFFC99C
              8BFF947166C30000000700000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = btnViewClick
          end
        end
      end
    end
  end
  object pgcCompareFrame: TPanel
    Left = 353
    Top = 0
    Width = 951
    Height = 669
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object compareGroupLeftTop: TcxGroupBox
      Tag = 1
      Left = 0
      Top = 0
      Align = alClient
      Caption = #51088#49464#49324#51652
      Style.BorderColor = clWindowFrame
      Style.LookAndFeel.SkinName = 'Black'
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 669
      Width = 951
      inline frmImageMultiView1: TfrmImageMultiView
        Left = 3
        Top = 15
        Width = 945
        Height = 644
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 15
        ExplicitWidth = 945
        ExplicitHeight = 644
        inherited Panel1: TPanel
          Width = 945
          Height = 644
          ExplicitWidth = 945
          ExplicitHeight = 644
          inherited PanelButtons: TPanel
            Width = 945
            ExplicitWidth = 945
            inherited Label1: TLabel
              Height = 19
            end
            inherited edtTrackBar: TcxSpinEdit
              ExplicitHeight = 19
            end
            inherited icbThumbSize: TcxImageComboBox
              ExplicitHeight = 23
            end
          end
          inherited ImageEnMView1: TImageEnMView
            Width = 945
            Height = 619
            ExplicitWidth = 945
            ExplicitHeight = 619
          end
        end
      end
    end
  end
  object BMDThread1: TBMDThread
    UpdateEnabled = False
    Left = 88
    Top = 408
  end
end
