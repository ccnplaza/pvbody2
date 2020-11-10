unit UfmUserAssign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni,
  StdCtrls, Buttons, ExtCtrls, UniProvider, InterBaseUniProvider, cxTextEdit,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDBLookupComboBox;

type
  TfmUserAssign = class(TForm)
    UniConnection1: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    Panel7: TPanel;
    btnDeleteUser: TBitBtn;
    BitBtn1: TBitBtn;
    btnChangeAssign: TBitBtn;
    q_login_user: TUniQuery;
    q_login_userID: TStringField;
    q_login_userUSER_NAME: TStringField;
    q_login_userLOGIN_ID: TStringField;
    q_login_userLOGIN_PASS: TStringField;
    q_login_userLOGIN_PASS2: TStringField;
    q_login_userUSER_KIND: TIntegerField;
    q_login_userAPPROVED: TIntegerField;
    q_login_userREG_DATE: TDateField;
    q_login_userCOMP_ID: TStringField;
    q_login_userREMARK: TStringField;
    q_login_userEMAIL: TStringField;
    q_login_userCONFIRMED: TSmallintField;
    q_login_userIS_ANALYZER: TSmallintField;
    q_login_userPAY_WAY: TSmallintField;
    q_login_userSYSTEM_SERIAL: TStringField;
    q_login_userACTIVATION_CODE: TStringField;
    q_login_userACTIVATION_CNT: TSmallintField;
    q_login_userACTIVATION_DATE: TDateTimeField;
    q_login_userCOMP_NAME: TStringField;
    q_login_userUSER_VERSION: TStringField;
    d_login_user: TDataSource;
    cxGrid2: TcxGrid;
    gridUser: TcxGridDBTableView;
    gridUserID: TcxGridDBColumn;
    gridUserUSER_NAME: TcxGridDBColumn;
    gridUserCOMP_NAME: TcxGridDBColumn;
    gridUserLOGIN_ID: TcxGridDBColumn;
    gridUserLOGIN_PASS: TcxGridDBColumn;
    gridUserUSER_KIND: TcxGridDBColumn;
    gridUserAPPROVED: TcxGridDBColumn;
    gridUserLOGIN_PASS2: TcxGridDBColumn;
    gridUserCOMP_ID: TcxGridDBColumn;
    gridUserIS_ANALYZER: TcxGridDBColumn;
    gridUserEMAIL: TcxGridDBColumn;
    gridUserREMARK: TcxGridDBColumn;
    gridUserCONFIRMED: TcxGridDBColumn;
    gridUserPAY_WAY: TcxGridDBColumn;
    gridUserSYSTEM_SERIAL: TcxGridDBColumn;
    gridUserACTIVATION_CODE: TcxGridDBColumn;
    gridUserREG_DATE: TcxGridDBColumn;
    gridUserACTIVATION_DATE: TcxGridDBColumn;
    gridUserACTIVATION_CNT: TcxGridDBColumn;
    gridUserUSER_VERSION: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label1: TLabel;
    q_login_userCAN_UPDATE: TSmallintField;
    q_login_userCENTER_ID: TIntegerField;
    gridUserCENTER_ID: TcxGridDBColumn;
    btnCenter: TBitBtn;
    btnAdd: TBitBtn;
    procedure btnChangeAssignClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDeleteUserClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCenterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUserAssign: TfmUserAssign;

implementation

uses GlobalVar, UdmDBCommon, UfmCenter, UfmUserKind;

{$R *.dfm}

procedure TfmUserAssign.BitBtn1Click(Sender: TObject);
begin
  q_login_user.ParamByName('comp_id').AsString := LoginUserCompID;
  q_login_user.Active := True;
  d_login_user.DataSet.Refresh;
end;

procedure TfmUserAssign.btnCenterClick(Sender: TObject);
var
  centerid : Integer;
begin
  fmCenter := TfmCenter.Create(Self);
  try
    fmCenter.ShowModal;
    if fmCenter.ModalResult = mrOk then begin
      centerid := fmCenter.gridCenterID.EditValue;
      q_login_user.Edit;
      q_login_user.FieldByName('center_id').AsInteger := centerid;
      q_login_user.Post;
      d_login_user.DataSet.Refresh;
      LoginUserCenterID := centerid;
    end;
  finally
    fmCenter.Free;
  end;
end;

procedure TfmUserAssign.btnChangeAssignClick(Sender: TObject);
var
  ukind : integer;
begin
  fmUserKind := TfmUserKind.Create(Self);
  try
    ukind := q_login_user.FieldByName('user_kind').AsInteger;
    fmUserKind.Caption := '사용자권한 - ' +
      q_login_userUSER_NAME.AsString + '(' + q_login_userLOGIN_ID.AsString + ')';
    fmUserKind.rgUserRights.EditValue := ukind;
    fmUserKind.ShowModal;
    if fmUserKind.ModalResult = mrOk then begin
      q_login_user.Edit;
      q_login_user.FieldByName('user_kind').AsInteger := fmUserKind.rgUserRights.EditValue;
      q_login_user.Post;
      d_login_user.DataSet.Refresh;
    end;
  finally
    fmUserKind.Free;
  end;
end;

procedure TfmUserAssign.btnDeleteUserClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다.' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제 할까요?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    q_login_user.Delete;
  end;
end;

procedure TfmUserAssign.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmUserAssign.FormShow(Sender: TObject);
begin
  if LoginUserKIND = 2 then begin
    btnChangeAssign.Enabled := True;
    btnDeleteUser.Enabled := True;
  end else begin
    btnChangeAssign.Enabled := False;
    btnDeleteUser.Enabled := False;
  end;

  q_login_user.ParamByName('comp_id').AsString := LoginUserCompID;
  q_login_user.Active := True;
  d_login_user.DataSet.Refresh;
  gridUser.DataController.SetFocus;
end;

initialization RegisterClasses([TfmUserAssign]);



end.
