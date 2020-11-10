unit UfmTelLogEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, ComCtrls, dxCore, cxDateUtils, Menus,
  StdCtrls, cxSpinEdit, cxTimeEdit, cxButtons, cxDropDownEdit, cxImageComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, ExtCtrls, cxGroupBox, DB, cxMemo,
  cxDBEdit, dxmdaset, DBCtrls, Mask, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmTelLogEdit = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl10: TPanel;
    pnl11: TPanel;
    pnl19: TPanel;
    pnl20: TPanel;
    pnl31: TPanel;
    pnl32: TPanel;
    pnl33: TPanel;
    pnl34: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    dxMemData1: TdxMemData;
    dxMemData1in_date: TDateField;
    dxMemData1in_time: TStringField;
    dxMemData1receiver: TStringField;
    dxMemData1damdang: TStringField;
    dxMemData1caller: TStringField;
    dxMemData1in_kind: TIntegerField;
    dxMemData1receive_desc: TStringField;
    dxMemData1response_dec: TStringField;
    dxMemData1is_done: TIntegerField;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxDBImageComboBox2: TcxDBImageComboBox;
    ds1: TDataSource;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    icbCenter: TcxImageComboBox;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBTextEdit2Exit(Sender: TObject);
    procedure cxDBMemo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SAVE_MODE : string;
  end;

var
  fmTelLogEdit: TfmTelLogEdit;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmTelLogEdit.btnSaveClick(Sender: TObject);
begin
  if SAVE_MODE = 'INSERT' then begin
    dmDBCommon.DAY_LOG_INS.ParamByName('IN_DATE').Value := dxMemData1in_date.AsDateTime;
    dmDBCommon.DAY_LOG_INS.ParamByName('IN_TIME').Value := dxMemData1in_time.AsString;
    dmDBCommon.DAY_LOG_INS.ParamByName('IN_KIND').Value := dxMemData1in_kind.AsInteger;
    dmDBCommon.DAY_LOG_INS.ParamByName('RECEIVED').Value := dxMemData1receiver.AsString;
    dmDBCommon.DAY_LOG_INS.ParamByName('DAMDANG').Value := dxMemData1damdang.AsString;
    dmDBCommon.DAY_LOG_INS.ParamByName('CALLER').Value := dxMemData1caller.AsString;
    dmDBCommon.DAY_LOG_INS.ParamByName('IN_DESC').Value := dxMemData1receive_desc.AsString;
    dmDBCommon.DAY_LOG_INS.ParamByName('IS_DONE').Value := dxMemData1is_done.AsInteger;
    dmDBCommon.DAY_LOG_INS.ParamByName('RETURN_DESC').Value := dxMemData1response_dec.AsString;
    dmDBCommon.DAY_LOG_INS.ParamByName('CENTER_ID').Value := icbCenter.EditValue;
    dmDBCommon.DAY_LOG_INS.ExecProc;
  end;
  if SAVE_MODE = 'EDIT' then begin
    dmDBCommon.DAY_LOG_UPD.ParamByName('ID').Value := dmDBCommon.DAY_LOG_SELID.AsInteger;
    dmDBCommon.DAY_LOG_UPD.ParamByName('IN_DATE').Value := dxMemData1in_date.AsDateTime;
    dmDBCommon.DAY_LOG_UPD.ParamByName('IN_TIME').Value := dxMemData1in_time.AsString;
    dmDBCommon.DAY_LOG_UPD.ParamByName('IN_KIND').Value := dxMemData1in_kind.AsInteger;
    dmDBCommon.DAY_LOG_UPD.ParamByName('RECEIVED').Value := dxMemData1receiver.AsString;
    dmDBCommon.DAY_LOG_UPD.ParamByName('DAMDANG').Value := dxMemData1damdang.AsString;
    dmDBCommon.DAY_LOG_UPD.ParamByName('CALLER').Value := dxMemData1caller.AsString;
    dmDBCommon.DAY_LOG_UPD.ParamByName('IN_DESC').Value := dxMemData1receive_desc.AsString;
    dmDBCommon.DAY_LOG_UPD.ParamByName('IS_DONE').Value := dxMemData1is_done.AsInteger;
    dmDBCommon.DAY_LOG_UPD.ParamByName('RETURN_DESC').Value := dxMemData1response_dec.AsString;
    dmDBCommon.DAY_LOG_UPD.ParamByName('CENTER_ID').Value := icbCenter.EditValue;
    dmDBCommon.DAY_LOG_UPD.ExecProc;
  end;
  ModalResult := mrOk;
end;

procedure TfmTelLogEdit.cxDBMemo1Exit(Sender: TObject);
begin
  Application.ProcessMessages;
  (Sender as TcxDBMemo).DataBinding.Field.Value := (Sender as TcxDBMemo).Text;
end;

procedure TfmTelLogEdit.cxDBTextEdit2Exit(Sender: TObject);
begin
  Application.ProcessMessages;
  (Sender as TcxDBTextEdit).DataBinding.Field.Value := (Sender as TcxDBTextEdit).Text;
end;

procedure TfmTelLogEdit.FormShow(Sender: TObject);
begin
  dmDBCommon.SetCenter(icbCenter);
  dxMemData1.Active := True;
  if SAVE_MODE = 'INSERT' then begin
    dxMemData1.Append;
    dxMemData1in_date.Value := Date;
    dxMemData1in_time.Value := FormatDateTime('hh:mm', Now);
    dxMemData1in_kind.Value := 1;
    dxMemData1is_done.Value := 1;
  end;
  if SAVE_MODE = 'EDIT' then begin
    icbCenter.EditValue := dmDBCommon.DAY_LOG_SELCENTER_ID.Value;
    dxMemData1.Append;
    dxMemData1in_date.Value := dmDBCommon.DAY_LOG_SELIN_DATE.Value;
    dxMemData1in_time.Value := dmDBCommon.DAY_LOG_SELIN_TIME.Value;
    dxMemData1in_kind.Value := dmDBCommon.DAY_LOG_SELIN_KIND.AsInteger;
    dxMemData1receiver.Value := dmDBCommon.DAY_LOG_SELRECEIVED.Value;
    dxMemData1damdang.Value := dmDBCommon.DAY_LOG_SELDAMDANG.Value;
    dxMemData1caller.Value := dmDBCommon.DAY_LOG_SELCALLER.Value;
    dxMemData1receive_desc.Value := dmDBCommon.DAY_LOG_SELIN_DESC.Value;
    dxMemData1is_done.Value := dmDBCommon.DAY_LOG_SELIS_DONE.Value;
    dxMemData1response_dec.Value := dmDBCommon.DAY_LOG_SELRETURN_DESC.Value;
    cxDBTextEdit2.SetFocus;
  end;
end;

end.
