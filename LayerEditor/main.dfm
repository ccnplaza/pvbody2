object fmain: Tfmain
  Left = 199
  Top = 87
  Caption = 'Layers Demo  - www.ImageEn.com'
  ClientHeight = 820
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 832
    Top = 0
    Width = 280
    Height = 820
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
      Width = 52
      Height = 13
      Caption = 'Rectangle:'
    end
    object grpStyle: TGroupBox
      Left = 12
      Top = 183
      Width = 261
      Height = 273
      Caption = 'Style'
      TabOrder = 0
      object lblBorderWidth: TLabel
        Left = 32
        Top = 52
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Width:'
        Enabled = False
      end
      object lblGradient: TLabel
        Left = 32
        Top = 117
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Gradient:'
        Enabled = False
      end
      object lblOpacity: TLabel
        Left = 14
        Top = 149
        Width = 41
        Height = 13
        Caption = 'Opacity:'
      end
      object lblOperation: TLabel
        Left = 14
        Top = 176
        Width = 52
        Height = 13
        Caption = 'Operation:'
      end
      object lblFeather: TLabel
        Left = 14
        Top = 203
        Width = 69
        Height = 13
        Caption = 'Edge Feather:'
      end
      object edtBorderWidth: TEdit
        Left = 98
        Top = 48
        Width = 48
        Height = 21
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
        Caption = 'Border/Line:'
        TabOrder = 2
        OnClick = StyleControlChange
      end
      object chkFill: TCheckBox
        Left = 14
        Top = 85
        Width = 67
        Height = 17
        Caption = 'Solid Fill:'
        TabOrder = 3
        OnClick = StyleControlChange
      end
      object cmbGradient: TComboBox
        Left = 98
        Top = 112
        Width = 104
        Height = 21
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
        Width = 89
        Height = 17
        Caption = 'Soft Shadow'
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
        Height = 21
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
        Height = 21
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
        Width = 71
        Height = 17
        Caption = 'Anti-Alias'
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
        Caption = 'Image'
        object lblMagnification: TLabel
          Left = 24
          Top = 63
          Width = 67
          Height = 13
          Caption = 'Magnification:'
        end
        object lblMagnification2: TLabel
          Left = 24
          Top = 90
          Width = 69
          Height = 13
          Caption = 'Magnify Style:'
        end
        object lblMagnification3: TLabel
          Left = 24
          Top = 119
          Width = 78
          Height = 13
          Caption = 'Magnify Source:'
        end
        object chkMagnify: TCheckBox
          Left = 10
          Top = 38
          Width = 161
          Height = 17
          Caption = 'Is a Magnification Layer'
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
          Height = 21
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
          Height = 21
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
          Caption = 'Layer is a Mask'
          TabOrder = 4
          OnClick = LayerControlChange
        end
        object btnCropAlpha: TButton
          Left = 10
          Top = 155
          Width = 111
          Height = 25
          Caption = 'Crop Alpha'
          TabOrder = 5
          OnClick = btnCropAlphaClick
        end
        object btnRestoreSize: TButton
          Left = 10
          Top = 186
          Width = 111
          Height = 25
          Caption = 'Restore Original Size'
          TabOrder = 6
          OnClick = btnRestoreSizeClick
        end
      end
      object tabShape: TTabSheet
        Caption = 'Shape'
        object lblShape: TLabel
          Left = 10
          Top = 14
          Width = 34
          Height = 13
          Caption = 'Shape:'
        end
        object lblModifier: TLabel
          Left = 10
          Top = 70
          Width = 42
          Height = 13
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
          Left = 58
          Top = 66
          Width = 60
          Height = 21
          TabOrder = 1
          Text = '0'
          OnChange = LayerControlChange
        end
        object updModifier: TUpDown
          Left = 118
          Top = 66
          Width = 16
          Height = 21
          Associate = edtModifier
          TabOrder = 2
        end
      end
      object tabLine: TTabSheet
        Caption = 'Line'
        object lblLabelPosition: TLabel
          Left = 10
          Top = 14
          Width = 69
          Height = 13
          Caption = 'Label Position:'
        end
        object lblEndShape: TLabel
          Left = 10
          Top = 70
          Width = 55
          Height = 13
          Caption = 'End Shape:'
        end
        object lblStartShape: TLabel
          Left = 10
          Top = 43
          Width = 61
          Height = 13
          Caption = 'Start Shape:'
        end
        object lblShapeSize: TLabel
          Left = 10
          Top = 97
          Width = 56
          Height = 13
          Caption = 'Shape Size:'
        end
        object edtShapeSize: TEdit
          Left = 85
          Top = 93
          Width = 48
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = '0'
          OnChange = LayerControlChange
        end
        object cmbLabelPosition: TComboBox
          Left = 85
          Top = 10
          Width = 133
          Height = 21
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
          Height = 21
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
          Height = 21
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
          Height = 21
          Associate = edtShapeSize
          Enabled = False
          TabOrder = 4
        end
        object chkRulerMode: TCheckBox
          Left = 11
          Top = 127
          Width = 78
          Height = 17
          Caption = 'Ruler Mode:'
          TabOrder = 5
          OnClick = chkRulerModeClick
        end
        object cmbRulerUnits: TComboBox
          Left = 91
          Top = 125
          Width = 127
          Height = 21
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
        Caption = 'Poly'
        ImageIndex = 3
        object chkPolylineClosed: TCheckBox
          Left = 10
          Top = 10
          Width = 89
          Height = 17
          Caption = 'Polyline Closed'
          TabOrder = 0
          OnClick = chkPolylineClosedClick
        end
        object btnSetPolylineTriangle: TButton
          Left = 10
          Top = 42
          Width = 119
          Height = 25
          Caption = 'Set to Triangle'
          TabOrder = 1
          OnClick = btnSetPolylineTriangleClick
        end
        object btnSetPolylineStar: TButton
          Left = 10
          Top = 73
          Width = 119
          Height = 25
          Caption = 'Set to Star'
          TabOrder = 2
          OnClick = btnSetPolylineStarClick
        end
        object btnClearAllPoints: TButton
          Left = 10
          Top = 184
          Width = 119
          Height = 25
          Caption = 'Clear All Points'
          TabOrder = 3
          OnClick = btnClearAllPointsClick
        end
        object btnSimplifyPolygon: TButton
          Left = 10
          Top = 147
          Width = 119
          Height = 25
          Caption = 'Simplify Polygon'
          TabOrder = 4
          OnClick = btnSimplifyPolygonClick
        end
        object btnSetPolylineHeart: TButton
          Left = 10
          Top = 104
          Width = 119
          Height = 25
          Caption = 'Set to Heart'
          TabOrder = 5
          OnClick = btnSetPolylineHeartClick
        end
      end
      object tabAngle: TTabSheet
        Caption = 'Angle'
        ImageIndex = 6
        object lblStartAngle: TLabel
          Left = 11
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Start Angle:'
        end
        object lblSweepAngle: TLabel
          Left = 11
          Top = 41
          Width = 66
          Height = 13
          Caption = 'Sweep Angle:'
        end
        object btnSetAngleFont: TButton
          Left = 75
          Top = 81
          Width = 86
          Height = 25
          Caption = 'Select Font'
          TabOrder = 0
          OnClick = btnSetFontClick
        end
        object edtStartAngle: TEdit
          Left = 98
          Top = 11
          Width = 50
          Height = 21
          TabStop = False
          TabOrder = 1
          Text = '0'
          OnChange = edtStartAngleChange
        end
        object updStartAngle: TUpDown
          Left = 148
          Top = 11
          Width = 16
          Height = 21
          Associate = edtStartAngle
          Min = -1000
          Max = 1000
          TabOrder = 2
        end
        object edtSweepAngle: TEdit
          Left = 98
          Top = 38
          Width = 48
          Height = 21
          TabStop = False
          TabOrder = 3
          Text = '0'
          OnChange = edtSweepAngleChange
        end
        object updSweepAngle: TUpDown
          Left = 146
          Top = 38
          Width = 16
          Height = 21
          Associate = edtSweepAngle
          Min = -1000
          Max = 1000
          TabOrder = 4
        end
      end
      object tabText: TTabSheet
        Caption = 'Text'
        ImageIndex = 4
        object lblText: TLabel
          Left = 10
          Top = 14
          Width = 26
          Height = 13
          Caption = 'Text:'
        end
        object lblAlignment: TLabel
          Left = 10
          Top = 41
          Width = 51
          Height = 13
          Caption = 'Alignment:'
        end
        object lblTextLayout: TLabel
          Left = 11
          Top = 68
          Width = 37
          Height = 13
          Caption = 'Layout:'
        end
        object lblTextShape: TLabel
          Left = 11
          Top = 95
          Width = 34
          Height = 13
          Caption = 'Shape:'
        end
        object lblTextOverflow: TLabel
          Left = 11
          Top = 123
          Width = 48
          Height = 13
          Caption = 'Overflow:'
        end
        object btnSetText: TButton
          Left = 214
          Top = 8
          Width = 29
          Height = 25
          Caption = 'Set'
          TabOrder = 0
          OnClick = btnSetTextClick
        end
        object edtText: TEdit
          Left = 42
          Top = 10
          Width = 166
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object cmbAlignment: TComboBox
          Left = 67
          Top = 37
          Width = 141
          Height = 21
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
          Height = 21
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
          Caption = 'Read-Only'
          TabOrder = 4
          OnClick = LayerControlChange
        end
        object btnSetFont: TButton
          Left = 157
          Top = 185
          Width = 86
          Height = 25
          Caption = 'Select Font'
          TabOrder = 5
          OnClick = btnSetFontClick
        end
        object btnActivateTextEditor: TButton
          Left = 157
          Top = 216
          Width = 86
          Height = 25
          Caption = 'Activate Editor'
          TabOrder = 6
          OnClick = btnActivateTextEditorClick
        end
        object chkAutoSize: TCheckBox
          Left = 11
          Top = 169
          Width = 97
          Height = 17
          Caption = 'Auto-Size'
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
          Caption = 'WordWrap'
          TabOrder = 9
          OnClick = LayerControlChange
        end
        object cmbTextOverflow: TComboBox
          Left = 67
          Top = 119
          Width = 141
          Height = 21
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
        Caption = 'All'
        ImageIndex = 5
        DesignSize = (
          246
          239)
        object memProps: TMemo
          Left = 0
          Top = 0
          Width = 246
          Height = 180
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
          Top = 186
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Update'
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
      Caption = 'General'
      TabOrder = 2
      object chkLayerCropped: TCheckBox
        Left = 15
        Top = 40
        Width = 130
        Height = 17
        Caption = 'Crop to Background'
        TabOrder = 0
        OnClick = LayerControlChange
      end
      object chkLayerLocked: TCheckBox
        Left = 15
        Top = 61
        Width = 114
        Height = 17
        Caption = 'Position Locked'
        TabOrder = 1
        OnClick = LayerControlChange
      end
      object chkSelectable: TCheckBox
        Left = 15
        Top = 103
        Width = 89
        Height = 17
        Caption = 'Selectable'
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
        Caption = 'Aspect Ratio Locked'
        TabOrder = 3
        OnClick = LayerControlChange
      end
      object chkLayerVisible: TCheckBox
        Left = 15
        Top = 19
        Width = 89
        Height = 17
        Caption = 'Visible'
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
      Caption = 'Restore Aspect Ratio'
      TabOrder = 3
      OnClick = btnRestoreARClick
    end
    object btnSize: TButton
      Left = 11
      Top = 745
      Width = 125
      Height = 25
      Caption = 'Size to Fit'
      TabOrder = 4
      OnClick = btnSizeClick
    end
    object btnCenter: TButton
      Left = 10
      Top = 779
      Width = 125
      Height = 25
      Caption = 'Center Layer'
      TabOrder = 5
      OnClick = btnCenterClick
    end
    object btnConvert: TButton
      Left = 148
      Top = 779
      Width = 125
      Height = 25
      Caption = 'Convert to Image Layer'
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
    Width = 832
    Height = 820
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 303
      Top = 0
      Height = 820
    end
    object ImageEnView1: TImageEnView
      Left = 306
      Top = 0
      Width = 526
      Height = 820
      Background = clBtnFace
      BackgroundStyle = iebsChessboard
      OnProgress = ImageEnView1Progress
      OnFinishWork = ImageEnView1FinishWork
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
      Height = 820
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        303
        820)
      object grpMouseAction: TGroupBox
        Left = 10
        Top = 8
        Width = 283
        Height = 95
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Mouse Action'
        TabOrder = 0
        DesignSize = (
          283
          95)
        object chkAddLayer: TCheckBox
          Left = 11
          Top = 20
          Width = 70
          Height = 17
          Caption = 'Add Layer:'
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
          Caption = 'Move and Resize Layers'
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
          Caption = 'Rotate Layers'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = MouseActionCtrlClick
        end
        object cmbAddLayer: TComboBox
          Left = 87
          Top = 18
          Width = 115
          Height = 21
          Style = csDropDownList
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          OnChange = MouseActionCtrlClick
          Items.Strings = (
            'Image'
            'Shape'
            'Line (Dragging)'
            'Polyline (Dragging)'
            'Text'
            'Angle (Dragging)')
        end
        object btnAdd: TButton
          Left = 208
          Top = 16
          Width = 67
          Height = 25
          Hint = 'Add new layer'
          Anchors = [akTop, akRight]
          Caption = 'Add'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnAddClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 10
        Top = 108
        Width = 283
        Height = 555
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Layers'
        TabOrder = 1
        DesignSize = (
          283
          555)
        object lblLayerViewStyle: TLabel
          Left = 16
          Top = 529
          Width = 28
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Style:'
        end
        object IELayerMView1: TImageEnLayerMView
          Left = 11
          Top = 18
          Width = 262
          Height = 435
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
          Top = 459
          Width = 67
          Height = 25
          Hint = 'Remove selected layers'
          Anchors = [akRight, akBottom]
          Caption = 'Remove'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = btnRemoveClick
        end
        object btnRemoveAll: TButton
          Left = 206
          Top = 490
          Width = 67
          Height = 25
          Hint = 'Remove all layers'
          Anchors = [akRight, akBottom]
          Caption = 'Remove All'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btnRemoveAllClick
        end
        object btnMerge: TButton
          Left = 11
          Top = 459
          Width = 67
          Height = 25
          Hint = 'Merge selected layers'
          Anchors = [akLeft, akBottom]
          Caption = 'Merge'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnMergeClick
        end
        object btnMergeAll: TButton
          Left = 11
          Top = 490
          Width = 67
          Height = 25
          Hint = 'Merge all layers'
          Anchors = [akLeft, akBottom]
          Caption = 'Merge All'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = btnMergeAllClick
        end
        object cmbLayerViewStyle: TComboBox
          Left = 50
          Top = 524
          Width = 89
          Height = 21
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
          Left = 147
          Top = 528
          Width = 97
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Big Buttons'
          TabOrder = 6
          OnClick = chkBigButtonsClick
        end
      end
      object grpIENOptions: TGroupBox
        Left = 10
        Top = 664
        Width = 283
        Height = 147
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Options'
        TabOrder = 2
        object lblZoom: TLabel
          Left = 11
          Top = 70
          Width = 30
          Height = 13
          Caption = 'Zoom:'
        end
        object lblPreviewQuality: TLabel
          Left = 11
          Top = 96
          Width = 109
          Height = 13
          Caption = 'Layer Preview Quality:'
        end
        object chkStampMode: TCheckBox
          Left = 11
          Top = 19
          Width = 191
          Height = 17
          Caption = 'Stamp Mode (one-click addition)'
          TabOrder = 0
          OnClick = chkStampModeClick
        end
        object chkLayerBox: TCheckBox
          Left = 11
          Top = 42
          Width = 163
          Height = 17
          Caption = 'Draw Box around Layers'
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
          Height = 21
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
          Width = 222
          Height = 17
          Caption = 'Layer Caching (Faster, but more memory)'
          TabOrder = 4
          OnClick = chkLayerCachingClick
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 450
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Caption = 'Open Image...'
        OnClick = Open1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Loadalllayers1: TMenuItem
        Caption = 'Load All Layers...'
      end
      object Savealllayers1: TMenuItem
        Caption = 'Save All Layers...'
        OnClick = Savealllayers1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Savemergedlayers1: TMenuItem
        Caption = 'Save Merged Layers...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
      object SaveAll1: TMenuItem
        Caption = 'Save All...'
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      OnClick = Edit1Click
      object Undo1: TMenuItem
        Caption = 'Undo'
        Enabled = False
        OnClick = Undo1Click
      end
      object Redo1: TMenuItem
        Caption = 'Redo'
        Enabled = False
        OnClick = Redo1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object LayerProperties: TMenuItem
        Caption = 'Layer Properties...'
        Enabled = False
        OnClick = LayerPropertiesClick
      end
    end
    object Zoom1: TMenuItem
      Caption = 'View'
      object Zoom501: TMenuItem
        Tag = 50
        Caption = 'Zoom 50%'
        OnClick = ZoomItemClick
      end
      object Zoom1001: TMenuItem
        Tag = 100
        Caption = 'Zoom 100%'
        OnClick = ZoomItemClick
      end
      object Zoom2501: TMenuItem
        Tag = 250
        Caption = 'Zoom 250%'
        OnClick = ZoomItemClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object ZoomtoFit1: TMenuItem
        Tag = -1
        Caption = 'Zoom to Fit'
        OnClick = ZoomItemClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object SavetoSVG1: TMenuItem
        Caption = 'View as SVG...'
        OnClick = SavetoSVG1Click
      end
      object SaveToPDF: TMenuItem
        Caption = 'View as PDF...'
        OnClick = SaveToPDFClick
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
