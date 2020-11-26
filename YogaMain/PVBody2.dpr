program PVBody2;

uses
  MidasLib,
  Forms,
  Controls,
  ufmDialogParent in '..\analyse\ufmDialogParent.pas' {fmDialogParent},
  ufmStaticResultView in '..\evaluation\ufmStaticResultView.pas' {fmStaticResultView},
  uViewPractice in '..\evaluation\uViewPractice.pas' {fmViewPractice},
  UfmCustomerQuestion in '..\analyse\UfmCustomerQuestion.pas' {fmCustomerQuestion},
  uMain in 'uMain.pas' {fmMain},
  uCommonLogic in 'uCommonLogic.pas',
  GlobalVar in 'GlobalVar.pas',
  DemoBasicMain in '..\scheduler\DemoBasicMain.pas' {DemoBasicMainForm},
  DBDemoMainUnit in '..\scheduler\DBDemoMainUnit.pas' {DBDemoMainForm},
  uMemberSelect in 'uMemberSelect.pas' {fmMemberSelect},
  UdmDBCommon in 'UdmDBCommon.pas' {dmDBCommon: TDataModule},
  uMember in '..\member\uMember.pas' {fmMember},
  uSendingSMS in '..\member\uSendingSMS.pas' {fmSendingSMS},
  uPictureGenerator in '..\member\uPictureGenerator.pas' {fmPictureGenerator},
  SMS in '..\member\SMS.pas',
  UfmUserRegist in '..\login_user\UfmUserRegist.pas' {fmUserRegist},
  uLogin in 'uLogin.pas' {fmLogin},
  UfmRequestRegistration in 'UfmRequestRegistration.pas' {fmRequestRegistration},
  UfmCompanySelect in 'UfmCompanySelect.pas' {fmCompanySelect},
  UfmUserInfo in '..\login_user\UfmUserInfo.pas' {fmUserInfo},
  UfmSetupConfig in 'UfmSetupConfig.pas' {fmSetupConfig},
  UfmStaticCheckItems in '..\evaluation\UfmStaticCheckItems.pas' {fmStaticCheckItems},
  UfmMemberDetail in '..\member\UfmMemberDetail.pas' {fmMemberDetail},
  UfmStaticPractice in '..\evaluation\UfmStaticPractice.pas' {fmStaticPractice},
  UfmPracticeView in '..\evaluation\UfmPracticeView.pas' {fmPracticeView},
  UfmUserSelect in '..\login_user\UfmUserSelect.pas' {fmUserSelect},
  UfmStaticResultReport in '..\evaluation\UfmStaticResultReport.pas' {fmStaticResultReport},
  ccnUtils in 'ccnUtils.pas',
  UfrmImageEditor2 in 'UfrmImageEditor2.pas' {frmImageEditor2: TFrame},
  ufmAttendMain in '..\attending\ufmAttendMain.pas' {fmAttendMain},
  UfmViewLecture in '..\member\UfmViewLecture.pas' {fmViewLecture},
  UfmSelectTelno in '..\attending\UfmSelectTelno.pas' {fmSelectTelno},
  UfmAttendCalendar in '..\attending\UfmAttendCalendar.pas' {fmAttendCalendar},
  uMemberEdit in '..\member\uMemberEdit.pas' {fmMemberEdit},
  uMemberEditBasic in '..\member\uMemberEditBasic.pas' {fmMemberEditBasic},
  uPayIn in '..\member\uPayIn.pas' {fmPayIn},
  UfmHowTo in '..\evaluation\UfmHowTo.pas' {fmHowTo},
  uPlayer in 'uPlayer.pas' {fmVideoPlayer},
  UfmPracticeMethod in '..\evaluation\UfmPracticeMethod.pas' {fmPracticeMethod},
  UfmCheckImageViewer in '..\evaluation\UfmCheckImageViewer.pas' {fmCheckImageViewer},
  UfmCheckCommennts in '..\evaluation\UfmCheckCommennts.pas' {fmCheckCommennts},
  UfmHowToSingle in '..\evaluation\UfmHowToSingle.pas' {fmHowToSingle},
  UfmPracticeMethodSingle in '..\evaluation\UfmPracticeMethodSingle.pas' {fmPracticeMethodSingle},
  UfmWebVideoPlayer in 'UfmWebVideoPlayer.pas' {fmWebVideoPlayer},
  UfmExtractMemberPicture in '..\member\UfmExtractMemberPicture.pas' {fmExtractMemberPicture},
  UfmMemberPicture in 'UfmMemberPicture.pas' {fmMemberPicture},
  UfmSMSMember in '..\member\UfmSMSMember.pas' {fmSMSMember},
  UfmImageDescEdit in '..\analyse\UfmImageDescEdit.pas' {fmImageDescEdit},
  UfmComments in '..\analyse\UfmComments.pas' {fmComments},
  UfmDateSelector in 'UfmDateSelector.pas' {fmDateSelector},
  UfmCenter in 'UfmCenter.pas' {fmCenter},
  UfmToday in 'UfmToday.pas' {fmToday},
  UfmTelLog in '..\community\UfmTelLog.pas' {fmTelLog},
  UfmTelLogEdit in '..\community\UfmTelLogEdit.pas' {fmTelLogEdit},
  UfmCashInOut in '..\cash\UfmCashInOut.pas' {fmCashInOut},
  UfmCashInOutEdit in '..\cash\UfmCashInOutEdit.pas' {fmCashInOutEdit},
  UfmCashKindView in '..\cash\UfmCashKindView.pas' {fmCashKindView},
  UfmLockerManager in '..\lecture\UfmLockerManager.pas' {fmLockerManager},
  UfmLockerSelect in '..\lecture\UfmLockerSelect.pas' {fmLockerSelect},
  UfmLecture in '..\lecture\UfmLecture.pas' {fmLecture},
  ufmLectureCustomerRegist in '..\lecture\ufmLectureCustomerRegist.pas' {fmLectureCustomerRegist},
  ufmLectureRegist in '..\lecture\ufmLectureRegist.pas' {fmLectureRegist},
  UfmLessonOut in '..\lecture\UfmLessonOut.pas' {fmLessonOut},
  UfmProductSale in '..\product_sale\UfmProductSale.pas' {fmProductSale},
  UfmProductSaleEdit in '..\product_sale\UfmProductSaleEdit.pas' {fmProductSaleEdit},
  UfmProductsEdit in '..\product_sale\UfmProductsEdit.pas' {fmProductsEdit},
  UfmProductsIN in '..\product_sale\UfmProductsIN.pas' {fmProductsIN},
  UfmAttendance in '..\attending\UfmAttendance.pas' {fmAttendance},
  UfmAttendanceMonthly in '..\attending\UfmAttendanceMonthly.pas' {fmAttendanceMonthly},
  uCapture in '..\capture\uCapture.pas' {fmCapture},
  UfmThumbnails in '..\capture\UfmThumbnails.pas' {fmThumbnails},
  UfmUserAssign in '..\login_user\UfmUserAssign.pas' {fmUserAssign},
  UfmAttendanceIn in '..\attending\UfmAttendanceIn.pas' {fmAttendanceIn},
  UfmCounseling in '..\community\UfmCounseling.pas' {fmCounseling},
  UfmCounselEdit in '..\community\UfmCounselEdit.pas' {fmCounselEdit},
  UfmCustomerHistory in '..\member\UfmCustomerHistory.pas' {fmCustomerHistory},
  UfmHistoryEdit in '..\member\UfmHistoryEdit.pas' {fmHistoryEdit},
  uMemberEditView in '..\member\uMemberEditView.pas' {fmMemberEditView},
  miscCameraControl in '..\capture\miscCameraControl.pas' {frmCameraControl},
  UfmCompareList2 in '..\analyse\UfmCompareList2.pas' {fmCompareList2},
  UfrmMemberSelect in 'UfrmMemberSelect.pas' {frmMemberSelect: TFrame},
  UfrmImageEnVect in 'UfrmImageEnVect.pas' {frmImageEnVect: TFrame},
  UfmSettings in 'UfmSettings.pas' {fmSettings},
  UfmPictureZoom in '..\capture\UfmPictureZoom.pas' {fmPictureZoom},
  UfmMemberAttend in '..\attending\UfmMemberAttend.pas' {fmMemberAttend},
  uMemberFavorite in 'uMemberFavorite.pas' {fmMemberFavorite},
  UfmStaticCheckItemSet in '..\evaluation\UfmStaticCheckItemSet.pas' {fmStaticCheckItemSet},
  UfmCustomerKind in 'UfmCustomerKind.pas' {fmCustomerKind},
  UfmYearMonth in '..\lecture\UfmYearMonth.pas' {fmYearMonth},
  BaroService_SMS in '..\member\BaroService_SMS.pas',
  UfmSMSSetting in 'UfmSMSSetting.pas' {fmSMSSetting},
  UfmSenderTelEdit in '..\member\UfmSenderTelEdit.pas' {fmSenderTelEdit},
  UfmContacts in '..\community\UfmContacts.pas' {fmContacts},
  UfmContactsEdit in '..\community\UfmContactsEdit.pas' {fmContactsEdit},
  UfmAddTempTel in '..\member\UfmAddTempTel.pas' {fmAddTempTel},
  UfmLectureBreak in '..\lecture\UfmLectureBreak.pas' {fmLectureBreak},
  UfmLectureBreakList in '..\lecture\UfmLectureBreakList.pas' {fmLectureBreakList},
  UfmCompareComment in '..\analyse\UfmCompareComment.pas' {fmCompareComment},
  UfmUserKind in '..\login_user\UfmUserKind.pas' {fmUserKind},
  UfmRequestRegistration2 in '..\login_user\UfmRequestRegistration2.pas' {fmRequestRegistration2},
  UfrmImages in 'UfrmImages.pas' {frmImages: TFrame},
  UfmPracticeEdit in '..\evaluation\UfmPracticeEdit.pas' {fmPracticeEdit},
  UfrmImageMultiView in 'UfrmImageMultiView.pas' {frmImageMultiView: TFrame},
  UfmPostureEditor2 in '..\analyse\UfmPostureEditor2.pas' {fmPostureEditor2},
  UfmMultiUploader in '..\capture\UfmMultiUploader.pas' {fmMultiUploader},
  UfmMemberConfirm in '..\member\UfmMemberConfirm.pas' {fmMemberConfirm},
  UfmLectureMember in '..\lecture\UfmLectureMember.pas' {fmLectureMember},
  UfmMemberLastSelect in '..\member\UfmMemberLastSelect.pas' {fmMemberLastSelect},
  ufmLayerEditor in '..\LayerEditor\ufmLayerEditor.pas' {fmLayerEditor},
  UfrmMultiViewSmall in 'UfrmMultiViewSmall.pas' {frmMultiViewSmall: TFrame},
  UfmPostureEditor in '..\analyse\UfmPostureEditor.pas' {fmPostureEditor},
  UfmCompareLayerList in '..\analyse\UfmCompareLayerList.pas' {fmCompareLayerList},
  UfmCompareList3 in '..\analyse\UfmCompareList3.pas' {fmCompareList3},
  UfmCompareWindowList in '..\analyse\UfmCompareWindowList.pas' {fmCompareWindowList},
  UfmImportImages in 'UfmImportImages.pas' {fmImportImages},
  UfmStaticCheck in '..\evaluation\UfmStaticCheck.pas' {fmStaticCheck},
  UfmSearchResults in 'UfmSearchResults.pas' {fmSearchResults},
  uLineProps in '..\LayerEditor\uLineProps.pas' {LineProps},
  uShapeProps in '..\LayerEditor\uShapeProps.pas' {ShapeProps},
  uTextProps in '..\LayerEditor\uTextProps.pas' {TextProps},
  UfmMuscleImage in '..\analyse\UfmMuscleImage.pas' {fmMuscleImage},
  UfmMuscleDetail in '..\analyse\UfmMuscleDetail.pas' {fmMuscleDetail},
  UfmMuscleEditor in '..\analyse\UfmMuscleEditor.pas' {fmMuscleEditor},
  UfmMuscleInsert in '..\analyse\UfmMuscleInsert.pas' {fmMuscleInsert},
  UfmMuscleView in '..\analyse\UfmMuscleView.pas' {fmMuscleView},
  UfmCustomerRecent in '..\member\UfmCustomerRecent.pas' {fmCustomerRecent},
  UfmTextObjectManager in '..\analyse\UfmTextObjectManager.pas' {fmTextObjectManager},
  UfmTextObjectEdit in '..\analyse\UfmTextObjectEdit.pas' {fmTextObjectEdit},
  UfmCheckStaticItem in '..\evaluation\UfmCheckStaticItem.pas' {fmCheckStaticItem};

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
  Application.Run;
    end else begin
      fmLogin.Free;
    end;
  except

  end;

end.
