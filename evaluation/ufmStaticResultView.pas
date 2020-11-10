unit ufmStaticResultView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufmDialogParent, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, MemDS, DBAccess, Uni, cxImageComboBox, TeEngine, TeeProcs,
  Chart, Series, DBChart, StdCtrls, Buttons, DBClient, cxDBLookupComboBox,
  Provider, ImgList, cxCheckBox, dxSkinMetropolis, dxSkinMetropolisDark,
  dxmdaset, frxClass, frxDBSet, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxTextEdit, cxContainer,
  cxMemo, cxGroupBox;

type
  TfmStaticResultView = class(TfmDialogParent)
    Panel1: TPanel;
    gridResult: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxMemResult: TdxMemData;
    d_MemResult: TDataSource;
    dxMemResultbody_point: TStringField;
    dxMemResultcheck_item: TStringField;
    dxMemResultpractice_name: TStringField;
    dxMemResultid: TIntegerField;
    gridResultRecId: TcxGridDBColumn;
    gridResultid: TcxGridDBColumn;
    gridResultbody_point: TcxGridDBColumn;
    gridResultcheck_item: TcxGridDBColumn;
    gridResultpractice_name: TcxGridDBColumn;
    dxMemResultpractice_id: TIntegerField;
    gridResultpractice_id: TcxGridDBColumn;
    btnPrint: TBitBtn;
    btnPlayVideo: TBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleNormal: TcxStyle;
    cxStyleBlue: TcxStyle;
    cxStyleRed: TcxStyle;
    dxMemResultcheck_level: TStringField;
    gridResultcheck_level: TcxGridDBColumn;
    dxMemResultcheck_level_no: TSmallintField;
    gridResultcheck_level_no: TcxGridDBColumn;
    dxMemResultdirection_kind: TStringField;
    gridResultdirection_kind: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    Memo1: TMemo;
    btnSave: TBitBtn;
    NSTATIC_CHECK_DATA_UPD: TUniStoredProc;
    procedure btnPlayVideoClick(Sender: TObject);
    procedure gridResultCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnPrintClick(Sender: TObject);
    procedure gridResultStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ResultData_ID : string;
    CustomerName : string;
    CustomerTel : string;
    CheckDate : TDateTime;
    CheckChasoo : Integer;
    CheckDataID : string;
  end;

var
  fmStaticResultView: TfmStaticResultView;

implementation

uses UPlayer, GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmStaticResultView.btnPlayVideoClick(Sender: TObject);
var
  video_id : Integer;
  video_file, p_name : string;
begin
  video_id := gridResultpractice_id.EditValue;
  if video_id > 0 then begin
    p_name := gridResultpractice_name.EditValue;
    fmVideoPlayer := TfmVideoPlayer.Create(Self);
    try
      fmVideoPlayer.Caption := '동영상 운동처방 - ' + p_name;
      fmVideoPlayer.VIDEO_ID := video_id;
      fmVideoPlayer.ShowModal;
    finally
      fmVideoPlayer.Free;
    end;
  end else begin
    ShowMessage('선택한 항목은 운동처방 동영상이 없습니다.');
  end;
end;

procedure TfmStaticResultView.btnPrintClick(Sender: TObject);
begin
  frxReport1.Variables.Variables['CustomerName']:=#39+CustomerName+#39;
  frxReport1.Variables.Variables['CustomerTel']:=#39+CustomerTel+#39;
  frxReport1.Variables.Variables['CheckDate']:=#39+DateTimeToStr(CheckDate)+#39;
  frxReport1.Variables.Variables['CheckChasoo']:=#39+IntToStr(CheckChasoo)+#39;
  frxReport1.Variables.Variables['CustomerComments']:=#39+Memo1.Text+#39;
  frxReport1.ShowReport;
end;

procedure TfmStaticResultView.btnSaveClick(Sender: TObject);
begin
  inherited;
  //gridCheck.DataController.SaveBookmark;
  NSTATIC_CHECK_DATA_UPD.ParamByName('ID').Value := CheckDataID;
  NSTATIC_CHECK_DATA_UPD.ParamByName('C_COMMENTS').Value := Memo1.Text;
  NSTATIC_CHECK_DATA_UPD.ExecProc;
  dmDBCommon.d_NSTATIC_CHECK_DATA.DataSet.Refresh;
  //gridCheck.DataController.GotoBookmark;

end;

procedure TfmStaticResultView.FormShow(Sender: TObject);
var
  comm : string;
begin
  inherited;
end;

procedure TfmStaticResultView.gridResultCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnPlayVideo.Click;
end;

procedure TfmStaticResultView.gridResultStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  col : Integer;
begin
  col := 4;
  if ARecord.Values[col] = '중등' then
    AStyle := cxstyleBlue
  else if ARecord.Values[col] = '심각' then
    AStyle := cxStyleRed
  else
    AStyle := cxStyleNormal;
end;

end.
