unit UfmCompareWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, Menus,
  imageenview, ievect, cxButtons, StdCtrls, ExtCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, ieview, iemview, Uni, MemDS, DBAccess,
  VirtualTable, cxLabel, cxDBLabel, DBClient, Provider, UniProvider,
  InterBaseUniProvider, Registry, dxmdaset, frxClass, frxDBSet, ieopensavedlg,
  ImgList, ActnList, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxBarBuiltInMenu, cxPC, cxDBLookupComboBox, UfrmMemberSelect,
  UfrmImageMultiView, hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers,
  iexRulers, iexToolbars, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxCalendar;

type
  TfmCompareWindow = class(TForm)
    pnlMember: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    rgFrameMode: TRadioGroup;
    GroupBox3: TGroupBox;
    chkWin1: TCheckBox;
    chkWin2: TCheckBox;
    chkWin3: TCheckBox;
    chkWin4: TCheckBox;
    Panel8: TPanel;
    cxGrid3: TcxGrid;
    gridCompareWin: TcxGridDBTableView;
    gridCompareWinID: TcxGridDBColumn;
    gridCompareWinMEMBER_ID: TcxGridDBColumn;
    gridCompareWinMAKE_DATE: TcxGridDBColumn;
    gridCompareWinCOMPARE_NAME: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    pgcCompareFrame: TPanel;
    pnlCompareFrameLeft: TPanel;
    compareGroupLeftTop: TcxGroupBox;
    ImageEnVectComp1: TImageEnVect;
    compareGroupLeftBottom: TcxGroupBox;
    ImageEnVectComp2: TImageEnVect;
    pnlCompareFrameRight: TPanel;
    compareGroupRightTop: TcxGroupBox;
    ImageEnVectComp3: TImageEnVect;
    compareGroupRightBottom: TcxGroupBox;
    ImageEnVectComp4: TImageEnVect;
    PanelMessage: TPanel;
    lblMessage: TLabel;
    ds_CUST_COMPARE_WIN_SEL: TDataSource;
    frxReport: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    dxMemData: TdxMemData;
    dxMemDataImage1: TBlobField;
    dxMemDataImage2: TBlobField;
    dxMemDataImage3: TBlobField;
    dxMemDataImage4: TBlobField;
    dxMemDataImage1Date: TStringField;
    dxMemDataImage2Date: TStringField;
    dxMemDataImage3Date: TStringField;
    dxMemDataImage4Date: TStringField;
    dxMemDatamember_name: TStringField;
    dxMemDatamember_no: TStringField;
    PopupThumb: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    ActionThumbnail: TActionList;
    actThumbWindowMax: TAction;
    actThumbWindowMin: TAction;
    actThumbDelete: TAction;
    actThumbSaveAs: TAction;
    SaveImageEnDialog1: TSaveImageEnDialog;
    PopupLayer: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ImageListThumbnail: TImageList;
    ActAddLayer: TAction;
    ActSaveLayer: TAction;
    ActDeleteLayer: TAction;
    ActClearAll: TAction;
    N8: TMenuItem;
    N9: TMenuItem;
    ImageEnVect1Print: TImageEnVect;
    ImageEnVect2Print: TImageEnVect;
    ImageEnVect3Print: TImageEnVect;
    ImageEnVect4Print: TImageEnVect;
    CUSTOMER_IMAGE_COMMENT_INS: TUniStoredProc;
    CUSTOMER_IMAGE_COMMENT_UPD: TUniStoredProc;
    CUSTOMER_IMAGE_COMMENT_SEL: TUniStoredProc;
    CUSTOMER_IMAGE_COMMENT_SELID: TIntegerField;
    CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET: TStringField;
    dsCUSTOMER_IMAGE_COMMENT_SEL: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1value1: TStringField;
    dxMemData1value2: TStringField;
    dxMemData1value3: TStringField;
    dxMemData1value4: TStringField;
    dxMemData1value5: TStringField;
    dxMemData1value6: TStringField;
    dxMemData1value7: TStringField;
    dxMemData1value8: TStringField;
    dxMemData1value9: TStringField;
    dxMemData1value10: TStringField;
    dxMemData1value11: TStringField;
    dxMemData1value12: TStringField;
    dxMemData1value13: TStringField;
    dxMemData1value14: TStringField;
    dxMemData1value15: TStringField;
    dxMemData2: TdxMemData;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    dxMemData3: TdxMemData;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    dxMemData3comment1: TStringField;
    dxMemData3comment2: TStringField;
    dxMemData4: TdxMemData;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    dxMemData5: TdxMemData;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    dxMemData3comment3: TStringField;
    dxMemData3comment4: TStringField;
    btnReport2: TBitBtn;
    PanelThumb: TPanel;
    cxGroupBox2: TcxGroupBox;
    Panel2: TPanel;
    btnAdd: TBitBtn;
    btnSave: TBitBtn;
    btnDel: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    ImageEnMView1: TImageEnMView;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Label2: TLabel;
    icbThumbSize: TcxImageComboBox;
    cxGroupBox4: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    edtName: TEdit;
    btnFindMember: TBitBtn;
    pnlNo: TPanel;
    btnCustInfo: TBitBtn;
    btnHistory: TBitBtn;
    btnFavorite: TBitBtn;
    btnRefresh: TBitBtn;
    btnLatelySelect: TBitBtn;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckP_DATE: TcxGridDBColumn;
    gridCheckCNT: TcxGridDBColumn;
    gridCheckCUST_ID: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    pnlPictureButton: TPanel;
    BitBtn1: TBitBtn;
    CUST_COMPARE_WIN_DEL: TUniStoredProc;
    CUST_COMPARE_WIN_UPD: TUniStoredProc;
    CUST_COMPARE_WIN_INS: TUniStoredProc;
    CUST_COMPARE_WIN_SEL: TUniStoredProc;
    CUST_COMPARE_WIN_SELID: TStringField;
    CUST_COMPARE_WIN_SELMEMBER_ID: TStringField;
    CUST_COMPARE_WIN_SELMAKE_DATE: TDateField;
    CUST_COMPARE_WIN_SELCOMPARE_NAME: TStringField;
    CUST_COMPARE_WIN_SELCOMPANY_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE1_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE2_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE3_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE4_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE1: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE2: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE3: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE4: TStringField;
    gridCompareWinCOMPANY_ID: TcxGridDBColumn;
    gridCompareWinIMAGE1_ID: TcxGridDBColumn;
    gridCompareWinIMAGE2_ID: TcxGridDBColumn;
    gridCompareWinIMAGE3_ID: TcxGridDBColumn;
    gridCompareWinIMAGE4_ID: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE1: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE2: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE3: TcxGridDBColumn;
    gridCompareWinIMAGE_DATE4: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgFrameModeClick(Sender: TObject);
    procedure chkWin1Click(Sender: TObject);
    procedure chkWin2Click(Sender: TObject);
    procedure chkWin3Click(Sender: TObject);
    procedure chkWin4Click(Sender: TObject);
    procedure gridCompareWinCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure compareGroupLeftTopClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ImageEnVectComp1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure actThumbSaveAsExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActClearAllExecute(Sender: TObject);
    procedure btnReport2Click(Sender: TObject);
    procedure ImageEnVectComp1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp3DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnVectComp4DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ImageEnMView1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageEnMView1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure icbThumbSizePropertiesChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnFindMemberClick(Sender: TObject);
    procedure btnLatelySelectClick(Sender: TObject);
    procedure btnFavoriteClick(Sender: TObject);
    procedure btnHistoryClick(Sender: TObject);
    procedure btnCustInfoClick(Sender: TObject);
    procedure gridCheckFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure gridCheckColumn1GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    procedure ShowProcessMsg(msg, cnt_str: string; onoff: integer);
    procedure RetrieveCompareImage(image_id : string; ImageEnVect : TImageEnVect);
    procedure UpdatePrintTempData;
    procedure RetrieveMemberInfo;
    procedure RetrieveThumbnailList;
    procedure RetrieveCompareData;
    procedure RetrieveCompareList;
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    IMAGE_NAME1, IMAGE_NAME2, IMAGE_NAME3, IMAGE_NAME4 : string;
    IMAGE_ID1, IMAGE_ID2, IMAGE_ID3, IMAGE_ID4 : Integer;
    CheckOldID : string;
    LIST_LOADED : Boolean;
    ImageEnVect : array[0..3] of TImageEnVect;
  end;

