unit UfmCommunity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxMemo, cxCalendar,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxInplaceContainer, cxDBTL, cxTLData,
  DB, DBClient, Provider, MemDS, DBAccess, Uni, UniProvider,
  InterBaseUniProvider, ExtCtrls, ImgList, DBCtrls, cxDBLookupComboBox,
  cxImageComboBox, DAAlerter, UniAlerter;

type
  TfmCommunity = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    cxDBTreeList1: TcxDBTreeList;
    btnAdd: TBitBtn;
    btnAddAnswer: TBitBtn;
    btnDel: TBitBtn;
    ImageList1: TImageList;
    d_community: TDataSource;
    cxDBTreeList1ID: TcxDBTreeListColumn;
    cxDBTreeList1PARENT_ID: TcxDBTreeListColumn;
    cxDBTreeList1LEVEL_ID: TcxDBTreeListColumn;
    cxDBTreeList1SUBJECT: TcxDBTreeListColumn;
    cxDBTreeList1WRITER_ID: TcxDBTreeListColumn;
    cxDBTreeList1ARTICLE_KIND: TcxDBTreeListColumn;
    cxDBTreeList1WDATE: TcxDBTreeListColumn;
    cxDBTreeList1CONTENTS: TcxDBTreeListColumn;
    q_community: TUniQuery;
    DBMemo1: TDBMemo;
    q_writer_look: TUniQuery;
    d_writer_look: TDataSource;
    usp_community_iu: TUniStoredProc;
    btnEditArticle: TBitBtn;
    Alerter_community: TUniAlerter;
    q_communityID: TStringField;
    q_communityPARENT_ID: TStringField;
    q_communitySTATUS_ID: TIntegerField;
    q_communityLEVEL_ID: TIntegerField;
    q_communitySUBJECT: TStringField;
    q_communityWRITER_ID: TStringField;
    q_communityTO_KIND: TIntegerField;
    q_communityTO_CUST_ID: TStringField;
    q_communityARTICLE_KIND: TIntegerField;
    q_communityWDATE: TDateField;
    q_communityCONTENTS: TStringField;
    q_writer_lookID: TStringField;
    q_writer_lookUSER_NAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAddAnswerClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnEditArticleClick(Sender: TObject);
    procedure cxDBTreeList1DblClick(Sender: TObject);
    procedure Alerter_communityEvent(Sender: TDAAlerter; const EventName,
      Message: string);
  private
    { Private declarations }
  public
    { Public declarations }
    SaveButtonClicked : Boolean;
  end;

var
  fmCommunity: TfmCommunity;

implementation

uses GlobalVar, UfmCommunityWrite, UdmDBCommon;

{$R *.dfm}

procedure TfmCommunity.FormCreate(Sender: TObject);
begin
  q_writer_look.Active := True;
  q_community.Active := True;
  Alerter_community.Active := True;
  SaveButtonClicked := False;
end;

procedure TfmCommunity.Alerter_communityEvent(Sender: TDAAlerter; const EventName,
  Message: string);
begin
  if SaveButtonClicked = False then begin  //다른사람이 이벤트를 발생한 경우
    q_community.Close;
    q_community.Open;
  end else begin                           //자신이 이벤트를 발생한경우
    SaveButtonClicked := False;
  end;
end;

procedure TfmCommunity.btnAddClick(Sender: TObject);
var
  new_id : string;
begin
  q_community.DisableControls;
  fmCommunityWrite := TfmCommunityWrite.Create(Self);
  try
    new_id := FormatDateTime('yyyymmddhhnnsszzz', now);
    fmCommunityWrite.ShowModal;
    if fmCommunityWrite.ModalResult = mrOk then begin
      with usp_community_iu do begin
        ParamByName('id').AsString := new_id;
        ParamByName('PARENT_ID').AsString := '0';
        ParamByName('STATUS_ID').AsInteger := 0;
        ParamByName('LEVEL_ID').AsInteger := 0;
        ParamByName('SUBJECT').AsString := fmCommunityWrite.EditSubject.Text;
        ParamByName('WRITER_ID').AsString := LoginUserNo;
        ParamByName('TO_KIND').AsInteger := 0;
        ParamByName('TO_CUST_ID').AsString := '';
        ParamByName('ARTICLE_KIND').AsInteger := fmCommunityWrite.ComboBox1.ItemIndex;
        ParamByName('WDATE').AsDateTime := fmCommunityWrite.edtWdate.DateTime;
        ParamByName('CONTENTS').AsString := fmCommunityWrite.Memo1.Text;
        ExecProc;
      end;
      q_community.Close;
      q_community.Open;
      q_community.Locate('id', new_id, []);
      SaveButtonClicked := True;  //현재 사용자가 저장을 한 경우
    end;
  finally
    fmCommunityWrite.Free;
    q_community.EnableControls;
  end;
end;

procedure TfmCommunity.btnDelClick(Sender: TObject);
var
  writer_id : string;
