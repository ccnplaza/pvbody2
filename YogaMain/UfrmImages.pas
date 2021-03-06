unit UfrmImages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ieview, imageenview, ievect, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxSpinEdit, ComCtrls, ieopensavedlg, DB, hyieutils, iexBitmaps, hyiedefs,
  iesettings, iexLayers, iexRulers, iexToolbars;

type
  TfrmImages = class(TFrame)
    ScrollBox1: TScrollBox;
    FlowPanel1: TFlowPanel;
    imgPanel1: TPanel;
    pnlTop1: TPanel;
    ImageEnVect1: TImageEnVect;
    imgPanel2: TPanel;
    pnlTop2: TPanel;
    ImageEnVect2: TImageEnVect;
    imgPanel3: TPanel;
    pnlTop3: TPanel;
    ImageEnVect3: TImageEnVect;
    imgPanel4: TPanel;
    pnlTop4: TPanel;
    ImageEnVect4: TImageEnVect;
    imgPanel5: TPanel;
    pnlTop5: TPanel;
    ImageEnVect5: TImageEnVect;
    imgPanel6: TPanel;
    pnlTop6: TPanel;
    ImageEnVect6: TImageEnVect;
    imgPanel7: TPanel;
    pnlTop7: TPanel;
    ImageEnVect7: TImageEnVect;
    Panel2: TPanel;
    Label1: TLabel;
    chkImageFit: TCheckBox;
    edtTrackBar: TcxSpinEdit;
    chkAllPanel: TCheckBox;
    btnResetWidth: TcxButton;
    btnSaveFile: TcxButton;
    SaveImageEnDialog1: TSaveImageEnDialog;
    chkPrintLine: TCheckBox;
    PanelMSG: TPanel;
    Label2: TLabel;
    btnDelete: TcxButton;
    procedure FrameResize(Sender: TObject);
    procedure edtTrackBarPropertiesEditValueChanged(Sender: TObject);
    procedure btnResetWidthClick(Sender: TObject);
    procedure chkImageFitClick(Sender: TObject);
    procedure btnSaveFileClick(Sender: TObject);
    procedure ImageEnVect1Click(Sender: TObject);
    procedure ImageEnVect1DblClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    procedure SetPanelColor(PanelID: Integer);
    { Private declarations }
  public
    { Public declarations }
    IEVect, IEVectPrt : array[0..6] of TImageEnVect;
    IMGPnl : array[0..6] of TPanel;
    TOPPnl : array[0..6] of TPanel;
    SELECTED_PANEL : Integer;
    PICTURE_CNT : Integer;
    OLD_CHECK_ID : string;
    constructor Create(AOwener : TComponent) ; override;
    procedure ClearPicture;
    procedure RetrievePicture;
  end;

implementation
uses
  GlobalVar, uCommonLogic, UdmDBCommon, UfmPostureEditor;

{$R *.dfm}

procedure TfrmImages.ClearPicture;
var
  i : Integer;
begin
  for i := 0 to 6 do
    IMGPnl[i].Visible := False;
end;

constructor TfrmImages.Create(AOwener: TComponent);
begin
  inherited;
  IEVect[0] := ImageEnVect1;  IEVect[1] := ImageEnVect2;  IEVect[2] := ImageEnVect3;
  IEVect[3] := ImageEnVect4;  IEVect[4] := ImageEnVect5;  IEVect[5] := ImageEnVect6;  IEVect[6] := ImageEnVect7;
  IMGPnl[0] := imgPanel1;  IMGPnl[1] := imgPanel2;  IMGPnl[2] := imgPanel3;
  IMGPnl[3] := imgPanel4;  IMGPnl[4] := imgPanel5;  IMGPnl[5] := imgPanel6;  IMGPnl[6] := imgPanel7;
  SELECTED_PANEL := 0;
  edtTrackBar.Value := 300;
end;

procedure TfrmImages.edtTrackBarPropertiesEditValueChanged(Sender: TObject);
begin
  LockControl(ScrollBox1, True);
  if chkAllPanel.Checked then begin
    imgPanel1.Width := edtTrackBar.Value;
    imgPanel2.Width := edtTrackBar.Value;
    imgPanel3.Width := edtTrackBar.Value;
    imgPanel4.Width := edtTrackBar.Value;
    imgPanel5.Width := edtTrackBar.Value;
    imgPanel6.Width := edtTrackBar.Value;
    imgPanel7.Width := edtTrackBar.Value;
  end else begin
    IMGPnl[SELECTED_PANEL].Width := edtTrackBar.Value;
  end;
  LockControl(ScrollBox1, False);