var
  fmCompareWindow: TfmCompareWindow;

implementation

uses GlobalVar, uCommonLogic, UfmAnalyseRequestSelect, UdmDBCommon,
  UfmComments, UfmMemberPicture, uMemberEditView, uMemberFavorite,
  uMemberSelect, UfmCustomerHistory, UfmMemberLastSelect;

{$R *.dfm}

procedure TfmCompareWindow.FormActivate(Sender: TObject);
begin
//  if (GLOVAL_MEMBER_UID <> '') then begin
//    if (CURRENT_MEMBER_UID <> GLOVAL_MEMBER_UID) then begin
//      RetrieveMemberInfo;
//    end;
//  end;
end;

procedure TfmCompareWindow.RetrieveMemberInfo;
begin
  edtName.Text := CustomerImages.CustName;
  pnlNo.Caption := CustomerImages.CustTel;
  cxGroupBox2.Refresh;
  //retrieve all image list...
  dmDBCommon.IMAGES_SEL_BYDATE.ParamByName('C_ID').Value := CustomerImages.CustID;
  dmDBCommon.IMAGES_SEL_BYDATE.Open;
  dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
  //retrieve selected list...
  dmDBCommon.RetrievePictureByDate;
  //retrieve thumbnails
  RetrieveThumbnailList;
  //insert last customer...
  dmDBCommon.InsertLatestCustomer;
end;

procedure TfmCompareWindow.RetrieveCompareData;
var
  i : Integer;
  img_id : array[0..3] of string;
  imgStream : array[0..3] of TMemoryStream;