begin
  writer_id := q_communityWRITER_ID.AsString;
  if writer_id <> LoginUserNo then begin
    ShowMessage('글 삭제는 글을 쓴 사람만 할 수 있습니다.' + #10#13 + '글을 삭제를 할 수 없습니다.');
    Exit;
  end;
  if MessageDlg('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.' + #13#10 +
    '삭제 할까요?',  mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    q_community.Delete;
    SaveButtonClicked := True;  //현재 사용자가 저장을 한 경우
  end;

end;

procedure TfmCommunity.btnEditArticleClick(Sender: TObject);
var
  c_id, p_id, writer_id  : string;
  l_id : integer;
begin
  writer_id := q_communityWRITER_ID.AsString;
  if writer_id <> LoginUserNo then begin
    ShowMessage('글 수정은 글을 쓴 사람만 할 수 있습니다.' + #10#13 + '글을 수정할 수 없습니다.');
    Exit;
  end;
  q_community.DisableControls;
  fmCommunityWrite := TfmCommunityWrite.Create(Self);
  try
    c_id := q_communityID.AsString;
    p_id := q_communityPARENT_ID.AsString;
    l_id := q_communityLEVEL_ID.AsInteger;

    fmCommunityWrite.ComboBox1.ItemIndex := q_communityARTICLE_KIND.AsInteger;
    fmCommunityWrite.edtWdate.DateTime := q_communityWDATE.AsDateTime;
    fmCommunityWrite.EditSubject.Text := q_communitySUBJECT.AsString;
    fmCommunityWrite.Memo1.Text := q_communityCONTENTS.AsString;

    fmCommunityWrite.ShowModal;
    if fmCommunityWrite.ModalResult = mrOk then begin
      with usp_community_iu do begin
        ParamByName('id').AsString := c_id;
        ParamByName('PARENT_ID').AsString := p_id;
        ParamByName('STATUS_ID').AsInteger := 0;
        ParamByName('LEVEL_ID').AsInteger := l_id;
        ParamByName('SUBJECT').AsString := fmCommunityWrite.EditSubject.Text;
        ParamByName('WRITER_ID').AsString := writer_id;
        ParamByName('TO_KIND').AsInteger := 0;
        ParamByName('TO_CUST_ID').AsString := '';
        ParamByName('ARTICLE_KIND').AsInteger := fmCommunityWrite.ComboBox1.ItemIndex;
        ParamByName('WDATE').AsDateTime := fmCommunityWrite.edtWdate.DateTime;
        ParamByName('CONTENTS').AsString := fmCommunityWrite.Memo1.Text;
        ExecProc;
      end;
      q_community.Close;
      q_community.Open;
      q_community.Locate('id', c_id, []);
      SaveButtonClicked := True;  //현재 사용자가 저장을 한 경우
    end;
  finally
    fmCommunityWrite.Free;
    q_community.EnableControls;
  end;
end;

procedure TfmCommunity.cxDBTreeList1DblClick(Sender: TObject);
begin
  btnEditArticle.Click;
end;

procedure TfmCommunity.btnAddAnswerClick(Sender: TObject);
var
  parent_id, new_id : string;
  level : integer;
begin
  q_community.DisableControls;
  fmCommunityWrite := TfmCommunityWrite.Create(Self);
  try
    parent_id := q_communityID.AsString;
    level := cxDBTreeList1.FocusedNode.Level;
    if level > 2 then level := 3 else level := level + 1;
    new_id := FormatDateTime('yyyymmddhhnnsszzz', now);
    fmCommunityWrite.ComboBox1.ItemIndex := q_communityARTICLE_KIND.AsInteger;
    fmCommunityWrite.ShowModal;
    if fmCommunityWrite.ModalResult = mrOk then begin
      with usp_community_iu do begin
        ParamByName('id').AsString := new_id;
        ParamByName('PARENT_ID').AsString := parent_id;
        ParamByName('STATUS_ID').AsInteger := 0;
        ParamByName('LEVEL_ID').AsInteger := level;
        ParamByName('SUBJECT').AsString := fmCommunityWrite.EditSubject.Text;
        ParamByName('WRITER_ID').AsString := LoginUserNo;
        ParamByName('TO_KIND').AsInteger := 0;
        ParamByName('TO_CUST_ID').AsString := '';
        ParamByName('ARTICLE_KIND').AsInteger := fmCommunityWrite.ComboBox1.ItemIndex;
        ParamByName('WDATE').AsDateTime := fmCommunityWrite.edtWdate.DateTime;
        ParamByName('CONTENTS').AsString := fmCommunityWrite.Memo1.Text;
        ExecProc;
      end;
      q_community.Close;
      q_community.Open;
      q_community.Locate('id', new_id, []);
      SaveButtonClicked := True;  //현재 사용자가 저장을 한 경우
    end;
  finally
    fmCommunityWrite.Free;
    q_community.EnableControls;
  end;
end;

procedure TfmCommunity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmCommunity]);

end.