end;

procedure TfrmImages.FrameResize(Sender: TObject);
var
  i, curWidth : Integer;
begin
  PanelMSG.Top := (ScrollBox1.Height div 2) - (PanelMSG.Height div 2);
  PanelMSG.Left := (ScrollBox1.Width div 2) - (PanelMSG.Width div 2);
  curWidth := imgPanel1.Width * 7;
  FlowPanel1.Width := curWidth + 5;
  for i := 0 to 6 do begin
    IMGPnl[i].Height := FlowPanel1.Height;
    if ScrollBox1.Width  > curWidth then
      IMGPnl[i].Width := ScrollBox1.Width div 7
    else
      IMGPnl[i].Width := 300;
  end;
end;

procedure TfrmImages.RetrievePicture;
var
  img_id, i, r, cnt : integer;
  img_h, img_w : Integer;
  drw_stream : array[0..6] of TMemoryStream;
  img_name : array[0..6] of string;
begin
//  PanelMSG.Visible := True;
//  PanelMSG.Refresh;
//  LockControl(ScrollBox1,True);
//  for i := 0 to 6 do begin
//    IMGPnl[i].Visible := False;
//    drw_stream[i] := TMemoryStream.Create;
//    IEVect[i].Clear;
//    IEVect[i].RemoveAllObjects;
//    img_name[i] := dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.FieldByName('IMAGE_NAME' + IntToStr(i+1)).AsString;
//    if Length(img_name[i]) > 10 then begin
//      TBlobField(dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.FieldByName('DRAW_IMAGE' + IntToStr(i+1))).SaveToStream(drw_stream[i]);
//      drw_stream[i].Position := 0;
//      if not FileExists(gsLocalImageFolder + '\' + img_name[i]) then begin
//        dmDBCommon.DownloadImage(img_name[i]);
//      end;
//      IEVect[i].IO.LoadFromFile(gsLocalImageFolder + '\' + img_name[i]);
//      IEVect[i].LoadFromStreamIEV(drw_stream[i]);
//      IEVect[i].Hint := img_name[i];
//      IEVect[i].Tag := i;
//      if IEVect[i].IEBitmap.Width > IEVect[i].IEBitmap.Height then
//        IEVect[i].Proc.Rotate(-90);
//      IEVect[i].Update;
//      drw_stream[i].Free;
//      IMGPnl[i].Left := IMGPnl[i].Width * i + 1;
//      IMGPnl[i].Visible := True;
//    end;
//  end;
//  LockControl(ScrollBox1,False);
//  PanelMSG.Visible := False;
end;

procedure TfrmImages.ImageEnVect1Click(Sender: TObject);
var
  tno : Integer;
begin
  tno := (Sender as TImageEnVect).Tag;
  SELECTED_PANEL := tno;
  SetPanelColor(tno);
end;

procedure TfrmImages.ImageEnVect1DblClick(Sender: TObject);
var
  img_id : Integer;
  img_name : string;
  IV : TImageEnVect;
begin
//  IV := TImageEnVect(Sender);
//  img_name := IV.Hint;
//  img_id := IV.Tag;
//  fmPostureEditor := TfmPostureEditor.Create(Self);
//  try
//    fmPostureEditor.IMAGE_ID := img_name;
//    fmPostureEditor.SEX_KIND := CustomerImages.CustSex;
//    fmPostureEditor.POS_KIND := StrToInt((Sender as TImageEnVect).HelpKeyword);
//    fmPostureEditor.frmImageEditor21.ImageEnVect1.Assign(IV);
//    fmPostureEditor.ShowModal;
//    if fmPostureEditor.ModalResult = mrOk then begin
//      if fmPostureEditor.frmImageEditor21.IMAGE_CHANGED = True then begin
//        IV.Assign(fmPostureEditor.frmImageEditor21.ImageEnVect1);
//        IV.Update;
//        //dmDBCommon.UpdateMemberImage(img_name, IV);
//      end;
//      if fmPostureEditor.frmImageEditor21.DRAW_CHANGED then
//        dmDBCommon.UpdateMemberDrawing(img_id, IV);
//    end;
//  finally
//    fmPostureEditor.Free;
//  end;
end;

