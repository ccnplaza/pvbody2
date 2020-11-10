unit UfmStaticResultReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxDBLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ieview, imageenview, ievect, ExtCtrls,
  StdCtrls, Buttons, cxImageComboBox, ImgList, cxPCdxBarPopupMenu, MemDS,
  DBAccess, Uni, cxPC, dxmdaset, frxClass, frxDBSet, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPSContainerLnk, dxPScxCommon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxBarBuiltInMenu, hyieutils,
  iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers, iexToolbars,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfmStaticResultReport = class(TForm)
    Panel1: TPanel;
    PanelResults: TPanel;
    ImageEnVect2: TImageEnVect;
    ImageEnVect1: TImageEnVect;
    d_result_value: TDataSource;
    cxGrid3: TcxGrid;
    gridLevel2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    db2_check_value: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    d_image_server: TDataSource;
    ImageEnVect3: TImageEnVect;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCutImage1: TBitBtn;
    btnCancelImage1: TBitBtn;
    btnCutImage2: TBitBtn;
    btnCancelImage2: TBitBtn;
    ImageList1: TImageList;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    q_practice_look: TUniQuery;
    q_practice_lookID: TStringField;
    q_practice_lookPRACTICE_NAME: TStringField;
    d_practice_look: TDataSource;
    PanelPractice: TPanel;
    cxGrid1: TcxGrid;
    gridStaticResults: TcxGridDBTableView;
    gridStaticResultsID: TcxGridDBColumn;
    gridStaticResultsRESULT_ID: TcxGridDBColumn;
    gridStaticResultsBODY_ID: TcxGridDBColumn;
    gridStaticResultsCHECK_POINT_ID: TcxGridDBColumn;
    gridStaticResultsPRIORITY: TcxGridDBColumn;
    gridStaticResultsPRACTICE_ID: TcxGridDBColumn;
    gridStaticResultsSTRENGTH: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    d_result_practice: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxCustomContainerReportLink;
    btnReport: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblPrintDate: TLabel;
    lblName: TLabel;
    lblChartNo: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    btnPracticePrint: TBitBtn;
    dxComponentPrinter1Link2: TdxCustomContainerReportLink;
    dxComponentPrinter1Link3: TdxGridReportLink;
    dxComponentPrinter1Link4: TdxCompositionReportLink;
    procedure FormShow(Sender: TObject);
    procedure ImageEnVect2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVect2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVect1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageEnVect1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnCutImage1Click(Sender: TObject);
    procedure btnCutImage2Click(Sender: TObject);
    procedure btnCancelImage1Click(Sender: TObject);
    procedure btnCancelImage2Click(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure btnPracticePrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MEMBER_NAME : string;
    MEMBER_CHARTNO : string;
  end;

var
  fmStaticResultReport: TfmStaticResultReport;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmStaticResultReport.FormShow(Sender: TObject);
var
  mem_stream1 : TMemoryStream;
  mem_stream2 : TMemoryStream;
begin
  lblName.Caption := MEMBER_NAME;
  lblChartNo.Caption := MEMBER_CHARTNO;
  lblPrintDate.Caption := FormatDateTime('yyyy-mm-dd', Date);

  ImageEnVect1.AutoFit := True;
  ImageEnVect1.AutoStretch := True;
  ImageEnVect1.Fit;
  ImageEnVect1.Clear;
  ImageEnVect1.MouseInteractVt := [miObjectSelect];
  ImageEnVect1.Update;

  ImageEnVect2.AutoFit := True;
  ImageEnVect2.AutoStretch := True;
  ImageEnVect2.Fit;
  ImageEnVect2.Clear;
  ImageEnVect2.MouseInteractVt := [miObjectSelect];
  ImageEnVect2.Update;

  d_image_server.DataSet.First;
  mem_stream1 := TMemoryStream.Create;
  TBlobField(d_image_server.DataSet.FieldByName('image_data')).SaveToStream(mem_stream1);
  if mem_stream1.Size > 0 then begin
    mem_stream1.Position := 0;
    ImageEnVect1.io.LoadFromStreamJpeg(mem_stream1);
  end;

  d_image_server.DataSet.Next;
  mem_stream2 := TMemoryStream.Create;
  TBlobField(d_image_server.DataSet.FieldByName('image_data')).SaveToStream(mem_stream2);
  if mem_stream2.Size > 0 then begin
    mem_stream2.Position := 0;
    ImageEnVect2.io.LoadFromStreamJpeg(mem_stream2);
  end;

  with gridLevel2.DataController.Filter do begin
    Root.Clear;
    Root.AddItem(db2_check_value, foGreaterEqual, 2, '���');
    Active := True;
  end;
  q_practice_look.Active := True;
  d_practice_look.DataSet.Refresh;

end;

procedure TfmStaticResultReport.btnCancelImage1Click(Sender: TObject);
var
  mem_stream : TMemoryStream;
begin
  d_image_server.DataSet.First;
  mem_stream := TMemoryStream.Create;
  TBlobField(d_image_server.DataSet.FieldByName('image_data')).SaveToStream(mem_stream);

  ImageEnVect1.Clear;
  mem_stream.Position := 0;
  ImageEnVect1.IO.LoadFromStreamJpeg(mem_stream);
  ImageEnVect1.Update;
end;

procedure TfmStaticResultReport.btnCancelImage2Click(Sender: TObject);
var
  mem_stream : TMemoryStream;
begin
  d_image_server.DataSet.First;
  mem_stream := TMemoryStream.Create;
  TBlobField(d_image_server.DataSet.FieldByName('image_data')).SaveToStream(mem_stream);

  ImageEnVect2.Clear;
  mem_stream.Position := 0;
  ImageEnVect2.IO.LoadFromStreamJpeg(mem_stream);
  ImageEnVect2.Update;
end;

procedure TfmStaticResultReport.btnCutImage1Click(Sender: TObject);
var
  mem_stream : TMemoryStream;
begin
  mem_stream := TMemoryStream.Create;
  if (ImageEnVect1.IEBitmap.IsEmpty = False) then begin
    ImageEnVect3.Clear;
    ImageEnVect1.Proc.SelCopyToClip(True);
    ImageEnVect3.Proc.SelPasteFromClip(True);
    ImageEnVect3.Update;
    ImageEnVect3.IO.SaveToStreamJpeg(mem_stream);

    ImageEnVect1.Clear;
    mem_stream.Position := 0;
    ImageEnVect1.IO.LoadFromStreamJpeg(mem_stream);
    ImageEnVect1.Update;
    ImageEnVect1.DeSelect;
  end;
  mem_stream.Free;
end;

procedure TfmStaticResultReport.btnCutImage2Click(Sender: TObject);
var
  mem_stream : TMemoryStream;
begin
  mem_stream := TMemoryStream.Create;
  if (ImageEnVect2.IEBitmap.IsEmpty = False) then begin
    ImageEnVect3.Clear;
    ImageEnVect2.Proc.SelCopyToClip(True);
    ImageEnVect3.Proc.SelPasteFromClip(True);
    ImageEnVect3.Update;
    ImageEnVect3.IO.SaveToStreamJpeg(mem_stream);

    ImageEnVect2.Clear;
    mem_stream.Position := 0;
    ImageEnVect2.IO.LoadFromStreamJpeg(mem_stream);
    ImageEnVect2.Update;
    ImageEnVect2.DeSelect;
  end;
  mem_stream.Free;
end;

procedure TfmStaticResultReport.btnPracticePrintClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link3);
end;

