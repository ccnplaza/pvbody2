unit UfmCompareWindow2;

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
  ImgList, ActnList, ComCtrls, hyiedefs, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, hyieutils,
  cxTrackBar, dxZoomTrackBar, cxMaskEdit, cxSpinEdit, imageenio, iexActionsMulti,
  UfrmMemberSelect, dxBarBuiltInMenu, cxPC;

type
  TfmCompareWindow2 = class(TForm)
    pnlMember: TPanel;
    Panel1: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    cxGrid3: TcxGrid;
    gridCompareWin: TcxGridDBTableView;
    gridCompareWinID: TcxGridDBColumn;
    gridCompareWinMEMBER_ID: TcxGridDBColumn;
    gridCompareWinMAKE_DATE: TcxGridDBColumn;
    gridCompareWinCOMPARE_NAME: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    pgcCompareFrame: TPanel;
    compareGroupLeftTop: TcxGroupBox;
    d_CUST_COMPARE_WIN2_SEL: TDataSource;
    btnReport: TBitBtn;
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
    ImageEnVect1: TImageEnVect;
    CheckBox1: TCheckBox;
    btnDeleteLayer: TBitBtn;
    btnDeleteLayerAll: TBitBtn;
    btnAutoAlign: TBitBtn;
    CUST_COMPARE_WIN2_INS: TUniStoredProc;
    CUST_COMPARE_WIN2_SEL: TUniStoredProc;
    CUST_COMPARE_WIN2_UPD: TUniStoredProc;
    CUST_COMPARE_WIN2_IMAGE_INS: TUniStoredProc;
    CUST_COMPARE_WIN2_IMAGE_UPD: TUniStoredProc;
    CUST_COMPARE_WIN2_DEL: TUniStoredProc;
    CUST_COMPARE_WIN2_IMAGE_SEL: TUniStoredProc;
    CUST_COMPARE_WIN2_IMAGE_DEL: TUniStoredProc;
    CUST_COMPARE_WIN2_SELID: TStringField;
    CUST_COMPARE_WIN2_SELMEMBER_ID: TStringField;
    CUST_COMPARE_WIN2_SELMAKE_DATE: TDateField;
    CUST_COMPARE_WIN2_SELCOMPARE_NAME: TStringField;
    d_CUST_COMPARE_WIN2_IMAGE_SEL: TDataSource;
    CUST_COMPARE_WIN2_IMAGE_SELCOMPARE_IMAGE: TBlobField;
    ImageEnMViewDeleteImage1: TImageEnMViewDeleteImage;
    CUST_COMPARE_WIN2_SELCOMPARE_COMMENT: TMemoField;
    gridCompareWinCOMPARE_COMMENT: TcxGridDBColumn;
    btnAdd: TBitBtn;
    btnSave: TBitBtn;
    btnDel: TBitBtn;
    frmMemberSelect1: TfrmMemberSelect;
    Panel2: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    Panel4: TPanel;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    cxTabControl1: TcxTabControl;
    ImageEnView1: TImageEnView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridCompareWinCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure compareGroupLeftTopClick(Sender: TObject);
    procedure btnReportClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btnDeleteLayerClick(Sender: TObject);
    procedure btnDeleteLayerAllClick(Sender: TObject);
    procedure btnAutoAlignClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure frmMemberSelect1gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ImageEnView1DblClick(Sender: TObject);
    procedure cxTabControl1Change(Sender: TObject);
  private
    procedure RetrieveMemberInfo;
    procedure RetrieveCustomerPictures;
    procedure ResetTabControl(tcnt : Integer);
    { Private declarations }
  public
    { Public declarations }
    IMAGE_DATE1, IMAGE_DATE2, IMAGE_DATE3, IMAGE_DATE4 : string;
    CheckOldID : string;
  end;

var
  fmCompareWindow2: TfmCompareWindow2;

implementation

uses GlobalVar, uCommonLogic, UfmAnalyseRequestSelect, UdmDBCommon,
    UfmCompareComment, uMemberEditView;

{$R *.dfm}

procedure TfmCompareWindow2.RetrieveMemberInfo;
begin
  CUST_COMPARE_WIN2_SEL.ParamByName('M_ID').AsString := CustomerImages.CustID;
  CUST_COMPARE_WIN2_SEL.Active := True;
  d_CUST_COMPARE_WIN2_SEL.DataSet.Refresh;
end;

procedure TfmCompareWindow2.TrackBar1Change(Sender: TObject);
var
  i, obj : integer;
