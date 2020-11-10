unit uShapeProps;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ComCtrls,
  iexColorButton, imageenview, iexLayers, ieview, hyiedefs, ExtCtrls, Buttons;

type
  TShapeProps = class(TForm)
    lblSelectedLayer: TLabel;
    cmbShape: TComboBox;
    lblShape: TLabel;
    chkBorder: TCheckBox;
    btnBorderColor: TIEColorButton;
    lblBorderWidth: TLabel;
    edtBorderWidth: TEdit;
    updBorderWidth: TUpDown;
    chkFill: TCheckBox;
    btnFillColor: TIEColorButton;
    lblGradient: TLabel;
    cmbGradient: TComboBox;
    btnFillColor2: TIEColorButton;
    lblRotate: TLabel;
    edtRotate: TEdit;
    updRotate: TUpDown;
    btnOK: TButton;
    btnCancel: TButton;

    procedure FormCreate(Sender: TObject);
    procedure ControlChange(Sender: TObject);
    procedure cmbShapeDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ApplyToLayer(ImageEnView: TImageEnView; EditingLayer: TIELayer);
  end;


implementation

{$R *.dfm}

uses
  iexCanvasUtils, hyieutils;

const
  Default_Combo_Draw_Shape_Color = $003539E5;
  Shape_ComboBox_Show_Text = True;


procedure TShapeProps.FormCreate(Sender: TObject);
var
  shape: TIEShape;
begin
  cmbShape.Items.Clear;
  for shape := Low( TIEShape ) to High( TIEShape ) do
    cmbShape.Items.Add( IntToStr( ord( shape )));

  // Initialize Values
  cmbShape.ItemIndex   := 0;
  updRotate .Position := 0;

  chkBorder.Checked := True;
  if chkBorder.Checked then
  begin
    btnBorderColor.SelectedColor := clBlack;
    updBorderWidth.Position := 1;
  end
  else
  begin
    btnBorderColor.SelectedColor := clBlack;
    updBorderWidth.Position := 1;
  end;

  chkFill.Checked := TRUE;
  btnFillColor.SelectedColor  := clRed;
  btnFillColor2.SelectedColor := clBlue;
  cmbGradient.ItemIndex := 0;
end;

procedure TShapeProps.ControlChange(Sender: TObject);
var
  borderAvail, fillAvail, gradientAvail: Boolean;
begin
  cmbShape          .Enabled := TRUE;
  lblShape          .Enabled := TRUE;

  chkBorder         .Enabled := True;
  borderAvail := chkBorder.Enabled and chkBorder.Checked;
  lblBorderWidth    .Enabled := borderAvail;
  btnBorderColor    .Enabled := borderAvail;
  edtBorderWidth    .Enabled := borderAvail;
  updBorderWidth    .Enabled := borderAvail;

  chkFill           .Enabled := TRUE;
  fillAvail := chkFill.Enabled and chkFill.Checked;
  btnFillColor      .Enabled := fillAvail;

  gradientAvail := fillAvail;
  lblGradient       .Enabled := gradientAvail;
  cmbGradient       .Enabled := gradientAvail;
  btnFillColor2     .Enabled := gradientAvail and ( cmbGradient.ItemIndex > 0 );
end;


procedure TShapeProps.ApplyToLayer(ImageEnView: TImageEnView; EditingLayer: TIELayer);
begin
  if EditingLayer.Kind <> ielkShape then
    exit;

  ImageEnView.LockUpdate();
  try
    TIEShapeLayer( EditingLayer ).Shape := TIEShape( cmbShape.ItemIndex );

    if chkBorder.checked = False then
      EditingLayer.BorderColor := clNone
    else
    begin
      EditingLayer.BorderColor := btnBorderColor.SelectedColor;
      EditingLayer.BorderWidth := updBorderWidth.Position;
    end;

    if chkFill.checked = False then
      EditingLayer.FillColor := clNone
    else
      EditingLayer.FillColor := btnFillColor.SelectedColor;
    if cmbGradient.ItemIndex = 0 then
      EditingLayer.FillColor2 := clNone
    else
    begin
      EditingLayer.FillColor2   := btnFillColor2.SelectedColor;
      EditingLayer.FillGradient := TIELayerGradient( cmbGradient.ItemIndex - 1 );
    end;

    EditingLayer.Rotate := updRotate.Position;
  finally
    ImageEnView.UnlockUpdate();
  end;
end;


procedure TShapeProps.cmbShapeDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  IEDrawShapeToComboListBoxItem( TComboBox( Control ).Canvas, Rect, Control.Enabled, TIEShape( Index ), Default_Combo_Draw_Shape_Color, Shape_ComboBox_Show_Text );
end;

procedure TShapeProps.FormShow(Sender: TObject);
begin
  IEInitializeComboBox( cmbShape );
  IEInitializeComboBox( cmbGradient );

  ControlChange(nil);
end;


end.
