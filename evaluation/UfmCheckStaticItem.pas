unit UfmCheckStaticItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, ieview, iemview, StdCtrls, cxButtons, dxGDIPlusClasses, cxImage,
  DB, MemDS, DBAccess, Uni, cxGroupBox, iexDBBitmaps, ComCtrls, iexRichEdit,
  cxCheckBox, ToolWin;

type
  TfmCheckStaticItem = class(TForm)
    ImageEnMView1: TImageEnMView;
    ImageEnMView2: TImageEnMView;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    btnResultSel: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    GroupBox1: TGroupBox;
    d_CHECK_ITEM_TREE_SEL: TDataSource;
    d_CHECK_ITEM_SUB_SEL: TDataSource;
    CHECK_ITEM_TREE_SEL: TUniStoredProc;
    CHECK_ITEM_TREE_SELID: TIntegerField;
    CHECK_ITEM_TREE_SELPARENT_ID: TIntegerField;
    CHECK_ITEM_TREE_SELIMAGE_ID: TIntegerField;
    CHECK_ITEM_TREE_SELITEM_NAME: TStringField;
    CHECK_ITEM_TREE_SELBODY_ID: TIntegerField;
    CHECK_ITEM_TREE_SELRESULT_ID: TIntegerField;
    CHECK_ITEM_TREE_SELCHECK_IMAGE: TBlobField;
    CHECK_ITEM_SUB_SEL: TUniStoredProc;
    CHECK_ITEM_SUB_SELID: TIntegerField;
    CHECK_ITEM_SUB_SELPARENT_ID: TIntegerField;
    CHECK_ITEM_SUB_SELIMAGE_ID: TIntegerField;
    CHECK_ITEM_SUB_SELITEM_NAME: TStringField;
    CHECK_ITEM_SUB_SELBODY_ID: TIntegerField;
    CHECK_ITEM_SUB_SELRESULT_ID: TIntegerField;
    CHECK_ITEM_SUB_SELCHECK_IMAGE: TBlobField;
    CHECK_ITEM_SUB_SELCHECK_COMMENT: TBlobField;
    edtComment: TIERichEdit;
    CHECK_ITEM_TREE_COMMENT: TUniStoredProc;
    d_CHECK_ITEM_TREE_COMMENT: TDataSource;
    CHECK_ITEM_TREE_COMMENTID: TIntegerField;
    CHECK_ITEM_TREE_COMMENTCHECK_COMMENT: TBlobField;
    Label1: TLabel;
    IERichEditToolbar1: TIERichEditToolbar;
    q_update_comment: TUniQuery;
    Panel1: TPanel;
    cxButton1: TcxButton;
    PanelPassword: TPanel;
    Label2: TLabel;
    edtPassword: TEdit;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure ImageEnMView1ImageSelect(Sender: TObject; idx: Integer);
    procedure ImageEnMView2ImageSelect(Sender: TObject; idx: Integer);
    procedure btnResultSelClick(Sender: TObject);
    procedure ImageEnMView2DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    fDBMultiBitmap : TIEDBMultiBitmap;
    procedure RetrieveComment(id: Integer);
  public
    { Public declarations }
    RESULT_ID, ITEM_ID, BODY_ID : Integer;
    RESULT_LEVEL : Integer;
    procedure RetrieveSubItems(id : Integer);
    procedure RetrieveSubResult(id : Integer);
  end;

var
  fmCheckStaticItem: TfmCheckStaticItem;

implementation
uses
  GlobalVar, UdmDBCommon, UfmStaticCheck, UfmHowToSingle;
{$R *.dfm}

{ TfmCheckStaticItem }

procedure TfmCheckStaticItem.btnResultSelClick(Sender: TObject);
var
  i_id, r_id : integer;
begin
  RESULT_LEVEL := (Sender as TcxButton).Tag;
  i_id := ImageEnMView1.SelectedImage;
  r_id := ImageEnMView2.SelectedImage;
  ITEM_ID := ImageEnMView1.ImageTag[i_id];
  RESULT_ID := ImageEnMView2.ImageTag[r_id];
  fmStaticCheck.SaveResultData;
end;

procedure TfmCheckStaticItem.cxButton1Click(Sender: TObject);
begin
  PanelPassword.Visible := True;
end;

procedure TfmCheckStaticItem.cxButton2Click(Sender: TObject);
var
  idx : Integer;
begin
  if edtPassword.Text = '6729' then begin
    idx := ImageEnMView2.SelectedImage;
    q_update_comment.ParamByName('id').Value := ImageEnMView2.ImageTag[idx];
    q_update_comment.ParamByName('new_comment').Value := edtComment.RTFText;
    q_update_comment.Execute;
    PanelPassword.Visible := False;
  end else begin
    ShowMessage('비밀번호가 틀립니다.');
    PanelPassword.Visible := False;
  end;
end;

procedure TfmCheckStaticItem.FormShow(Sender: TObject);
begin
  RetrieveSubItems(BODY_ID);
