unit uTextProps;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ComCtrls,
  iexColorButton, imageenview, iexLayers, ieview, hyiedefs, ExtCtrls, Buttons;

type
  TTextProps = class(TForm)
    lblHeading: TLabel;
    btnCancel: TButton;
    btnOK: TButton;
    memText: TMemo;
    lblFontSize: TLabel;
    edtFontSize: TEdit;
    updFontSize: TUpDown;
    chkFontBold: TCheckBox;
    chkFontItalics: TCheckBox;
    btnSetFont: TButton;
    btnFontColor: TIEColorButton;
    lblFontColor: TLabel;
    lblText: TLabel;
    btnFillColor2: TIEColorButton;
    cmbGradient: TComboBox;
    edtRotate: TEdit;
    updRotate: TUpDown;
    lblRotate: TLabel;
    lblGradient: TLabel;
    btnFillColor: TIEColorButton;
    chkTextBox: TCheckBox;
    lblBorderWidth: TLabel;
    edtBorderWidth: TEdit;
    updBorderWidth: TUpDown;
    btnBorderColor: TIEColorButton;
    lblBGColor: TLabel;
    lblBorderColor: TLabel;
    GroupBox1: TGroupBox;
    pnlBackground: TPanel;
    pnlPreview: TPanel;



    procedure FormCreate(Sender: TObject);
    procedure ControlChange(Sender: TObject);
    procedure btnSetFontClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

    procedure InitializeValues();
  public
    { Public declarations }
    procedure ApplyToLayer(ImageEnView: TImageEnView; EditingLayer: TIELayer);
  end;


implementation

{$R *.dfm}

uses
  iexCanvasUtils, hyieutils;


procedure TTextProps.FormCreate(Sender: TObject);
begin  
  InitializeValues();
end;

procedure TTextProps.ControlChange(Sender: TObject);
  {}
  function _GetStyle(OldStyle: TFontStyles; Bold, Italic: Boolean): TFontStyles;
  begin
    Result := OldStyle;
    if Bold then
      Include( Result, fsBold )
    else
      Exclude( Result, fsBold );
    if Italic then
      Include( Result, fsItalic )
    else
      Exclude( Result, fsItalic );
  end;
  {}
begin
  if not Visible then
    exit;

  btnOK.Enabled := memText.Text <> '';

  // Text box
  btnFillColor2   .Enabled := chkTextBox.Checked and ( cmbGradient.ItemIndex > 0 );;
  cmbGradient     .Enabled := chkTextBox.Checked;
  lblGradient     .Enabled := chkTextBox.Checked;
  btnFillColor    .Enabled := chkTextBox.Checked;
  lblBorderWidth  .Enabled := chkTextBox.Checked;
  edtBorderWidth  .Enabled := chkTextBox.Checked;
  updBorderWidth  .Enabled := chkTextBox.Checked;
  btnBorderColor  .Enabled := chkTextBox.Checked;
  lblBorderColor  .Enabled := chkTextBox.Checked;
  lblBGColor      .Enabled := chkTextBox.Checked;


  // Preview
  pnlPreview.Caption := memText.Text;
  pnlPreview.Font.Size   := updFontSize.Position;
  pnlPreview.Font.Color  := btnFontColor.SelectedColor;
  pnlPreview.Font.Style  := _GetStyle( pnlPreview.Font.Style, chkFontBold.Checked, chkFontItalics.Checked );

  if chkTextBox.checked = False then
  begin
    pnlBackground.BorderWidth := 0;
    pnlPreview.Color := clBtnFace;
  end
  else
  begin
    pnlPreview.Color := btnFillColor.SelectedColor;
    pnlBackground.BorderWidth := updBorderWidth.Position;
    pnlBackground.Color := btnBorderColor.SelectedColor;
  end;

end;

procedure TTextProps.btnSetFontClick(Sender: TObject);
begin
  if IEPromptForFont( pnlPreview.Font ) then
    InitializeValues();
end;


procedure TTextProps.InitializeValues();
begin
  if cmbGradient.ItemIndex < 0 then
  begin
    cmbGradient.ItemIndex := 0;
    btnFillColor2.SelectedColor := clBlue;
  end;

  updFontSize .Position := pnlPreview.Font.Size;
  btnFontColor.SelectedColor := pnlPreview.Font.Color;
  chkFontBold   .Checked := fsBold in pnlPreview.Font.Style;
  chkFontItalics.Checked := fsItalic in pnlPreview.Font.Style;


  chkTextBox.checked := ( pnlBackground.BorderWidth > 0 ) and ( pnlPreview.Color <> clBtnFace );
  if chkTextBox.checked then
  begin
    btnFillColor.SelectedColor := pnlPreview.Color;
    updBorderWidth.Position    := pnlBackground.BorderWidth;
    btnBorderColor.SelectedColor := pnlBackground.Color;
  end;

  ControlChange(nil);
end;

procedure TTextProps.ApplyToLayer(ImageEnView: TImageEnView; EditingLayer: TIELayer);
begin
  if EditingLayer.Kind <> ielkText then
    exit;

  ImageEnView.LockUpdate();
  try
    // Text
    with TIETextLayer( EditingLayer ) do
    begin
      Text        := memText.Text;
      Font.Assign( pnlPreview.Font );
      Alignment   := iejCenter;
      Layout      := ielCenter;
      AutoSize    := True;
      WordWrap    := TRUE;
    end;

    // Rotation
      TIETextLayer( EditingLayer ).BorderRotate := updRotate.Position;
      EditingLayer.Rotate := updRotate.Position;


    // Text box
    if chkTextBox.checked = False then
    begin
      EditingLayer.FillColor   := clNone;
      EditingLayer.FillColor2  := clNone;
      EditingLayer.BorderWidth := 0;
    end
    else
    begin
      EditingLayer.FillColor := btnFillColor.SelectedColor;
      if cmbGradient.ItemIndex = 0 then
        EditingLayer.FillColor2 := clNone
      else
      begin
        EditingLayer.FillColor2   := btnFillColor2.SelectedColor;
        EditingLayer.FillGradient := TIELayerGradient( cmbGradient.ItemIndex - 1 );
      end;
      EditingLayer.BorderColor := btnBorderColor.SelectedColor;
      EditingLayer.BorderWidth := updBorderWidth.Position;
    end;

  finally
    ImageEnView.UnlockUpdate();
  end;
end;

procedure TTextProps.FormShow(Sender: TObject);
begin
  IEInitializeComboBox( cmbGradient );
  ControlChange(nil);
end;

end.
