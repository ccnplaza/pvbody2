unit UfmPostureEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmImageEditor2, DB, MemDS, DBAccess, Uni, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinsDefaultPainters, dxSkinVS2010,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxDBLookupComboBox, StdCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, ieview, imageenview, ievect, Menus,
  ComCtrls, dxtree, dxdbtree, cxButtons, ImgList, Math, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue, hyieutils, iexBitmaps,
  hyiedefs, iesettings, iexLayers, iexRulers, iexToolbars;

type
  TfmPostureEditor = class(TForm)
    CUSTOMER_IMAGE_DESCRIPT_UPD: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_INS: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_SEL: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_SELID: TIntegerField;
    CUSTOMER_IMAGE_DESCRIPT_SELID_NO: TIntegerField;
    dsCUSTOMER_IMAGE_DESCRIPT_SEL: TDataSource;
    PanelComment: TPanel;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    gridDescript: TcxGridDBTableView;
    gridDescriptID: TcxGridDBColumn;
    gridDescriptID_NO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    pnlBottom: TPanel;
    CUSTOMER_IMAGE_COMMENT_SEL: TUniStoredProc;
    CUSTOMER_IMAGE_COMMENT_SELID: TIntegerField;
    CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET: TStringField;
    dsCUSTOMER_IMAGE_COMMENT_SEL: TDataSource;
    CUSTOMER_IMAGE_COMMENT_UPD: TUniStoredProc;
    CUSTOMER_IMAGE_COMMENT_INS: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_DEL: TUniStoredProc;
    Panel1: TPanel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnCopySelect: TBitBtn;
    btnComments: TBitBtn;
    ImageEnVect1: TImageEnVect;
    CUSTOMER_DESCRIPT_IMAGE_IU: TUniStoredProc;
    CUSTOMER_DESCRIPT_IMAGE_SEL: TUniStoredProc;
    CUSTOMER_DESCRIPT_IMAGE_SELID: TIntegerField;
    CUSTOMER_DESCRIPT_IMAGE_SELDESCRIPT_NO: TIntegerField;
    CUSTOMER_DESCRIPT_IMAGE_SELIMAGE_ID: TStringField;
    CUSTOMER_DESCRIPT_IMAGE_SELDESC_IMAGE: TBlobField;
    CUSTOMER_DESCRIPT_IMAGE_SELDESC_DRAW: TBlobField;
    btnCopyObject: TBitBtn;
    q_check_item_tree: TUniQuery;
    q_check_item_treeID: TIntegerField;
    q_check_item_treePARENT_ID: TIntegerField;
    q_check_item_treeIMAGE_ID: TIntegerField;
    q_check_item_treeITEM_NAME: TStringField;
    q_check_item_treeBODY_ID: TIntegerField;
    q_check_item_treeRESULT_ID: TIntegerField;
    q_check_item_treeHOWTO_IMAGE: TSmallintField;
    q_check_item_treeVIDEO_ID: TStringField;
    d_check_item_tree: TDataSource;
    cxImageList1: TcxImageList;
    Panel3: TPanel;
    Panel7: TPanel;
    btnViewPos: TBitBtn;
    ItemTreeView: TdxDBTreeView;
    Label2: TLabel;
    CUSTOMER_IMAGE_DESCRIPT_SELIMAGE_ID: TStringField;
    CUSTOMER_IMAGE_DESCRIPT_SELDESCRIPT_NAME: TStringField;
    gridDescriptIMAGE_ID: TcxGridDBColumn;
    gridDescriptDESCRIPT_NAME: TcxGridDBColumn;
    frmImageEditor21: TfrmImageEditor2;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure frmImageEditor21btnSaveDrawClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCommentsClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnCopySelectClick(Sender: TObject);
    procedure gridDescriptCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCopyObjectClick(Sender: TObject);
    procedure btnViewPosClick(Sender: TObject);
    procedure ItemTreeViewStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure gridDescriptDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gridDescriptDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure frmImageEditor21ImageEnVect1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure gridDescriptStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure frmImageEditor21btnCropClick(Sender: TObject);
    procedure frmImageEditor21btnExportImageClick(Sender: TObject);
  private
    procedure RetrieveImageDescript;
    procedure ShowDescriptImage;
    { Private declarations }
  public
    { Public declarations }
    IMAGE_ID : string;
    IMAGE_FILE_NAME : string;
    MODIFY_SAVED : Boolean;
    DRAG_ITEM_NAME : string;
    SEX_KIND : Integer;
    POS_KIND : Integer;
    SAVE_STATUS : Boolean;
  end;

