unit UfmMovementCheckItems;

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
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, Buttons, ExtCtrls, DBClient, Provider,
  MemDS, DBAccess, Uni, UniProvider, InterBaseUniProvider;

type
  TfmMovementCheckItems = class(TForm)
    t_item_text: TUniTable;
    d_item_text: TDataSource;
    d_item_question_text: TDataSource;
    t_item_question_text: TUniTable;
    Panel10: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    btnMoveIn: TBitBtn;
    btnMoveEdit: TBitBtn;
    btnMoveDel: TBitBtn;
    cxGrid3: TcxGrid;
    gridMove: TcxGridDBTableView;
    gridMoveUID: TcxGridDBColumn;
    gridMoveITEM_NAME: TcxGridDBColumn;
    gridMoveIDX: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    btnMovePointIn: TBitBtn;
    btnMovePointEdit: TBitBtn;
    btnMovePointDel: TBitBtn;
    cxGrid4: TcxGrid;
    gridMovePoint: TcxGridDBTableView;
    gridMovePointUID: TcxGridDBColumn;
    gridMovePointITEM_UID: TcxGridDBColumn;
    gridMovePointITEM_QUESTION: TcxGridDBColumn;
    gridMovePointIDX: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    t_item_textUID: TStringField;
    t_item_textITEM_NAME: TStringField;
    t_item_textIDX: TIntegerField;
    t_item_question_textUID: TStringField;
    t_item_question_textITEM_UID: TStringField;
    t_item_question_textITEM_QUESTION: TStringField;
    t_item_question_textIDX: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnMoveInClick(Sender: TObject);
    procedure btnMoveEditClick(Sender: TObject);
    procedure btnMoveDelClick(Sender: TObject);
    procedure btnMovePointDelClick(Sender: TObject);
    procedure btnMovePointEditClick(Sender: TObject);
    procedure btnMovePointInClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMovementCheckItems: TfmMovementCheckItems;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}


procedure TfmMovementCheckItems.btnMoveDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    t_item_text.Delete;
  end;
end;

procedure TfmMovementCheckItems.btnMoveEditClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := t_item_text.FieldByName('ITEM_NAME').AsString;
  if InputQuery('선택자료 수정', '신체부위를 입력하세요.', sValue) then begin
    t_item_text.Edit;
    t_item_text.FieldByName('ITEM_NAME').AsString := sValue;
    t_item_text.Post;
    d_item_text.DataSet.Refresh;
  end;
end;

procedure TfmMovementCheckItems.btnMoveInClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := '';
  if InputQuery('신규자료 등록', '신체부위를 입력하세요.', sValue) then begin
    t_item_text.Append;
    t_item_text.FieldByName('UID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
    t_item_text.FieldByName('ITEM_NAME').AsString := sValue;
    t_item_text.Post;
    d_item_text.DataSet.Refresh;
  end;
end;

procedure TfmMovementCheckItems.btnMovePointDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' +
    #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    t_item_question_text.Delete;
  end;
end;

procedure TfmMovementCheckItems.btnMovePointEditClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := t_item_question_text.FieldByName('ITEM_QUESTION').AsString;
  if InputQuery('선택자료 수정', '세부항목을 입력하세요.', sValue) then begin
    t_item_question_text.Edit;
    t_item_question_text.FieldByName('ITEM_QUESTION').AsString := sValue;
    t_item_question_text.Post;
    d_item_question_text.DataSet.Refresh;
  end;
end;

procedure TfmMovementCheckItems.btnMovePointInClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := '';
  if InputQuery('신규자료 등록', '세부항목을 입력하세요.', sValue) then begin
    t_item_question_text.Append;
    t_item_question_text.FieldByName('UID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
    t_item_question_text.FieldByName('ITEM_QUESTION').AsString := sValue;
    t_item_question_text.Post;
    d_item_question_text.DataSet.Refresh;
  end;
end;

procedure TfmMovementCheckItems.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmMovementCheckItems.FormCreate(Sender: TObject);
begin
  t_item_text.Active := True;
  t_item_question_text.Active := True;
end;

initialization RegisterClasses([TfmMovementCheckItems]);

end.
