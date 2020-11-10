object fmStaticCheckInsert: TfmStaticCheckInsert
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #51221#51201#54217#44032
  ClientHeight = 490
  ClientWidth = 470
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
  object cxGroupBox6: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alTopCenter
    Caption = #51221#51201#51088#49464#54217#44032#54637#47785
    Style.LookAndFeel.SkinName = 'Black'
    Style.Shadow = False
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 0
    ExplicitWidth = 548
    Height = 401
    Width = 470
    object cxGrid5: TcxGrid
      Left = 177
      Top = 15
      Width = 266
      Height = 376
      Align = alClient
      TabOrder = 0
      LookAndFeel.SkinName = 'Black'
      ExplicitLeft = 113
      ExplicitWidth = 139
      ExplicitHeight = 203
      object gPoint: TcxGridDBTableView
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
        DataController.DataSource = fmStaticCheck.d_static_checkpoint
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gPointID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gPointBODY_ID: TcxGridDBColumn
          DataBinding.FieldName = 'BODY_ID'
          Visible = False
        end
        object gPointPOINT_NAME: TcxGridDBColumn
          Caption = #52769#51221#54637#47785
          DataBinding.FieldName = 'POINT_NAME'
        end
      end
      object cxG5L1: TcxGridLevel
        GridView = gPoint
      end
    end
    object cxGrid8: TcxGrid
      Left = 3
      Top = 15
      Width = 174
      Height = 376
      Align = alLeft
      TabOrder = 1
      LookAndFeel.SkinName = 'Black'
      ExplicitHeight = 203
      object gBody: TcxGridDBTableView
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
        DataController.DataSource = fmStaticCheck.d_static_body
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gBodyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gBodyBODY_POINT: TcxGridDBColumn
          Caption = #49888#52404#54637#47785
          DataBinding.FieldName = 'BODY_POINT'
        end
      end
      object cxGL1: TcxGridLevel
        GridView = gBody
      end
    end
    object Panel13: TPanel
      Left = 443
      Top = 15
      Width = 24
      Height = 376
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 252
      ExplicitHeight = 203
      object pnlResultMid: TPanel
        Left = 0
        Top = 120
        Width = 24
        Height = 40
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object lblMid: TLabel
          Left = 5
          Top = 7
          Width = 14
          Height = 26
          Caption = #51473#46321
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlResultSmall: TPanel
        Left = 0
        Top = 80
        Width = 24
        Height = 40
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label5: TLabel
          Left = 5
          Top = 7
          Width = 14
          Height = 26
          Caption = #44221#48120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlResultOK: TPanel
        Left = 0
        Top = 40
        Width = 24
        Height = 40
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object lblOK: TLabel
          Left = 5
          Top = 7
          Width = 14
          Height = 26
          Caption = #51221#49345
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlResultNone: TPanel
        Left = 0
        Top = 0
        Width = 24
        Height = 40
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 3
        object Label3: TLabel
          Left = 5
          Top = 7
          Width = 14
          Height = 26
          Caption = #50630#51020
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
      end
      object pnlResultBig: TPanel
        Left = 0
        Top = 160
        Width = 24
        Height = 216
        Align = alClient
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        ExplicitHeight = 43
        object lblBig: TLabel
          Left = 5
          Top = 7
          Width = 14
          Height = 26
          Caption = #49900#44033
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = #44404#47548
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
      end
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 0
    Top = 401
    Align = alTop
    Alignment = alTopCenter
    Caption = #51221#51201#51088#49464#54217#44032
    Style.LookAndFeel.SkinName = 'Black'
    Style.Shadow = False
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 1
    ExplicitTop = 228
    ExplicitWidth = 279
    Height = 90
    Width = 470
    object chgStaticResults: TRadioGroup
      Left = 8
      Top = 21
      Width = 264
      Height = 49
      Caption = #52769#51221#44208#44284
      Columns = 5
      Items.Strings = (
        #50630#51020
        #51221#49345
        #44221#48120
        #51473#46321
        #49900#44033)
      TabOrder = 0
    end
    object btnSaveResults: TBitBtn
      Left = 294
      Top = 25
      Width = 119
      Height = 25
      Caption = #52769#51221#44208#44284#51200#51109
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
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object btnRetrieveResults: TBitBtn
      Left = 294
      Top = 49
      Width = 119
      Height = 25
      Caption = #52769#51221#44208#44284#51312#54924
      DoubleBuffered = True
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADADADAD00ADAD000000000910000A0FFFF0FF9F10FF0D0FF00009F10F
        FF0A0F0787701088FF0D0078E7F70FFFFF0A008E878F08888F0D00EFE7E80FFF
        FF0A007FF78708888F0D0F07E770FFFFFF0A0F8000088888FF0D0FFFF0FFFFFF
        FF0A444444444444444D444444444444444A444444444444444D}
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
end