begin
  try
    CUST_COMPARE_WIN_SEL.ParamByName('CUST_ID').Value := CustomerImages.CustID;
    CUST_COMPARE_WIN_SEL.Open;
    ds_CUST_COMPARE_WIN_SEL.DataSet.Refresh;
    img_id[0] := VarToStrDef(CUST_COMPARE_WIN_SELIMAGE1_ID.Value, '');
    img_id[1] := VarToStrDef(CUST_COMPARE_WIN_SELIMAGE2_ID.Value, '');
    img_id[2] := VarToStrDef(CUST_COMPARE_WIN_SELIMAGE3_ID.Value, '');
    img_id[3] := VarToStrDef(CUST_COMPARE_WIN_SELIMAGE4_ID.Value, '');
    for i := 0 to 3 do begin
      imgStream[i] := TMemoryStream.Create;
      if img_id[i] <> '' then begin
        dmDBCommon.IMAGES_SEL_ID.ParamByName('RID').Value := StrToInt(img_id[i]);
        dmDBCommon.IMAGES_SEL_ID.Open;
        dmDBCommon.ds_IMAGES_SEL_ID.DataSet.Refresh;
        dmDBCommon.IMAGES_SEL_IDIMAGE_DATA.SaveToStream(imgStream[i]);
        imgStream[i].Position := 0;
        ImageEnVect[i].IO.LoadFromStreamJpeg(imgStream[i]);
      end;
      imgStream[i].Free;
    end;
  finally
  end;
end;

procedure TfmCompareWindow.FormShow(Sender: TObject);
begin
  ImageEnVect[0] := ImageEnVectComp1;
  ImageEnVect[1] := ImageEnVectComp2;
  ImageEnVect[2] := ImageEnVectComp3;
  ImageEnVect[3] := ImageEnVectComp4;
  ImageEnVectComp1.Blank;
  ImageEnVectComp1.AutoFit := True;
  ImageEnVectComp1.AutoStretch := True;
  ImageEnVectComp2.Blank;
  ImageEnVectComp2.AutoFit := True;
  ImageEnVectComp2.AutoStretch := True;
  ImageEnVectComp3.Blank;
  ImageEnVectComp3.AutoFit := True;
  ImageEnVectComp3.AutoStretch := True;
  ImageEnVectComp4.Blank;
  ImageEnVectComp4.AutoFit := True;
  ImageEnVectComp4.AutoStretch := True;

  CompareFile1 := '';
  CompareFile2 := '';
  CompareFile3 := '';
  CompareFile4 := '';
end;

procedure TfmCompareWindow.RetrieveThumbnailList;
var
  i, cnt, idx, thumb_id : integer;
  img_name, drw_name : string;
  mStream, dStream : TMemoryStream;
begin
  Screen.Cursor := crHourGlass;
  ImageEnMView1.LockPaint;
  ImageEnMView1.Clear;
  ImageEnMView1.TextTruncSide := iemtsLeft;
  PanelMessage.Visible := True;
  PanelMessage.Refresh;
  with dmDBCommon do begin
    cnt := IMAGES_SEL.RecordCount;
    IMAGES_SEL.First;
    for i := 0 to cnt - 1 do begin
      mStream := TMemoryStream.Create;
      IMAGES_SELIMAGE_DATA.SaveToStream(mStream);
      if mStream.Size > 10 then begin
        mStream.Position := 0;
        idx := ImageEnMView1.AppendImage;
        ImageEnMView1.SetImageFromStream(idx, mStream);
        ImageEnMView1.ImageID[idx] := IMAGES_SELID.Value;
        ImageEnMView1.ImageTopText[idx] := IntToStr(IMAGES_SELID.Value);
        ImageEnMView1.Update();
      end;
      mStream.Free;
      IMAGES_SEL.Next;
    end;
  end;
  PanelMessage.Visible := False;
  ImageEnMView1.UnlockPaint;
  ImageEnMView1.SelectedImage := 0;
  Screen.Cursor := crArrow;
end;

procedure TfmCompareWindow.ShowProcessMsg(msg, cnt_str: string; onoff: integer);
begin
  if onoff = 1 then begin
    lblMessage.Caption := msg;
    PanelMessage.Visible := True;
    PanelMessage.Update;
  end else
    PanelMessage.Visible := False;
end;


