unit UfmHistoryEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010, StdCtrls,
  Buttons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfmHistoryEdit = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtDate: TcxDateEdit;
    mmoBigo: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHistoryEdit: TfmHistoryEdit;

implementation

{$R *.dfm}

procedure TfmHistoryEdit.FormShow(Sender: TObject);
begin
  mmoBigo.SetFocus;
end;

end.
