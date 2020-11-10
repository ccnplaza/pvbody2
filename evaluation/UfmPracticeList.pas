unit UfmPracticeList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Uni, UniProvider, InterBaseUniProvider, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBClient, Provider,
  MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  ExtCtrls, cxDBLookupComboBox;

type
  TfmPracticeList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    btnItemIn: TBitBtn;
    btnItemEdit: TBitBtn;
    btnItemDel: TBitBtn;
    Panel6: TPanel;
    btnPracticeIn: TBitBtn;
    btnPracticeEdit: TBitBtn;
    btnPracticeDel: TBitBtn;
    gridItem: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    gridDetail: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    t_PRACTICE_ITEM: TUniTable;
    t_PRACTICE_DETAIL: TUniTable;
    d_PRACTICE_ITEM: TDataSource;
    d_PRACTICE_DETAIL: TDataSource;
    gridItemID: TcxGridDBColumn;
    gridItemITEM_NAME: TcxGridDBColumn;
    gridItemITEM_KIND: TcxGridDBColumn;
    gridDetailID: TcxGridDBColumn;
    gridDetailITEM_ID: TcxGridDBColumn;
    gridDetailITEM_NAME: TcxGridDBColumn;
    gridDetailITEM_KIND: TcxGridDBColumn;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    btnAddPractice: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    d_PRACTICE: TDataSource;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1PRACTICE_NAME: TcxGridDBColumn;
    q_practice: TUniQuery;
    q_practiceID: TStringField;
    q_practicePRACTICE_NAME: TStringField;
    t_PRACTICE_DETAILID: TStringField;
    t_PRACTICE_DETAILITEM_ID: TStringField;
    t_PRACTICE_DETAILITEM_NAME: TStringField;
    t_PRACTICE_DETAILITEM_KIND: TIntegerField;
    t_PRACTICE_ITEMID: TStringField;
    t_PRACTICE_ITEMITEM_NAME: TStringField;
    t_PRACTICE_ITEMITEM_KIND: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnItemInClick(Sender: TObject);
    procedure btnItemEditClick(Sender: TObject);
    procedure btnPracticeInClick(Sender: TObject);
    procedure btnPracticeEditClick(Sender: TObject);
    procedure btnAddPracticeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPracticeList: TfmPracticeList;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmPracticeList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPracticeList.FormCreate(Sender: TObject);
begin
  t_PRACTICE_ITEM.Active := True;
  t_PRACTICE_DETAIL.Active := True;
  q_PRACTICE.Active := True;
end;

procedure TfmPracticeList.btnAddPracticeClick(Sender: TObject);
begin
  t_PRACTICE_DETAIL.Append;
  t_PRACTICE_DETAILID.AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
  t_PRACTICE_DETAILITEM_ID.AsString := t_PRACTICE_ITEMID.AsString;
  t_PRACTICE_DETAILITEM_NAME.AsString := q_PRACTICEID.AsString;
  t_PRACTICE_DETAIL.Post;
  d_PRACTICE_DETAIL.DataSet.Refresh;
end;

procedure TfmPracticeList.btnItemEditClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := t_PRACTICE_ITEM.FieldByName('ITEM_NAME').AsString;
  if InputQuery('선택자료 수정', '운동처방항목을 입력하세요.', sValue) then begin
    t_PRACTICE_ITEM.Edit;
    t_PRACTICE_ITEM.FieldByName('ITEM_NAME').AsString := sValue;
    t_PRACTICE_ITEM.Post;
    d_PRACTICE_ITEM.DataSet.Refresh;
  end;
end;

procedure TfmPracticeList.btnItemInClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := '';
  if InputQuery('신규자료 등록', '운동처방항목을 입력하세요.', sValue) then begin
    t_PRACTICE_ITEM.Append;
    t_PRACTICE_ITEM.FieldByName('ID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
    t_PRACTICE_ITEM.FieldByName('ITEM_NAME').AsString := sValue;
    t_PRACTICE_ITEM.Post;
    d_PRACTICE_ITEM.DataSet.Refresh;
  end;
end;

procedure TfmPracticeList.btnPracticeEditClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := t_PRACTICE_DETAIL.FieldByName('ITEM_NAME').AsString;
  if InputQuery('선택자료 수정', '운동리스트를 입력하세요.', sValue) then begin
    t_PRACTICE_DETAIL.Edit;
    t_PRACTICE_DETAIL.FieldByName('ITEM_NAME').AsString := sValue;
    t_PRACTICE_DETAIL.Post;
    d_PRACTICE_DETAIL.DataSet.Refresh;
  end;
end;

procedure TfmPracticeList.btnPracticeInClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := '';
  if InputQuery('신규자료 등록', '운동리스트를 입력하세요.', sValue) then begin
    t_PRACTICE_DETAIL.Append;
    t_PRACTICE_DETAIL.FieldByName('ID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
    t_PRACTICE_DETAIL.FieldByName('ITEM_NAME').AsString := sValue;
    t_PRACTICE_DETAIL.Post;
    d_PRACTICE_DETAIL.DataSet.Refresh;
  end;
end;


initialization RegisterClasses([TfmPracticeList]);

end.