procedure TfmCompareWindow.ActClearAllExecute(Sender: TObject);
begin
  if Application.MessageBox('모든 윈도우가 삭제됩니다. 초기화를 할까요?', '레이어 초기화', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    ImageEnVectComp1.Proc.Clear;
    ImageEnVectComp1.RemoveAllObjects;
    ImageEnVectComp1.Hint := '';

    ImageEnVectComp2.Proc.Clear;
    ImageEnVectComp2.RemoveAllObjects;
    ImageEnVectComp2.Hint := '';

    ImageEnVectComp3.Proc.Clear;
    ImageEnVectComp3.RemoveAllObjects;
    ImageEnVectComp3.Hint := '';

    ImageEnVectComp4.Proc.Clear;
    ImageEnVectComp4.RemoveAllObjects;
    ImageEnVectComp4.Hint := '';

    compareGroupLeftTop.Caption := '비교화면1';
    compareGroupLeftBottom.Caption := '비교화면2';
    compareGroupRightTop.Caption := '비교화면3';
    compareGroupRightBottom.Caption := '비교화면4';
  end;
end;

procedure TfmCompareWindow.actThumbSaveAsExecute(Sender: TObject);
var
  fname, img_id : string;
  i : integer;
  memStream : TMemoryStream;
begin
//  if SaveImageEnDialog1.Execute then begin
//    fname := SaveImageEnDialog1.FileName;
//    i := ImageEnMView.SelectedImage;
//    img_id := ImageEnMView.ImageFileName[i];
//    dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.Locate('id', img_id, []);
//    memStream := TMemoryStream.Create;
//    TBlobField(dmDBCommon.dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('IMAGE_DATA')).SaveToStream(memStream);
//    memStream.Position := 0;
//    memStream.SaveToFile(fname);
//    memStream.Free;
//  end;
end;

procedure TfmCompareWindow.BitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('CUST_ID').Value := CustomerImages.CustID;
    dmDBCommon.IMAGES_DEL_DATE.ParamByName('P_DATE').Value := gridCheckP_DATE.EditValue;
    dmDBCommon.IMAGES_DEL_DATE.ExecProc;
    dmDBCommon.ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
  end;
end;

procedure TfmCompareWindow.btnAddClick(Sender: TObject);
begin
  CUST_COMPARE_WIN_INS.ParamByName('ID').Value := FormatDateTime('yyyymmddhhnnsszzz', now);
  CUST_COMPARE_WIN_INS.ParamByName('MEMBER_ID').Value := CustomerImages.CustID;
  CUST_COMPARE_WIN_INS.ParamByName('MAKE_DATE').Value := Date;
  CUST_COMPARE_WIN_INS.ParamByName('COMPARE_NAME').Value := 'Noname...';
  CUST_COMPARE_WIN_INS.ParamByName('COMPANY_ID').Value := LoginUserCompID;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE1_ID').Value := IMAGE_ID1;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE2_ID').Value := IMAGE_ID2;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE3_ID').Value := IMAGE_ID3;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE4_ID').Value := IMAGE_ID4;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE1').Value := IMAGE_DATE1;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE2').Value := IMAGE_DATE2;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE3').Value := IMAGE_DATE3;
  CUST_COMPARE_WIN_INS.ParamByName('IMAGE_DATE4').Value := IMAGE_DATE4;
  CUST_COMPARE_WIN_INS.ExecProc;
  ds_CUST_COMPARE_WIN_SEL.DataSet.Refresh;
end;

procedure TfmCompareWindow.btnCustInfoClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmMemberEditView := TfmMemberEditView.Create(Self);
  try
    fmMemberEditView.ShowModal;
  finally
    fmMemberEditView.Free;
  end;
end;

