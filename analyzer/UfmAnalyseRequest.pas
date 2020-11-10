unit UfmAnalyseRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, DBClient, Provider,
  UniProvider, InterBaseUniProvider, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxImageComboBox, cxDBLookupComboBox, StdCtrls, Buttons, ComCtrls;

type
  TfmAnalyseRequest = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    d_AnalyseRequest: TDataSource;
    q_AnalyseRequest: TUniQuery;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1R_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1REQ_COMP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1ANALYZER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1REQ_KIND: TcxGridDBColumn;
    cxGrid1DBTableView1REQ_STATE: TcxGridDBColumn;
    cxGrid1DBTableView1ANALYSE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1REQ_COMMENT: TcxGridDBColumn;
    cxGrid1DBTableView1ANALYSE_COMMENT: TcxGridDBColumn;
    q_company_look: TUniQuery;
    d_company_look: TDataSource;
    q_analyzer_look: TUniQuery;
    d_analyzer_look: TDataSource;
    q_customer_look: TUniQuery;
    d_customer_look: TDataSource;
    q_customer_lookUID: TStringField;
    q_customer_lookCNAME: TStringField;
    q_company_lookCOMP_ID: TStringField;
    q_company_lookCOMP_NAME: TStringField;
    q_analyzer_lookID: TStringField;
    q_analyzer_lookUSER_NAME: TStringField;
    btnAnalyseDone: TBitBtn;
    Label1: TLabel;
    dtpStart: TDateTimePicker;
    dtpEnd: TDateTimePicker;
    btnView: TBitBtn;
    btnChangeStatus: TBitBtn;
    btnCancelDone: TBitBtn;
    q_AnalyseRequestID: TStringField;
    q_AnalyseRequestR_DATE: TDateField;
    q_AnalyseRequestCUSTOMER_ID: TStringField;
    q_AnalyseRequestREQ_COMP_ID: TStringField;
    q_AnalyseRequestANALYZER_ID: TStringField;
    q_AnalyseRequestREQ_KIND: TIntegerField;
    q_AnalyseRequestREQ_STATE: TIntegerField;
    q_AnalyseRequestANALYSE_DATE: TDateField;
    q_AnalyseRequestREQ_COMMENT: TStringField;
    q_AnalyseRequestANALYSE_COMMENT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAnalyseDoneClick(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure btnChangeStatusClick(Sender: TObject);
    procedure btnCancelDoneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAnalyseRequest: TfmAnalyseRequest;

implementation

uses GlobalVar, UfmAnalyseRequestDone, UdmDBCommon;

{$R *.dfm}

procedure TfmAnalyseRequest.btnAnalyseDoneClick(Sender: TObject);
var
  analyser_id : string;
begin
  analyser_id := q_AnalyseRequestANALYZER_ID.AsString;
  if analyser_id = LoginUserNo then begin
    fmAnalyseRequestDone := TfmAnalyseRequestDone.Create(Self);
    try
      fmAnalyseRequestDone.EditRequestDate.Date := Date;
      fmAnalyseRequestDone.ShowModal;
      if fmAnalyseRequestDone.ModalResult = mrOk then begin
        q_AnalyseRequest.Edit;
        q_AnalyseRequestANALYSE_DATE.AsDateTime := fmAnalyseRequestDone.EditRequestDate.Date;
        q_AnalyseRequestANALYSE_COMMENT.AsString := fmAnalyseRequestDone.EditBigo.Text;
        q_AnalyseRequestREQ_STATE.AsInteger := 2;
        q_AnalyseRequest.Post;
        d_AnalyseRequest.DataSet.Refresh;
      end;
    finally
      fmAnalyseRequestDone.Free;
    end;
  end else begin
    ShowMessage('해당 자료를 처리할 권한이 없습니다.');
  end;
end;

procedure TfmAnalyseRequest.btnCancelDoneClick(Sender: TObject);
var
  cState : integer;
begin
  cState := q_AnalyseRequestREQ_STATE.AsInteger;
  if cState = 2 then begin
    if Application.MessageBox('완료처리를 취소합니다.' + #13#10 + '취소처리를 하면 분석상태로 됩니다.' + #13#10 +
      '취소 할까요?', '완료취소', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      q_AnalyseRequest.Edit;
      q_AnalyseRequestREQ_STATE.AsInteger := 1;
      q_AnalyseRequest.Post;
      d_AnalyseRequest.DataSet.Refresh;
    end;
  end else begin
    ShowMessage('완료취소는 완료처리된 자료만 할 수 있습니다.');
    Exit;
  end;
end;

procedure TfmAnalyseRequest.btnChangeStatusClick(Sender: TObject);
var
  cState : integer;
begin
  cState := q_AnalyseRequestREQ_STATE.AsInteger;
  if cState = 0 then begin
    q_AnalyseRequest.Edit;
    q_AnalyseRequestREQ_STATE.AsInteger := 1;
    q_AnalyseRequest.Post;
    d_AnalyseRequest.DataSet.Refresh;
  end else if cState = 1 then begin
    q_AnalyseRequest.Edit;
    q_AnalyseRequestREQ_STATE.AsInteger := 0;
    q_AnalyseRequest.Post;
    d_AnalyseRequest.DataSet.Refresh;
  end else begin
    ShowMessage('완료된 자료는 변경할 수 없습니다.');
  end;
end;

procedure TfmAnalyseRequest.btnViewClick(Sender: TObject);
begin
  q_AnalyseRequest.ParamByName('sdate').AsDateTime := dtpStart.DateTime;
  q_AnalyseRequest.ParamByName('edate').AsDateTime := dtpEnd.DateTime;
  q_AnalyseRequest.ParamByName('ANALYZER_ID').AsString := LoginUserNo;
  q_AnalyseRequest.Active := True;
  d_AnalyseRequest.DataSet.Refresh;
end;

procedure TfmAnalyseRequest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmAnalyseRequest.FormCreate(Sender: TObject);
begin
  dtpStart.DateTime := Date;
  dtpEnd.DateTime := Date;

  q_customer_look.Active := True;
  q_company_look.Active := True;
  q_analyzer_look.Active := True;

  q_AnalyseRequest.ParamByName('sdate').AsDateTime := Date;
  q_AnalyseRequest.ParamByName('edate').AsDateTime := Date;
  q_AnalyseRequest.ParamByName('ANALYZER_ID').AsString := LoginUserNo;
  q_AnalyseRequest.Active := True;
  d_AnalyseRequest.DataSet.Refresh;
end;

initialization RegisterClasses([TfmAnalyseRequest]);

end.