end;

procedure TfmCheckStaticItem.ImageEnMView1ImageSelect(Sender: TObject;
  idx: Integer);
begin
  RetrieveSubResult(ImageEnMView1.ImageTag[idx]);
  ImageEnMView2ImageSelect(Sender, 0);
end;

procedure TfmCheckStaticItem.ImageEnMView2DblClick(Sender: TObject);
var
  citem : string;
  c_id : Integer;
begin
  citem := ImageEnMView2.ImageBottomText[ImageEnMView2.SelectedImage];
  c_id := StrToInt(ImageEnMView2.ImageTopText[ImageEnMView2.SelectedImage]);
  if c_id > 0 then begin
    fmHowToSingle := TfmHowToSingle.Create(Self);
    try
      fmHowToSingle.Caption := '측정방법 - ' + citem;
      fmHowToSingle.ImageID := c_id;
      fmHowToSingle.ShowModal;
    finally
      fmHowToSingle.Free;
    end;
  end;
end;

procedure TfmCheckStaticItem.ImageEnMView2ImageSelect(Sender: TObject;
  idx: Integer);
var
  check_id : Integer;
begin
  check_id := ImageEnMView2.ImageTag[idx];
  RetrieveComment(check_id);
end;

procedure TfmCheckStaticItem.RetrieveSubItems(id: Integer);
var
  i, cnt, idx : Integer;
  ms : TMemoryStream;
begin
  ImageEnMView1.Clear;
  CHECK_ITEM_TREE_SEL.ParamByName('P_ID').Value := id;
  CHECK_ITEM_TREE_SEL.Open;
  d_CHECK_ITEM_TREE_SEL.DataSet.Refresh;
  cnt := CHECK_ITEM_TREE_SEL.RecordCount;
  CHECK_ITEM_TREE_SEL.First;
  ImageEnMView1.LockUpdate;
  for i := 0 to cnt - 1 do begin
    ms := TMemoryStream.Create;
    CHECK_ITEM_TREE_SELCHECK_IMAGE.SaveToStream(ms);
    ms.Position := 0;
    if ms.Size > 100 then begin
      idx := ImageEnMView1.AppendImage;
      ImageEnMView1.SetImageFromStream(idx, ms);
      ImageEnMView1.ImageTag[idx] := CHECK_ITEM_TREE_SELID.Value;
      ImageEnMView1.ImageBottomText[idx] := CHECK_ITEM_TREE_SELITEM_NAME.Value;
      ms.Free;
    end;
    CHECK_ITEM_TREE_SEL.Next;
  end;
  ImageEnMView1.UnlockUpdate;
  ImageEnMView1.SelectedImage := 0;
  ImageEnMView1ImageSelect(Self, 0);
end;

procedure TfmCheckStaticItem.RetrieveSubResult(id: Integer);
var
  i, cnt, idx : Integer;
  ms : TMemoryStream;
begin
  ImageEnMView2.Clear;
  CHECK_ITEM_SUB_SEL.ParamByName('P_ID').Value := id;
  CHECK_ITEM_SUB_SEL.Open;
  d_CHECK_ITEM_SUB_SEL.DataSet.Refresh;
  cnt := CHECK_ITEM_SUB_SEL.RecordCount;
  CHECK_ITEM_SUB_SEL.First;
  ImageEnMView2.LockUpdate;
  for i := 0 to cnt - 1 do begin
    ms := TMemoryStream.Create;
    CHECK_ITEM_SUB_SELCHECK_IMAGE.SaveToStream(ms);
    ms.Position := 0;
    if ms.Size > 100 then begin
      idx := ImageEnMView2.AppendImage;
      ImageEnMView2.SetImageFromStream(idx, ms);
      ImageEnMView2.ImageTag[idx] := CHECK_ITEM_SUB_SELID.Value;
      ImageEnMView2.ImageTopText[idx] := IntToStr(CHECK_ITEM_SUB_SELIMAGE_ID.Value);
      ImageEnMView2.ImageBottomText[idx] := CHECK_ITEM_SUB_SELITEM_NAME.Value;
      ms.Free;
    end;
    CHECK_ITEM_SUB_SEL.Next;
  end;
  ImageEnMView2.UnlockUpdate;
  ImageEnMView2.SelectedImage := 0;
end;

procedure TfmCheckStaticItem.RetrieveComment(id: Integer);
var
  i, cnt, idx : Integer;
  ms : TMemoryStream;
begin
  CHECK_ITEM_TREE_COMMENT.ParamByName('CHECK_ID').Value := id;
  CHECK_ITEM_TREE_COMMENT.Open;
  d_CHECK_ITEM_TREE_COMMENT.DataSet.Refresh;
  edtComment.Clear;
  edtComment.RTFText := CHECK_ITEM_TREE_COMMENTCHECK_COMMENT.AsString;
  edtComment.Refresh;
end;

end.
