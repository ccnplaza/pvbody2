object fmLayerEditor: TfmLayerEditor
  Left = 199
  Top = 87
  BorderStyle = bsDialog
  Caption = #47112#51060#50612' '#50640#46356#53552
  ClientHeight = 826
  ClientWidth = 1219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #45208#45588#44256#46357
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 939
    Top = 0
    Width = 280
    Height = 826
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object lblSelectedLayer: TLabel
      Left = 10
      Top = 8
      Width = 107
      Height = 16
      Caption = 'lblSelectedLayer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRectangle: TLabel
      Left = 10
      Top = 29
      Width = 63
      Height = 15
      Caption = 'Rectangle:'
    end
    object grpStyle: TGroupBox
      Left = 12
      Top = 183
      Width = 261
      Height = 273
      Caption = #49828#53440#51068
      TabOrder = 0
      object lblBorderWidth: TLabel
        Left = 32
        Top = 52
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #45331#51060':'
        Enabled = False
      end
      object lblGradient: TLabel
        Left = 20
        Top = 115
        Width = 70
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = #44536#46972#46356#50616#53944':'
        Enabled = False
      end
      object lblOpacity: TLabel
        Left = 14
        Top = 149
        Width = 40
        Height = 15
        Caption = #53804#47749#46020':'
      end
      object lblOperation: TLabel
        Left = 14
        Top = 176
        Width = 64
        Height = 15
        Caption = #50724#54140#47112#51060#49496':'
      end
      object lblFeather: TLabel
        Left = 14
        Top = 203
        Width = 52
        Height = 15
        Caption = #53076#45320#48660#47084':'
      end
      object edtBorderWidth: TEdit
        Left = 98
        Top = 48
        Width = 48
        Height = 23
        Enabled = False
        TabOrder = 0
        Text = '0'
        OnChange = LayerControlChange
      end
      object updBorderWidth: TUpDown
        Left = 146
        Top = 48
        Width = 16
        Height = 21
        Associate = edtBorderWidth
        Enabled = False
        TabOrder = 1
      end
      object chkBorder: TCheckBox
        Left = 14
        Top = 21
        Width = 74
        Height = 17
        Caption = #48372#45908'/'#46972#51064':'
        TabOrder = 2
        OnClick = StyleControlChange
      end
      object chkFill: TCheckBox
        Left = 14
        Top = 85
        Width = 67
        Height = 17
        Caption = #52292#50864#44592':'
        TabOrder = 3
        OnClick = StyleControlChange
      end
      object cmbGradient: TComboBox
        Left = 98
        Top = 112
        Width = 104
        Height = 23
        Style = csDropDownList
        Enabled = False
        TabOrder = 4
        OnChange = StyleControlChange
        Items.Strings = (
          'None'
          'Horizontal'
          'Vertical'
          'Horz Center'
          'Vert Center'
          'Diagonal '
          'Diagonal 2')
      end
      object btnBorderColor: TIEColorButton
        Left = 98
        Top = 17
        Width = 47
        Height = 25
        Hint = 'Click to set the border color'
        OnChange = LayerControlChange
        Enabled = False
        TabOrder = 5
      end
      object btnFillColor: TIEColorButton
        Left = 98
        Top = 81
        Width = 47
        Height = 25
        Hint = 'Click to set the fill color'
        OnChange = LayerControlChange
        Enabled = False
        TabOrder = 6
      end
      object btnFillColor2: TIEColorButton
        Left = 210
        Top = 110
        Width = 35
        Height = 25
        Hint = 'Click to set the secondary gradient color'
        OnChange = LayerControlChange
        Enabled = False
        TabOrder = 7
      end
      object chkSoftShadow: TCheckBox
        Left = 14
        Top = 226
        Width = 107
        Height = 17
        Caption = #44536#47548#51088
        TabOrder = 8
        OnClick = LayerControlChange
      end
      object trkOpacity: TTrackBar
        Left = 83
        Top = 146
        Width = 124
        Height = 18
        Max = 100
        Frequency = 16
        Position = 100
        TabOrder = 9
        OnChange = LayerControlChange
      end
      object cmbOperation: TComboBox
        Left = 89
        Top = 172
        Width = 112
        Height = 23
        Style = csDropDownList
        TabOrder = 10
        OnChange = LayerControlChange
        Items.Strings = (
          'Normal'
          'Add (Additive)'
          'Sub (Difference)'
          'Div'
          'Mul'
          'OR'
          'AND'
          'XOR'
          'MAX (Lighten)'
          'MIN (Darken)'
          'Average'
          'Screen'
          'Negation'
          'Exclusion'
          'Overlay'
          'HardLight'
          'SoftLight'
          'XFader'
          'ColorEdge'
          'ColorBurn'
          'InverseColorDodge'
          'InverseColorBurn'
          'SoftDodge'
          'SoftBurn'
          'Reflect'
          'Glow'
          'Freeze'
          'Eat'
          'Subtractive'
          'Interpolation'
          'Stamp'
          'Red'
          'Green'
          'Blue'
          'Hue'
          'Saturation'
          'Color'
          'Luminosity')
      end
      object edtEdgeFeather: TEdit
        Left = 89
        Top = 199
        Width = 60
        Height = 23
        TabOrder = 11
        Text = '0'
        OnChange = LayerControlChange
      end
      object updEdgeFeather: TUpDown
        Left = 149
        Top = 199
        Width = 16
        Height = 21
        Associate = edtEdgeFeather
        TabOrder = 12
      end
      object chkAntiAlias: TCheckBox
        Left = 14
        Top = 247
        Width = 91
        Height = 17
        Caption = #50504#54000#50508#47532#50612#49828
        Checked = True
        State = cbChecked
        TabOrder = 13
        OnClick = LayerControlChange
      end
    end
    object PageControl1: TPageControl
      Left = 11
      Top = 462
      Width = 262
      Height = 275
      ActivePage = tabImage
      TabOrder = 1
      TabWidth = 37
      object tabImage: TTabSheet
        Caption = #44536#47548
        ExplicitTop = 25
        ExplicitHeight = 246
        object lblMagnification: TLabel
          Left = 24
          Top = 63
          Width = 52
          Height = 15
          Caption = #54869#45824#48708#50984':'
        end
        object lblMagnification2: TLabel
          Left = 24
          Top = 90
          Width = 64
          Height = 15
          Caption = #54869#45824#49828#53440#51068':'
        end
        object lblMagnification3: TLabel
          Left = 24
          Top = 119
          Width = 52
          Height = 15
          Caption = #54869#45824#49548#49828':'
        end
        object chkMagnify: TCheckBox
          Left = 10
          Top = 38
          Width = 161
          Height = 17
          Caption = #54869#45824#47112#51060#50612
          TabOrder = 0
          OnClick = LayerControlChange
        end
        object trkMagnification: TTrackBar
          Left = 101
          Top = 60
          Width = 105
          Height = 18
          Max = 1000
          Frequency = 100
          TabOrder = 1
          OnChange = LayerControlChange
        end
        object cmbMagnification: TComboBox
          Left = 107
          Top = 86
          Width = 89
          Height = 23
          Style = csDropDownList
          TabOrder = 2
          OnChange = LayerControlChange
          Items.Strings = (
            'Rectangle'
            'Ellipse')
        end
        object cmbMagnifySource: TComboBox
          Left = 107
          Top = 115
          Width = 89
          Height = 23
          Style = csDropDownList
          TabOrder = 3
          OnChange = LayerControlChange
          Items.Strings = (
            'Background'
            'Canvas')
        end
        object chkIsMask: TCheckBox
          Left = 10
          Top = 10
          Width = 122
          Height = 17
          Caption = #47112#51060#50612#47560#49828#53356
          TabOrder = 4
          OnClick = LayerControlChange
        end
        object btnCropAlpha: TButton
          Left = 10
          Top = 155
          Width = 111
          Height = 25
          Caption = #53356#47213#50508#54028
          TabOrder = 5
          OnClick = btnCropAlphaClick
        end
        object btnRestoreSize: TButton
          Left = 10
          Top = 186
          Width = 111
          Height = 25
          Caption = #50896#48376#49324#51060#51592
          TabOrder = 6
          OnClick = btnRestoreSizeClick
        end
      end
      object tabShape: TTabSheet
        Caption = #46020#54805
        object lblShape: TLabel
          Left = 10
          Top = 14
          Width = 28
          Height = 15
          Caption = #46020#54805':'
        end
        object lblModifier: TLabel
          Left = 10
          Top = 70
          Width = 56
          Height = 15
          Caption = 'Modifier:'
        end
        object cmbShape: TComboBox
          Left = 58
          Top = 14
          Width = 176
          Height = 46
          Style = csOwnerDrawFixed
          ItemHeight = 40
          TabOrder = 0
          OnChange = LayerControlChange
          OnDrawItem = cmbShapeDrawItem
          Items.Strings = (
            'Filled at runtime...')
        end
        object edtModifier: TEdit
          Left = 70
          Top = 66
          Width = 60
          Height = 23
          TabOrder = 1
          Text = '0'
          OnChange = LayerControlChange
        end
        object updModifier: TUpDown
          Left = 130
          Top = 66
          Width = 16
          Height = 23
          Associate = edtModifier
          TabOrder = 2
        end
      end
      object tabLine: TTabSheet
        Caption = #46972#51064
        object lblLabelPosition: TLabel
          Left = 10
          Top = 14
          Width = 52
          Height = 15
          Caption = #46972#48296#50948#52824':'
        end
        object lblEndShape: TLabel
          Left = 10
          Top = 70
          Width = 44
          Height = 15
          Caption = #45149' '#47784#50577':'
        end
        object lblStartShape: TLabel
          Left = 10
          Top = 43
          Width = 52
          Height = 15
          Caption = #49884#51089#47784#50577':'
        end
        object lblShapeSize: TLabel
          Left = 10
          Top = 97
          Width = 52
          Height = 15
          Caption = #47784#50577#53356#44592':'
        end
        object edtShapeSize: TEdit
          Left = 85
          Top = 93
          Width = 48
          Height = 23
          Enabled = False
          TabOrder = 0
          Text = '0'
          OnChange = LayerControlChange
        end
        object cmbLabelPosition: TComboBox
          Left = 85
          Top = 10
          Width = 133
          Height = 23
          Style = csDropDownList
          TabOrder = 1
          OnChange = LayerControlChange
          Items.Strings = (
            'Hide'
            'At Start'
            'At End'
            'Above'
            'Below'
            'Auto Above'
            'Auto Below')
        end
        object cmbEndShape: TComboBox
          Left = 85
          Top = 66
          Width = 133
          Height = 23
          Style = csDropDownList
          TabOrder = 2
          OnChange = LayerControlChange
          Items.Strings = (
            'None'
            'Arrow'
            'Circle'
            'Diamond'
            'Arrow 2'
            'Reverse Arrow'
            'Bar'
            'Dot')
        end
        object cmbStartShape: TComboBox
          Left = 85
          Top = 39
          Width = 133
          Height = 23
          Style = csDropDownList
          TabOrder = 3
          OnChange = LayerControlChange
          Items.Strings = (
            'None'
            'Arrow'
            'Circle'
            'Diamond'
            'Arrow 2'
            'Reverse Arrow'
            'Bar'
            'Dot')
        end
        object updShapeSize: TUpDown
          Left = 133
          Top = 93
          Width = 16
          Height = 23
          Associate = edtShapeSize
          Enabled = False
          TabOrder = 4
        end
        object chkRulerMode: TCheckBox
          Left = 11
          Top = 127
          Width = 78
          Height = 17
          Caption = #44600#51060#47784#46300':'
          TabOrder = 5
          OnClick = chkRulerModeClick
        end
        object cmbRulerUnits: TComboBox
          Left = 91
          Top = 125
          Width = 127
          Height = 23
          Style = csDropDownList
          Enabled = False
          TabOrder = 6
          OnChange = LayerControlChange
          Items.Strings = (
            'Pixels'
            'Inches'
            'KM'
            'Meters'
            'Centimeters'
            'Millimeters'
            'Microns'
            'Nanometers'
            'Feet'
            'Yards'
            'Miles')
        end
      end
      object tabPolyline: TTabSheet
        Caption = #54260#47532
        ImageIndex = 3
        object chkPolylineClosed: TCheckBox
          Left = 10
          Top = 10
          Width = 111
          Height = 17
          Caption = #45803#55180#45796#51473#46972#51064
          TabOrder = 0
          OnClick = chkPolylineClosedClick
        end
        object btnSetPolylineTriangle: TButton
          Left = 10
          Top = 42
          Width = 119
          Height = 25
          Caption = #49340#44033#54805#49444#51221
          TabOrder = 1
          OnClick = btnSetPolylineTriangleClick
        end
        object btnSetPolylineStar: TButton
          Left = 10
          Top = 73
          Width = 119
          Height = 25
          Caption = #48324#47784#50577#49444#51221
          TabOrder = 2
          OnClick = btnSetPolylineStarClick
        end
        object btnClearAllPoints: TButton
          Left = 10
          Top = 184
          Width = 119
          Height = 25
          Caption = #47784#46304#54252#51064#53944#49325#51228
          TabOrder = 3
          OnClick = btnClearAllPointsClick
        end
        object btnSimplifyPolygon: TButton
          Left = 10
          Top = 147
          Width = 119
          Height = 25
          Caption = #45796#51473#46972#51064' '#44036#45800#55176
          TabOrder = 4
          OnClick = btnSimplifyPolygonClick
        end
        object btnSetPolylineHeart: TButton
          Left = 10
          Top = 104
          Width = 119
          Height = 25
          Caption = #54616#53944#47784#50577#49444#51221
          TabOrder = 5
          OnClick = btnSetPolylineHeartClick
        end
      end
      object tabAngle: TTabSheet
        Caption = #44033#46020
        ImageIndex = 6
        object lblStartAngle: TLabel
          Left = 11
          Top = 14
          Width = 52
          Height = 15
          Caption = #49884#51089#44033#46020':'
        end
        object lblSweepAngle: TLabel
          Left = 11
          Top = 41
          Width = 52
          Height = 15
          Caption = #54204#52840#44033#46020':'
        end
        object btnSetAngleFont: TButton
          Left = 75
          Top = 81
          Width = 86
          Height = 25
          Caption = #54256#53944#49440#53469
          TabOrder = 0
          OnClick = btnSetFontClick
        end
        object edtStartAngle: TEdit
          Left = 98
          Top = 11
          Width = 50
          Height = 23
          TabStop = False
          TabOrder = 1
          Text = '0'
          OnChange = edtStartAngleChange
        end
        object updStartAngle: TUpDown
          Left = 148
          Top = 11
          Width = 16
          Height = 23
          Associate = edtStartAngle
          Min = -1000
          Max = 1000
          TabOrder = 2
        end
        object edtSweepAngle: TEdit
          Left = 98
          Top = 38
          Width = 48
          Height = 23
          TabStop = False
          TabOrder = 3
          Text = '0'
          OnChange = edtSweepAngleChange
        end
        object updSweepAngle: TUpDown
          Left = 146
          Top = 38
          Width = 16
          Height = 23
          Associate = edtSweepAngle
          Min = -1000
          Max = 1000
          TabOrder = 4
        end
      end
      object tabText: TTabSheet
        Caption = #47928#51088
        ImageIndex = 4
        object lblText: TLabel
          Left = 10
          Top = 14
          Width = 28
          Height = 15
          Caption = #47928#51088':'
        end
        object lblAlignment: TLabel
          Left = 10
          Top = 41
          Width = 28
          Height = 15
          Caption = #51221#47148':'
        end
        object lblTextLayout: TLabel
          Left = 11
          Top = 68
          Width = 28
          Height = 15
          Caption = #48176#52824':'
        end
        object lblTextShape: TLabel
          Left = 11
          Top = 95
          Width = 28
          Height = 15
          Caption = #47784#50577':'
        end
        object lblTextOverflow: TLabel
          Left = 11
          Top = 123
          Width = 59
          Height = 15
          Caption = 'Overflow:'
        end
        object btnSetText: TButton
          Left = 210
          Top = 8
          Width = 37
          Height = 25
          Caption = #54869#51064
          TabOrder = 0
          OnClick = btnSetTextClick
        end
        object edtText: TEdit
          Left = 42
          Top = 10
          Width = 166
          Height = 23
          Enabled = False
          TabOrder = 1
        end
        object cmbAlignment: TComboBox
          Left = 67
          Top = 37
          Width = 141
          Height = 23
          Style = csDropDownList
          TabOrder = 2
          OnChange = LayerControlChange
          Items.Strings = (
            'Left'
            'Right'
            'Center')
        end
        object cmbTextLayout: TComboBox
          Left = 67
          Top = 64
          Width = 141
          Height = 23
          Style = csDropDownList
          TabOrder = 3
          OnChange = LayerControlChange
          Items.Strings = (
            'Top'
            'Bottom'
            'Center')
        end
        object chkReadOnly: TCheckBox
          Left = 11
          Top = 148
          Width = 89
          Height = 17
          Caption = #51069#44592#51204#50857
          TabOrder = 4
          OnClick = LayerControlChange
        end
        object btnSetFont: TButton
          Left = 157
          Top = 185
          Width = 86
          Height = 25
          Caption = #54256#53944#49440#53469
          TabOrder = 5
          OnClick = btnSetFontClick
        end
        object btnActivateTextEditor: TButton
          Left = 157
          Top = 216
          Width = 86
          Height = 25
          Caption = #50640#46356#53552#50676#44592
          TabOrder = 6
          OnClick = btnActivateTextEditorClick
        end
        object chkAutoSize: TCheckBox
          Left = 11
          Top = 169
          Width = 97
          Height = 17
          Caption = #51088#46041#53356#44592
          TabOrder = 7
          OnClick = LayerControlChange
        end
        object cmbTextShape: TComboBox
          Left = 67
          Top = 91
          Width = 141
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 8
          OnChange = LayerControlChange
          OnDrawItem = cmbShapeDrawItem
        end
        object chkWordWrap: TCheckBox
          Left = 11
          Top = 190
          Width = 103
          Height = 17
          Caption = #51088#46041#51460#48148#45000
          TabOrder = 9
          OnClick = LayerControlChange
        end
        object cmbTextOverflow: TComboBox
          Left = 74
          Top = 119
          Width = 134
          Height = 23
          Style = csDropDownList
          TabOrder = 10
          OnChange = LayerControlChange
          Items.Strings = (
            'Truncate'
            'Shrink'
            'Hide')
        end
      end
      object TabSheet1: TTabSheet
        BorderWidth = 4
        Caption = #51204#52404
        ImageIndex = 5
        DesignSize = (
          246
          237)
        object memProps: TMemo
          Left = 0
          Top = 0
          Width = 246
          Height = 178
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          Lines.Strings = (
            'memProps')
          ScrollBars = ssVertical
          TabOrder = 0
          WordWrap = False
        end
        object btnUpdateProps: TButton
          Left = 171
          Top = 184
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #50629#45936#51060#53944
          TabOrder = 1
          OnClick = btnUpdatePropsClick
        end
      end
    end
    object grpGeneral: TGroupBox
      Left = 6
      Top = 47
      Width = 267
      Height = 130
      Caption = #51068#48152#50741#49496
      TabOrder = 2
      object chkLayerCropped: TCheckBox
        Left = 15
        Top = 40
        Width = 130
        Height = 17
        Caption = #48176#44221#51004#47196' '#51088#47476#44592
        TabOrder = 0
        OnClick = LayerControlChange
      end
      object chkLayerLocked: TCheckBox
        Left = 15
        Top = 61
        Width = 114
        Height = 17
        Caption = #50948#52824#51104#44552
        TabOrder = 1
        OnClick = LayerControlChange
      end
      object chkSelectable: TCheckBox
        Left = 15
        Top = 103
        Width = 89
        Height = 17
        Caption = #49440#53469
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = LayerControlChange
      end
      object chkAspectRatio: TCheckBox
        Left = 15
        Top = 82
        Width = 137
        Height = 17
        Caption = #48708#50984#51104#44552
        TabOrder = 3
        OnClick = LayerControlChange
      end
      object chkLayerVisible: TCheckBox
        Left = 15
        Top = 19
        Width = 89
        Height = 17
        Caption = #48372#51060#44592
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = LayerControlChange
      end
    end
    object btnRestoreAR: TButton
      Left = 148
      Top = 745
      Width = 125
      Height = 25
      Caption = #48708#50984#50640' '#47582#52628#44592
      TabOrder = 3
      OnClick = btnRestoreARClick
    end
    object btnSize: TButton
      Left = 11
      Top = 745
      Width = 125
      Height = 25
      Caption = #49324#51060#51592#47582#52644
      TabOrder = 4
      OnClick = btnSizeClick
    end
    object btnCenter: TButton
      Left = 10
      Top = 779
      Width = 125
      Height = 25
      Caption = #44032#50868#45936#51221#47148
      TabOrder = 5
      OnClick = btnCenterClick
    end
    object btnConvert: TButton
      Left = 148
      Top = 779
      Width = 125
      Height = 25
      Caption = #51060#48120#51648#47196' '#48320#54872
      TabOrder = 6
      OnClick = btnConvertClick
    end
    object ProgressBar1: TProgressBar
      Left = 11
      Top = 807
      Width = 262
      Height = 10
      TabOrder = 7
      Visible = False
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 939
    Height = 826
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 303
      Top = 0
      Height = 826
      ExplicitHeight = 820
    end
    object ImageEnView1: TImageEnView
      Left = 306
      Top = 0
      Width = 633
      Height = 826
      Background = clBtnFace
      BackgroundStyle = iebsChessboard
      OnProgress = ImageEnView1Progress
      OnFinishWork = ImageEnView1FinishWork
      AutoStretch = True
      AutoShrink = True
      OnLayerNotifyEx = ImageEnView1LayerNotifyEx
      OnNewLayer = ImageEnView1NewLayer
      OnMouseWheel = ImageEnView1MouseWheel
      Align = alClient
      TabOrder = 0
    end
    object pnlLeft: TPanel
      Left = 0
      Top = 0
      Width = 303
      Height = 826
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        303
        826)
      object grpMouseAction: TGroupBox
        Left = 10
        Top = 8
        Width = 283
        Height = 95
        Anchors = [akLeft, akTop, akRight]
        Caption = #47560#50864#49828' '#50529#49496
        TabOrder = 0
        DesignSize = (
          283
          95)
        object chkAddLayer: TCheckBox
          Left = 11
          Top = 20
          Width = 70
          Height = 17
          Caption = #47112#51060#50612':'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = MouseActionCtrlClick
        end
        object chkResizeLayers: TCheckBox
          Left = 11
          Top = 45
          Width = 142
          Height = 17
          Caption = #47112#51060#50612' '#51060#46041'/'#49324#51060#51592
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = MouseActionCtrlClick
        end
        object chkRotateLayers: TCheckBox
          Left = 11
          Top = 70
          Width = 97
          Height = 17
          Caption = #47112#51060#50612' '#54924#51204
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = MouseActionCtrlClick
        end
        object cmbAddLayer: TComboBox
          Left = 75
          Top = 18
          Width = 132
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          OnChange = MouseActionCtrlClick
          Items.Strings = (
            #51060#48120#51648
            #46020#54805
            #46972#51064'('#46300#47000#44613')'
            #54260#47532#46972#51064'('#46300#47000#44613')'
            #53581#49828#53944
            #44033#46020'('#46300#47000#44613')')
        end
        object btnAdd: TButton
          Left = 208
          Top = 18
          Width = 67
          Height = 25
          Hint = 'Add new layer'
          Anchors = [akTop, akRight]
          Caption = #52628#44032
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnAddClick
        end
        object Button1: TButton
          Left = 208
          Top = 44
          Width = 67
          Height = 25
          Hint = 'Add new layer'
          Anchors = [akTop, akRight]
          Caption = #51200#51109
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = Button1Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 10
        Top = 108
        Width = 283
        Height = 561
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #47112#51060#50612
        TabOrder = 1
        DesignSize = (
          283
          561)
        object lblLayerViewStyle: TLabel
          Left = 16
          Top = 535
          Width = 40
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = #49828#53440#51068':'
        end
        object IELayerMView1: TImageEnLayerMView
          Left = 11
          Top = 18
          Width = 262
          Height = 441
          Background = clWindow
          BorderStyle = bsNone
          AttachedImageEnView = ImageEnView1
          GridWidth = 1
          StoreType = ietThumb
          TextMargin = 4
          ThumbnailOptionsEx = [ietxCenterThumbnailColumn, ietxShowIconForUnknownFormat, ietxShowIconWhileLoading, ietxEnableInternalIcons, ietxStretchSmallImages]
          PopupMenus = [impDefault, impSelection]
          Style = iemsFlatAndWide
          AutoAdjustStyle = True
          ThumbnailsBackground = clWindow
          MultiSelectionOptions = [iemoRegion, iemoOptimizeForDragging, iemoSelectOnRightClick, iemoHideSelectionRect]
          DefaultTopText = iedtLayerNameInfo
          DefaultInfoText = iedtLayerSizeAndPos
          DefaultBottomText = iedtNone
          Anchors = [akLeft, akTop, akRight, akBottom]
          ThumbnailDisplayFilter = rfFastLinear
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object btnRemove: TButton
          Left = 206
          Top = 465
          Width = 67
          Height = 25
          Hint = 'Remove selected layers'
          Anchors = [akRight, akBottom]
          Caption = #49325#51228
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnRemoveClick
        end
        object btnRemoveAll: TButton
          Left = 206
          Top = 496
          Width = 67
          Height = 25
          Hint = 'Remove all layers'
          Anchors = [akRight, akBottom]
          Caption = #51204#52404#49325#51228
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnRemoveAllClick
        end
        object btnMerge: TButton
          Left = 11
          Top = 465
          Width = 78
          Height = 25
          Hint = 'Merge selected layers'
          Anchors = [akLeft, akBottom]
          Caption = #48337#54633
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnMergeClick
        end
        object btnMergeAll: TButton
          Left = 11
          Top = 496
          Width = 78
          Height = 25
          Hint = 'Merge all layers'
          Anchors = [akLeft, akBottom]
          Caption = #51204#52404#48337#54633
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnMergeAllClick
        end
        object cmbLayerViewStyle: TComboBox
          Left = 67
          Top = 530
          Width = 89
          Height = 23
          Style = csDropDownList
          Anchors = [akLeft, akBottom]
          ItemIndex = 1
          TabOrder = 5
          Text = 'Information'
          OnChange = cmbLayerViewStyleChange
          Items.Strings = (
            'Thumbnails'
            'Information'
            'Columns')
        end
        object chkBigButtons: TCheckBox
          Left = 170
          Top = 534
          Width = 66
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = #53360#48260#53948
          TabOrder = 6
          OnClick = chkBigButtonsClick
        end
      end
      object grpIENOptions: TGroupBox
        Left = 10
        Top = 670
        Width = 283
        Height = 147
        Anchors = [akLeft, akRight, akBottom]
        Caption = #50741#49496
        TabOrder = 2
        object lblZoom: TLabel
          Left = 11
          Top = 70
          Width = 28
          Height = 15
          Caption = #54869#45824':'
        end
        object lblPreviewQuality: TLabel
          Left = 11
          Top = 96
          Width = 68
          Height = 15
          Caption = #47112#51060#50612' '#54868#51656':'
        end
        object chkStampMode: TCheckBox
          Left = 11
          Top = 19
          Width = 191
          Height = 17
          Caption = #49828#53596#54532#47784#46300'('#53364#47533' '#52628#44032')'
          TabOrder = 0
          OnClick = chkStampModeClick
        end
        object chkLayerBox: TCheckBox
          Left = 11
          Top = 42
          Width = 163
          Height = 17
          Caption = #47112#51060#50612#50640' '#48149#49828' '#52628#44032
          TabOrder = 1
          OnClick = chkLayerBoxClick
        end
        object trkZoom: TTrackBar
          Left = 49
          Top = 66
          Width = 185
          Height = 20
          Max = 3000
          Min = 1
          Frequency = 100
          Position = 100
          TabOrder = 2
          OnChange = trkZoomChange
        end
        object cmbPreviewQuality: TComboBox
          Left = 125
          Top = 93
          Width = 102
          Height = 23
          Style = csDropDownList
          TabOrder = 3
          OnChange = cmbPreviewQualityChange
          Items.Strings = (
            'Fast'
            'Best (Delayed)'
            'Best Quality')
        end
        object chkLayerCaching: TCheckBox
          Left = 11
          Top = 121
          Width = 254
          Height = 17
          Caption = #52880#49884#49324#50857'('#49828#54588#46300#45716' '#48736#47492', '#47700#47784#47532#45716' '#47566#51020')'
          TabOrder = 4
          OnClick = chkLayerCachingClick
        end
      end
    end
  end
  object dlgSaveImage: TSaveImageEnDialog
    AttachedImageEnIO = ImageEnView1
    Left = 371
    Top = 24
  end
  object dlgOpenLayers: TOpenImageEnDialog
    DefaultExt = 'ien'
    Filter = 
      'ImageEn Layers (*.ien)|*.ien;*.imageen;*.lyr|Photoshop (*.psd;*.' +
      'psb)|*.psd;*.psb|All Files|*.*'
    AutoSetFilter = False
    Left = 530
    Top = 24
  end
  object dlgSaveLayers: TSaveImageEnDialog
    DefaultExt = 'ien'
    Filter = 
      'ImageEn Layers (*.ien)|*.ien|PhotoShop (*.psd)|*.psd|SVG (*.svg)' +
      '|*.svg'
    AutoSetFilter = False
    Left = 292
    Top = 24
  end
end