procedure TfmCompareWindow.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('정말 삭제합니까?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin

  end;
end;

procedure TfmCompareWindow.btnFavoriteClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberFavorite := TfmMemberFavorite.Create(Self);
  try
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberFavorite.Top := pt.Y;
    fmMemberFavorite.Left := pt.X;
    fmMemberFavorite.ShowModal;
    if fmMemberFavorite.ModalResult = mrOk then begin
      RetrieveCompareData;
      if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
    end;
  finally
    fmMemberFavorite.Free;
  end;
end;

procedure TfmCompareWindow.btnFindMemberClick(Sender: TObject);
var
  search_str : string;
  found_cnt : Integer;
begin
  search_str := '%' + edtName.Text + '%';
  dmDBCommon.SelectMember(search_str);
  found_cnt := dmDBCommon.CUSTOMER_SEARCH.RecordCount;
  LIST_LOADED := False;
  if found_cnt = 0 then begin
    ShowMessage('등록된 자료가 없습니다.');
    edtName.SetFocus;
    Exit;
  end else
  if found_cnt = 1 then begin
    CustomerImages.CustID := dmDBCommon.CUSTOMER_SEARCHUID.Value;
    CustomerImages.CustName := dmDBCommon.CUSTOMER_SEARCHCNAME.Value;
    CustomerImages.CustTel := dmDBCommon.CUSTOMER_SEARCHCTEL.Value;
    CustomerImages.CustSex := StrToInt(dmDBCommon.CUSTOMER_SEARCHSEX.Value);
    RetrieveMemberInfo;
    RetrieveCompareList;
    if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
  end;
  if found_cnt > 1 then begin
    fmMemberSelect := TfmMemberSelect.Create(Self);
    try
      Screen.Cursor := crHourGlass;
      fmMemberSelect.gsSearchStr := search_str;
      fmMemberSelect.ShowModal;
      if fmMemberSelect.ModalResult = mrOk then begin
        RetrieveMemberInfo;
        RetrieveCompareList;
        if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
      end;
    finally
      fmMemberSelect.Free;
      Screen.Cursor := crArrow;
    end;
  end;
end;

procedure TfmCompareWindow.btnHistoryClick(Sender: TObject);
begin
  if CustomerImages.CustID = '' then begin
    ShowMessage('회원을 선택하세요.');
    Exit;
  end;
  fmCustomerHistory := TfmCustomerHistory.Create(Self);
  try
    fmCustomerHistory.CustomerID := CustomerImages.CustID;
    fmCustomerHistory.ShowModal;
  finally
    if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True else LIST_LOADED := False;
    fmCustomerHistory.Free;
  end;
end;

procedure TfmCompareWindow.btnLatelySelectClick(Sender: TObject);
var
  pt : TPoint;
begin
  fmMemberLastSelect := TfmMemberLastSelect.Create(Self);
  try
    LIST_LOADED := False;
    pt.x := 10;
    pt.y := (Sender as TBitBtn).Top + (Sender as TBitBtn).Height + 10;
    pt := Self.ClientToScreen(pt);
    fmMemberLastSelect.Top := pt.Y;
    fmMemberLastSelect.Left := pt.X;
    fmMemberLastSelect.ShowModal;
    if fmMemberLastSelect.ModalResult = mrOk then begin
      CustomerImages.CustID := dmDBCommon.LATEST_CUSTOMER_SELCUST_ID.Value;
      CustomerImages.CustName := dmDBCommon.LATEST_CUSTOMER_SELCUST_NAME.Value;
      CustomerImages.CustTel := dmDBCommon.LATEST_CUSTOMER_SELCUST_TEL.Value;
      CustomerImages.CustSex := dmDBCommon.LATEST_CUSTOMER_SELCUST_SEX.Value;
      RetrieveMemberInfo;
      RetrieveCompareList;
      if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
    end;
  finally
    fmMemberLastSelect.Free;
  end;
end;

procedure TfmCompareWindow.RetrieveCompareList;
begin
  ImageEnVectComp1.ClearAll;
  ImageEnVectComp2.ClearAll;
  ImageEnVectComp3.ClearAll;
  ImageEnVectComp4.ClearAll;
  CUST_COMPARE_WIN_SEL.ParamByName('CUST_ID').Value := CustomerImages.CustID;
  CUST_COMPARE_WIN_SEL.Open;
  ds_CUST_COMPARE_WIN_SEL.DataSet.Refresh;
end;

procedure TfmCompareWindow.btnRefreshClick(Sender: TObject);
begin
  RetrieveMemberInfo;
  RetrieveCompareList;
  if gridCheck.DataController.RecordCount > 0 then LIST_LOADED := True;
end;

procedure TfmCompareWindow.btnReport2Click(Sender: TObject);
var
  mStream1, mStream2, mStream3, mStream4 : TMemoryStream;
begin
  mStream1 := TMemoryStream.Create;
  mStream2 := TMemoryStream.Create;
  mStream3 := TMemoryStream.Create;
  mStream4 := TMemoryStream.Create;
  try
    ImageEnVect1Print.Proc.Clear;
    ImageEnVect1Print.RemoveAllObjects;
    ImageEnVect2Print.Proc.Clear;
    ImageEnVect2Print.RemoveAllObjects;
    ImageEnVect3Print.Proc.Clear;
    ImageEnVect3Print.RemoveAllObjects;
    ImageEnVect4Print.Proc.Clear;
    ImageEnVect4Print.RemoveAllObjects;

    if not ImageEnVectComp1.IsEmpty then begin
      ImageEnVect1Print.IEBitmap.Assign(ImageEnVectComp1.IEBitmap);
      ImageEnVectComp1.CopyAllObjectsTo(ImageEnVect1Print);
      ImageEnVect1Print.CopyObjectsToBack(True);
      ImageEnVect1Print.IO.SaveToStreamJpeg(mStream1);
      mStream1.Position := 0;
    end;
    if not ImageEnVectComp2.IsEmpty then begin
      ImageEnVect2Print.IEBitmap.Assign(ImageEnVectComp2.IEBitmap);
      ImageEnVectComp2.CopyAllObjectsTo(ImageEnVect2Print);
      ImageEnVect2Print.CopyObjectsToBack(True);
      ImageEnVect2Print.IO.SaveToStreamJpeg(mStream2);
      mStream2.Position := 0;
    end;
    if not ImageEnVectComp3.IsEmpty then begin
      ImageEnVect3Print.IEBitmap.Assign(ImageEnVectComp3.IEBitmap);
      ImageEnVectComp3.CopyAllObjectsTo(ImageEnVect3Print);
      ImageEnVect3Print.CopyObjectsToBack(True);
      ImageEnVect3Print.IO.SaveToStreamJpeg(mStream3);
      mStream3.Position := 0;
    end;
    if not ImageEnVectComp4.IsEmpty then begin
      ImageEnVect4Print.IEBitmap.Assign(ImageEnVectComp4.IEBitmap);
      ImageEnVectComp4.CopyAllObjectsTo(ImageEnVect4Print);
      ImageEnVect4Print.CopyObjectsToBack(True);
      ImageEnVect4Print.IO.SaveToStreamJpeg(mStream4);
      mStream4.Position := 0;
    end;
    dxMemData.Close;
    dxMemData.Active := True;
    dxMemData.Append;
    TBlobField(dxMemData.FieldByName('image1')).LoadFromStream(mStream1);
    TBlobField(dxMemData.FieldByName('image2')).LoadFromStream(mStream2);
    TBlobField(dxMemData.FieldByName('image3')).LoadFromStream(mStream3);
    TBlobField(dxMemData.FieldByName('image4')).LoadFromStream(mStream4);
    dxMemDataImage1Date.AsString := IMAGE_DATE1;
    dxMemDataImage2Date.AsString := IMAGE_DATE2;
    dxMemDataImage3Date.AsString := IMAGE_DATE3;
    dxMemDataImage4Date.AsString := IMAGE_DATE4;
    dxMemDatamember_name.AsString := CustomerImages.CustName;
    dxMemDatamember_no.AsString := CustomerImages.CustTel;

    //UpdatePrintTempData;

    dxMemData.Post;
    frxReport.LoadFromFile(gsDefaultFolder + 'ReportCompare.fr3');
    frxReport.ShowReport;
  finally
    mStream1.Free;
    mStream2.Free;
    mStream3.Free;
    mStream4.Free;
  end;
end;

procedure TfmCompareWindow.btnSaveClick(Sender: TObject);
var
  sVal : string;
begin
  sVal := gridCompareWinCOMPARE_NAME.EditValue;
  if InputQuery('레이어 제목입력', '제목을 입력하세요.',
      sVal) = False then
    Exit;

  CUST_COMPARE_WIN_UPD.ParamByName('ID').Value := gridCompareWinID.EditValue;
  CUST_COMPARE_WIN_UPD.ParamByName('COMPARE_NAME').Value := sVal;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE1_ID').Value := IMAGE_ID1;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE2_ID').Value := IMAGE_ID2;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE3_ID').Value := IMAGE_ID3;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE4_ID').Value := IMAGE_ID4;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE_DATE1').Value := IMAGE_DATE1;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE_DATE2').Value := IMAGE_DATE2;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE_DATE3').Value := IMAGE_DATE3;
  CUST_COMPARE_WIN_UPD.ParamByName('IMAGE_DATE4').Value := IMAGE_DATE4;
  CUST_COMPARE_WIN_UPD.ExecProc;
  ds_CUST_COMPARE_WIN_SEL.DataSet.Refresh;