procedure TfrmImages.SetPanelColor(PanelID : Integer);
var
  i : Integer;
begin
  for i := 0 to 6 do
    IMGPnl[i].Color := clBtnFace;

  IMGPnl[PanelID].Color := clRed;
end;

procedure TfrmImages.btnDeleteClick(Sender: TObject);
var
  id : Integer;
  img_name : string;
begin
//  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
//    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
//    IDYES then
//  begin
//    id := dmDBCommon.CUSTOMER_IMAGE_SELID.Value;
//    img_name := IEVect[SELECTED_PANEL].Hint;
//    dmDBCommon.CUSTOMER_IMAGE_UPD_PICTURE.ParamByName('ID').Value := id;
//    dmDBCommon.CUSTOMER_IMAGE_UPD_PICTURE.ParamByName('IMAGE_KIND').Value := 3;
//    dmDBCommon.CUSTOMER_IMAGE_UPD_PICTURE.ParamByName('FIELD_ID').Value := SELECTED_PANEL + 1;
//    dmDBCommon.CUSTOMER_IMAGE_UPD_PICTURE.ParamByName('IMAGE_NAME').Value := '';
//    dmDBCommon.CUSTOMER_IMAGE_UPD_PICTURE.ParamByName('DRAW_IMAGE').Clear;
//    dmDBCommon.CUSTOMER_IMAGE_UPD_PICTURE.ExecProc;
//    IEVect[SELECTED_PANEL].Clear;
//    IMGPnl[SELECTED_PANEL].Visible := False;
//    dmDBCommon.DeleteLocalServerImage(img_name);
//    dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.Refresh;
//    dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.Locate('ID', id, []);
//  end;
end;

procedure TfrmImages.btnResetWidthClick(Sender: TObject);
begin
  if chkAllPanel.Checked then begin
    imgPanel1.Width := 300;
    imgPanel2.Width := 300;
    imgPanel3.Width := 300;
    imgPanel4.Width := 300;
    imgPanel5.Width := 300;
    imgPanel6.Width := 300;
    imgPanel7.Width := 300;
  end else begin
    IMGPnl[SELECTED_PANEL].Width := 300;
  end;
end;

procedure TfrmImages.btnSaveFileClick(Sender: TObject);
var
  fname : string;
begin
  if SaveImageEnDialog1.Execute then begin
    fname := SaveImageEnDialog1.FileName;
    if chkPrintLine.Checked then begin
      IEVectPrt[SELECTED_PANEL].Clear;
      IEVectPrt[SELECTED_PANEL].RemoveAllObjects;
      IEVectPrt[SELECTED_PANEL].Assign(IEVect[SELECTED_PANEL]);
      IEVect[SELECTED_PANEL].CopyAllObjectsTo(IEVectPrt[SELECTED_PANEL]);
      IEVectPrt[SELECTED_PANEL].CopyObjectsToBack();
      IEVectPrt[SELECTED_PANEL].Update;
      IEVectPrt[SELECTED_PANEL].IO.SaveToFileJpeg(fname);
    end else begin
      IEVect[SELECTED_PANEL].IO.SaveToFileJpeg(fname);
    end;
    ShowMessage(fname + ' 저장완료!');
  end;
end;

procedure TfrmImages.chkImageFitClick(Sender: TObject);
var
  i : Integer;
  bwidth : Integer;
begin
  if chkImageFit.Checked then begin
    for i := 0 to ComponentCount - 1 do begin
      if Components[i] is TImageEnVect then begin
        if TImageEnVect(Components[i]).Visible then begin
          TImageEnVect(Components[i]).AutoFit := True;
          TImageEnVect(Components[i]).AutoStretch := True;
          TImageEnVect(Components[i]).AutoShrink := True;
          TImageEnVect(Components[i]).Refresh;
        end;
      end;
    end;
  end else begin
    bwidth := ScrollBox1.Height div 3;
    for i := 0 to ComponentCount - 1 do begin
      if Components[i] is TImageEnVect then begin
        TImageEnVect(Components[i]).AutoFit := False;
        TImageEnVect(Components[i]).AutoStretch := False;
        TImageEnVect(Components[i]).AutoShrink := False;
        TImageEnVect(Components[i]).FitToWidth;
        TImageEnVect(Components[i]).Refresh;
      end;
    end;
  end;
end;

end.
