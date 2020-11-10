unit UfmCounselEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxGroupBox, SynEdit, ComCtrls, dxCore, cxDateUtils, cxDropDownEdit,
  cxImageComboBox, cxTextEdit, cxMaskEdit, cxCalendar;

type
  TfmCounselEdit = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl10: TPanel;
    pnl11: TPanel;
    pnl19: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    pnl1: TPanel;
    pnl2: TPanel;
    edtName: TEdit;
    pnl3: TPanel;
    pnl6: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    edtTitle: TEdit;
    synBigo: TSynEdit;
    dtpDate: TcxDateEdit;
    cbKind: TcxImageComboBox;
    cbWho: TcxImageComboBox;
    btnSelectMember: TcxButton;
    lblMemberID: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure btnSelectMemberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SAVE_MODE : string;
  end;

var
  fmCounselEdit: TfmCounselEdit;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}

procedure TfmCounselEdit.btnSaveClick(Sender: TObject);
begin
//  if SAVE_MODE = 'INSERT' then begin
//    DataModule1.MEMBER_COUNSEL_INS.ParamByName('CENTER_ID').Value := LoginUserCenter;
//    DataModule1.MEMBER_COUNSEL_INS.ParamByName('MEMBER_ID').Value := lblMemberID.Caption;
//    DataModule1.MEMBER_COUNSEL_INS.ParamByName('C_DATE').Value := dtpDate.Date;
//    DataModule1.MEMBER_COUNSEL_INS.ParamByName('C_KIND').Value := cbKind.EditValue;
//    DataModule1.MEMBER_COUNSEL_INS.ParamByName('C_WHO').Value := cbWho.EditValue;
//    DataModule1.MEMBER_COUNSEL_INS.ParamByName('C_SUBJECT').Value := edtTitle.Text;
//    DataModule1.MEMBER_COUNSEL_INS.ParamByName('C_DESC').Value := synBigo.Text;
//    DataModule1.MEMBER_COUNSEL_INS.ExecProc;
//  end;
//  if SAVE_MODE = 'EDIT' then begin
//    DataModule1.MEMBER_COUNSEL_UPD.ParamByName('ID').Value := DataModule1.MEMBER_COUNSEL_MIXSELID.Value;
//    DataModule1.MEMBER_COUNSEL_UPD.ParamByName('C_DATE').Value := dtpDate.Date;
//    DataModule1.MEMBER_COUNSEL_UPD.ParamByName('C_KIND').Value := cbKind.EditValue;
//    DataModule1.MEMBER_COUNSEL_UPD.ParamByName('C_WHO').Value :=  cbWho.EditValue;
//    DataModule1.MEMBER_COUNSEL_UPD.ParamByName('C_SUBJECT').Value := edtTitle.Text;
//    DataModule1.MEMBER_COUNSEL_UPD.ParamByName('C_DESC').Value := synBigo.Text;
//    DataModule1.MEMBER_COUNSEL_UPD.ExecProc;
//  end;
  ModalResult := mrOk;
end;

procedure TfmCounselEdit.btnSelectMemberClick(Sender: TObject);
var
  filter_str : string;
begin
//  fmSelectMember := TfmSelectMember.Create(Self);
//  try
//    if Length(edtName.Text) > 0 then begin
//      filter_str := 'm_name like "%' + edtName.Text + '%"';
//    end else begin
//      filter_str := '';
//    end;
//    fmSelectMember.FilterStr := filter_str;
//    fmSelectMember.ShowModal;
//    if fmSelectMember.ModalResult = mrOk then begin
//      edtName.Text := fmSelectMember.gridMemberM_NAME.EditValue;
//      lblMemberID.Caption := fmSelectMember.gridMemberID.EditValue;
//    end;
//  finally
//    fmSelectMember.Free;
//  end;
end;

end.