begin
  with ImageEnVect1 do begin
    for i := 0 to SelObjectsCount - 1 do begin
      obj := ImageEnVect1.SelObjects[i];
      ImageEnVect1.ObjTransparency[obj] := TrackBar1.Position;
      Update;
    end;
  end;
end;

procedure TfmCompareWindow2.btnSaveClick(Sender: TObject);
var
  sVal : string;
  compare_id : string;
  mStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  fmCompareComment := TfmCompareComment.Create(self);
  try
    fmCompareComment.Edit1.Text := CUST_COMPARE_WIN2_SELCOMPARE_NAME.Value;
    fmCompareComment.Memo1.Text := CUST_COMPARE_WIN2_SELCOMPARE_COMMENT.Value;
    fmCompareComment.ShowModal;
    if fmCompareComment.ModalResult = mrOk then begin
      Screen.Cursor := crHourGlass;
      if not ImageEnVect1.IsEmpty then begin
        ImageEnVect1.SaveToStreamIEV(mStream);
        mStream.Position := 0;
      end;
      compare_id := CUST_COMPARE_WIN2_SELID.Value;
      CUST_COMPARE_WIN2_UPD.ParamByName('ID').Value := compare_id;
      CUST_COMPARE_WIN2_UPD.ParamByName('COMPARE_NAME').AsString := fmCompareComment.Edit1.Text;
      CUST_COMPARE_WIN2_UPD.ParamByName('COMPARE_COMMENT').AsString := fmCompareComment.Memo1.Text;
      CUST_COMPARE_WIN2_UPD.ExecProc;

      CUST_COMPARE_WIN2_IMAGE_UPD.ParamByName('COMPARE_ID').AsString := compare_id;
      CUST_COMPARE_WIN2_IMAGE_UPD.ParamByName('COMPARE_IMAGE').LoadFromStream(mStream, ftBlob);
      CUST_COMPARE_WIN2_IMAGE_UPD.ExecProc;
      d_CUST_COMPARE_WIN2_SEL.DataSet.Refresh;
      d_CUST_COMPARE_WIN2_SEL.DataSet.Locate('id', compare_id, []);
    end;
  finally
    mStream.Free;
    fmCompareComment.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmCompareWindow2.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('정말 삭제합니까?', '자료삭제', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    CUST_COMPARE_WIN2_IMAGE_DEL.ParamByName('COMPARE_ID').Value := gridCompareWinID.EditValue;
    CUST_COMPARE_WIN2_IMAGE_DEL.ExecProc;
    CUST_COMPARE_WIN2_DEL.ParamByName('ID').Value := gridCompareWinID.EditValue;
    CUST_COMPARE_WIN2_DEL.ExecProc;
    d_CUST_COMPARE_WIN2_SEL.DataSet.Refresh;
  end;
end;

procedure TfmCompareWindow2.btnAddClick(Sender: TObject);
var
  sVal : string;
  compare_id : string;
  mStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  fmCompareComment := TfmCompareComment.Create(self);
  try
    fmCompareComment.ShowModal;
    if fmCompareComment.ModalResult = mrOk then begin
      Screen.Cursor := crHourGlass;
      if not ImageEnVect1.IsEmpty then begin
        ImageEnVect1.SaveToStreamIEV(mStream);
        mStream.Position := 0;
      end;
      compare_id := FormatDateTime('yyyymmddhhnnsszzz', now);
      CUST_COMPARE_WIN2_INS.ParamByName('ID').AsString := compare_id;
      CUST_COMPARE_WIN2_INS.ParamByName('MEMBER_ID').AsString := CustomerImages.CustID;
      CUST_COMPARE_WIN2_INS.ParamByName('MAKE_DATE').Value := Date;
      CUST_COMPARE_WIN2_INS.ParamByName('COMPARE_NAME').AsString := fmCompareComment.Edit1.Text;
      CUST_COMPARE_WIN2_INS.ParamByName('COMPARE_COMMENT').AsString := fmCompareComment.Memo1.Text;
      CUST_COMPARE_WIN2_INS.ExecProc;

      CUST_COMPARE_WIN2_IMAGE_INS.ParamByName('COMPARE_ID').AsString := compare_id;
      CUST_COMPARE_WIN2_IMAGE_INS.ParamByName('COMPARE_IMAGE').LoadFromStream(mStream, ftBlob);
      CUST_COMPARE_WIN2_IMAGE_INS.ExecProc;
      d_CUST_COMPARE_WIN2_SEL.DataSet.Refresh;
    end;
  finally
    mStream.Free;
    fmCompareComment.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmCompareWindow2.btnAutoAlignClick(Sender: TObject);
var
  i : Integer;
  owidth : Integer;
begin
//  if ImageEnVect1.ObjectsCount > 0 then begin
//    for i := 0 to ImageEnVect1.ObjectsCount - 1 do begin
//      owidth := ImageEnVect1.ObjWidth[i];
//      ImageEnVect1.al
//    end;
//    ImageEnVect1.Update;
//  end;
end;

procedure TfmCompareWindow2.btnDeleteLayerAllClick(Sender: TObject);
begin
  ImageEnVect1.RemoveAllObjects;
  ImageEnVect1.Update;
end;

procedure TfmCompareWindow2.btnDeleteLayerClick(Sender: TObject);
var
  i : Integer;
begin
  if ImageEnVect1.SelObjectsCount > 0 then begin
    for i := ImageEnVect1.SelObjectsCount - 1 downto 0 do
      ImageEnVect1.RemoveObject(ImageEnVect1.selobjects[i]);
    ImageEnVect1.Update;
  end;
end;

procedure TfmCompareWindow2.btnReportClick(Sender: TObject);
var
  mStream1, mStream2 : TMemoryStream;
begin
//  mStream1 := TMemoryStream.Create;
//  mStream2 := TMemoryStream.Create;
//  try
//    ImageEnVect1Print.Proc.Clear;
//    ImageEnVect1Print.RemoveAllObjects;
//
//    if not ImageEnVect1.IsEmpty then begin
//      ImageEnVect1Print.IEBitmap.Assign(ImageEnVect1.IEBitmap);
//      ImageEnVect1Print.IO.SaveToStreamJpeg(mStream1);
//      mStream1.Position := 0;
//    end;
//    dxMemData.Close;
//    dxMemData.Active := True;
//    dxMemData.Append;
//    TBlobField(dxMemData.FieldByName('image1')).LoadFromStream(mStream1);
//    TBlobField(dxMemData.FieldByName('image2')).LoadFromStream(mStream2);
//    dxMemDataImage1Date.AsString := q_compare_winIMAGE_DATE1.AsString;
//    dxMemDataImage2Date.AsString := q_compare_winIMAGE_DATE2.AsString;
//    dxMemDatamember_name.AsString := GLOVAL_MEMBER_NAME;
//    dxMemDatamember_no.AsString := GLOVAL_MEMBER_CHARTNO;
//
//    dxMemData.Post;
//    frxReport.ShowReport;
//  finally
//    mStream1.Free;
//    mStream2.Free;
//  end;
end;

procedure TfmCompareWindow2.CheckBox1Click(Sender: TObject);
begin
  ImageEnVect1.AutoFit := CheckBox1.Checked;
  //ImageEnVect1.Update;
end;

procedure TfmCompareWindow2.compareGroupLeftTopClick(Sender: TObject);
var
  tno : integer;
begin
  tno := (Sender as TcxGroupBox).Tag;
  CurrentCompareWindow := tno;
end;

procedure TfmCompareWindow2.cxTabControl1Change(Sender: TObject);
begin
  RetrieveCustomerPictures;
end;

procedure TfmCompareWindow2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCompareWindow2.FormShow(Sender: TObject);
begin
  ImageEnView1.Clear;
  ImageEnVect1.FitToHeight;
  if CustomerImages.CustName <> '' then
    RetrieveCustomerPictures;
end;

procedure TfmCompareWindow2.RetrieveCustomerPictures;
var
  tab_idx, img_id, img_w, img_h : Integer;
  img_name : string;
begin
  frmMemberSelect1.edtName.Text := CustomerImages.CustName;
  frmMemberSelect1.pnlNo.Caption := CustomerImages.CustTel;

  ImageEnView1.Clear;
  tab_idx := cxTabControl1.TabIndex + 1;
  if dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.FieldByName('IMAGE_NAME' + IntToStr(tab_idx)).AsString <> '' then begin
    img_name := dmDBCommon.ds_CUSTOMER_IMAGE_SEL.DataSet.FieldByName('IMAGE_NAME' + IntToStr(tab_idx)).AsString;
    if not FileExists(gsLocalImageFolder + '\' + img_name) then begin
      dmDBCommon.DownloadImage(img_name);
    end;
    ImageEnView1.IO.LoadFromFile(gsLocalImageFolder + '\' + img_name);
    img_w := ImageEnView1.IEBitmap.Width;
    img_h := ImageEnView1.IEBitmap.Height;
    if img_w > img_h then
      ImageEnView1.Proc.Rotate(-90);
  end;
end;

procedure TfmCompareWindow2.frmMemberSelect1gridCheckCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  cnt : Integer;
begin
  cnt := frmMemberSelect1.gridCheckPIC_CNT.EditValue;
  ResetTabControl(cnt);
  RetrieveCustomerPictures;
  RetrieveMemberInfo;
end;

procedure TfmCompareWindow2.ResetTabControl(tcnt : Integer);
var
  i, cnt : Integer;
begin
  cnt := cxTabControl1.Tabs.Count;
  for i := 0 to cnt - 1 do begin
    if i <= tcnt - 1 then
      cxTabControl1.Tabs[i].Visible := True
    else
      cxTabControl1.Tabs[i].Visible := False;
  end;
end;

procedure TfmCompareWindow2.gridCompareWinCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  compare_id : string;
  image_stream : TMemoryStream;
begin
  Screen.Cursor := crHourGlass;
  image_stream := TMemoryStream.Create;
  try
    ImageEnVect1.LockUpdate;
    ImageEnView1DblClick(Sender);
    ImageEnVect1.RemoveAllObjects;
    compare_id := gridCompareWinID.EditValue;
    CUST_COMPARE_WIN2_IMAGE_SEL.ParamByName('C_ID').AsString := compare_id;
    CUST_COMPARE_WIN2_IMAGE_SEL.Active := True;
    d_CUST_COMPARE_WIN2_IMAGE_SEL.DataSet.Refresh;
    TBlobField(d_CUST_COMPARE_WIN2_IMAGE_SEL.DataSet.FieldByName('compare_image')).SaveToStream(image_stream);
    image_stream.Position := 0;
    ImageEnVect1.Clear;
    ImageEnVect1.RemoveAllObjects;
    ImageEnVect1.LoadFromStreamIEV(image_stream);
    ImageEnVect1.MouseInteractVt := ImageEnVect1.MouseInteractVt + [miObjectSelect];
    ImageEnVect1.FitToHeight;
    ImageEnVect1.Update;
    ImageEnVect1.UnLockUpdate;
  finally
    image_stream.Free;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmCompareWindow2.ImageEnView1DblClick(Sender: TObject);
var
  new_idx, idx, hobj, sWidth, sHeight : Integer;
  mStream : TMemoryStream;
  imgWidth, imgHeight, nWidth, iStart : Integer;
  i, cnt : Integer;
begin
  mStream := TMemoryStream.Create;
  try
    with ImageEnVect1 do begin
      sWidth := IEBitmap.Width; // div 2;
      sHeight := IEBitmap.Height; // div 2;
      imgWidth := ImageEnView1.IEBitmap.Width;
      imgHeight := ImageEnView1.IEBitmap.Height;;
      if imgHeight > ImageEnVect1.IEBitmap.Height then
        ImageEnVect1.IEBitmap.Allocate(imgWidth * 5, imgHeight);

      ImageEnView1.IO.SaveToStreamJpeg(mStream);
      mStream.Position := 0;

      iStart := 1;
      cnt := ImageEnVect1.ObjectsCount;
      for i := 0 to cnt - 1 do begin
        nWidth := ImageEnVect1.ObjWidth[i];
        iStart := iStart + nWidth + 1;
      end;
      SetObjBitmapFromStream(IEV_NEXT_INSERTED_OBJECT, mStream);
      ObjKind[IEV_NEXT_INSERTED_OBJECT] := iekBITMAP;
      ObjLeft[IEV_NEXT_INSERTED_OBJECT] := iStart;
      ObjTop[IEV_NEXT_INSERTED_OBJECT] := 0;
      ObjWidth[IEV_NEXT_INSERTED_OBJECT] := imgWidth;
      ObjHeight[IEV_NEXT_INSERTED_OBJECT] := imgHeight;
      new_idx := AddNewObject;
      ImageEnVect1.UnSelAllObjects;
      AddSelObject(new_idx);
      MouseInteractVt := MouseInteractVt + [miObjectSelect];
    end;
    ImageEnVect1.FitToHeight;
  finally
    mStream.Free;
  end;
end;

initialization RegisterClasses([TfmCompareWindow2]);

end.
