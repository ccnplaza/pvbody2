unit UfrmImageEnVect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ieview, imageenview, ievect, StdCtrls, ExtCtrls;

type
  TfrmImageEnVect = class(TFrame)
    imgPanel1: TPanel;
    pnlTop1: TPanel;
    CheckBox1: TCheckBox;
    ImageEnVect1: TImageEnVect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
