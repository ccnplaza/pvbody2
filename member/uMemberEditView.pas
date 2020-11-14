unit uMemberEditView;

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
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  StdCtrls, Buttons, cxTextEdit, ExtCtrls, cxImage, imageenio, DB, cxMemo,
  cxImageComboBox, MemDS, VirtualTable, dxSkinOffice2013White, ieview,
  imageenview, ComCtrls, dxCore, cxDateUtils, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBAccess, Uni, hyieutils,
  iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers, iexToolbars;

type
  TfmMemberEditView = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    BitBtn2: TBitBtn;
    Panel25: TPanel;
    Panel27: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel26: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    ImageEnView1: TImageEnView;
    SEX: TcxImageComboBox;
    CTEL: TEdit;
    CEMAIL: TEdit;
    CBIGO: TEdit;
    HOW_TO_COME: TcxImageComboBox;
    FOOD_KIND: TcxImageComboBox;
    FOOD_HOW_MUCH: TcxImageComboBox;
    FOOD_HOW_OFTEN: TcxImageComboBox;
    BODY_STATUS: TMemo;
    REG_DATE: TcxDateEdit;
    CNAME: TEdit;
    edtAge: TEdit;
    Label3: TLabel;
    JOBKIND: TEdit;
    HOBBY: TEdit;
    BLOOD_PRESSURE: TcxImageComboBox;
    BLOOD: TEdit;
    edtEtcComming: TEdit;
    Label1: TLabel;
    chkItem1: TCheckBox;
    chkItem8: TCheckBox;
    chkItem9: TCheckBox;
    chkItem4: TCheckBox;
    chkItem5: TCheckBox;
    chkItem2: TCheckBox;
    chkItem7: TCheckBox;
    chkItem6: TCheckBox;
    chkItem3: TCheckBox;
    chkItem10: TCheckBox;
    edtEtcPurpose: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    cbCenter: TcxLookupComboBox;
    Label2: TLabel;
    CUSTOMER_SEL_BYID: TUniStoredProc;
    CUSTOMER_SEL_BYIDUID: TStringField;
    CUSTOMER_SEL_BYIDCNAME: TStringField;
    CUSTOMER_SEL_BYIDSEX: TStringField;
    CUSTOMER_SEL_BYIDCAGE: TStringField;
    CUSTOMER_SEL_BYIDCTEL: TStringField;
    CUSTOMER_SEL_BYIDCEMAIL: TStringField;
    CUSTOMER_SEL_BYIDCBIGO: TStringField;
    CUSTOMER_SEL_BYIDREG_DATE: TDateField;
    CUSTOMER_SEL_BYIDJOBKIND: TStringField;
    CUSTOMER_SEL_BYIDHOBBY: TStringField;
    CUSTOMER_SEL_BYIDHOW_TO_COME: TStringField;
    CUSTOMER_SEL_BYIDPURPOSE: TStringField;
    CUSTOMER_SEL_BYIDBLOOD: TStringField;
    CUSTOMER_SEL_BYIDBLOOD_PRESSURE: TStringField;
    CUSTOMER_SEL_BYIDBODY_STATUS: TStringField;
    CUSTOMER_SEL_BYIDFOOD_KIND: TStringField;
    CUSTOMER_SEL_BYIDFOOD_HOW_MUCH: TStringField;
    CUSTOMER_SEL_BYIDFOOD_HOW_OFTEN: TStringField;
    CUSTOMER_SEL_BYIDHOW_TO_COME_ETC: TStringField;
    CUSTOMER_SEL_BYIDPURPOSE_ETC: TStringField;
    CUSTOMER_SEL_BYIDPURPOSE_DESC: TStringField;
    CUSTOMER_SEL_BYIDIS_ACTIVE: TIntegerField;
    CUSTOMER_SEL_BYIDPHOTO: TBlobField;
    BitBtn1: TBitBtn;
    CUSTOMER_UPD: TUniStoredProc;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure SaveUserPicture(uid: string; memPic: TMemoryStream);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberEditView: TfmMemberEditView;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmMemberEditView.BitBtn1Click(Sender: TObject);
var
  memPic : TMemoryStream;
  checkItem : array[0..9] of TCheckBox;
  i, itemVal : Integer;
  sel_item, sel_item_desc : string;
  stlist : TStringList;
