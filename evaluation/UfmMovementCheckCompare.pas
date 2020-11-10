unit UfmMovementCheckCompare;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, Buttons, cxGroupBox, ExtCtrls, ImgList,
  Uni, DBClient, Provider, MemDS, DBAccess, UniProvider, InterBaseUniProvider,
  cxDBLookupComboBox, cxImageComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfmMovementCheckCompare = class(TForm)
    t_item_text: TUniTable;
    d_item_text: TDataSource;
    d_item_question_text: TDataSource;
    t_item_question_text: TUniTable;
    ImageList1: TImageList;
    pnlMember: TPanel;
    cxGroupBox2: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    pnlNo: TPanel;
    cxGroupBox3: TcxGroupBox;
    q_result_compare: TUniQuery;
    d_result_compare: TDataSource;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    btnAddList: TBitBtn;
    btnDelete: TBitBtn;
    cbSequence: TComboBox;
    btnGenerateBasic: TBitBtn;
    btnInitData: TBitBtn;
    cxGrid1: TcxGrid;
    gridCompare: TcxGridDBBandedTableView;
    gridCompareID: TcxGridDBBandedColumn;
    gridCompareCUSTOMER_ID: TcxGridDBBandedColumn;
    gridCompareCHECK_BODY_ID: TcxGridDBBandedColumn;
    gridCompareCHECK_POINT_ID: TcxGridDBBandedColumn;
    gridCompareCHECK1_VALUE: TcxGridDBBandedColumn;
    gridCompareCHECK2_VALUE: TcxGridDBBandedColumn;
    gridCompareCHECK3_VALUE: TcxGridDBBandedColumn;
    gridCompareCHECK4_VALUE: TcxGridDBBandedColumn;
    gridCompareCHECK5_VALUE: TcxGridDBBandedColumn;
    gridCompareCHECK1_DATE: TcxGridDBBandedColumn;
    gridCompareCHECK2_DATE: TcxGridDBBandedColumn;
    gridCompareCHECK3_DATE: TcxGridDBBandedColumn;
    gridCompareCHECK4_DATE: TcxGridDBBandedColumn;
    gridCompareCHECK5_DATE: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    d_result_value: TDataSource;
    q_result_value: TUniQuery;
    cxGrid2: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckUID: TcxGridDBColumn;
    gridCheckCUST_UID: TcxGridDBColumn;
    gridCheckPICTURE_DATE: TcxGridDBColumn;
    gridCheckPIC_CNT: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    t_item_textUID: TStringField;
    t_item_textITEM_NAME: TStringField;
    t_item_textIDX: TIntegerField;
    t_item_question_textUID: TStringField;
    t_item_question_textITEM_UID: TStringField;
    t_item_question_textITEM_QUESTION: TStringField;
    t_item_question_textIDX: TIntegerField;
    q_result_valueID: TStringField;
    q_result_valueMOVEMENT_RESULT_ID: TStringField;
    q_result_valueCHECK_POINT_ID: TStringField;
    q_result_valueCHECK_VALUE: TIntegerField;
    q_result_valueCUSTOMER_ID: TStringField;
    q_result_valueCOMPANY_ID: TStringField;
    q_result_valueCHECK_ITEM_ID: TStringField;
    q_result_compareID: TStringField;
    q_result_compareCUSTOMER_ID: TStringField;
    q_result_compareCHECK_BODY_ID: TStringField;
    q_result_compareCHECK_POINT_ID: TStringField;
    q_result_compareCHECK1_VALUE: TIntegerField;
    q_result_compareCHECK2_VALUE: TIntegerField;
    q_result_compareCHECK3_VALUE: TIntegerField;
    q_result_compareCHECK4_VALUE: TIntegerField;
    q_result_compareCHECK5_VALUE: TIntegerField;
    q_result_compareCHECK1_DATE: TDateField;
    q_result_compareCHECK2_DATE: TDateField;
    q_result_compareCHECK3_DATE: TDateField;
    q_result_compareCHECK4_DATE: TDateField;
    q_result_compareCHECK5_DATE: TDateField;
    btnReport: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGenerateBasicClick(Sender: TObject);
    procedure btnAddListClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnInitDataClick(Sender: TObject);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnReportClick(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlNameClick(Sender: TObject);
  private
    procedure CreateBasicData;
    procedure InitCompareData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovementCheckCompare: TfmMovementCheckCompare;

implementation

uses GlobalVar, uMemberSelect, UdmDBCommon;

{$R *.dfm}

procedure TfmMovementCheckCompare.FormCreate(Sender: TObject);
begin
  t_item_text.Active := True;
  t_item_question_text.Active := True;
end;

procedure TfmMovementCheckCompare.FormActivate(Sender: TObject);
begin
  if (GLOVAL_MEMBER_UID <> '') and (GLOVAL_CHECK_DATA_UID <> '') then begin
    pnlName.Caption := GLOVAL_MEMBER_NAME;
    pnlNo.Caption := GLOVAL_MEMBER_TEL;

    q_result_compare.ParamByName('customer_id').AsString := GLOVAL_MEMBER_UID;
    q_result_compare.Active := True;
    d_result_compare.DataSet.Refresh;
  end;
end;

procedure TfmMovementCheckCompare.btnAddListClick(Sender: TObject);
var
  cnt, i : integer;
  cdate : TDateTime;
begin
  if q_result_compare.RecordCount < 1 then begin
    ShowMessage('평가항목 자료가 없습니다. 평가항목생성을 먼저하세요.');
    Exit;
  end;
  q_result_compare.DisableControls;
  GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
  cdate := dmDBCommon.d_picture_data.DataSet.FieldByName('PICTURE_DATE').AsDateTime;
  q_result_value.ParamByName('MOVEMENT_RESULT_ID').AsString := GLOVAL_CHECK_DATA_UID;
  q_result_value.Active := True;
  d_result_value.DataSet.Refresh;

  cnt := q_result_value.RecordCount;
  if cnt < 1 then begin
    ShowMessage('측정결과 자료가 없습니다. 측정평가 작업을 먼저하세요.');
    Exit;
  end;
  Screen.Cursor := crHourGlass;
  q_result_value.First;
  q_result_compare.First;
  for i := 0 to cnt - 1 do begin
    q_result_compare.Edit;
    if cbSequence.ItemIndex = 0 then begin
      q_result_compareCHECK1_VALUE.AsInteger := q_result_valueCHECK_VALUE.AsInteger;
      q_result_compareCHECK1_DATE.AsDateTime := cdate;
    end;
    if cbSequence.ItemIndex = 1 then begin
      q_result_compareCHECK2_VALUE.AsInteger := q_result_valueCHECK_VALUE.AsInteger;
      q_result_compareCHECK2_DATE.AsDateTime := cdate;
    end;
    if cbSequence.ItemIndex = 2 then begin
      q_result_compareCHECK3_VALUE.AsInteger := q_result_valueCHECK_VALUE.AsInteger;
      q_result_compareCHECK3_DATE.AsDateTime := cdate;
    end;
    if cbSequence.ItemIndex = 3 then begin
      q_result_compareCHECK4_VALUE.AsInteger := q_result_valueCHECK_VALUE.AsInteger;
      q_result_compareCHECK4_DATE.AsDateTime := cdate;
    end;
    if cbSequence.ItemIndex = 4 then begin
      q_result_compareCHECK5_VALUE.AsInteger := q_result_valueCHECK_VALUE.AsInteger;
      q_result_compareCHECK5_DATE.AsDateTime := cdate;
    end;
    q_result_compare.Post;
    q_result_value.Next;
    q_result_compare.Next;
  end;
  d_result_compare.DataSet.Refresh;
  q_result_compare.First;
  q_result_compare.EnableControls;
  if cbSequence.ItemIndex < 4 then
    cbSequence.ItemIndex := cbSequence.ItemIndex + 1;

  Screen.Cursor := crDefault;
end;

procedure TfmMovementCheckCompare.btnDeleteClick(Sender: TObject);
var
  cnt, i : integer;
begin
  Screen.Cursor := crHourGlass;
  q_result_compare.DisableControls;
  cnt := q_result_compare.RecordCount;
  q_result_compare.First;
  for i := 0 to cnt - 1 do begin
    q_result_compare.Edit;
    if cbSequence.ItemIndex = 0 then begin
      q_result_compareCHECK1_VALUE.AsInteger := 0;
      q_result_compareCHECK1_DATE.Clear;
    end;
    if cbSequence.ItemIndex = 1 then begin
      q_result_compareCHECK2_VALUE.AsInteger := 0;
      q_result_compareCHECK2_DATE.Clear;
    end;
    if cbSequence.ItemIndex = 2 then begin
      q_result_compareCHECK3_VALUE.AsInteger := 0;
      q_result_compareCHECK3_DATE.Clear;
    end;
    if cbSequence.ItemIndex = 3 then begin
      q_result_compareCHECK4_VALUE.AsInteger := 0;
      q_result_compareCHECK4_DATE.Clear;
    end;
    if cbSequence.ItemIndex = 4 then begin
      q_result_compareCHECK5_VALUE.AsInteger := 0;
      q_result_compareCHECK5_DATE.Clear;
    end;
    q_result_compare.Post;
    q_result_compare.Next;
  end;
  q_result_compare.First;
  d_result_compare.DataSet.Refresh;
  q_result_compare.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfmMovementCheckCompare.btnGenerateBasicClick(Sender: TObject);
begin
  if q_result_compare.RecordCount > 0 then begin
    ShowMessage('평가항목 자료가 있습니다. 다시 생성하려면 평가항목 초기화를 하세요');
    Exit;
  end else begin
    CreateBasicData;
  end;
end;

procedure TfmMovementCheckCompare.btnInitDataClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 회원의 비교자료를 초기화합니다.' + #13#10 + '초기화 한 자료는 되살릴 수 없습니다.'
    + #13#10 + '초기화를 할까요?', '자료초기화', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    InitCompareData;
  end;
end;

procedure TfmMovementCheckCompare.btnReportClick(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfmMovementCheckCompare.InitCompareData;
var
  qry : TUniQuery;
begin
  Screen.Cursor := crHourGlass;
  q_result_compare.DisableControls;
  qry := TUniQuery.Create(nil);
  with qry do begin
    Connection := dmDBCommon.UniDBConnection;
    SQL.Clear;
    SQL.Add('Delete from MOVEMENT_RESULT_COMPARE ');
    SQL.Add('where CUSTOMER_ID = :CUSTOMER_ID ');
    Params.ParamByName('CUSTOMER_ID').AsString := GLOVAL_MEMBER_UID;
    Execute;
  end;
  q_result_compare.ParamByName('customer_id').AsString := GLOVAL_MEMBER_UID;
  q_result_compare.Active := True;
  d_result_compare.DataSet.Refresh;
  q_result_compare.EnableControls;
  Screen.Cursor := crDefault;
end;

procedure TfmMovementCheckCompare.pnlNameClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      pnlName.Caption := GLOVAL_MEMBER_NAME;
      pnlNo.Caption := GLOVAL_MEMBER_TEL;

      dmDBCommon.RetrieveMemberPicture(GLOVAL_MEMBER_UID);

      GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
      q_result_compare.ParamByName('customer_id').AsString := GLOVAL_MEMBER_UID;
      q_result_compare.Active := True;
      d_result_compare.DataSet.Refresh;
    end;
  finally
    fmMemberSelect.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmMovementCheckCompare.CreateBasicData;
var
  i, cnt : integer;
begin
  Screen.Cursor := crHourGlass;
  cnt := t_item_question_text.RecordCount;
  t_item_question_text.First;
  for i := 0 to cnt - 1 do begin
    q_result_compare.Append;
    q_result_compareID.AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
    q_result_compareCUSTOMER_ID.AsString := GLOVAL_MEMBER_UID;
    q_result_compareCHECK_BODY_ID.AsString := t_item_question_textItem_UID.AsString;
    q_result_compareCHECK_POINT_ID.AsString := t_item_question_textUID.AsString;
    q_result_compare.Post;
    t_item_question_text.Next;
  end;
  d_result_compare.DataSet.Refresh;
  q_result_compare.First;
  Screen.Cursor := crDefault;
end;

procedure TfmMovementCheckCompare.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMovementCheckCompare.gridCheckCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  GLOVAL_CHECK_DATA_UID := dmDBCommon.d_picture_data.DataSet.FieldByName('UID').AsString;
end;

procedure TfmMovementCheckCompare.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

initialization RegisterClasses([TfmMovementCheckCompare]);

end.
