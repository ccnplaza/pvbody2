unit uLineProps;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ComCtrls,
  iexColorButton, imageenview, iexLayers, ieview, hyiedefs, ExtCtrls, Buttons;

type
  TLineProps = class(TForm)
    lblHeading: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
    lblRotate: TLabel;
    btnBorderColor: TIEColorButton;
    lblBorderWidth: TLabel;
    edtBorderWidth: TEdit;
    updBorderWidth: TUpDown;
    lblStartShape: TLabel;
    cmbStartShape: TComboBox;
    lblEndShape: TLabel;
    cmbEndShape: TComboBox;
    lblShapeSize: TLabel;
    edtShapeSize: TEdit;
    updShapeSize: TUpDown;
    btnShapeColor: TIEColorButton;
    lblShapeColor: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure cmbEndShapeDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure ControlChange(Sender: TObject);
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


procedure TLineProps.FormCreate(Sender: TObject);
begin
  btnBorderColor.SelectedColor := clBlack;
  updBorderWidth.Position := 1;

  cmbStartShape.ItemIndex := 0;
  cmbEndShape.ItemIndex := 1;
  updShapeSize.Position := 20;
  btnShapeColor.SelectedColor := clRed;
end;

procedure TLineProps.ApplyToLayer(ImageEnView: TImageEnView; EditingLayer: TIELayer);
begin
  if EditingLayer.Kind <> ielkLine then
    exit;

  ImageEnView.LockUpdate();
  with TIELineLayer( EditingLayer ) do
  try
    LineColor := btnBorderColor.SelectedColor;
    LineWidth := updBorderWidth.Position;

    FillColor := btnShapeColor.SelectedColor;

    LabelPosition   := ielpHide;

    // Note: Reverse StartShape and EndShape to look more natural when dragging
    EndShape        := TIELineEndShape( cmbStartShape.ItemIndex );
    StartShape      := TIELineEndShape( cmbEndShape.ItemIndex );
    ShapeSize       := updShapeSize.Position;

    LabelAlignment  := iejCenter;

  finally
    ImageEnView.UnlockUpdate();
  end;
end;

procedure TLineProps.cmbEndShapeDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  IEDrawLineEndShapeToComboListBoxItem( TComboBox( Control ).Canvas,
                                        Rect,
                                        Control.Enabled,
                                        TIELineEndShape( Index ),
                                        clBlack,
                                        Default_Combo_Draw_Shape_Color,
                                        Shape_ComboBox_Show_Text,
                                        Control = cmbEndShape );
end;

procedure TLineProps.ControlChange(Sender: TObject);
var
  haveShape: Boolean;
begin
  haveShape := ( cmbStartShape.ItemIndex > 0 ) or ( cmbEndShape.ItemIndex > 0 );
  lblShapeSize  .Enabled := haveShape;
  edtShapeSize  .Enabled := haveShape;
  updShapeSize  .Enabled := haveShape;
  btnShapeColor.Enabled := haveShape;
  lblShapeColor.Enabled := haveShape;
end;


procedure TLineProps.FormShow(Sender: TObject);
begin
  IEInitializeComboBox( cmbEndShape );
  IEInitializeComboBox( cmbStartShape );

  ControlChange(nil);
end;


end.
