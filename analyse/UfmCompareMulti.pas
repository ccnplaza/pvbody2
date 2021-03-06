unit UfmCompareMulti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, IniFiles,
  dxSkinsDefaultPainters, dxSkinVS2010, Menus, Buttons, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxSpinEdit, ComCtrls, ieview, imageenview, ievect,
  ExtCtrls, cxGroupBox, DB, MemDS, DBAccess, Uni, dxmdaset, frxClass, frxDBSet,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinWhiteprint,
  dxSkinXmas2008Blue, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers,
  iexRulers, iexToolbars;

type
  TfmCompareMulti = class(TForm)
    compareGroupLeftTop: TcxGroupBox;
    ScrollBox1: TScrollBox;
    imgPanel1: TPanel;
    ImageEnVect1: TImageEnVect;
    ImageEnVect1Print: TImageEnVect;
    imgPanel2: TPanel;
    ImageEnVect2: TImageEnVect;
    ImageEnVect2Print: TImageEnVect;
    imgPanel3: TPanel;
    ImageEnVect3: TImageEnVect;
    ImageEnVect3Print: TImageEnVect;
    imgPanel4: TPanel;
    ImageEnVect4: TImageEnVect;
    ImageEnVect4Print: TImageEnVect;
    imgPanel5: TPanel;
    ImageEnVect5: TImageEnVect;
    ImageEnVect5Print: TImageEnVect;
    imgPanel6: TPanel;
    ImageEnVect6: TImageEnVect;
    ImageEnVect6Print: TImageEnVect;
    Panel2: TPanel;
    Label1: TLabel;
    chkImageFit: TCheckBox;
    TrackBar1: TTrackBar;
    edtTrackBar: TcxSpinEdit;
    chkAllPanel: TCheckBox;
    btnResetWidth: TcxButton;
    btnReport2: TBitBtn;
    CUST_COMPARE_MULTI_SEL: TUniStoredProc;
    CUST_COMPARE_MULTI_SELID: TIntegerField;
    CUSTOMER_IMAGE3_SEL_UID: TUniStoredProc;
    CUSTOMER_IMAGE3_SEL_UIDID: TStringField;
    CUSTOMER_IMAGE3_SEL_UIDCHECK_ID: TStringField;
    CUSTOMER_IMAGE3_SEL_UIDCUST_UID: TStringField;
    CUSTOMER_IMAGE3_SEL_UIDIMAGE_IDX: TIntegerField;
    CUSTOMER_IMAGE3_SEL_UIDPICTURE_DATE: TDateTimeField;
    CUSTOMER_IMAGE3_SEL_UIDIMAGE_DATA: TBlobField;
    CUSTOMER_IMAGE3_SEL_UIDDRAW_DATA: TBlobField;
    PanelMSG: TPanel;
    Label2: TLabel;
    pnlTop1: TPanel;
    pnlTop2: TPanel;
    pnlTop3: TPanel;
    pnlTop4: TPanel;
    pnlTop5: TPanel;
    pnlTop6: TPanel;
    CUST_COMPARE_MULTI_SELDATA_ID: TIntegerField;
    CUST_COMPARE_MULTI_SELIMAGE_ID: TStringField;
    CUST_COMPARE_MULTI_SELIMAGE_DATE: TDateTimeField;
    CUST_COMPARE_MULTI_SELIMAGE_IDX: TIntegerField;
    frxReport: TfrxReport;
    dxMemData: TdxMemData;
    dxMemDataImage1: TBlobField;
    dxMemDataImage2: TBlobField;
    dxMemDataImage3: TBlobField;
    dxMemDataImage4: TBlobField;
    dxMemDataImage5: TBlobField;
    dxMemDataImage6: TBlobField;
    dxMemDataImage1Date: TStringField;
    dxMemDataImage2Date: TStringField;
    dxMemDataImage3Date: TStringField;
    dxMemDataImage4Date: TStringField;
    dxMemDataImage5Date: TStringField;
    dxMemDataImage6Date: TStringField;
    dxMemDatamember_name: TStringField;
    dxMemDatamember_no: TStringField;
    dxMemDatacomment1: TStringField;
    dxMemDatacomment2: TStringField;
    dxMemDatacomment3: TStringField;
    dxMemDatacomment4: TStringField;
    dxMemDatacomment5: TStringField;
    dxMemDatacomment6: TStringField;
    dxMemDatacompany_name: TStringField;
    dxMemDatacompany_addr: TStringField;
    dxMemDatacompany_tel: TStringField;
    frxDBDataset: TfrxDBDataset;
    dxMemDatacompany_addr2: TStringField;
    btnSaveSetting: TBitBtn;
    btnDelImage: TcxButton;
    btnPlay: TcxButton;
    q_delete_compare_image: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure edtTrackBarPropertiesEditValueChanged(Sender: TObject);
    procedure btnResetWidthClick(Sender: TObject);
    procedure chkImageFitClick(Sender: TObject);
    procedure ImageEnVect1Click(Sender: TObject);
    procedure ImageEnVect1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnReport2Click(Sender: TObject);
    procedure btnSaveSettingClick(Sender: TObject);
    procedure btnDelImageClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
  private
    procedure ClearPicture;
    procedure RetrievePicture;
    { Private declarations }
  public
    { Public declarations }
    DATA_ID : Integer;
    IEVect : array[0..5] of TImageEnVect;
    IMGPnl : array[0..5] of TPanel;
    TOPPnl : array[0..5] of TPanel;
    PREV_COLOR : array[0..5] of TColor;
    SELECTED_PANEL : Integer;
  end;

