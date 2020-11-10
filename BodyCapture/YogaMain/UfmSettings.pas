unit UfmSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  cxTextEdit, cxMaskEdit, cxSpinEdit, ComCtrls;

type
  TfmSettings = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCompname: TEdit;
    edtTel1: TEdit;
    edtTel2: TEdit;
    edtAdd1: TEdit;
    edtAdd2: TEdit;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    GroupBox2: TGroupBox;
    TrackBar1: TTrackBar;
    edtTrackBar: TcxSpinEdit;
    TrackBar2: TTrackBar;
    edtTrackBar2: TcxSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure edtTrackBarPropertiesEditValueChanged(Sender: TObject);
    procedure edtTrackBar2PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSettings: TfmSettings;

implementation

uses GlobalVar;

{$R *.dfm}

procedure TfmSettings.btnSaveClick(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName : string;
begin
  iniFileName := gsDefaultFolder + 'ReportInfo.ini';
  FIni := TIniFile.Create(iniFileName);
  FIni.WriteString('Report', 'CompName', edtCompname.Text);
  FIni.WriteString('Report', 'Tel1', edtTel1.Text);
  FIni.WriteString('Report', 'Tel2', edtTel2.Text);
  FIni.WriteString('Report', 'Address1', edtAdd1.Text);
  FIni.WriteString('Report', 'Address2', edtAdd2.Text);
  FIni.WriteString('Window', 'DefaultWidth', IntToStr(TrackBar1.Position));
  FIni.WriteString('Window2', 'DefaultWidth', IntToStr(TrackBar2.Position));
  ShowMessage('자료가 저장되었습니다.');
  ModalResult := mrOk;
end;

procedure TfmSettings.edtTrackBar2PropertiesEditValueChanged(Sender: TObject);
begin
  TrackBar2.Position := edtTrackBar2.Value;
end;

procedure TfmSettings.edtTrackBarPropertiesEditValueChanged(Sender: TObject);
begin
  TrackBar1.Position := edtTrackBar.Value;
end;

procedure TfmSettings.FormShow(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName : string;
  pnl_width, pnl_width2 : Integer;
begin
  iniFileName := gsDefaultFolder + 'ReportInfo.ini';
  FIni := TIniFile.Create(iniFileName);
  edtCompname.Text := FIni.ReadString('Report', 'CompName', '');
  edtTel1.Text := FIni.ReadString('Report', 'Tel1', '');
  edtTel2.Text := FIni.ReadString('Report', 'Tel2', '');
  edtAdd1.Text := FIni.ReadString('Report', 'Address1', '');
  edtAdd2.Text := FIni.ReadString('Report', 'Address2', '');

  pnl_width := StrToInt(FIni.ReadString('Window', 'DefaultWidth', '200'));
  pnl_width2 := StrToInt(FIni.ReadString('Window2', 'DefaultWidth', '200'));
  TrackBar1.Position := pnl_width;
  edtTrackBar.Value := pnl_width;
  TrackBar2.Position := pnl_width2;
  edtTrackBar2.Value := pnl_width2;

  edtCompname.SetFocus;
end;

procedure TfmSettings.TrackBar1Change(Sender: TObject);
begin
  edtTrackBar.Value := TrackBar1.Position;
end;

procedure TfmSettings.TrackBar2Change(Sender: TObject);
begin
  edtTrackBar2.Value := TrackBar2.Position;
end;

end.