end;

procedure TfmCompareWindow.UpdatePrintTempData;
var
  i, cnt, id : Integer;
  field_name, field_value, comment1, comment2, comment3, comment4 : string;
begin
{
  dxMemData1.Close;
  dxMemData1.Open;
  cnt := gridImage1.DataController.RecordCount;
  gridImage1.DataController.GotoFirst;
  dxMemData1.Append;
  for i := 0 to cnt - 1 do begin
    field_name := 'value' + IntToStr(i+1);
    id := gridImage1ID_NO.EditValue;
    field_value := gridImage1.DataController.GetDisplayText(i, 3);
    dxMemData1.FieldByName(field_name).Value := IntToStr(id) + '. ' + field_value;
    gridImage1.DataController.GotoNext;
  end;
  dxMemData1.Post;

  dxMemData2.Close;
  dxMemData2.Open;
  cnt := gridImage3.DataController.RecordCount;
  gridImage3.DataController.GotoFirst;
  dxMemData2.Append;
  for i := 0 to cnt - 1 do begin
    field_name := 'value' + IntToStr(i+1);
    id := gridImage3ID_NO.EditValue;
    field_value := gridImage3.DataController.GetDisplayText(i, 3);
    dxMemData2.FieldByName(field_name).Value := IntToStr(id) + '. ' + field_value;
    gridImage3.DataController.GotoNext;
  end;
  dxMemData2.Post;

  dxMemData4.Close;
  dxMemData4.Open;
  cnt := gridImage2.DataController.RecordCount;
  gridImage2.DataController.GotoFirst;
  dxMemData4.Append;
  for i := 0 to cnt - 1 do begin
    field_name := 'value' + IntToStr(i+1);
    id := gridImage2ID_NO.EditValue;
    field_value := gridImage2.DataController.GetDisplayText(i, 3);
    dxMemData4.FieldByName(field_name).Value := IntToStr(id) + '. ' + field_value;
    gridImage2.DataController.GotoNext;
  end;
  dxMemData4.Post;

  dxMemData5.Close;
  dxMemData5.Open;
  cnt := gridImage4.DataController.RecordCount;
  gridImage4.DataController.GotoFirst;
  dxMemData5.Append;
  for i := 0 to cnt - 1 do begin
    field_name := 'value' + IntToStr(i+1);
    id := gridImage4ID_NO.EditValue;
    field_value := gridImage4.DataController.GetDisplayText(i, 3);
    dxMemData5.FieldByName(field_name).Value := IntToStr(id) + '. ' + field_value;
    gridImage4.DataController.GotoNext;
  end;
  dxMemData5.Post;

  CUSTOMER_IMAGE_COMMENT_SEL.ParamByName('IMAGE_ID').Value := IMAGE_ID1;
  CUSTOMER_IMAGE_COMMENT_SEL.Active := True;
  dsCUSTOMER_IMAGE_COMMENT_SEL.DataSet.Refresh;
  comment1 := CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET.Value;

  CUSTOMER_IMAGE_COMMENT_SEL.ParamByName('IMAGE_ID').Value := IMAGE_ID3;
  CUSTOMER_IMAGE_COMMENT_SEL.Active := True;
  dsCUSTOMER_IMAGE_COMMENT_SEL.DataSet.Refresh;
  comment2 := CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET.Value;

  CUSTOMER_IMAGE_COMMENT_SEL.ParamByName('IMAGE_ID').Value := IMAGE_ID2;
  CUSTOMER_IMAGE_COMMENT_SEL.Active := True;
  dsCUSTOMER_IMAGE_COMMENT_SEL.DataSet.Refresh;
  comment3 := CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET.Value;

  CUSTOMER_IMAGE_COMMENT_SEL.ParamByName('IMAGE_ID').Value := IMAGE_ID4;
  CUSTOMER_IMAGE_COMMENT_SEL.Active := True;
  dsCUSTOMER_IMAGE_COMMENT_SEL.DataSet.Refresh;
  comment4 := CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET.Value;

  dxMemData3.Close;
  dxMemData3.Open;
  dxMemData3.Append;
  dxMemData3comment1.Value := comment1;
  dxMemData3comment2.Value := comment2;
  dxMemData3comment3.Value := comment3;
  dxMemData3comment4.Value := comment4;
  dxMemData3.Post;
  }
