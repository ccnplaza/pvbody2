unit UfmAnalyseRequestEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, StdCtrls, Buttons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ExtCtrls, DB, MemDS, DBAccess, Uni, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfmAnalyseRequestEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    EditRequestDate: TcxDateEdit;
    EditCustName: TEdit;
    EditBigo: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnSelectMember: TBitBtn;
    Panel4: TPanel;
    EditAnalyzerCode: TcxLookupComboBox;
    d_analyzer: TDataSource;
    q_analyzer: TUniQuery;
    q_analyzerID: TStringField;
    q_analyzerUSER_NAME: TStringField;
    q_analyzerLOGIN_ID: TStringField;
    q_analyzerLOGIN_PASS: TStringField;
    q_analyzerLOGIN_PASS2: TStringField;
    q_analyzerUSER_KIND: TIntegerField;
    q_analyzerAPPROVED: TIntegerField;
    q_analyzerREG_DATE: TDateField;
    q_analyzerCOMP_ID: TStringField;
    q_analyzerREMARK: TStringField;
    q_analyzerEMAIL: TStringField;
    q_analyzerCONFIRMED: TSmallintField;
    q_analyzerIS_ANALYZER: TSmallintField;
    procedure btnSelectMemberClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAnalyseRequestEdit: TfmAnalyseRequestEdit;

implementation

uses uCapture, UfmAnalyzerSelection, UdmDBCommon;

{$R *.dfm}

procedure TfmAnalyseRequestEdit.btnSelectMemberClick(Sender: TObject);
begin
  fmAnalyzerSelection := TfmAnalyzerSelection.Create(Self);
  try
    fmAnalyzerSelection.ShowModal;
    if fmAnalyzerSelection.ModalResult = mrOk then begin
      //EditAnalyzer.Text := fmAnalyzerSelection.gridAnalyzer.GetColumnByFieldName('USER_NAME').EditValue;
      EditAnalyzerCode.EditValue := fmAnalyzerSelection.gridAnalyzer.GetColumnByFieldName('id').EditValue;
    end;
  finally
    fmAnalyzerSelection.Free;
  end;
end;

procedure TfmAnalyseRequestEdit.FormCreate(Sender: TObject);
begin
  EditRequestDate.Date := Date;
  q_analyzer.Active := True;
end;

end.
