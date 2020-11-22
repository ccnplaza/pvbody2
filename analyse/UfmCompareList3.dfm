object fmCompareList3: TfmCompareList3
  Left = 0
  Top = 0
  Caption = #51068#48324#51312#54924
  ClientHeight = 669
  ClientWidth = 1304
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
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
          Top = 42
          Width = 345
          Height = 616
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
          Top = 17
          Width = 345
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 52
            Height = 25
            Align = alLeft
            Caption = #51312#54924#44592#44036':'
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object s_date: TDateTimePicker
            AlignWithMargins = True
            Left = 53
            Top = 1
            Width = 93
            Height = 23
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Date = 41963.425637268520000000
            Time = 41963.425637268520000000
            ImeName = 'Microsoft IME 2010'
            TabOrder = 0
            OnCloseUp = s_dateCloseUp
          end
          object e_date: TDateTimePicker
            AlignWithMargins = True
            Left = 148
            Top = 1
            Width = 93
            Height = 23
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Date = 41963.425637268520000000
            Time = 41963.425637268520000000
            ImeName = 'Microsoft IME 2010'
            TabOrder = 1
            OnCloseUp = e_dateCloseUp
          end
          object btnView: TBitBtn
            AlignWithMargins = True
            Left = 242
            Top = 0
            Width = 35
            Height = 25
            Hint = #51312#54924
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
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
          object btnSelect: TBitBtn
            AlignWithMargins = True
            Left = 277
            Top = 0
            Width = 62
            Height = 25
            Hint = #51312#54924
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = #49440#53469
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
              DADAADADADADADADADADDAD4DAD0DADAD0DAADA44DA0AD000DADDA4444DA00DA
              0ADAA444444DA0A000AD444444DA00DADA0A44A44DA0000DAD0D4AD4DAD000DA
              DAD04DADADA000ADA00D4ADADAD00000DA0AA4ADADA0000000A0DADADADA0000
              0000ADADADADA00000ADDADADADADADADADAADADADADADADADAD}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = btnSelectClick
          end
        end
      end
    end
  end
  object compareGroupLeftTop: TcxGroupBox
    Tag = 1
    AlignWithMargins = True
    Left = 354
    Top = 1
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    Caption = #51088#49464#49324#51652'('#54200#51665'='#45908#48660#53364#47533')'
    Style.BorderColor = clWindowFrame
    Style.LookAndFeel.SkinName = 'Black'
    Style.TextStyle = []
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 1
    Height = 667
    Width = 949
    object Panel2: TPanel
      Left = 3
      Top = 17
      Width = 943
      Height = 640
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object PanelButtons: TPanel
        Left = 0
        Top = 0
        Width = 943
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 28
          Height = 19
          Align = alLeft
          Caption = #48372#44592':'
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object edtTrackBar: TcxSpinEdit
          AlignWithMargins = True
          Left = 35
          Top = 1
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Properties.ImmediatePost = True
          Properties.Increment = 5.000000000000000000
          Properties.MaxValue = 1000.000000000000000000
          Properties.MinValue = 50.000000000000000000
          Properties.UseCtrlIncrement = True
          Properties.OnEditValueChanged = edtTrackBarPropertiesEditValueChanged
          TabOrder = 0
          Value = 100
          Width = 51
        end
        object btnDelete: TcxButton
          AlignWithMargins = True
          Left = 155
          Top = 1
          Width = 65
          Height = 23
          Hint = #49440#53469#49325#51228
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #49325#51228
          LookAndFeel.SkinName = 'DevExpressStyle'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
            76E4120852AD06031B4D0000000E000000030000000000000000000000000000
            000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
            C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
            03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
            D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
            5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
            BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
            A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
            CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
            BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
            EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
            CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
            E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
            D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
            E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
            D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
            E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
            DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
            EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
            DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
            D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
            D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
            A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
            79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
            BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
            050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
            EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
            000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
            EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
            000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
            B5D040437D951212223000000004000000010000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnDeleteClick
        end
        object btnEditImage: TcxButton
          AlignWithMargins = True
          Left = 222
          Top = 1
          Width = 65
          Height = 23
          Hint = #51060#48120#51648#49688#51221
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #54200#51665
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000000000000000000040000000F000000110000000B000000040000
            0001000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000E431B10FF31130BE1190A0598030407420000
            000C000000020000000000000000000000000000000000000000000000000000
            000000000000000000000000000D673C29DCB8C7D2FF7789A3FF224084FF040F
            34960000000F0000000200000000000000000000000000000000000000000000
            0003000000090000000E0000001741251A97869AB3FFC7E3F6FF1B65B9FF286B
            ABFF0412379C0000001D000000120000000D0000000400000000000000000000
            0008285287CA2A60ABFF5D85BDFF8097B7FF458BC6FFDDFEFDFF4DB4E6FF1B67
            BAFF2E73B1FF425C92FF587CB3FF2557A5FF0000000B00000000000000000000
            000B3D77BBFF8FD3F4FF7CC9F0FF76C2E8FF509DCDFF439FD5FFDDFEFDFF55C0
            ECFF1D6ABCFF337BB6FF3D6096FF202B47930000000900000000000000000000
            000B417EBEFF9AD9F5FF85CFF2FF93D4F3FFBAE1F0FF5FA4D0FF48A5D8FFDDFE
            FDFF5DCBF2FF206EBFFF3883BCFF07193E950000000B00000002000000000000
            000A4784C1FFA6DEF7FF8ED5F4FF22529DFF22529CFF71A4CDFF58A3D2FF4BAB
            DAFFDDFEFDFF64D5F7FF2474C1FF3C8BC1FF071B418E00000006000000000000
            00094C8AC5FFB0E4F8FF98DAF6FF133D84FF5D91C5FF8FD4F3FF95D2EDFF629C
            C9FF4EAFDDFFDDFEFDFF6BDEFBFF287AC5FF15438DFF00000008000000000000
            0008518FC9FFB8E8FAFFA0DFF7FF598CBFFF9CDCF6FFA6DFF7FF6793C3FF2735
            538C1C44638B51B2DFFFDDFEFDFF4CA7D7FF0F2B4F8800000004000000000000
            00075695CCFFC1EDFBFFA8E3F9FFA6E3F8FFB0E5F9FF6F9BC9FF0D244B880000
            0008000000061B456385327FBFFF163A5A860000000500000001000000000000
            0006599BCFFFC9F0FBFFAFE8FAFFBAEAFBFF77A2CEFF112A4F87000000060000
            0001000000010000000200000004000000030000000100000000000000000000
            000560A0D1FFCFF2FCFFC1EFFCFF7FAAD3FF142F548500000005000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            000463A5D5FFDCF7FDFF86B0D7FF183556840000000400000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000467A9D7FF90B8DBFF1C3A5A83000000030000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00026AADDAFF20405E8200000003000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnEditImageClick
        end
        object btnStaticCheck: TcxButton
          AlignWithMargins = True
          Left = 289
          Top = 1
          Width = 89
          Height = 23
          Hint = #51221#51201#54217#44032
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #51221#51201#54217#44032
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000100000004000000090000000B0000000C0000000C0000
            0009000000050000000100000000000000000000000000000000000000000000
            0000000000020000000936231D63744B3EBD966050EDA46857FF965F50ED734A
            3DBE36221C630000000A00000003000000000000000000000000000000000000
            00040E090722714A3DB8B68576FFDCC4BBFFEFE3DDFFF7EFEAFFEEE2DCFFDCC3
            BAFFB48373FF70473BB80E090723000000040000000000000000000000031810
            0D319B6A59EAD8BDB4FFF6EEEAFFF7F0EBFFF7EFEBFFF7F0EBFFF7EFEAFFF6EF
            EAFFF6EDE9FFD6BAB1FF976554EA0F0A082600000003000000000201010C8C5D
            4ED4E0CAC1FFFBF1E8FFFBF8F5FFF7F0ECFFF7F0ECFFF7F0EBFFF7F0EBFFF6F0
            EBFFFBF8F5FFE4E5F9FFDCC4BBFF734A3DB80000000900000001402B2568C195
            87FFF9EEE5FFE2A568FFEECDACFFF8F1ECFFF7F0ECFFF7F0ECFFF8F1ECFFF7F0
            ECFF9CA2E8FF4855DAFFE4E3F3FFBC8F7FFF39262064000000047D5449BBE2CB
            C5FFEDC8A4FFE1A365FFE8BB90FFF8F1EDFFF7F1EDFFF8F1EDFFF7F1EDFFF8F1
            ECFF7E86E1FF4351DAFF8F97E8FFDDC4BBFF7A5043BC00000007A57362ECF4EC
            E8FFE6B07AFFE3A669FFF4E5D7FFF8F2EEFF8D807CFF2C1C16FF8C807CFFF8F2
            EDFFD9D5EAFF4554DBFF5966E0FFF0E4DEFF9E6A5AEA00000008B6806EFFFAF7
            F5FFE6AE73FFE5AB6FFFFAF3EFFFF9F3EFFF523B33FF674E47FF362420FFF8F2
            EFFFF6F1F1FF4956DDFF4D5CDEFFF6F0ECFFAC7564FA00000008A97769ECF6EE
            EBFFE8B782FFE6AF74FFF9EEE3FFF9F4F0FFA1918BFF4E342DFF48332DFFC8BD
            B9FFF2F1F7FF707BE1FF606CE1FFF2E7E3FFA27060EA00000007845E53B9E5D2
            CBFFF0D1AFFFE8B379FFEFC9A0FFFDFCFBFFFAF6F4FFF9F4F1FFDAD3CEFF624B
            43FFB1A9BAFFC2C1E9FFADAFE9FFE2CDC5FF7F5A4DBA0000000543312B61CCA5
            97FFFBF4ECFFEBBB85FFEAB67FFFF0CBA3FFFAEFE2FFFFFDFCFFFCF8F3FFD8C7
            BAFF634A44FFA69FB6FFF4F0F3FFC79D91FF3E2C266000000003020201089971
            62CFE3CEC5FFF8EADAFFEDBD88FFEBBA84FFECBC83FFECBC83FFEEC292FFF4DF
            CBFFD7C2B1FF675047FFE1C9C1FF7F5B4FB40000000600000000000000011C15
            122AB18675EADEC4BAFFFBF2ECFFF3D7B7FFEFC595FFEDBD88FFEEC595FFF4D9
            BCFFFAF4F1FFDCC1B8FFAC7D6FE9120D0B1F0000000100000000000000000000
            0001100C0A1B846457B2CDA596FFEAD9D3FFF8F1EFFFFEFDFDFFF8F1EFFFEAD9
            D2FFCBA292FF836154B3100C0A1B000000020000000000000000000000000000
            000000000001000000033A2C265073564D9B9A7566CCBE8F7DF99A7365CC7256
            4B9B392B25510000000400000001000000000000000000000000}
          TabOrder = 3
          OnClick = btnStaticCheckClick
        end
        object cxButton1: TcxButton
          AlignWithMargins = True
          Left = 380
          Top = 1
          Width = 75
          Height = 23
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #44540#50977'/'#44264#44201
          TabOrder = 4
          OnClick = cxButton1Click
        end
        object btnSave: TcxButton
          AlignWithMargins = True
          Left = 88
          Top = 1
          Width = 65
          Height = 23
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = #51200#51109
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000040000
            00130000001E0000002000000020000000200000002100000021000000210000
            002200000022000000220000002300000021000000160000000500000012281E
            16CB37291EFF463A31FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D
            3DFFAD6839FFAB6535FF42362EFF3D3026FF241A13CE00000015000000193B2C
            21FF685C54FF483C34FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B5
            79FFE2B276FFE2B273FF443931FF51433AFF34261DFF0000001E000000183E2F
            24FF6C6057FF4A3F37FFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A6
            6DFFD4A56AFFD4A268FF473B33FF5B4F47FF37291EFF0000001D000000164031
            26FF6F645CFF4C4038FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EF
            EAFFF6EFEAFFF6EFE9FF463B34FF5D5249FF3A2C21FF0000001B000000144434
            29FF73675FFF4F443CFFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1
            EBFFF7F0EBFFF7F0ECFF4A4037FF5F534BFF3D2E23FF00000019000000124637
            2CFF776B63FF50453DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF4E433BFF61544CFF403126FF0000001700000010493A
            2FFF796E66FF50453DFF61564EFF60564EFF60554DFF5F544CFF5E544CFF5E53
            4BFF5D524AFF5C5249FF5B5149FF61554DFF433429FF000000150000000E4C3D
            32FF7C706AFF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B43
            3AFF594139FF584038FF573F37FF63574FFF46362DFF000000130000000D4E3F
            35FF80746DFF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7
            CAFFF3EAE2FFF3E9E2FF5A4139FF645850FF483A2FFF000000110000000B5142
            36FF827770FF70564DFFF9F5F2FFF4EAE4FFF1E6DEFFEBDCD2FFE9D9CCFF4E41
            3DFF60534CFFF3EAE3FF5D453CFF655951FF4C3D32FF0000000F000000095344
            39FF857A73FF755A50FFFAF6F3FFF5EDE7FFF4EDE6FFF4ECE6FFEFE2DAFF493D
            38FF5A4D46FFF4EBE4FF60483FFF655A52FF4F3F34FF0000000D000000075545
            3AFF887D76FF795E54FFFAF6F4FFF5EEE9FFF5EDE7FFF4EDE7FFF4ECE6FF473A
            36FF483D36FFE9D9CDFF644C43FF675A52FF514137FF0000000B000000065748
            3DFF898079FF7C6157FFFAF7F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF6F3FFFAF5
            F2FFF5EEE9FFF4ECE6FF695046FF82776FFF534439FF00000009000000034235
            2EC058493DFF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E
            64FF82695FFF7D645BFF6E544AFF56453BFF3F332BC200000005000000000000
            0002000000030000000400000004000000040000000400000005000000050000
            0005000000050000000500000006000000060000000400000001}
          TabOrder = 5
          OnClick = btnSaveClick
        end
      end
      object ImageEnMView1: TImageEnMView
        Left = 0
        Top = 25
        Width = 943
        Height = 615
        Background = clWindowFrame
        GridWidth = -1
        StoreType = ietFastThumb
        ThumbWidth = 250
        ThumbHeight = 400
        TextMargin = 0
        ThumbnailOptionsEx = [ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages, ietxAutoPadThumbnailColumns, ietxCenterSingleFrame]
        PopupMenus = [impDefault, impSelection]
        Zoom = 120.000000000000000000
        OnImageSelect = ImageEnMView1ImageSelect
        SelectionWidth = 3
        SelectionColor = clRed
        Style = iemsFlat
        AutoAdjustStyle = True
        ThumbnailsBackground = clBtnShadow
        ThumbnailsBackgroundSelected = clBlue
        ThumbnailsBackgroundHover = clYellow
        MultiSelectionOptions = []
        OnChanged = ImageEnMView1Changed
        OnAfterEvent = ImageEnMView1AfterEvent
        DefaultTopText = iedtNone
        DefaultInfoText = iedtFilename
        DefaultBottomText = iedtImageDimAndSize
        Align = alClient
        ThumbnailResampleFilter = rfNone
        SelectedFontColor = clWhite
        TabOrder = 1
        OnDblClick = ImageEnMView1DblClick
        OnDragDrop = ImageEnMView1DragDrop
        OnDragOver = ImageEnMView1DragOver
        OnEndDrag = ImageEnMView1EndDrag
        OnMouseMove = ImageEnMView1MouseMove
        ThreadPoolSize = 100
      end
      object PanelMessage: TPanel
        Left = 278
        Top = 327
        Width = 241
        Height = 57
        Color = clRed
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 55
          Top = 15
          Width = 141
          Height = 26
          Caption = #45936#51060#53552' '#47196#46377#51473#51077#45768#45796'. '#13#10#51104#49884#47564' '#44592#45796#47140#51452#49464#50836'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object ImageEnView1: TImageEnView
      Left = 232
      Top = 469
      Width = 105
      Height = 105
      Background = clBtnFace
      Visible = False
      TabOrder = 0
    end
  end
  object BMDThread1: TBMDThread
    UpdateEnabled = False
    Left = 160
    Top = 256
  end
end