var
  fmPostureEditor: TfmPostureEditor;

implementation

uses UdmDBCommon, UfmImageDescEdit, UfmComments, UfmHowToSingle, GlobalVar;

{$R *.dfm}

procedure LockControl(c: TWinControl; lock: boolean);
begin
  if (c=nil) or (c.Handle=0) then exit;
  if lock then SendMessage(c.Handle,WM_SETREDRAW,0,0)
  else begin
    SendMessage(c.Handle,WM_SETREDRAW,1,0);
    RedrawWindow(c.Handle,nil,0,
        RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;

procedure TfmPostureEditor.BitBtn1Click(Sender: TObject);
begin
  if (Sender as TBitBtn).Caption = '<' then begin
    Panel3.Width := (Sender as TBitBtn).Width + 2;
    (Sender as TBitBtn).Caption := '>';
  end else begin
    Panel3.Width := 225;
    (Sender as TBitBtn).Caption := '<';
  end;
end;

procedure TfmPostureEditor.BitBtn2Click(Sender: TObject);
begin
  if (Sender as TBitBtn).Caption = '<' then begin
    PanelComment.Width := (Sender as TBitBtn).Width + 2;
    (Sender as TBitBtn).Caption := '>';
  end else begin
    PanelComment.Width := 225;
    (Sender as TBitBtn).Caption := '<';
  end;
end;

procedure TfmPostureEditor.btnAddClick(Sender: TObject);
var
  idno : Integer;
begin
  fmImageDescEdit := TfmImageDescEdit.Create(Self);
  try
    idno := gridDescript.DataController.RecordCount + 1;
    fmImageDescEdit.edtNo.Text := IntToStr(idno);
    fmImageDescEdit.ShowModal;
    if fmImageDescEdit.ModalResult = mrOk then begin
      CUSTOMER_IMAGE_DESCRIPT_INS.ParamByName('IMAGE_ID').Value := IMAGE_ID;
      CUSTOMER_IMAGE_DESCRIPT_INS.ParamByName('ID_NO').Value := StrToInt(fmImageDescEdit.edtNo.Text);
      CUSTOMER_IMAGE_DESCRIPT_INS.ParamByName('DESCRIPT_NAME').Value := fmImageDescEdit.edtDesc.EditValue;
      CUSTOMER_IMAGE_DESCRIPT_INS.ExecProc;
      dsCUSTOMER_IMAGE_DESCRIPT_SEL.DataSet.Refresh;
    end;
  finally
    fmImageDescEdit.Free;
  end;
end;

procedure TfmPostureEditor.btnCommentsClick(Sender: TObject);
var
  cnt : Integer;
  comment_id : Integer;
begin
  fmComments := TfmComments.Create(Self);
  try
    CUSTOMER_IMAGE_COMMENT_SEL.ParamByName('IMAGE_ID').Value := IMAGE_ID;
    CUSTOMER_IMAGE_COMMENT_SEL.Active := True;
    dsCUSTOMER_IMAGE_COMMENT_SEL.DataSet.Refresh;
    comment_id := CUSTOMER_IMAGE_COMMENT_SELID.Value;
    if comment_id > 0 then begin
      fmComments.Memo1.Text := CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET.Value;
    end else begin
      fmComments.Memo1.Text := '';
    end;
    fmComments.ShowModal;
    if fmComments.ModalResult = mrOk then begin
      if comment_id > 0 then begin //edit...
        CUSTOMER_IMAGE_COMMENT_UPD.ParamByName('ID').Value := comment_id;
        CUSTOMER_IMAGE_COMMENT_UPD.ParamByName('IMAGE_COMMET').Value := fmComments.Memo1.Text;
        CUSTOMER_IMAGE_COMMENT_UPD.ExecProc;
      end else begin   //insert...
        CUSTOMER_IMAGE_COMMENT_INS.ParamByName('IMAGE_ID').Value := IMAGE_ID;
        CUSTOMER_IMAGE_COMMENT_INS.ParamByName('IMAGE_COMMET').Value := fmComments.Memo1.Text;
        CUSTOMER_IMAGE_COMMENT_INS.ExecProc;
      end;
    end;
  finally
    fmComments.Free;
  end;
end;

procedure TfmPostureEditor.btnCopyObjectClick(Sender: TObject);
var
  hobj : Integer;
  mem_stream, drw_stream : TMemoryStream;
begin
  mem_stream := TMemoryStream.Create;
  drw_stream := TMemoryStream.Create;
  try
    if (frmImageEditor21.ImageEnVect1.SelObjectsCount > 0)then begin
      frmImageEditor21.ImageEnVect1.CopySelectedObjectsTo(ImageEnVect1);
      ImageEnVect1.Update;
      ImageEnVect1.IO.SaveToStreamJpeg(mem_stream);
      ImageEnVect1.SaveToStreamIEV(drw_stream, -3);
      mem_stream.Position := 0;
      drw_stream.Position := 0;
      //member table picture update
      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('DESC_NO').Value := gridDescriptID.EditValue;
      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('IMAGE_ID').Value := IMAGE_ID;
      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('DESC_IMAGE').LoadFromStream(mem_stream, ftBlob);
      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('DESC_DRAW').LoadFromStream(drw_stream, ftBlob);
      CUSTOMER_DESCRIPT_IMAGE_IU.ExecProc;
    end;
  finally
    mem_stream.Free;
    drw_stream.Free;
  end;
end;

procedure TfmPostureEditor.btnCopySelectClick(Sender: TObject);
var
  cnt : Integer;
  mem_stream, drw_stream : TMemoryStream;
begin
  mem_stream := TMemoryStream.Create;
  drw_stream := TMemoryStream.Create;
  try
    if (frmImageEditor21.ImageEnVect1.IEBitmap.IsEmpty = False) then begin
      //copy selected area copy
      cnt := frmImageEditor21.ImageEnVect1.SelObjectsCount;
      //ShowMessage(IntToStr(cnt));
      frmImageEditor21.ImageEnVect1.CopySelectedObjectsTo(ImageEnVect1);

      frmImageEditor21.ImageEnVect1.Proc.SelCopyToClip(True);
      ImageEnVect1.Proc.SelPasteFromClip(True);
      ImageEnVect1.Update;
      //save image to database
      ImageEnVect1.IO.SaveToStreamJpeg(mem_stream);
      ImageEnVect1.SaveToStreamIEV(drw_stream, -3);
      mem_stream.Position := 0;
      drw_stream.Position := 0;

      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('DESC_NO').Value := gridDescriptID.EditValue;
      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('IMAGE_ID').Value := IMAGE_ID;
      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('DESC_IMAGE').LoadFromStream(mem_stream, ftBlob);
      CUSTOMER_DESCRIPT_IMAGE_IU.ParamByName('DESC_DRAW').LoadFromStream(drw_stream, ftBlob);
      CUSTOMER_DESCRIPT_IMAGE_IU.ExecProc;
    end;
  finally
    mem_stream.Free;
    drw_stream.Free;
  end;
end;

procedure TfmPostureEditor.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 자료는 되살릴 수 없습니다.'
    + #13#10 + '삭제전에 반드시 확인하세요.', '자료삭제', MB_OKCANCEL) = IDOK then
  begin
    CUSTOMER_IMAGE_DESCRIPT_DEL.ParamByName('ID').Value := gridDescriptID.EditValue;
    CUSTOMER_IMAGE_DESCRIPT_DEL.ExecProc;
    dsCUSTOMER_IMAGE_DESCRIPT_SEL.DataSet.Refresh;
    ShowDescriptImage;
  end;
end;

procedure TfmPostureEditor.btnEditClick(Sender: TObject);
var
  idno : Integer;
begin
  fmImageDescEdit := TfmImageDescEdit.Create(Self);
  try
    idno := gridDescriptID_NO.EditValue;
    fmImageDescEdit.edtNo.Text := IntToStr(idno);
    fmImageDescEdit.edtDesc.EditValue := gridDescriptDESCRIPT_NAME.EditValue;
    fmImageDescEdit.ShowModal;
    if fmImageDescEdit.ModalResult = mrOk then begin
      CUSTOMER_IMAGE_DESCRIPT_UPD.ParamByName('ID').Value := gridDescriptID.EditValue;
      CUSTOMER_IMAGE_DESCRIPT_UPD.ParamByName('ID_NO').Value := StrToInt(fmImageDescEdit.edtNo.Text);
      CUSTOMER_IMAGE_DESCRIPT_UPD.ParamByName('DESCRIPT_NAME').Value := fmImageDescEdit.edtDesc.EditValue;
      CUSTOMER_IMAGE_DESCRIPT_UPD.ExecProc;
      dsCUSTOMER_IMAGE_DESCRIPT_SEL.DataSet.Refresh;
    end;
  finally
    fmImageDescEdit.Free;
  end;
end;

procedure TfmPostureEditor.btnViewPosClick(Sender: TObject);
var
  citem : string;
  c_id : Integer;
begin
  citem := q_CHECK_ITEM_TREEITEM_NAME.Value;
  c_id := q_check_item_treeHOWTO_IMAGE.Value;
  if c_id > 0 then begin
    fmHowToSingle := TfmHowToSingle.Create(Self);
    try
      fmHowToSingle.Caption := '측정방법 - ' + citem;
      fmHowToSingle.ImageID := c_id;
      fmHowToSingle.ShowModal;
    finally
      fmHowToSingle.Free;
    end;
  end;
end;

procedure TfmPostureEditor.FormResize(Sender: TObject);
begin
//  frmImageEditor21.ImageEnView1.Width := 250;
//  frmImageEditor21.ImageEnView2.Width := 250;
end;

procedure TfmPostureEditor.FormShow(Sender: TObject);
var
  i, r, cnt, width, height : integer;
  mem_stream, drw_stream : TMemoryStream;
  muscle_name, bone_name : string;
begin
  SAVE_STATUS := False;
  LockControl(frmImageEditor21, True);
  Caption := '자세분석' + ' - ' + IMAGE_ID;
//  if SEX_KIND = 0 then begin
//    case POS_KIND of
//      1: begin
//        muscle_name := 'male_front.jpg';
//        bone_name := 'bone_front.jpg';
//      end;
//      2: begin
//        muscle_name := 'male_side.jpg';
//        bone_name := 'bone_side.jpg';
//      end;
//      3: begin
//        muscle_name := 'male_side.jpg';
//        bone_name := 'bone_side.jpg';
//      end;
//      4, 5: begin
//        muscle_name := 'male_back.jpg';
//        bone_name := 'bone_back.jpg';
//      end;
//    end;
//  end else begin
//    case POS_KIND of
//      1: begin
//        muscle_name := 'female_front.jpg';
//        bone_name := 'bone_front.jpg';
//      end;
//      2: begin
//        muscle_name := 'female_side.jpg';
//        bone_name := 'bone_side.jpg';
//      end;
//      3: begin
//        muscle_name := 'female_side.jpg';
//        bone_name := 'bone_side.jpg';
//      end;
//      4, 5: begin
//        muscle_name := 'female_back.jpg';
//        bone_name := 'bone_back.jpg';
//      end;
//    end;
//  end;
//  frmImageEditor21.ImageEnView1.IO.LoadFromURL('http://bodycheck.co.kr/images/' + muscle_name);
//  frmImageEditor21.ImageEnView2.IO.LoadFromURL('http://bodycheck.co.kr/images/' + bone_name);
  q_CHECK_ITEM_TREE.Active := True;
  d_CHECK_ITEM_TREE.DataSet.Refresh;
  //frmImageEditor21.OpenImageByID(IMAGE_ID);
  RetrieveImageDescript;
  LockControl(frmImageEditor21,False);
end;

procedure TfmPostureEditor.RetrieveImageDescript;
begin
  CUSTOMER_IMAGE_DESCRIPT_SEL.ParamByName('IMG_ID').Value := IMAGE_ID;
  CUSTOMER_IMAGE_DESCRIPT_SEL.Active := True;
  dsCUSTOMER_IMAGE_DESCRIPT_SEL.DataSet.Refresh;
end;

procedure TfmPostureEditor.frmImageEditor21btnCropClick(Sender: TObject);
begin
  frmImageEditor21.btnCropClick(Sender);
end;

procedure TfmPostureEditor.frmImageEditor21btnExportImageClick(Sender: TObject);
begin
  frmImageEditor21.btnExportImageClick(Sender);

end;

procedure TfmPostureEditor.frmImageEditor21btnSaveDrawClick(Sender: TObject);
var
  ImageName : string;
  mStream : TMemoryStream;
begin
//  ImageName := gsLocalImageFolder + '\' + IMAGE_FILE_NAME;
//  frmImageEditor21.ImageEnVect1.IO.SaveToFileJpeg(ImageName);
//  if frmImageEditor21.DRAW_CHANGED = True then begin
//    mStream := TMemoryStream.Create;
//    try
//      frmImageEditor21.ImageEnVect1.SaveToStreamIEV(mStream);
//      mStream.Position := 0;
//      dmDBCommon.CUSTOMER_IMAGE_UPD_DRAW.ParamByName('ID').Value := dmDBCommon.CUSTOMER_IMAGE_SELID.Value;
//      dmDBCommon.CUSTOMER_IMAGE_UPD_DRAW.ParamByName('FIELD_ID').Value := POS_KIND;
//      dmDBCommon.CUSTOMER_IMAGE_UPD_DRAW.ParamByName('DRAW_IMAGE').LoadFromStream(mStream, ftBlob);
//      dmDBCommon.CUSTOMER_IMAGE_UPD_DRAW.ExecProc;
//    finally
//      mStream.Free;
//    end;
//
//  end;
//
//  SAVE_STATUS := True;
//  ModalResult := mrOk;
end;

procedure TfmPostureEditor.frmImageEditor21ImageEnVect1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  str_val : string;
  rec_idx, col_idx, hobj, top, left : Integer;
  img_height : Integer;
begin
  hobj := frmImageEditor21.ImageEnVect1.AddNewObject;
  frmImageEditor21.ImageEnVect1.ObjKind[hobj] := iekTEXT;
  frmImageEditor21.ImageEnVect1.ObjName[hobj] := 'txt_body';
  frmImageEditor21.ImageEnVect1.ObjText[hobj] := DRAG_ITEM_NAME;
  frmImageEditor21.ImageEnVect1.ObjPenWidth[hobj] := 1;
  frmImageEditor21.ImageEnVect1.ObjLeft[hobj] := frmImageEditor21.ImageEnVect1.XScr2Bmp(X);
  frmImageEditor21.ImageEnVect1.ObjTop[hobj] := frmImageEditor21.ImageEnVect1.YScr2Bmp(Y);
  frmImageEditor21.ImageEnVect1.ObjPenStyle[hobj] := psClear;
  frmImageEditor21.ImageEnVect1.SetObjFont(hobj, frmImageEditor21.dlgFont1.Font);
  frmImageEditor21.ImageEnVect1.ObjTextAutoSize[hobj] := True;
  frmImageEditor21.ImageEnVect1.StretchTextRect(hobj);

  frmImageEditor21.colorLinePropertiesChange(self);
  frmImageEditor21.ImageEnVect1.UnSelAllObjects;
  frmImageEditor21.ImageEnVect1.AddSelObject(hobj);
end;

procedure TfmPostureEditor.gridDescriptCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ShowDescriptImage;
end;

procedure TfmPostureEditor.ShowDescriptImage;
var
  m_stream, d_stream : TMemoryStream;
begin
  m_stream := TMemoryStream.Create;
  d_stream := TMemoryStream.Create;
  try
    CUSTOMER_DESCRIPT_IMAGE_SEL.ParamByName('DESC_NO').Value := gridDescriptID.EditValue;
    CUSTOMER_DESCRIPT_IMAGE_SEL.Active := True;
    CUSTOMER_DESCRIPT_IMAGE_SEL.Refresh;
    CUSTOMER_DESCRIPT_IMAGE_SELDESC_IMAGE.SaveToStream(m_stream);
    CUSTOMER_DESCRIPT_IMAGE_SELDESC_IMAGE.SaveToStream(d_stream);
    m_stream.Position := 0;
    d_stream.Position := 0;

    ImageEnVect1.Clear;
    ImageEnVect1.RemoveAllObjects;
    ImageEnVect1.IO.LoadFromStreamJpeg(m_stream);
    ImageEnVect1.LoadFromStreamIEV(d_stream, false);
    ImageEnVect1.Update;
  finally
    m_stream.Free;
    d_stream.Free;
  end;
end;

procedure TfmPostureEditor.gridDescriptDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  idno : Integer;
begin
  idno := gridDescript.DataController.RecordCount + 1;
  CUSTOMER_IMAGE_DESCRIPT_INS.ParamByName('IMAGE_ID').Value := IMAGE_ID;
  CUSTOMER_IMAGE_DESCRIPT_INS.ParamByName('ID_NO').Value := idno;
  CUSTOMER_IMAGE_DESCRIPT_INS.ParamByName('DESCRIPT_NAME').Value := DRAG_ITEM_NAME;
  CUSTOMER_IMAGE_DESCRIPT_INS.ExecProc;
  dsCUSTOMER_IMAGE_DESCRIPT_SEL.DataSet.Refresh;
end;

procedure TfmPostureEditor.gridDescriptDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
//  Accept := (Source is TcxDragControlObject);
end;

procedure TfmPostureEditor.gridDescriptStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  GDragText := CUSTOMER_IMAGE_DESCRIPT_SELDESCRIPT_NAME.Value;
  GDragObject := 2;
end;

procedure TfmPostureEditor.ItemTreeViewStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  GDragText := q_check_item_treeITEM_NAME.Value;
  GDragObject := 2;
end;

end.
