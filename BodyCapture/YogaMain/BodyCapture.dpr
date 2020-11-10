program BodyCapture;

uses
  MidasLib,
  Forms,
  Controls,
  uMain in 'uMain.pas' {fmMain},
  uCommonLogic in 'uCommonLogic.pas',
  GlobalVar in 'GlobalVar.pas',
  uMemberSelect in 'uMemberSelect.pas' {fmMemberSelect},
  UdmDBCommon in 'UdmDBCommon.pas' {dmDBCommon: TDataModule},
  uLogin in 'uLogin.pas' {fmLogin},
  UfmRequestRegistration in 'UfmRequestRegistration.pas' {fmRequestRegistration},
  ccnUtils in 'ccnUtils.pas',
  UfmMemberPicture in 'UfmMemberPicture.pas' {fmMemberPicture},
  UfmDateSelector in 'UfmDateSelector.pas' {fmDateSelector},
  uCapture in '..\capture\uCapture.pas' {fmCapture},
  UfmThumbnails in '..\capture\UfmThumbnails.pas' {fmThumbnails},
  miscCameraControl in '..\capture\miscCameraControl.pas' {frmCameraControl},
  UfmUserInfo in '..\capture\UfmUserInfo.pas' {fmUserInfo},
  uMemberEditBasic in '..\capture\uMemberEditBasic.pas' {fmMemberEditBasic},
  uMemberEditView in '..\capture\uMemberEditView.pas' {fmMemberEditView},
  UfmHistoryEdit in '..\capture\UfmHistoryEdit.pas' {fmHistoryEdit},
  UfmCustomerHistory in '..\capture\UfmCustomerHistory.pas' {fmCustomerHistory};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;


  fmLogin := TfmLogin.Create(Application);
  try
    if fmLogin.ShowModal = mrOk then begin
      Application.Title := '자세평가 및 회원관리';
      Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmDBCommon, dmDBCommon);
  Application.CreateForm(TfmCapture, fmCapture);
  Application.Run;
    end else begin
      fmLogin.Free;
    end;
  except

  end;

end.