var
  fmCompareMulti: TfmCompareMulti;

implementation

uses GlobalVar, UdmDBCommon, UfmPostureEditor;

{$R *.dfm}

procedure TfmCompareMulti.edtTrackBarPropertiesEditValueChanged(
  Sender: TObject);
begin
  TrackBar1.Position := edtTrackBar.Value;
  if chkAllPanel.Checked then begin
    imgPanel1.Width := edtTrackBar.Value;
    imgPanel2.Width := edtTrackBar.Value;
    imgPanel3.Width := edtTrackBar.Value;
    imgPanel4.Width := edtTrackBar.Value;
    imgPanel5.Width := edtTrackBar.Value;
    imgPanel6.Width := edtTrackBar.Value;
  end else begin
    IMGPnl[SELECTED_PANEL].Width := edtTrackBar.Value;
  end;
end;

procedure TfmCompareMulti.FormCreate(Sender: TObject);
begin
  IEVect[0] := ImageEnVect1;  IEVect[1] := ImageEnVect2;  IEVect[2] := ImageEnVect3;
  IEVect[3] := ImageEnVect4;  IEVect[4] := ImageEnVect5;  IEVect[5] := ImageEnVect6;
  IMGPnl[0] := imgPanel1;  IMGPnl[1] := imgPanel2;  IMGPnl[2] := imgPanel3;
  IMGPnl[3] := imgPanel4;  IMGPnl[4] := imgPanel5;  IMGPnl[5] := imgPanel6;
  TOPPnl[0] := pnlTop1;  TOPPnl[1] := pnlTop2;  TOPPnl[2] := pnlTop3;
  TOPPnl[3] := pnlTop4;  TOPPnl[4] := pnlTop5;  TOPPnl[5] := pnlTop6;
  PREV_COLOR[0] := clBtnFace;  PREV_COLOR[1] := clBtnFace;  PREV_COLOR[2] := clBtnFace;
  PREV_COLOR[3] := clBtnFace;  PREV_COLOR[4] := clBtnFace;  PREV_COLOR[5] := clBtnFace;
  SELECTED_PANEL := 0;
end;

