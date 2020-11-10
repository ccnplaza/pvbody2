unit UfmMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfmMessage = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtReceiver: TEdit;
    edtTitle: TEdit;
    edtMessage: TMemo;
    btnSaveComp: TBitBtn;
    btnCancel: TBitBtn;
    btnReceiverSelect: TBitBtn;
    procedure btnReceiverSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    isEditMode : Boolean;
  end;

var
  fmMessage: TfmMessage;

implementation

uses UfmUserMessage, UfmUserSelect;

{$R *.dfm}

procedure TfmMessage.btnReceiverSelectClick(Sender: TObject);
var
  cnt, i : Integer;
  uname : string;
begin
  fmUserSelect := TfmUserSelect.Create(Self);
  try
    fmUserSelect.ShowModal;
    if fmUserSelect.ModalResult = mrOk then begin
      cnt := fmUserSelect.gridUser.DataController.GetSelectedCount;
      uname := '';
      for i := 0 to cnt -1 do begin
        uname := uname + fmUserSelect.gridUser.Controller.SelectedRecords[i].Values[3] + ';';
      end;
      edtReceiver.Text := uname;
    end;
  finally
    fmUserSelect.Free;
  end;
end;

procedure TfmMessage.FormShow(Sender: TObject);
begin
  if isEditMode = False then begin
    edtReceiver.ReadOnly := True;
    edtTitle.ReadOnly := True;
    edtMessage.ReadOnly := True;
    btnReceiverSelect.Visible := False;
    btnSaveComp.Visible := False;
    btnCancel.Visible := False;
  end else begin
    edtReceiver.ReadOnly := False;
    edtTitle.ReadOnly := False;
    edtMessage.ReadOnly := False;
    btnReceiverSelect.Visible := True;
    btnSaveComp.Visible := True;
    btnCancel.Visible := True;
  end;
end;

end.
