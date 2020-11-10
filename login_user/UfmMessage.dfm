object fmMessage: TfmMessage
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #47700#49884#51648
  ClientHeight = 310
  ClientWidth = 547
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 529
    Height = 294
    Caption = #47700#49884#51648
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 51
      Width = 30
      Height = 13
      Caption = #51228#47785':'
    end
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 30
      Height = 13
      Caption = #49688#49888':'
    end
    object Label3: TLabel
      Left = 24
      Top = 80
      Width = 30
      Height = 13
      Caption = #45236#50857':'
    end
    object edtReceiver: TEdit
      Left = 60
      Top = 21
      Width = 373
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 0
    end
    object edtTitle: TEdit
      Left = 60
      Top = 48
      Width = 453
      Height = 21
      ImeName = 'Microsoft IME 2010'
      TabOrder = 1
    end
    object edtMessage: TMemo
      Left = 60
      Top = 75
      Width = 453
      Height = 174
      ImeName = 'Microsoft IME 2010'
      ScrollBars = ssVertical
      TabOrder = 2
      WantTabs = True
    end
    object btnSaveComp: TBitBtn
      Left = 199
      Top = 257
      Width = 75
      Height = 25
      Caption = #51200#51109
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
    end
    object btnCancel: TBitBtn
      Left = 274
      Top = 257
      Width = 75
      Height = 25
      Cancel = True
      Caption = #52712#49548
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object btnReceiverSelect: TBitBtn
      Left = 433
      Top = 19
      Width = 80
      Height = 25
      Caption = #49688#49888#51088
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
      TabOrder = 5
      OnClick = btnReceiverSelectClick
    end
  end
end