end;

procedure TfmCompareWindow.chkWin1Click(Sender: TObject);
begin
  if chkWin1.Checked then begin
    ImageEnVectComp1.AutoFit := True;
    ImageEnVectComp1.AutoStretch := True;
  end else begin
    ImageEnVectComp1.AutoFit := False;
    ImageEnVectComp1.AutoStretch := False;
  end;
  ImageEnVectComp1.Refresh;
end;

procedure TfmCompareWindow.chkWin2Click(Sender: TObject);
begin
  if chkWin2.Checked then begin
    ImageEnVectComp2.AutoFit := True;
    ImageEnVectComp2.AutoStretch := True;
  end else begin
    ImageEnVectComp2.AutoFit := False;
    ImageEnVectComp2.AutoStretch := False;
  end;
  ImageEnVectComp2.Refresh;
end;

procedure TfmCompareWindow.chkWin3Click(Sender: TObject);
begin
  if chkWin3.Checked then begin
    ImageEnVectComp3.AutoFit := True;
    ImageEnVectComp3.AutoStretch := True;
  end else begin
    ImageEnVectComp3.AutoFit := False;
    ImageEnVectComp3.AutoStretch := False;
  end;
  ImageEnVectComp3.Refresh;
end;

procedure TfmCompareWindow.chkWin4Click(Sender: TObject);
begin
  if chkWin4.Checked then begin
    ImageEnVectComp4.AutoFit := True;
    ImageEnVectComp4.AutoStretch := True;
  end else begin
    ImageEnVectComp4.AutoFit := False;
    ImageEnVectComp4.AutoStretch := False;
  end;
  ImageEnVectComp4.Refresh;
end;

procedure TfmCompareWindow.compareGroupLeftTopClick(Sender: TObject);
var
  tno : integer;
begin
  tno := (Sender as TcxGroupBox).Tag;
  CurrentCompareWindow := tno;
end;

procedure TfmCompareWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompareWindow.FormResize(Sender: TObject);
begin
  pnlCompareFrameLeft.Width := pgcCompareFrame.width div 2;
  compareGroupLeftBottom.height := pgcCompareFrame.Height div 2;
  compareGroupRightBottom.height := pgcCompareFrame.Height div 2;
end;

procedure TfmCompareWindow.gridCheckColumn1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := IntToStr(Sender.GridView.Controller.TopRecordIndex + ARecord.ViewInfo.Index+1);
end;

procedure TfmCompareWindow.gridCheckFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if LIST_LOADED then begin
    dmDBCommon.RetrievePictureByDate;
    RetrieveThumbnailList;
  end;
end;