begin
  try
    checkItem[0] := chkItem1;
    checkItem[1] := chkItem2;
    checkItem[2] := chkItem3;
    checkItem[3] := chkItem4;
    checkItem[4] := chkItem5;
    checkItem[5] := chkItem6;
    checkItem[6] := chkItem7;
    checkItem[7] := chkItem8;
    checkItem[8] := chkItem9;
    checkItem[9] := chkItem10;

    sel_item := '';
    sel_item_desc := '';
    for i := 0 to 9 do begin
      if checkItem[i].Checked then begin
        sel_item := sel_item + IntToStr(i) + ',';
        if i = 9 then
          sel_item_desc := sel_item_desc + edtEtcPurpose.Text + ', '
        else
          sel_item_desc := sel_item_desc + checkItem[i].Caption + ', ';
      end;
    end;
    sel_item := Copy(sel_item, 1, Length(sel_item) - 1);
    sel_item_desc := Copy(sel_item_desc, 1, Length(sel_item_desc) - 2);

    CUSTOMER_UPD.ParamByName('UID').Value := GLOVAL_MEMBER_UID;
    CUSTOMER_UPD.ParamByName('CNAME').Value           := CNAME.Text;
    CUSTOMER_UPD.ParamByName('SEX').Value             := SEX.EditValue;
    CUSTOMER_UPD.ParamByName('CAGE').Value            := edtAge.Text;
    CUSTOMER_UPD.ParamByName('CTEL').Value            := CTEL.Text;
    CUSTOMER_UPD.ParamByName('CEMAIL').Value          := CEMAIL.Text;
    CUSTOMER_UPD.ParamByName('CBIGO').Value           := CBIGO.Text;
    CUSTOMER_UPD.ParamByName('REG_DATE').Value        := REG_DATE.Date;
    CUSTOMER_UPD.ParamByName('JOBKIND').Value         := JOBKIND.Text;
    CUSTOMER_UPD.ParamByName('HOBBY').Value           := HOBBY.Text;
    CUSTOMER_UPD.ParamByName('HOW_TO_COME').Value     := HOW_TO_COME.EditText;
    CUSTOMER_UPD.ParamByName('PURPOSE').AsString      := sel_item;
    CUSTOMER_UPD.ParamByName('PURPOSE_DESC').AsString := sel_item_desc;
    CUSTOMER_UPD.ParamByName('BLOOD').Value           := BLOOD.Text;
    CUSTOMER_UPD.ParamByName('BLOOD_PRESSURE').Value  := BLOOD_PRESSURE.EditText;
    CUSTOMER_UPD.ParamByName('BODY_STATUS').Value     := BODY_STATUS.Text;
    CUSTOMER_UPD.ParamByName('FOOD_KIND').Value       := FOOD_KIND.EditText;
    CUSTOMER_UPD.ParamByName('FOOD_HOW_MUCH').Value   := FOOD_HOW_MUCH.EditText;
    CUSTOMER_UPD.ParamByName('FOOD_HOW_OFTEN').Value  := FOOD_HOW_OFTEN.EditText;
    CUSTOMER_UPD.ParamByName('COMPANY_ID').Value      := LoginUserCompID;
    CUSTOMER_UPD.ParamByName('HOW_TO_COME_ETC').Value := edtEtcComming.Text;
    CUSTOMER_UPD.ParamByName('PURPOSE_ETC').Value     := edtEtcPurpose.Text;
    CUSTOMER_UPD.ParamByName('IS_ACTIVE').Value       := cbCenter.EditValue;
    CUSTOMER_UPD.ExecProc;

    memPic := TMemoryStream.Create;
    ImageEnView1.IO.SaveToStreamJpeg(memPic);
    memPic.Position := 0;
    SaveUserPicture(GLOVAL_MEMBER_UID, memPic);
    ModalResult := mrOk;
  finally
    memPic.Free;
  end;
end;

procedure TfmMemberEditView.SaveUserPicture(uid : string; memPic :TMemoryStream);
var
  Query : TUniQuery;