procedure TfmCompareMulti.FormResize(Sender: TObject);
begin
  PanelMSG.Top := (ClientHeight div 2) - PanelMSG.Height;
  PanelMSG.Left := (ClientWidth div 2) - (PanelMSG.Width div 2);
end;

procedure TfmCompareMulti.FormShow(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName : string;
  pnl_width : Integer;
begin
  iniFileName := gsDefaultFolder + 'ReportInfo.ini';
  if not FileExists(iniFileName) then begin
    ShowMessage('출력설정파일이 없습니다. 출력설정을 한 후에 출력하세요.');
    Exit;
  end else begin
    FIni := TIniFile.Create(iniFileName);
    pnl_width := StrToInt(FIni.ReadString('Window2', 'DefaultWidth', '200'));
    TrackBar1.Position := pnl_width;
    edtTrackBar.Value := pnl_width;
    imgPanel1.Width := pnl_width;
    imgPanel2.Width := pnl_width;
    imgPanel3.Width := pnl_width;
    imgPanel4.Width := pnl_width;
    imgPanel5.Width := pnl_width;
    imgPanel6.Width := pnl_width;

  end;
  RetrievePicture;
end;

procedure TfmCompareMulti.RetrievePicture;
var
  i, r, cnt : integer;
  img_id : array[0..5] of string;
  m_stream, d_stream : array[0..5] of TMemoryStream;
  ImageEnVect : TImageEnVect;
  Item : TControl;
  img_left : Integer;
  img_date : array[0..5] of TDateTime;
  img_idx : array[0..5] of Integer;
begin
  PanelMSG.Visible := True;
  PanelMSG.Refresh;

  CUST_COMPARE_MULTI_SEL.ParamByName('D_ID').Value := DATA_ID;
  CUST_COMPARE_MULTI_SEL.Active := True;
  CUST_COMPARE_MULTI_SEL.Refresh;
  cnt := CUST_COMPARE_MULTI_SEL.RecordCount;

  ScrollBox1.Enabled := False;
  ScrollBox1.Visible := False;
  try
    if cnt < 1 then begin
      for i := 0 to 5 do begin
        IMGPnl[i].Visible := False;
      end;
      Exit;
    end;
    if cnt > 6 then cnt := 6;

    CUST_COMPARE_MULTI_SEL.First;
    for i := 0 to cnt - 1 do begin
      img_id[i] := CUST_COMPARE_MULTI_SELIMAGE_ID.Value;
      //img_date[i] := CUST_COMPARE_MULTI_SELIMAGE_DATE.Value;
      img_idx[i] := CUSTOMER_IMAGE3_SEL_UIDIMAGE_IDX.Value;
      IEVect[i].Clear;
      IEVect[i].RemoveAllObjects;
      m_stream[i] := TMemoryStream.Create;
      d_stream[i] := TMemoryStream.Create;
      CUSTOMER_IMAGE3_SEL_UID.ParamByName('UID').Value := img_id[i];
      CUSTOMER_IMAGE3_SEL_UID.Active := True;
      CUSTOMER_IMAGE3_SEL_UID.Refresh;
      img_date[i] := CUSTOMER_IMAGE3_SEL_UIDPICTURE_DATE.Value;
      TBlobField(CUSTOMER_IMAGE3_SEL_UID.FieldByName('image_data')).SaveToStream(m_stream[i]);
      TBlobField(CUSTOMER_IMAGE3_SEL_UID.FieldByName('draw_data')).SaveToStream(d_stream[i]);
      if m_stream[i].Size > 0 then begin
        m_stream[i].Position := 0;
        d_stream[i].Position := 0;
        IEVect[i].IO.LoadFromStreamJpeg(m_stream[i]);
        IEVect[i].LoadFromStreamIEV(d_stream[i]);
        IEVect[i].Hint := img_id[i];
        IEVect[i].Update;

        IMGPnl[i].Left := IMGPnl[i].Width * i + 1;
        IMGPnl[i].Visible := True;
        TOPPnl[i].Caption := DateTimeToStr(img_date[i]);

      end;
      m_stream[i].Free;
      d_stream[i].Free;
      CUST_COMPARE_MULTI_SEL.Next;
    end;
  finally
    ScrollBox1.Enabled := True;
    ScrollBox1.Visible := True;
    PanelMSG.Visible := False;
  end;
end;

procedure TfmCompareMulti.ImageEnVect1Click(Sender: TObject);
var
  tno, i : Integer;
begin
  tno := (Sender as TImageEnVect).Tag;
  SELECTED_PANEL := tno;
  for i := 0 to 5 do begin
    IMGPnl[i].Color := clBtnFace;
    PREV_COLOR[i] := clBtnFace;
  end;
  PREV_COLOR[tno] := clBlue;
  IMGPnl[tno].Color := clBlue;
  TrackBar1.Position := IMGPnl[tno].Width;
end;

procedure TfmCompareMulti.ImageEnVect1DblClick(Sender: TObject);
var
  img_id : string;
  IV : TImageEnVect;
begin
  IV := TImageEnVect(Sender);
  img_id := IV.Hint;
  fmPostureEditor := TfmPostureEditor.Create(Self);
  try
    fmPostureEditor.IMAGE_ID := img_id;
    fmPostureEditor.ShowModal;
    if fmPostureEditor.MODIFY_SAVED = True then begin
      IV.RemoveAllObjects;
      fmPostureEditor.frmImageEditor21.ImageEnVect1.CopyAllObjectsTo(IV);
      IV.Update;
    end;
  finally
    fmPostureEditor.Free;
  end;
end;

procedure TfmCompareMulti.TrackBar1Change(Sender: TObject);
begin
  ScrollBox1.Visible := False;
  if chkAllPanel.Checked then begin
    imgPanel1.Width := TrackBar1.Position;
    imgPanel2.Width := TrackBar1.Position;
    imgPanel3.Width := TrackBar1.Position;
    imgPanel4.Width := TrackBar1.Position;
    imgPanel5.Width := TrackBar1.Position;
    imgPanel6.Width := TrackBar1.Position;
  end else begin
    IMGPnl[SELECTED_PANEL].Width := TrackBar1.Position;
  end;
  edtTrackBar.Value := TrackBar1.Position;
  ScrollBox1.Visible := True;
end;

procedure TfmCompareMulti.btnDelImageClick(Sender: TObject);
var
  img_id : string;
begin
  Screen.Cursor := crHourGlass;
  img_id := IEVect[SELECTED_PANEL].Hint;
  q_delete_compare_image.ParamByName('data_id').Value := DATA_ID;
  q_delete_compare_image.ParamByName('image_id').Value := img_id;
  q_delete_compare_image.ExecSQL;
  IEVect[SELECTED_PANEL].Clear;
  IEVect[SELECTED_PANEL].RemoveAllObjects;
  IMGPnl[SELECTED_PANEL].Visible := False;
  dmDBCommon.d_compare_data.DataSet.Refresh;
  Screen.Cursor := crArrow;
end;

procedure TfmCompareMulti.btnPlayClick(Sender: TObject);
var
  i, cnt, img_idx, img_cnt : Integer;
begin
  fmComparePlayer := TfmComparePlayer.Create(Self);
  try
    img_cnt := 0;
    fmComparePlayer.ImageEnMView1.Clear;
    for i := 0 to 5 do begin
      if IMGPnl[i].Visible then begin
        img_idx := fmComparePlayer.ImageEnMView1.AppendImage;
        fmComparePlayer.ImageEnMView1.SetIEBitmap(img_idx, IEVect[i].IEBitmap);
        fmComparePlayer.ImageEnMView1.Update;
      end;
    end;
    fmComparePlayer.ShowModal;
  finally
    fmComparePlayer.Free;
  end;
end;

procedure TfmCompareMulti.btnReport2Click(Sender: TObject);
var
  mStream1, mStream2, mStream3, mStream4,mStream5, mStream6 : TMemoryStream;
  pdate1, pdate2, pdate3, pdate4, pdate5, pdate6 : string;
  FIni : TIniFile;
  iniFileName : string;
begin
  iniFileName := gsDefaultFolder + 'ReportInfo.ini';
  if not FileExists(iniFileName) then begin
    ShowMessage('출력설정파일이 없습니다. 출력설정을 한 후에 출력하세요.');
    Exit;
  end;
  FIni := TIniFile.Create(iniFileName);

  mStream1 := TMemoryStream.Create;
  mStream2 := TMemoryStream.Create;
  mStream3 := TMemoryStream.Create;
  mStream4 := TMemoryStream.Create;
  mStream5 := TMemoryStream.Create;
  mStream6 := TMemoryStream.Create;
  try
    ImageEnVect1Print.Proc.Clear;
    ImageEnVect1Print.RemoveAllObjects;
    ImageEnVect2Print.Proc.Clear;
    ImageEnVect2Print.RemoveAllObjects;
    ImageEnVect3Print.Proc.Clear;
    ImageEnVect3Print.RemoveAllObjects;
    ImageEnVect4Print.Proc.Clear;
    ImageEnVect4Print.RemoveAllObjects;
    ImageEnVect5Print.Proc.Clear;
    ImageEnVect5Print.RemoveAllObjects;
    ImageEnVect6Print.Proc.Clear;
    ImageEnVect6Print.RemoveAllObjects;

    if imgPanel1.Visible then begin
      pdate1 := pnlTop1.Caption;
      ImageEnVect1Print.IEBitmap.Assign(ImageEnVect1.IEBitmap);
      ImageEnVect1.CopyAllObjectsTo(ImageEnVect1Print);
      ImageEnVect1Print.CopyObjectsToBack(True);
      ImageEnVect1Print.IO.SaveToStreamJpeg(mStream1);
      mStream1.Position := 0;
    end;
    if imgPanel2.Visible then begin
      pdate2 := pnlTop2.Caption;
      ImageEnVect2Print.IEBitmap.Assign(ImageEnVect2.IEBitmap);
      ImageEnVect2.CopyAllObjectsTo(ImageEnVect2Print);
      ImageEnVect2Print.CopyObjectsToBack(True);
      ImageEnVect2Print.IO.SaveToStreamJpeg(mStream2);
      mStream2.Position := 0;
    end;
    if imgPanel3.Visible then begin
      pdate3 := pnlTop3.Caption;
      ImageEnVect3Print.IEBitmap.Assign(ImageEnVect3.IEBitmap);
      ImageEnVect3.CopyAllObjectsTo(ImageEnVect3Print);
      ImageEnVect3Print.CopyObjectsToBack(True);
      ImageEnVect3Print.IO.SaveToStreamJpeg(mStream3);
      mStream3.Position := 0;
    end;
    if imgPanel4.Visible then begin
      pdate4 := pnlTop4.Caption;
      ImageEnVect4Print.IEBitmap.Assign(ImageEnVect4.IEBitmap);
      ImageEnVect4.CopyAllObjectsTo(ImageEnVect4Print);
      ImageEnVect4Print.CopyObjectsToBack(True);
      ImageEnVect4Print.IO.SaveToStreamJpeg(mStream4);
      mStream4.Position := 0;
    end;
    if imgPanel5.Visible then begin
      pdate5 := pnlTop5.Caption;
      ImageEnVect5Print.IEBitmap.Assign(ImageEnVect5.IEBitmap);
      ImageEnVect5.CopyAllObjectsTo(ImageEnVect5Print);
      ImageEnVect5Print.CopyObjectsToBack(True);
      ImageEnVect5Print.IO.SaveToStreamJpeg(mStream5);
      mStream5.Position := 0;
    end;
    if imgPanel6.Visible then begin
      pdate6 := pnlTop6.Caption;
      ImageEnVect6Print.IEBitmap.Assign(ImageEnVect6.IEBitmap);
      ImageEnVect6.CopyAllObjectsTo(ImageEnVect6Print);
      ImageEnVect6Print.CopyObjectsToBack(True);
      ImageEnVect6Print.IO.SaveToStreamJpeg(mStream6);
      mStream6.Position := 0;
    end;
    dxMemData.Close;
    dxMemData.Active := True;
    dxMemData.Append;
    TBlobField(dxMemData.FieldByName('image1')).LoadFromStream(mStream1);
    TBlobField(dxMemData.FieldByName('image2')).LoadFromStream(mStream2);
    TBlobField(dxMemData.FieldByName('image3')).LoadFromStream(mStream3);
    TBlobField(dxMemData.FieldByName('image4')).LoadFromStream(mStream4);
    TBlobField(dxMemData.FieldByName('image5')).LoadFromStream(mStream5);
    TBlobField(dxMemData.FieldByName('image6')).LoadFromStream(mStream6);
    dxMemDataImage1Date.AsString := pdate1;
    dxMemDataImage2Date.AsString := pdate2;
    dxMemDataImage3Date.AsString := pdate3;
    dxMemDataImage4Date.AsString := pdate4;
    dxMemDataImage5Date.AsString := pdate5;
    dxMemDataImage6Date.AsString := pdate6;
    dxMemDatamember_name.AsString := GLOVAL_MEMBER_NAME;
    dxMemDatamember_no.AsString := GLOVAL_MEMBER_TEL;
    dxMemDatacompany_name.AsString := FIni.ReadString('Report', 'CompName', '');
    dxMemDatacompany_tel.AsString := FIni.ReadString('Report', 'Tel1', '') + ' ' + FIni.ReadString('Report', 'Tel2', '');
    dxMemDatacompany_addr.AsString := FIni.ReadString('Report', 'Address1', '');
    dxMemDatacompany_addr2.AsString := FIni.ReadString('Report', 'Address2', '');

    dxMemData.Post;
    frxReport.LoadFromFile(gsDefaultFolder + 'ReportCompareAnalyse.fr3');
    frxReport.ShowReport;
  finally
    mStream1.Free;
    mStream2.Free;
    mStream3.Free;
    mStream4.Free;
    mStream5.Free;
    mStream6.Free;
  end;
end;

procedure TfmCompareMulti.btnResetWidthClick(Sender: TObject);
begin
  if chkAllPanel.Checked then begin
    imgPanel1.Width := 200;
    imgPanel2.Width := 200;
    imgPanel3.Width := 200;
    imgPanel4.Width := 200;
    imgPanel5.Width := 200;
    imgPanel6.Width := 200;
  end else begin
    IMGPnl[SELECTED_PANEL].Width := 200;
  end;
  TrackBar1.Position := 200;
end;

procedure TfmCompareMulti.btnSaveSettingClick(Sender: TObject);
var
  FIni : TIniFile;
  iniFileName : string;
begin
  iniFileName := gsDefaultFolder + 'ReportInfo.ini';
  if not FileExists(iniFileName) then begin
    ShowMessage('출력설정파일이 없습니다. 출력설정을 한 후에 출력하세요.');
    Exit;
  end;
  FIni := TIniFile.Create(iniFileName);
  FIni.WriteString('Window2', 'DefaultWidth', IntToStr(TrackBar1.Position));
  ShowMessage('자료가 저장되었습니다.');
end;

procedure TfmCompareMulti.chkImageFitClick(Sender: TObject);
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

procedure TfmCompareMulti.ClearPicture;
var
  i : Integer;
begin
  for i := 0 to 5 do begin
    IMGPnl[i].Visible := False;
//    IEVect[i].Clear;
//    IEVect[i].RemoveAllObjects;
//    IEVect[i].Visible := False;
  end;
end;


end.