procedure TfmCompareWindow.gridCompareWinCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  IMAGE_ID1 := gridCompareWinIMAGE1_ID.EditValue;
  IMAGE_ID2 := gridCompareWinIMAGE2_ID.EditValue;
  IMAGE_ID3 := gridCompareWinIMAGE3_ID.EditValue;
  IMAGE_ID4 := gridCompareWinIMAGE4_ID.EditValue;
  if IMAGE_ID1 > 0 then begin
    IMAGE_DATE1 := gridCompareWinIMAGE_DATE1.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID1), ImageEnVectComp1);
  end;
  if IMAGE_ID2 > 0 then begin
    IMAGE_DATE2 := gridCompareWinIMAGE_DATE2.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID2), ImageEnVectComp2);
  end;
  if IMAGE_ID3 > 0 then begin
    IMAGE_DATE3 := gridCompareWinIMAGE_DATE3.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID3), ImageEnVectComp3);
  end;
  if IMAGE_ID4 > 0 then begin
    IMAGE_DATE4 := gridCompareWinIMAGE_DATE4.EditValue;
    RetrieveCompareImage(IntToStr(IMAGE_ID4), ImageEnVectComp4);
  end;
end;

procedure TfmCompareWindow.icbThumbSizePropertiesChange(Sender: TObject);
begin
  case icbThumbSize.EditValue of
    1: PanelThumb.Width := 170;
    2: PanelThumb.Width := 310;
    3: PanelThumb.Width := 445;
  end;
end;

procedure TfmCompareWindow.RetrieveCompareImage(image_id : string; ImageEnVect : TImageEnVect);
var
  i : Integer;
  imgStream : TMemoryStream;
begin
  imgStream := TMemoryStream.Create;
  try
    dmDBCommon.IMAGES_SEL_ID.ParamByName('RID').Value := StrToInt(image_id);
    dmDBCommon.IMAGES_SEL_ID.Open;
    dmDBCommon.ds_IMAGES_SEL_ID.DataSet.Refresh;
    dmDBCommon.IMAGES_SEL_IDIMAGE_DATA.SaveToStream(imgStream);
    imgStream.Position := 0;
    ImageEnVect.IO.LoadFromStreamJpeg(imgStream);
    case ImageEnVect.Tag of
      1: compareGroupLeftTop.Caption := '비교화면1 - ' + IMAGE_DATE1;
      2: compareGroupLeftBottom.Caption := '비교화면2 - ' + IMAGE_DATE2;
      3: compareGroupRightTop.Caption := '비교화면3 - ' + IMAGE_DATE3;
      4: compareGroupRightBottom.Caption := '비교화면4 - ' + IMAGE_DATE4;
    end;
  finally
    imgStream.Free;
  end;
end;
procedure TfmCompareWindow.ImageEnMView1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  ImageEnMView1.IEEndDrag;
  ImageEnMView1.MouseInteract := [mmiSelect];
  ImageEnMView1.Paint;
end;

procedure TfmCompareWindow.ImageEnMView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if (ssLeft in Shift) then
  begin
    ImageEnMView1.MouseInteract := [];
    ImageEnMView1.IEBeginDrag(true, -1);
  end;
end;

procedure TfmCompareWindow.ImageEnVectComp1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  idx : integer;
  image_stream, draw_stream : TMemoryStream;
  img_date, img_id : string;
begin
  img_date := DateTimeToStr(gridCheckP_DATE.EditValue);
  idx := ImageEnMView1.SelectedImage;
  with (Sender as TImageEnVect) do begin
    Proc.Clear;
    RemoveAllObjects;
    Fit;
    Assign(ImageEnMView1.IEBitmap);
    Update;
  end;
  case (Sender as TImageEnVect).Tag of
    1: begin
      compareGroupLeftTop.Caption := '비교화면1 - ' + img_date;
      IMAGE_DATE1 := img_date;
      IMAGE_NAME1 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID1 := ImageEnMView1.ImageID[idx];
    end;
    2: begin
      compareGroupLeftBottom.Caption := '비교화면2 - ' + img_date;
      IMAGE_DATE1 := img_date;
      IMAGE_NAME2 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID2 := ImageEnMView1.ImageID[idx];
    end;
    3: begin
      compareGroupRightTop.Caption := '비교화면3 - ' + img_date;
      IMAGE_DATE2 := img_date;
      IMAGE_NAME3 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID3 := ImageEnMView1.ImageID[idx];
    end;
    4: begin
      compareGroupRightBottom.Caption := '비교화면4 - ' + img_date;
      IMAGE_DATE4 := img_date;
      IMAGE_NAME4 := ImageEnMView1.ImageInfoText[idx];
      IMAGE_ID4 := ImageEnMView1.ImageID[idx];
    end;
  end;
end;

procedure TfmCompareWindow.ImageEnVectComp1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareWindow.ImageEnVectComp2DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareWindow.ImageEnVectComp3DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareWindow.ImageEnVectComp4DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source is TImageEnView then
    Accept := True;
end;

procedure TfmCompareWindow.rgFrameModeClick(Sender: TObject);
begin
  if rgFrameMode.ItemIndex = 0 then begin
    compareGroupLeftBottom.height := pgcCompareFrame.Height div 2;
    compareGroupRightBottom.height := pgcCompareFrame.Height div 2;
  end else begin
    compareGroupLeftBottom.height := 0;
    compareGroupRightBottom.height := 0;
  end;
end;

initialization RegisterClasses([TfmCompareWindow]);

end.