begin
  Query := TUniQuery.Create(self);
  try
    memPic.Position := 0;
    with Query do begin
      Connection := dmDBCommon.UniDBConnection;
      SQL.Clear;
      SQL.Add('update customer set photo = :nphoto where uid = :uid');
      ParamByName('uid').AsString := uid;
      ParamByName('nphoto').LoadFromStream(memPic, ftBlob);
      Execute;
    end;
  finally
    Query.Free;
  end;
end;

procedure TfmMemberEditView.FormShow(Sender: TObject);
var
  uid : string;
  memPic : TMemoryStream;
  checkItem : array[0..9] of TCheckBox;
  i, itemVal : Integer;
  sel_item, sel_item_desc : string;
  stlist : TStringList;
begin
  checkItem[0] := chkItem1;
  checkItem[1] := chkItem2;
  checkItem[2] := chkItem3;
  checkItem[3] := chkItem4;
  checkItem[4] := chkItem5;
  checkItem[5] := chkItem6;
  checkItem[6] := chkItem7;
  checkItem[7] := chkItem8;
  checkItem[8] := chkItem9;
  checkItem[9] := chkItem10;

  memPic := TMemoryStream.Create;

  CUSTOMER_SEL_BYID.ParamByName('CUSTOMER_ID').Value := GLOVAL_MEMBER_UID;
  CUSTOMER_SEL_BYID.Active := True;
  CUSTOMER_SEL_BYID.Refresh;
  TBlobField(CUSTOMER_SEL_BYIDPHOTO).SaveToStream(memPic);
  if memPic.Size > 0 then begin
    memPic.Position := 0;
    ImageEnView1.IO.LoadFromStreamJpeg(memPic);
  end else
    ImageEnView1.Blank;
  memPic.Free;
  stlist := TStringList.Create;
  sel_item := VarToStr(CUSTOMER_SEL_BYIDPURPOSE.Value);
  ExtractStrings([','],[], Pchar(sel_item), stlist);
  //컴마로 분리하여 해당 체크박스 체크
  for i := 0 to stlist.Count - 1 do begin
    itemVal := StrToInt(stlist[i]);
    checkItem[itemVal].Checked := True;
  end;

  CNAME.Text              := CUSTOMER_SEL_BYIDCNAME.Value;
  SEX.EditValue           := VarToStr(CUSTOMER_SEL_BYIDSEX.Value);
  edtAge.Text             := VarToStr(CUSTOMER_SEL_BYIDCAGE.Value);
  CTEL.Text               := VarToStr(CUSTOMER_SEL_BYIDCTEL.Value);
  CEMAIL.Text             := VarToStr(CUSTOMER_SEL_BYIDCEMAIL.Value);
  CBIGO.Text              := VarToStr(CUSTOMER_SEL_BYIDCBIGO.Value);
  REG_DATE.Date           := CUSTOMER_SEL_BYIDREG_DATE.Value;
  JOBKIND.Text            := VarToStr(CUSTOMER_SEL_BYIDJOBKIND.Value);
  HOBBY.Text              := VarToStr(CUSTOMER_SEL_BYIDHOBBY.Value);
  HOW_TO_COME.EditValue    := VarToStr(CUSTOMER_SEL_BYIDHOW_TO_COME.Value);
  BLOOD.Text              := VarToStr(CUSTOMER_SEL_BYIDBLOOD.Value);
  BLOOD_PRESSURE.EditValue := VarToStr(CUSTOMER_SEL_BYIDBLOOD_PRESSURE.Value);
  BODY_STATUS.Text        := VarToStr(CUSTOMER_SEL_BYIDBODY_STATUS.Value);
  FOOD_KIND.EditValue      := VarToStr(CUSTOMER_SEL_BYIDFOOD_KIND.Value);
  FOOD_HOW_MUCH.EditValue  := VarToStr(CUSTOMER_SEL_BYIDFOOD_HOW_MUCH.Value);
  FOOD_HOW_OFTEN.EditValue := VarToStr(CUSTOMER_SEL_BYIDFOOD_HOW_OFTEN.Value);
  edtEtcComming.Text := VarToStr(CUSTOMER_SEL_BYIDHOW_TO_COME_ETC.Value);
  edtEtcPurpose.Text := VarToStr(CUSTOMER_SEL_BYIDPURPOSE_ETC.Value);
  cbCenter.EditValue       := CUSTOMER_SEL_BYIDIS_ACTIVE.Value;
end;

end.
