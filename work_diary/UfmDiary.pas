unit UfmDiary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  ComCtrls, ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, UniProvider,
  InterBaseUniProvider, DBAccess, Uni, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBLookupComboBox, DateUtils, cxCalendar, dxBarBuiltInMenu, cxPC, cxSpinEdit,
  cxListBox, cxDBEdit, MemDS, dxCore, cxDateUtils, BMDThread, DAAlerter,
  UniAlerter, TLHelp32, ShellAPI, cxLookupEdit, cxDBLookupEdit;

type
  TfmDiary = class(TForm)
    PanelTop: TPanel;
    lbl3: TLabel;
    dtp_sdate: TDateTimePicker;
    btnView: TcxButton;
    btnAdd: TcxButton;
    btnEdit: TcxButton;
    cxButton4: TcxButton;
    gridDiary: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridDiaryID: TcxGridDBColumn;
    gridDiaryW_DATE: TcxGridDBColumn;
    gridDiaryW_TIME: TcxGridDBColumn;
    gridDiaryACTION_KIND: TcxGridDBColumn;
    gridDiaryFROM_NAME: TcxGridDBColumn;
    gridDiaryFROM_SUBJECT: TcxGridDBColumn;
    gridDiaryTO_NAME: TcxGridDBColumn;
    gridDiaryRESPONSE: TcxGridDBColumn;
    gridDiaryRESULT_STATUS: TcxGridDBColumn;
    gridDiaryD_DATE: TcxGridDBColumn;
    gridDiaryD_TIME: TcxGridDBColumn;
    Label1: TLabel;
    edtSearch: TEdit;
    btnSearch: TcxButton;
    btnKIND: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    btnViewCalendar: TcxButton;
    FlowPanel1: TFlowPanel;
    pnl1: TPanel;
    cxSpinEdit1: TcxSpinEdit;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    pnl9: TPanel;
    pnl10: TPanel;
    pnl11: TPanel;
    pnl12: TPanel;
    pnl13: TPanel;
    pnl14: TPanel;
    pnl15: TPanel;
    pnl16: TPanel;
    pnl17: TPanel;
    pnl18: TPanel;
    pnl19: TPanel;
    pnl20: TPanel;
    pnl21: TPanel;
    pnl22: TPanel;
    pnl23: TPanel;
    pnl24: TPanel;
    pnl25: TPanel;
    pnl26: TPanel;
    pnl27: TPanel;
    pnl28: TPanel;
    pnl29: TPanel;
    pnl30: TPanel;
    pnl31: TPanel;
    pnl32: TPanel;
    pnl33: TPanel;
    pnl34: TPanel;
    pnl35: TPanel;
    pnl36: TPanel;
    pnl37: TPanel;
    pnl38: TPanel;
    pnl40: TPanel;
    pnl41: TPanel;
    pnl42: TPanel;
    pnl39: TPanel;
    cxGrid3: TcxGrid;
    g2: TcxGridTableView;
    g2c1: TcxGridColumn;
    g2c2: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid4: TcxGrid;
    g3: TcxGridTableView;
    g3c1: TcxGridColumn;
    g3c2: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid5: TcxGrid;
    g4: TcxGridTableView;
    g5c1: TcxGridColumn;
    g5c2: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid6: TcxGrid;
    g5: TcxGridTableView;
    cxGridColumn7: TcxGridColumn;
    cxGridColumn8: TcxGridColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid7: TcxGrid;
    g6: TcxGridTableView;
    g6c1: TcxGridColumn;
    g6c2: TcxGridColumn;
    cxGridLevel5: TcxGridLevel;
    cxGrid8: TcxGrid;
    g7: TcxGridTableView;
    g7c1: TcxGridColumn;
    g7c2: TcxGridColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid9: TcxGrid;
    g8: TcxGridTableView;
    g8c1: TcxGridColumn;
    g8c2: TcxGridColumn;
    cxGridLevel7: TcxGridLevel;
    cxGrid10: TcxGrid;
    g9: TcxGridTableView;
    g9c1: TcxGridColumn;
    g9c2: TcxGridColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid11: TcxGrid;
    g10: TcxGridTableView;
    g10c1: TcxGridColumn;
    g10c2: TcxGridColumn;
    cxGridLevel9: TcxGridLevel;
    cxGrid12: TcxGrid;
    g11: TcxGridTableView;
    g11c1: TcxGridColumn;
    g11c2: TcxGridColumn;
    cxGridLevel10: TcxGridLevel;
    cxGrid13: TcxGrid;
    g12: TcxGridTableView;
    g12c1: TcxGridColumn;
    g12c2: TcxGridColumn;
    cxGridLevel11: TcxGridLevel;
    cxGrid14: TcxGrid;
    g13: TcxGridTableView;
    g13c1: TcxGridColumn;
    g13c2: TcxGridColumn;
    cxGridLevel12: TcxGridLevel;
    cxGrid15: TcxGrid;
    g14: TcxGridTableView;
    g14c1: TcxGridColumn;
    g14c2: TcxGridColumn;
    cxGridLevel13: TcxGridLevel;
    cxGrid16: TcxGrid;
    g15: TcxGridTableView;
    g15c1: TcxGridColumn;
    g15c2: TcxGridColumn;
    cxGridLevel14: TcxGridLevel;
    cxGrid17: TcxGrid;
    g16: TcxGridTableView;
    g16c1: TcxGridColumn;
    g16c2: TcxGridColumn;
    cxGridLevel15: TcxGridLevel;
    cxGrid18: TcxGrid;
    g17: TcxGridTableView;
    g17c1: TcxGridColumn;
    g17c2: TcxGridColumn;
    cxGridLevel16: TcxGridLevel;
    cxGrid19: TcxGrid;
    g18: TcxGridTableView;
    g18c1: TcxGridColumn;
    g18c2: TcxGridColumn;
    cxGridLevel17: TcxGridLevel;
    cxGrid20: TcxGrid;
    g19: TcxGridTableView;
    g19c1: TcxGridColumn;
    g19c2: TcxGridColumn;
    cxGridLevel18: TcxGridLevel;
    cxGrid21: TcxGrid;
    g20: TcxGridTableView;
    g20c1: TcxGridColumn;
    g20c2: TcxGridColumn;
    cxGridLevel19: TcxGridLevel;
    cxGrid22: TcxGrid;
    g21: TcxGridTableView;
    g21c1: TcxGridColumn;
    g21c2: TcxGridColumn;
    cxGridLevel20: TcxGridLevel;
    cxGrid23: TcxGrid;
    g22: TcxGridTableView;
    g22c1: TcxGridColumn;
    g22c2: TcxGridColumn;
    cxGridLevel21: TcxGridLevel;
    cxGrid24: TcxGrid;
    g23: TcxGridTableView;
    g23c1: TcxGridColumn;
    g23c2: TcxGridColumn;
    cxGridLevel22: TcxGridLevel;
    cxGrid25: TcxGrid;
    g24: TcxGridTableView;
    g24c1: TcxGridColumn;
    g24c2: TcxGridColumn;
    cxGridLevel23: TcxGridLevel;
    cxGrid26: TcxGrid;
    g25: TcxGridTableView;
    g25c1: TcxGridColumn;
    g25c2: TcxGridColumn;
    cxGridLevel24: TcxGridLevel;
    cxGrid27: TcxGrid;
    g26: TcxGridTableView;
    g26c1: TcxGridColumn;
    g26c2: TcxGridColumn;
    cxGridLevel25: TcxGridLevel;
    cxGrid28: TcxGrid;
    g27: TcxGridTableView;
    g27c1: TcxGridColumn;
    g27c2: TcxGridColumn;
    cxGridLevel26: TcxGridLevel;
    cxGrid29: TcxGrid;
    g28: TcxGridTableView;
    g28c1: TcxGridColumn;
    g28c2: TcxGridColumn;
    cxGridLevel27: TcxGridLevel;
    cxGrid30: TcxGrid;
    g29: TcxGridTableView;
    g29c1: TcxGridColumn;
    g29c2: TcxGridColumn;
    cxGridLevel28: TcxGridLevel;
    cxGrid31: TcxGrid;
    g30: TcxGridTableView;
    g30c1: TcxGridColumn;
    g30c2: TcxGridColumn;
    cxGridLevel29: TcxGridLevel;
    cxGrid32: TcxGrid;
    g31: TcxGridTableView;
    g31c1: TcxGridColumn;
    g31c2: TcxGridColumn;
    cxGridLevel30: TcxGridLevel;
    cxGrid33: TcxGrid;
    g32: TcxGridTableView;
    g32c1: TcxGridColumn;
    g32c2: TcxGridColumn;
    cxGridLevel31: TcxGridLevel;
    cxGrid34: TcxGrid;
    g33: TcxGridTableView;
    g33c1: TcxGridColumn;
    g33c2: TcxGridColumn;
    cxGridLevel32: TcxGridLevel;
    cxGrid35: TcxGrid;
    g34: TcxGridTableView;
    g34c1: TcxGridColumn;
    g34c2: TcxGridColumn;
    cxGridLevel33: TcxGridLevel;
    cxGrid36: TcxGrid;
    g35: TcxGridTableView;
    g35c1: TcxGridColumn;
    g35c2: TcxGridColumn;
    cxGridLevel34: TcxGridLevel;
    cxGrid37: TcxGrid;
    g36: TcxGridTableView;
    g36c1: TcxGridColumn;
    g36c2: TcxGridColumn;
    cxGridLevel35: TcxGridLevel;
    cxGrid38: TcxGrid;
    g37: TcxGridTableView;
    g37c1: TcxGridColumn;
    g37c2: TcxGridColumn;
    cxGridLevel36: TcxGridLevel;
    cxGrid39: TcxGrid;
    g38: TcxGridTableView;
    g38c1: TcxGridColumn;
    g38c2: TcxGridColumn;
    cxGridLevel37: TcxGridLevel;
    cxGrid40: TcxGrid;
    g39: TcxGridTableView;
    g39c1: TcxGridColumn;
    g39c2: TcxGridColumn;
    cxGridLevel38: TcxGridLevel;
    cxGrid41: TcxGrid;
    g40: TcxGridTableView;
    g40c1: TcxGridColumn;
    g40c2: TcxGridColumn;
    cxGridLevel39: TcxGridLevel;
    cxGrid42: TcxGrid;
    g41: TcxGridTableView;
    g41c1: TcxGridColumn;
    g41c2: TcxGridColumn;
    cxGridLevel40: TcxGridLevel;
    cxGrid43: TcxGrid;
    g42: TcxGridTableView;
    g42c1: TcxGridColumn;
    g42c2: TcxGridColumn;
    cxGridLevel41: TcxGridLevel;
    cxGrid2: TcxGrid;
    g1: TcxGridTableView;
    g1c1: TcxGridColumn;
    g1c2: TcxGridColumn;
    cxGridLevel42: TcxGridLevel;
    g1Column1: TcxGridColumn;
    g2Column1: TcxGridColumn;
    g3Column1: TcxGridColumn;
    g4Column1: TcxGridColumn;
    g5Column1: TcxGridColumn;
    g6Column1: TcxGridColumn;
    g7Column1: TcxGridColumn;
    g8Column1: TcxGridColumn;
    g9Column1: TcxGridColumn;
    g10Column1: TcxGridColumn;
    g11Column1: TcxGridColumn;
    g12Column1: TcxGridColumn;
    g13Column1: TcxGridColumn;
    g14Column1: TcxGridColumn;
    g15Column1: TcxGridColumn;
    g16Column1: TcxGridColumn;
    g17Column1: TcxGridColumn;
    g18Column1: TcxGridColumn;
    g19Column1: TcxGridColumn;
    g20Column1: TcxGridColumn;
    g21Column1: TcxGridColumn;
    g22Column1: TcxGridColumn;
    g23Column1: TcxGridColumn;
    g24Column1: TcxGridColumn;
    g25Column1: TcxGridColumn;
    g26Column1: TcxGridColumn;
    g27Column1: TcxGridColumn;
    g28Column1: TcxGridColumn;
    g29Column1: TcxGridColumn;
    g30Column1: TcxGridColumn;
    g31Column1: TcxGridColumn;
    g32Column1: TcxGridColumn;
    g33Column1: TcxGridColumn;
    g34Column1: TcxGridColumn;
    g35Column1: TcxGridColumn;
    g36Column1: TcxGridColumn;
    g37Column1: TcxGridColumn;
    g38Column1: TcxGridColumn;
    g39Column1: TcxGridColumn;
    g40Column1: TcxGridColumn;
    g41Column1: TcxGridColumn;
    g42Column1: TcxGridColumn;
    lblDAY1: TLabel;
    lblDAY2: TLabel;
    lblDAY3: TLabel;
    lblDAY4: TLabel;
    lblDAY5: TLabel;
    lblDAY6: TLabel;
    lblDAY7: TLabel;
    lblDAY8: TLabel;
    lblDAY9: TLabel;
    lblDAY10: TLabel;
    lblDAY11: TLabel;
    lblDAY12: TLabel;
    lblDAY13: TLabel;
    lblDAY14: TLabel;
    lblDAY21: TLabel;
    lblDAY20: TLabel;
    lblDAY19: TLabel;
    lblDAY18: TLabel;
    lblDAY17: TLabel;
    lblDAY16: TLabel;
    lblDAY15: TLabel;
    lblDAY22: TLabel;
    lblDAY23: TLabel;
    lblDAY24: TLabel;
    lblDAY25: TLabel;
    lblDAY26: TLabel;
    lblDAY27: TLabel;
    lblDAY28: TLabel;
    lblDAY29: TLabel;
    lblDAY30: TLabel;
    lblDAY31: TLabel;
    lblDAY32: TLabel;
    lblDAY33: TLabel;
    lblDAY34: TLabel;
    lblDAY35: TLabel;
    lblDAY36: TLabel;
    lblDAY37: TLabel;
    lblDAY38: TLabel;
    lblDAY39: TLabel;
    lblDAY40: TLabel;
    lblDAY41: TLabel;
    lblDAY42: TLabel;
    g1Column2: TcxGridColumn;
    g2Column2: TcxGridColumn;
    g3Column2: TcxGridColumn;
    g4Column2: TcxGridColumn;
    g5Column2: TcxGridColumn;
    g6Column2: TcxGridColumn;
    g7Column2: TcxGridColumn;
    g8Column2: TcxGridColumn;
    g9Column2: TcxGridColumn;
    g10Column2: TcxGridColumn;
    g11Column2: TcxGridColumn;
    g12Column2: TcxGridColumn;
    g13Column2: TcxGridColumn;
    g14Column2: TcxGridColumn;
    g15Column2: TcxGridColumn;
    g16Column2: TcxGridColumn;
    g17Column2: TcxGridColumn;
    g18Column2: TcxGridColumn;
    g19Column2: TcxGridColumn;
    g20Column2: TcxGridColumn;
    g21Column2: TcxGridColumn;
    g22Column2: TcxGridColumn;
    g23Column2: TcxGridColumn;
    g24Column2: TcxGridColumn;
    g25Column2: TcxGridColumn;
    g26Column2: TcxGridColumn;
    g27Column2: TcxGridColumn;
    g28Column2: TcxGridColumn;
    g29Column2: TcxGridColumn;
    g30Column2: TcxGridColumn;
    g31Column2: TcxGridColumn;
    g32Column2: TcxGridColumn;
    g33Column2: TcxGridColumn;
    g34Column2: TcxGridColumn;
    g35Column2: TcxGridColumn;
    g36Column2: TcxGridColumn;
    g37Column2: TcxGridColumn;
    g38Column2: TcxGridColumn;
    g39Column2: TcxGridColumn;
    g40Column2: TcxGridColumn;
    g41Column2: TcxGridColumn;
    g42Column2: TcxGridColumn;
    g1Column3: TcxGridColumn;
    g2Column3: TcxGridColumn;
    g3Column3: TcxGridColumn;
    g4Column3: TcxGridColumn;
    g5Column3: TcxGridColumn;
    g6Column3: TcxGridColumn;
    g7Column3: TcxGridColumn;
    g8Column3: TcxGridColumn;
    g9Column3: TcxGridColumn;
    g10Column3: TcxGridColumn;
    g11Column3: TcxGridColumn;
    g12Column3: TcxGridColumn;
    g13Column3: TcxGridColumn;
    g14Column3: TcxGridColumn;
    g15Column3: TcxGridColumn;
    g16Column3: TcxGridColumn;
    g17Column3: TcxGridColumn;
    g18Column3: TcxGridColumn;
    g19Column3: TcxGridColumn;
    g20Column3: TcxGridColumn;
    g21Column3: TcxGridColumn;
    g22Column3: TcxGridColumn;
    g23Column3: TcxGridColumn;
    g24Column3: TcxGridColumn;
    g25Column3: TcxGridColumn;
    g26Column3: TcxGridColumn;
    g27Column3: TcxGridColumn;
    g28Column3: TcxGridColumn;
    g29Column3: TcxGridColumn;
    g30Column3: TcxGridColumn;
    g31Column3: TcxGridColumn;
    g32Column3: TcxGridColumn;
    g33Column3: TcxGridColumn;
    g34Column3: TcxGridColumn;
    g35Column3: TcxGridColumn;
    g36Column3: TcxGridColumn;
    g37Column3: TcxGridColumn;
    g38Column3: TcxGridColumn;
    g39Column3: TcxGridColumn;
    g40Column3: TcxGridColumn;
    g41Column3: TcxGridColumn;
    g42Column3: TcxGridColumn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditSearch2: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    gridDiaryUSER_ID: TcxGridDBColumn;
    icbMonth: TcxImageComboBox;
    dtp_edate: TDateTimePicker;
    UniAlerter1: TUniAlerter;
    gridDiaryUNIQ_ID: TcxGridDBColumn;
    btnUpdate: TcxButton;
    Label8: TLabel;
    Label9: TLabel;
    lcbUser: TcxLookupComboBox;
    lcbResult: TcxLookupComboBox;
    lcbAction: TcxLookupComboBox;
    lcbUser2: TcxLookupComboBox;
    lcbAction2: TcxLookupComboBox;
    lcbResult2: TcxLookupComboBox;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure gridDiaryCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gridDiaryRESULT_STATUSCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxButton4Click(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure btnKINDClick(Sender: TObject);
    procedure btnViewCalendarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure g1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure g2c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g1c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g3c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g5c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure cxGridColumn8GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g7c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g8c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g9c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g10c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g11c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g12c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g13c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g14c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g15c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g16c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g17c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g18c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g19c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g20c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g21c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g22c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g23c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g24c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g25c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g26c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g27c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g28c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g29c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g30c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g31c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g32c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g33c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g34c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g35c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g36c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g37c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g38c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g39c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g40c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g41c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g42c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure g6c2GetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure lblDAY1Click(Sender: TObject);
    procedure g1Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g2Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g3Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g4Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g5Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g6Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g7Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g8Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g9Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g10Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g11Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g12Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g13Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g14Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g15Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g16Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g17Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g18Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g19Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g20Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g21Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g22Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g23Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g24Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g25Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g26Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g27Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g28Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g29Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g30Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g31Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g32Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g33Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g34Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g35Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g36Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g37Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g38Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g39Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g40Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g41Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g42Column2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g1Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g2Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g3Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g4Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g5Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g6Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g7Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g8Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g9Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g10Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g11Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g12Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g13Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g14Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g15Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g16Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g17Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g18Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g19Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g20Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g21Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g22Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g23Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g24Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g25Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g26Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g27Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g28Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g29Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g30Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g31Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g32Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g33Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g34Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g35Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g36Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g37Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g38Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g39Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g40Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g41Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure g42Column1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridDiaryACTION_KINDCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gridDiaryW_DATECustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure EditSearch2Exit(Sender: TObject);
    procedure icbMonthPropertiesCloseUp(Sender: TObject);
    procedure dtp_edateCloseUp(Sender: TObject);
    procedure dtp_sdateCloseUp(Sender: TObject);
    procedure UniAlerter1Event(Sender: TDAAlerter; const EventName,
      Message: string);
    procedure btnUpdateClick(Sender: TObject);
    procedure lcbUserPropertiesCloseUp(Sender: TObject);
    procedure lcbActionPropertiesCloseUp(Sender: TObject);
    procedure lcbResultPropertiesCloseUp(Sender: TObject);
    procedure lcbUser2PropertiesCloseUp(Sender: TObject);
    procedure lcbAction2PropertiesCloseUp(Sender: TObject);
    procedure lcbResult2PropertiesCloseUp(Sender: TObject);
  private
    procedure SearchString(var DataGrid: TcxGridDBTableView; var GridColumn1,
      GridColumn2 : TcxGridDBColumn; SearchWord: string);
    procedure EditSchedulerData(RID: Integer);
    procedure RetrieveDateDate(gridIndex : Integer; c_date: TDateTime);
    function CheckNewVersion: Boolean;
    procedure DownloadFile;
    function GetServerVersion: string;
    procedure ViewScheduleDaily;
    { Private declarations }
  public
    { Public declarations }
    gvFOUND_ROW : Integer;
    pnlDay : array[0..41] of TPanel;
    lblDay : array[0..41] of TLabel;
    lblHol : array[0..41] of TLabel;
    dbList : array[0..41] of TcxListBox;
    gridView : array[0..41] of TcxGridTableView;
  end;

var
  fmDiary: TfmDiary;

implementation
uses
  UDataModule, UfmDiaryEdit, UfmActionKind, UfmDailyActivity, UfmDiaryIns;
{$R *.dfm}

procedure LockControl(c: TWinControl; lock: boolean);
begin
  if (c=nil) or (c.Handle=0) then exit;
  if lock then SendMessage(c.Handle,WM_SETREDRAW,0,0)
  else begin
    SendMessage(c.Handle,WM_SETREDRAW,1,0);
    RedrawWindow(c.Handle,nil,0,
        RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;

function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0));
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function GetFileVersion(szFullPath: pChar): String;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Result := '';
  Size := GetFileVersionInfoSize(szFullPath, Size2);
  if Size > 0 then begin
    GetMem(Pt, Size);
    try
      GetFileVersionInfo(szFullPath, 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo(Pt2^) do begin
        Result := Format('%d.%d.%d.%d', [HiWord(dwFileVersionMS),
                                         LoWord(dwFileVersionMS),
                                         HiWord(dwFileVersionLS),
                                         LoWord(dwFileVersionLS)]);
      end;
    finally
      FreeMem(Pt);
    end;
  end;
end;

procedure TfmDiary.SearchString(var DataGrid : TcxGridDBTableView; var GridColumn1, GridColumn2 : TcxGridDBColumn; SearchWord : string);
var
  i : Integer;
begin
  with DataGrid do
    for i := gvFOUND_ROW to DataController.RecordCount - 1 do
      if (Pos(SearchWord, DataController.GetDisplayText(i, GridColumn1.Index)) > 0) or
         (Pos(SearchWord, DataController.GetDisplayText(i, GridColumn2.Index)) > 0) then begin
        Controller.FocusRecord(DataController.GetRowIndexByRecordIndex(i, false), True);
        gvFOUND_ROW := i+1;
        Exit;
      end;
  gvFOUND_ROW := 0;
  ShowMessage('자료없음...');
end;

procedure TfmDiary.UniAlerter1Event(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  if cxPageControl1.ActivePageIndex = 0 then
    btnView.Click;
  if cxPageControl1.ActivePageIndex = 1 then
    btnViewCalendar.Click;

end;

procedure TfmDiary.btnSearchClick(Sender: TObject);
begin
  SearchString(gridDiary, gridDiaryFROM_SUBJECT, gridDiaryRESPONSE, edtSearch.Text);
end;

procedure TfmDiary.btnUpdateClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    if CheckNewVersion then begin
      DownloadFile;
      Screen.Cursor := crArrow;
    end else begin
      ShowMessage('새버전 없음...');
      Screen.Cursor := crArrow;
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
  Screen.Cursor := crArrow;
end;

function TfmDiary.CheckNewVersion : Boolean;
var
  l_major, l_minor, l_release, l_build : Integer;
  s_major, s_minor, s_release, s_build : Integer;
  tl_major, tl_minor, tl_release, tl_build : Integer;
  ts_major, ts_minor, ts_release, ts_build : Integer;
  total_server, total_local : Integer;
  ExeFile, LocalVersion, ServerVersion : string;
  s_version, l_version : TStringList;
begin
  s_version := TStringList.Create;
  l_version := TStringList.Create;
  ExeFile := Application.ExeName;
  LocalVersion := GetFileVersion(PWideChar(ExeFile));
  ExtractStrings(['.'], [], PWideChar(LocalVersion), l_version);
//  ShowMessage('l:'+LocalVersion);
  l_major := StrToInt(l_version[0]);
  l_minor := StrToInt(l_version[1]);
  l_release := StrToInt(l_version[2]);
  l_build := StrToInt(l_version[3]);
  ServerVersion := GetServerVersion;
//  ShowMessage('s:'+ServerVersion);
  if Length(ServerVersion) > 1 then begin
    ExtractStrings(['.'], [], PWideChar(ServerVersion), s_version);
    s_major := StrToInt(s_version[0]);
    s_minor := StrToInt(s_version[1]);
    s_release := StrToInt(s_version[2]);
    s_build := StrToInt(s_version[3]);

    ts_major :=    s_major    * 10000000;  //8 digit
    ts_minor :=    s_minor    * 100000;    //6 digit
    ts_release :=  s_release  * 1000;      //4 digit
    ts_build :=    s_build;
    tl_major :=    l_major    * 10000000;
    tl_minor :=    l_minor    * 100000;
    tl_release :=  l_release  * 1000;
    tl_build :=    l_build;

    total_server := ts_major + ts_minor + ts_release + ts_build;
    total_local := tl_major + tl_minor + tl_release + tl_build;
  //  ShowMessage(IntToStr(total_server) + #13#10 + IntToStr(total_local));
    if total_server > total_local then
      Result := True
    else
      Result := False;
  end else begin
    Result := False;
  end;
end;

function TfmDiary.GetServerVersion : string;
begin
  DataModule1.UPDATE_FILE_SEL.ParamByName('FILE_ID').Value := 1;
  DataModule1.UPDATE_FILE_SEL.Active := True;
  DataModule1.ds_UPDATE_FILE_SEL.DataSet.Refresh;
  if DataModule1.ds_UPDATE_FILE_SEL.DataSet.RecordCount > 0 then begin
    Result := DataModule1.UPDATE_FILE_SELVERSION_NUMBER.Value;
  end else begin
    Result := '';
  end;
end;

procedure TfmDiary.DownloadFile;
var
  mStream : TMemoryStream;
  file_exe : string;
begin
  Screen.Cursor := crHourGlass;
  mStream := TMemoryStream.Create;
  DataModule1.UPDATE_FILE_SEL.ParamByName('FILE_ID').Value := 1;
  DataModule1.UPDATE_FILE_SEL.Active := True;
  DataModule1.ds_UPDATE_FILE_SEL.DataSet.Refresh;
  TBlobField(DataModule1.ds_UPDATE_FILE_SEL.DataSet.FieldByName('update_file')).SaveToStream(mStream);
  mStream.Position := 0;
  file_exe := ExtractFilePath(Application.ExeName) + 'version_update.exe';
  mStream.SaveToFile(file_exe);
  ShowMessage('업데이트 파일 다운로드가 완료되었습니다.' + #10#13 +
              '업데이트 프로그램을 자동으로 설치합니다.');
  mStream.Free;
  ShellExecute(0, 'open', PWideChar(file_exe), nil, nil, SW_SHOWNORMAL);
  KillTask(Application.ExeName);
end;

procedure TfmDiary.btnViewClick(Sender: TObject);
begin
  ViewScheduleDaily;
  cxGrid1.SetFocus;
end;

procedure TfmDiary.btnAddClick(Sender: TObject);
var
  WORK_UNIQ_ID : Int64;
begin
  fmDiaryIns := TfmDiaryIns.Create(Self);
  try
    UniAlerter1.Active := False;
    WORK_UNIQ_ID := StrToInt64(FormatDateTime('yyyymmddhhnnsszzz', now));
    fmDiaryIns.edtWDate.EditValue := Date;
    fmDiaryIns.edtDDate.EditValue := Date;
    fmDiaryIns.edtTime.Text       := FormatDateTime('hhmm', Now);
    fmDiaryIns.edtDTime.Text       := FormatDateTime('hhmm', Now);
    fmDiaryIns.cbActionKind.EditValue := 1;
    fmDiaryIns.cbResult.EditValue := 1;
    fmDiaryIns.icbUser.EditValue := 1;
    fmDiaryIns.ShowModal;
    if fmDiaryIns.ModalResult = mrOk then begin
      DataModule1.WORK_LOG_INS.ParamByName('W_DATE').Value := fmDiaryIns.edtWDate.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('W_TIME').Value := fmDiaryIns.edtTime.Text;
      DataModule1.WORK_LOG_INS.ParamByName('ACTION_KIND').Value := fmDiaryIns.cbActionKind.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('FROM_NAME').Value := fmDiaryIns.edtFromName.Text;
      DataModule1.WORK_LOG_INS.ParamByName('FROM_SUBJECT').Value := fmDiaryIns.edtSubject.Text;
      DataModule1.WORK_LOG_INS.ParamByName('TO_NAME').Value := fmDiaryIns.edtToName.Text;
      DataModule1.WORK_LOG_INS.ParamByName('RESPONSE').Value := fmDiaryIns.edtResponse.Text;
      DataModule1.WORK_LOG_INS.ParamByName('RESULT_STATUS').Value := fmDiaryIns.cbResult.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('D_DATE').Value := fmDiaryIns.edtDDate.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('D_TIME').Value := fmDiaryIns.edtDTime.Text;
      DataModule1.WORK_LOG_INS.ParamByName('USER_ID').Value := fmDiaryIns.icbUser.EditValue;
      DataModule1.WORK_LOG_INS.ParamByName('UNIQ_ID').Value := WORK_UNIQ_ID;
      DataModule1.WORK_LOG_INS.ExecProc;
      DataModule1.ds_WORK_LOG_SEL.DataSet.Refresh;

      btnViewCalendar.Click;
    end;
    UniAlerter1.Active := True;
  finally
    fmDiaryIns.Free;
  end;
end;

procedure TfmDiary.btnEditClick(Sender: TObject);
var
  toprow : Integer;
  WORK_UNIQ_ID : Int64;
begin
  fmDiaryEdit := TfmDiaryEdit.Create(Self);
  try
    UniAlerter1.Active := False;
    WORK_UNIQ_ID := gridDiaryUNIQ_ID.EditValue;
    fmDiaryEdit.WORK_UNIQ_ID := WORK_UNIQ_ID;
    fmDiaryEdit.edtWDate.EditValue       := DataModule1.WORK_LOG_SELW_DATE.Value;
    fmDiaryEdit.edtTime.Text             := DataModule1.WORK_LOG_SELW_TIME.Value;
    fmDiaryEdit.cbActionKind.EditValue   := DataModule1.WORK_LOG_SELACTION_KIND.Value;
    fmDiaryEdit.edtFromName.Text         := DataModule1.WORK_LOG_SELFROM_NAME.Value;
    fmDiaryEdit.edtSubject.Text          := DataModule1.WORK_LOG_SELFROM_SUBJECT.Value;
    fmDiaryEdit.edtToName.Text           := DataModule1.WORK_LOG_SELTO_NAME.Value;
    fmDiaryEdit.edtResponse.Text         := DataModule1.WORK_LOG_SELRESPONSE.Value;
    fmDiaryEdit.cbResult.EditValue       := DataModule1.WORK_LOG_SELRESULT_STATUS.Value;
    fmDiaryEdit.icbUser.EditValue        := DataModule1.WORK_LOG_SELUSER_ID.Value;
    if VarIsNull(gridDiaryD_DATE.EditValue) then
      fmDiaryEdit.edtDDate.Clear
    else
      fmDiaryEdit.edtDDate.EditValue       := DataModule1.WORK_LOG_SELD_DATE.Value;
    fmDiaryEdit.edtDTime.Text            := DataModule1.WORK_LOG_SELD_TIME.Value;

    fmDiaryEdit.ShowModal;
    if fmDiaryEdit.ModalResult = mrOk then begin
      DataModule1.WORK_LOG_UPD.ParamByName('ID').Value := gridDiaryID.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('W_DATE').Value := fmDiaryEdit.edtWDate.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('W_TIME').Value := fmDiaryEdit.edtTime.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('ACTION_KIND').Value := fmDiaryEdit.cbActionKind.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('FROM_NAME').Value := fmDiaryEdit.edtFromName.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('FROM_SUBJECT').Value := fmDiaryEdit.edtSubject.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('TO_NAME').Value := fmDiaryEdit.edtToName.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('RESPONSE').Value := fmDiaryEdit.edtResponse.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('RESULT_STATUS').Value := fmDiaryEdit.cbResult.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('D_DATE').Value := fmDiaryEdit.edtDDate.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('D_TIME').Value := fmDiaryEdit.edtDTime.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('USER_ID').Value := fmDiaryEdit.icbUser.EditValue;
      DataModule1.WORK_LOG_UPD.ExecProc;
      gridDiary.DataController.SaveBookmark;
      toprow := gridDiary.Controller.TopRowIndex;
      DataModule1.ds_WORK_LOG_SEL.DataSet.Refresh;
      gridDiary.DataController.GotoBookmark;
      gridDiary.Controller.TopRowIndex := toprow;
      btnViewCalendar.Click;
    end;
    UniAlerter1.Active := True;
  finally
    fmDiaryEdit.Free;
  end;
end;

procedure TfmDiary.btnKINDClick(Sender: TObject);
begin
  fmActionKind := TfmActionKind.Create(Self);
  try
    fmActionKind.ShowModal;
  finally
    fmActionKind.Free;
  end;
end;

procedure TfmDiary.btnViewCalendarClick(Sender: TObject);
var
  i, FirstDayWeek : Integer;
  start_date, end_date, CurrDate : TDateTime;
begin
  LockControl(FlowPanel1,True);
  try
    Screen.Cursor := crHourGlass;
    start_date := StartOfAMonth(cxSpinEdit1.Value, icbMonth.EditValue);
    end_date := EndOfAMonth(cxSpinEdit1.Value,icbMonth.EditValue);
    FirstDayWeek := DayOfWeek(START_DATE);
    CurrDate := start_date;
    case FirstDayWeek of
      1: CurrDate := start_date;
      2: CurrDate := IncDay(START_DATE, -1);
      3: CurrDate := IncDay(START_DATE, -2);
      4: CurrDate := IncDay(START_DATE, -3);
      5: CurrDate := IncDay(START_DATE, -4);
      6: CurrDate := IncDay(START_DATE, -5);
      7: CurrDate := IncDay(START_DATE, -6);
    end;
    for i := 0 to 41 do begin
      lblDay[i].Caption := DateTimeToStr(CurrDate) + lblDay[i].Hint;
      if CurrDate = Date then begin
        lblDay[i].Color := clYellow;
      end else begin
        if MonthOf(CurrDate) = icbMonth.EditValue then
          lblDay[i].Color := clBtnFace
        else
          lblDay[i].Color := clGray;
      end;

      RetrieveDateDate(i, CurrDate);
      CurrDate := IncDay(CurrDate, 1);
    end;
  finally
    LockControl(FlowPanel1,False);
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmDiary.RetrieveDateDate(gridIndex : Integer; c_date : TDateTime);
var
  tcnt, t, n, rid, status, action_kind : Integer;
  from_name, from_subject, to_name, mix_name, search_str : string;
  s_action, e_action, s_result, e_result, user1, user2 : Integer;
begin
  gridView[gridIndex].DataController.RecordCount := 0;
  if lcbUser2.EditValue = 1 then begin
    user1 := 1;     user2 := 999;
  end else begin
    user1 := lcbUser2.EditValue;    user2 := lcbUser2.EditValue;
  end;
  if lcbAction2.EditValue = 0 then begin
    s_action := 0;
    e_action := 999;
  end else begin
    s_action := lcbAction2.EditValue;
    e_action := lcbAction2.EditValue;
  end;
  if lcbResult2.EditValue = 0 then begin
    s_result := 0;
    e_result := 999;
  end else begin
    s_result := lcbResult2.EditValue;
    e_result := lcbResult2.EditValue;
  end;
  if EditSearch2.Text = '' then
    search_str := ''
  else
    search_str := EditSearch2.Text;

  DataModule1.WORK_LOG_SEL_DATE.ParamByName('S_DATE').Value := c_date;
  DataModule1.WORK_LOG_SEL_DATE.ParamByName('START_ACTION').Value := s_action;
  DataModule1.WORK_LOG_SEL_DATE.ParamByName('END_ACTION').Value := e_action;
  DataModule1.WORK_LOG_SEL_DATE.ParamByName('START_RESULT').Value := s_result;
  DataModule1.WORK_LOG_SEL_DATE.ParamByName('END_RESULT').Value := e_result;
  DataModule1.WORK_LOG_SEL_DATE.ParamByName('SEARCH_STR').Value := search_str;
  DataModule1.WORK_LOG_SEL_DATE.ParamByName('S_USER').Value := user1;
  DataModule1.WORK_LOG_SEL_DATE.ParamByName('E_USER').Value := user2;
  DataModule1.WORK_LOG_SEL_DATE.Active := True;
  DataModule1.ds_WORK_LOG_SEL_DATE.DataSet.Refresh;
  tcnt := DataModule1.WORK_LOG_SEL_DATE.RecordCount;
  if tcnt > 0 then begin
    DataModule1.WORK_LOG_SEL_DATE.First;
    gridView[gridIndex].DataController.BeginUpdate;
    for t := 0 to tcnt - 1 do begin
      n := gridView[gridIndex].DataController.AppendRecord; //데이터갯수 자동증가
      rid := DataModule1.WORK_LOG_SEL_DATEID.Value;
      from_name := VarToStrDef(DataModule1.WORK_LOG_SEL_DATEFROM_NAME.Value, '');
      status := DataModule1.WORK_LOG_SEL_DATERESULT_STATUS.AsInteger;
      action_kind := DataModule1.WORK_LOG_SEL_DATEACTION_KIND.AsInteger;
      from_subject := VarToStrDef(DataModule1.WORK_LOG_SEL_DATEFROM_SUBJECT.Value, '');
      to_name := VarToStrDef(DataModule1.WORK_LOG_SEL_DATETO_NAME.Value, '');
      if to_name <> '' then
        mix_name := from_name + '-->'+to_name
      else
        mix_name := from_name;

      gridView[gridIndex].DataController.Values[n, 0] := rid;
      gridView[gridIndex].DataController.Values[n, 1] := action_kind;
      gridView[gridIndex].DataController.Values[n, 2] := status;
      gridView[gridIndex].DataController.Values[n, 3] := mix_name;
      gridView[gridIndex].DataController.Values[n, 4] := from_subject;
      DataModule1.WORK_LOG_SEL_DATE.Next;
    end;
    gridView[gridIndex].DataController.EndUpdate;
  end;
end;

procedure TfmDiary.cxButton4Click(Sender: TObject);
var
  toprow : Integer;
begin
  if MessageBox(Handle, '선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    UniAlerter1.Active := False;
    DataModule1.WORK_LOG_DEL.ParamByName('ID').Value := gridDiaryID.EditValue;
    DataModule1.WORK_LOG_DEL.ExecProc;
    gridDiary.DataController.SaveBookmark;
    toprow := gridDiary.Controller.TopRowIndex;
    DataModule1.ds_WORK_LOG_SEL.DataSet.Refresh;
    gridDiary.DataController.GotoBookmark;
    gridDiary.Controller.TopRowIndex := toprow;
    btnViewCalendar.Click;
    UniAlerter1.Active := True;
  end;
end;

procedure TfmDiary.cxGridColumn8GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.dtp_edateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmDiary.dtp_sdateCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmDiary.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  cxPageControl1.ActivePageIndex := 0;
  cxSpinEdit1.Value := YearOf(Date);
  icbMonth.EditValue := MonthOf(Date);
  for i := 0 to 41 do begin
    lblDay[i] := FindComponent('lblDAY' + IntToStr(i+1)) as TLabel;
    pnlDay[i] := FindComponent('pnl' + IntToStr(i+1)) as TPanel;
    dbList[i] := FindComponent('cxListBox' + IntToStr(i+1)) as TcxListBox;
    gridView[i] := FindComponent('g' + IntToStr(i+1)) as TcxGridTableView;
  end;
end;

procedure TfmDiary.FormResize(Sender: TObject);
var
  i : Integer;
begin
  LockControl(FlowPanel1,True);
  try
    Screen.Cursor := crHourGlass;
    for i := 0 to 41 do begin
      pnlDay[i].Width := (FlowPanel1.Width div 7) - 1;
      pnlDay[i].Height := (FlowPanel1.Height div 6)-1;
    end;
  finally
    LockControl(FlowPanel1,False);
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmDiary.FormShow(Sender: TObject);
begin
  Caption := 'WorkDiary v' + GetFileVersion(PWideChar(Application.ExeName));
  UniAlerter1.Active := False;
  dtp_sdate.Date := StartOfAMonth(YearOf(Date), MonthOf(Date));
  dtp_edate.Date := Date;
  lcbUser.EditValue := 1;
  lcbUser2.EditValue := 1;
  lcbAction.EditValue := 0;
  lcbAction2.EditValue := 0;
  lcbResult.EditValue := 0;
  lcbResult2.EditValue := 0;

  ViewScheduleDaily;
  btnViewCalendar.Click;
  UniAlerter1.Active := True;
end;

procedure TfmDiary.ViewScheduleDaily;
var
  user1, user2, action1, action2, result1, result2 : Integer;
begin
  if lcbUser.EditValue = 1 then begin
    user1 := 1;     user2 := 999;
  end else begin
    user1 := lcbUser.EditValue;    user2 := lcbUser.EditValue;
  end;
  if lcbAction.EditValue = 0 then begin
    action1 := 0;     action2 := 999;
  end else begin
    action1 := lcbAction.EditValue;    action2 := lcbAction.EditValue;
  end;
  if lcbResult.EditValue = 0 then begin
    result1 := 0;     result2 := 999;
  end else begin
    result1 := lcbResult.EditValue;    result2 := lcbResult.EditValue;
  end;

  DataModule1.WORK_LOG_SEL.ParamByName('S_DATE').Value := dtp_sdate.Date;
  DataModule1.WORK_LOG_SEL.ParamByName('E_DATE').Value := dtp_edate.Date;
  DataModule1.WORK_LOG_SEL.ParamByName('S_USER').Value := user1;
  DataModule1.WORK_LOG_SEL.ParamByName('E_USER').Value := user2;
  DataModule1.WORK_LOG_SEL.ParamByName('START_ACTION').Value := action1;
  DataModule1.WORK_LOG_SEL.ParamByName('END_ACTION').Value := action2;
  DataModule1.WORK_LOG_SEL.ParamByName('START_RESULT').Value := result1;
  DataModule1.WORK_LOG_SEL.ParamByName('END_RESULT').Value := result2;
  DataModule1.WORK_LOG_SEL.Active := True;
  DataModule1.ds_WORK_LOG_SEL.DataSet.Refresh;
end;

procedure TfmDiary.g10c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g10Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g10Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g11c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g11Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g11Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g12c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g12Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g12Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g13c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g13Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g13Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g14c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g14Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g14Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g15c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g15Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g15Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g16c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g16Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g16Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g17c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g17Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g17Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g18c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g18Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g18Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g19c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g19Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g19Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g1c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  rid : Integer;
begin
  rid := (Sender as TcxGridTableView).DataController.GetValue((Sender as TcxGridTableView).Controller.FocusedRecordIndex, 0);
  EditSchedulerData(RID);
end;

procedure TfmDiary.g1Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g1Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g20c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g20Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g20Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g21c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g21Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g21Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g22c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g22Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g22Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g23c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g23Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g23Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g24c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g24Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g24Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g25c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g25Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g25Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g26c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g26Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g26Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g27c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g27Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g27Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g28c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g28Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g28Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g29c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g29Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g29Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g2c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g2Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g2Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g30c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g30Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g30Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g31c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g31Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g31Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g32c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g32Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g32Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g33c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g33Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g33Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g34c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g34Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g34Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g35c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g35Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g35Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g36c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g36Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g36Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g37c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g37Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g37Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g38c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g38Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g38Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g39c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g39Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g39Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g3c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g3Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g3Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g40c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g40Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g40Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g41c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g41Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g41Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g42c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g42Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g42Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g4Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g4Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g5c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g5Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g5Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g6c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g6Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g6Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g7c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g7Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g7Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g8c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g8Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g8Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g9c2GetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AHintText := ARecord.Values[4];
end;

procedure TfmDiary.g9Column1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[2] = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[2] = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.g9Column2CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[1] = 4) or (AViewInfo.GridRecord.Values[1] = 6) or (AViewInfo.GridRecord.Values[1] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[1] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[1] = 2) or (AViewInfo.GridRecord.Values[1] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.EditSchedulerData(RID : Integer);
var
  toprow : Integer;
  WORK_UNIQ_ID : Int64;
begin
  fmDiaryEdit := TfmDiaryEdit.Create(Self);
  try
    DataModule1.WORK_LOG_SEL_ID.ParamByName('ID').Value := RID;
    DataModule1.WORK_LOG_SEL_ID.Active := True;
    DataModule1.ds_WORK_LOG_SEL_ID.DataSet.Refresh;

    WORK_UNIQ_ID := DataModule1.WORK_LOG_SEL_IDUNIQ_ID.Value;
    fmDiaryEdit.WORK_UNIQ_ID := WORK_UNIQ_ID;
    fmDiaryEdit.edtWDate.EditValue       := DataModule1.WORK_LOG_SEL_IDW_DATE.Value;
    fmDiaryEdit.edtTime.Text             := DataModule1.WORK_LOG_SEL_IDW_TIME.Value;
    fmDiaryEdit.cbActionKind.EditValue   := DataModule1.WORK_LOG_SEL_IDACTION_KIND.Value;
    fmDiaryEdit.edtFromName.Text         := DataModule1.WORK_LOG_SEL_IDFROM_NAME.Value;
    fmDiaryEdit.edtSubject.Text          := DataModule1.WORK_LOG_SEL_IDFROM_SUBJECT.Value;
    fmDiaryEdit.edtToName.Text           := DataModule1.WORK_LOG_SEL_IDTO_NAME.Value;
    fmDiaryEdit.edtResponse.Text         := DataModule1.WORK_LOG_SEL_IDRESPONSE.Value;
    fmDiaryEdit.cbResult.EditValue       := DataModule1.WORK_LOG_SEL_IDRESULT_STATUS.Value;
    fmDiaryEdit.icbUser.EditValue        := DataModule1.WORK_LOG_SEL_IDUSER_ID.Value;
    if VarIsNull(gridDiaryD_DATE.EditValue) then
      fmDiaryEdit.edtDDate.Clear
    else
      fmDiaryEdit.edtDDate.EditValue       := DataModule1.WORK_LOG_SEL_IDD_DATE.Value;
    fmDiaryEdit.edtDTime.Text            := DataModule1.WORK_LOG_SEL_IDD_TIME.Value;

    fmDiaryEdit.ShowModal;
    if fmDiaryEdit.ModalResult = mrOk then begin
      DataModule1.WORK_LOG_UPD.ParamByName('ID').Value := RID;
      DataModule1.WORK_LOG_UPD.ParamByName('W_DATE').Value := fmDiaryEdit.edtWDate.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('W_TIME').Value := fmDiaryEdit.edtTime.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('ACTION_KIND').Value := fmDiaryEdit.cbActionKind.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('FROM_NAME').Value := fmDiaryEdit.edtFromName.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('FROM_SUBJECT').Value := fmDiaryEdit.edtSubject.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('TO_NAME').Value := fmDiaryEdit.edtToName.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('RESPONSE').Value := fmDiaryEdit.edtResponse.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('RESULT_STATUS').Value := fmDiaryEdit.cbResult.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('D_DATE').Value := fmDiaryEdit.edtDDate.EditValue;
      DataModule1.WORK_LOG_UPD.ParamByName('D_TIME').Value := fmDiaryEdit.edtDTime.Text;
      DataModule1.WORK_LOG_UPD.ParamByName('USER_ID').Value := fmDiaryEdit.icbUser.EditValue;
      DataModule1.WORK_LOG_UPD.ExecProc;
      gridDiary.DataController.SaveBookmark;
      toprow := gridDiary.Controller.TopRowIndex;
      DataModule1.ds_WORK_LOG_SEL.DataSet.Refresh;
      gridDiary.DataController.GotoBookmark;
      gridDiary.Controller.TopRowIndex := toprow;
    end;
  finally
    fmDiaryEdit.Free;
  end;
end;

procedure TfmDiary.EditSearch2Exit(Sender: TObject);
begin
  btnViewCalendar.Click;
end;

procedure TfmDiary.gridDiaryACTION_KINDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if (AViewInfo.GridRecord.Values[3] = 4) or (AViewInfo.GridRecord.Values[3] = 6) or (AViewInfo.GridRecord.Values[3] = 8) then begin
    ACanvas.Brush.Color := clBlue;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if AViewInfo.GridRecord.Values[3] = 1 then begin
    ACanvas.Brush.Color := clLime;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
  if (AViewInfo.GridRecord.Values[3] = 2) or (AViewInfo.GridRecord.Values[3] = 3) then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.gridDiaryCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnEdit.Click;
end;

procedure TfmDiary.gridDiaryRESULT_STATUSCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  stat_val : Integer;
begin
  stat_val := AViewInfo.GridRecord.Values[gridDiary.GetColumnByFieldName('RESULT_STATUS').Index];
  if (stat_val = 2) then begin
    ACanvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if (stat_val = 3) then begin
    ACanvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
    ACanvas.Font.Style := [fsBold];
  end;
  if stat_val = 4 then begin   //보류
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
  end;
end;


procedure TfmDiary.gridDiaryW_DATECustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  cdate:Integer;
begin
  cdate := AViewInfo.GridRecord.Values[gridDiary.GetColumnByFieldName('W_DATE').Index];
  if cdate = Date then begin
    ACanvas.Brush.Color := clYellow;
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfmDiary.icbMonthPropertiesCloseUp(Sender: TObject);
begin
  btnViewCalendar.Click;
end;

procedure TfmDiary.lblDAY1Click(Sender: TObject);
var
  a_date : TDateTime;
  i : Integer;
  day_str : string;
begin
  fmDailyActivity := TfmDailyActivity.Create(Self);
  try
    if lcbUser2.EditValue = 1 then begin
      fmDailyActivity.S_USER := 0;     fmDailyActivity.E_USER := 999;
    end else begin
      fmDailyActivity.S_USER := lcbUser2.EditValue;    fmDailyActivity.E_USER := lcbUser2.EditValue;
    end;
    if lcbAction2.EditValue = 0 then begin
      fmDailyActivity.S_ACTION := 0;
      fmDailyActivity.E_ACTION := 999;
    end else begin
      fmDailyActivity.S_ACTION := lcbAction2.EditValue;
      fmDailyActivity.E_ACTION := lcbAction2.EditValue;
    end;
    if lcbResult2.EditValue = 0 then begin
      fmDailyActivity.S_RESULT := 0;
      fmDailyActivity.E_RESULT := 999;
    end else begin
      fmDailyActivity.S_RESULT := lcbResult2.EditValue;
      fmDailyActivity.E_RESULT := lcbResult2.EditValue;
    end;

    day_str := StringReplace((Sender as TLabel).Caption, (Sender as TLabel).Hint, '', [rfReplaceAll]);
    a_date := StrToDate(day_str);
    fmDailyActivity.ACTION_DATE := a_date;
    fmDailyActivity.ShowModal;
    if fmDailyActivity.HAS_MODIFIED = True then begin
      i := (Sender as TLabel).Tag;
      RetrieveDateDate(i, a_date);
    end;
  finally
    fmDailyActivity.Free;
  end;
end;

procedure TfmDiary.lcbAction2PropertiesCloseUp(Sender: TObject);
begin
  btnViewCalendar.Click;
end;

procedure TfmDiary.lcbActionPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmDiary.lcbResult2PropertiesCloseUp(Sender: TObject);
begin
  btnViewCalendar.Click;
end;

procedure TfmDiary.lcbResultPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

procedure TfmDiary.lcbUser2PropertiesCloseUp(Sender: TObject);
begin
  btnViewCalendar.Click;
end;

procedure TfmDiary.lcbUserPropertiesCloseUp(Sender: TObject);
begin
  btnView.Click;
end;

end.
