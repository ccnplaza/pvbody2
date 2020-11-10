unit UfmLockerManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  Buttons, MemDS, DBAccess, Uni, cxImageComboBox, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBLookupComboBox, ImgList;

type
  TfmLockerManager = class(TForm)
    gridLocker: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridLockerID: TcxGridDBColumn;
    gridLockerLOCKER_NO: TcxGridDBColumn;
    gridLockerLOCKER_STATUS: TcxGridDBColumn;
    gridLockerLOCKER_USER: TcxGridDBColumn;
    gridLockerBIGO: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtStart: TEdit;
    edtEnd: TEdit;
    btnAddNo: TBitBtn;
    LOCKER_DATA_INS: TUniStoredProc;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    edtStatus: TcxImageComboBox;
    btnEditStatus: TBitBtn;
    LOCKER_DATA_STATUS_UPD: TUniStoredProc;
    Label4: TLabel;
    edtBigo: TEdit;
    ImageList1: TImageList;
    Label5: TLabel;
    edtPreStr: TEdit;
    Label6: TLabel;
    Button1: TButton;
    LOCKER_DATA_UPD: TUniStoredProc;
    procedure FormShow(Sender: TObject);
    procedure btnAddNoClick(Sender: TObject);
    procedure btnEditStatusClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLockerManager: TfmLockerManager;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmLockerManager.btnAddNoClick(Sender: TObject);
var
  i, sno, eno : Integer;
  pre_str, nstrno : string;
begin
  pre_str := edtPreStr.Text;
  sno := StrToInt(edtStart.Text);
  eno := StrToInt(edtEnd.Text);
  for i := sno to eno do begin
    nstrno := pre_str + Format('%.3d', [i]);
    LOCKER_DATA_INS.ParamByName('LOCKER_NO').Value := nstrno;
    LOCKER_DATA_INS.ParamByName('LOCKER_STATUS').Value := 0;
    LOCKER_DATA_INS.ParamByName('LOCKER_USER').Value := '';
    LOCKER_DATA_INS.ParamByName('BIGO').Value := '';
    LOCKER_DATA_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
    LOCKER_DATA_INS.ParamByName('LOCKER_GROUP').Value := edtStart.Text;
    LOCKER_DATA_INS.ExecProc;
  end;
  dmDBCommon.d_LOCKER_DATA_SEL.DataSet.Refresh;
end;

procedure TfmLockerManager.btnEditStatusClick(Sender: TObject);
begin
  gridLocker.DataController.SaveBookmark;
  LOCKER_DATA_STATUS_UPD.ParamByName('ID').Value := gridLockerID.EditValue;
  LOCKER_DATA_STATUS_UPD.ParamByName('LOCKER_STATUS').Value := edtStatus.EditValue;
  LOCKER_DATA_STATUS_UPD.ParamByName('BIGO').Value := edtBigo.Text;
  LOCKER_DATA_STATUS_UPD.ExecProc;
  dmDBCommon.d_LOCKER_DATA_SEL.DataSet.Refresh;
  gridLocker.DataController.GotoBookmark;
end;

procedure TfmLockerManager.Button1Click(Sender: TObject);
var
  i, cnt, id, lstatus, ono : Integer;
  strno, nstrno, luser : string;
begin
  cnt := dmDBCommon.d_LOCKER_DATA_SEL.DataSet.RecordCount;
  dmDBCommon.d_LOCKER_DATA_SEL.DataSet.First;
  for i := 0 to cnt - 1 do begin
    id := dmDBCommon.d_LOCKER_DATA_SEL.DataSet.FieldByName('id').AsInteger;
    strno := dmDBCommon.d_LOCKER_DATA_SEL.DataSet.FieldByName('locker_no').AsString;
    lstatus := dmDBCommon.d_LOCKER_DATA_SEL.DataSet.FieldByName('LOCKER_STATUS').AsInteger;
    luser := dmDBCommon.d_LOCKER_DATA_SEL.DataSet.FieldByName('LOCKER_USER').AsString;
    ono := StrToInt(strno);
    nstrno := 'A' + Format('%.3d', [ono]);
    LOCKER_DATA_UPD.ParamByName('ID').Value := ID;
    LOCKER_DATA_UPD.ParamByName('LOCKER_NO').Value := nstrno;
    LOCKER_DATA_UPD.ParamByName('LOCKER_STATUS').Value := lstatus;
    LOCKER_DATA_UPD.ParamByName('LOCKER_USER').Value := luser;
    LOCKER_DATA_UPD.ParamByName('BIGO').Value := '';
    LOCKER_DATA_UPD.ExecProc;

    dmDBCommon.d_LOCKER_DATA_SEL.DataSet.Next;
  end;

end;

procedure TfmLockerManager.FormShow(Sender: TObject);
begin
  dmDBCommon.CUSTOMER_SEL_LOOK.Active := True;
  dmDBCommon.d_CUSTOMER_SEL_LOOK.DataSet.Refresh;

  dmDBCommon.LOCKER_DATA_SEL.ParamByName('COMP_ID').Value := LoginUserCompID;
  dmDBCommon.LOCKER_DATA_SEL.Active := True;
  dmDBCommon.d_LOCKER_DATA_SEL.DataSet.Refresh;
end;

end.