procedure TfmStaticResultReport.btnReportClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link4);
end;

procedure TfmStaticResultReport.ImageEnVect1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssCtrl in Shift then begin
    ImageEnVect1.MouseInteract := [miScroll];
    ImageEnVect1.Cursor := 1782;
  end else begin
    ImageEnVect1.MouseInteract := [];
    ImageEnVect1.MouseInteract := [miSelect];
    ImageEnVect1.Cursor := 1785;
  end;
end;

procedure TfmStaticResultReport.ImageEnVect1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImageEnVect1.MouseInteract := [];
  ImageEnVect1.MouseInteract := [miSelect];
  ImageEnVect1.Cursor := 1785;
end;

procedure TfmStaticResultReport.ImageEnVect2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssCtrl in Shift then begin
    ImageEnVect2.MouseInteract := [miScroll];
    ImageEnVect2.Cursor := 1782;
  end else begin
    ImageEnVect2.MouseInteract := [];
    ImageEnVect2.MouseInteract := [miSelect];
    ImageEnVect2.Cursor := 1785;
  end;
end;

procedure TfmStaticResultReport.ImageEnVect2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ImageEnVect2.MouseInteract := [];
  ImageEnVect2.MouseInteract := [miSelect];
  ImageEnVect2.Cursor := 1785;
end;

end.
