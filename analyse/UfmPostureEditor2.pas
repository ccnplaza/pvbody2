unit UfmPostureEditor2;

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
  dxSkinValentine, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfmPostureEditor2 = class(TForm)
    CUSTOMER_IMAGE_DESCRIPT_UPD: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_INS: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_SEL: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_SELID: TIntegerField;
    CUSTOMER_IMAGE_DESCRIPT_SELID_NO: TIntegerField;
    dsCUSTOMER_IMAGE_DESCRIPT_SEL: TDataSource;
    CUSTOMER_IMAGE_COMMENT_SEL: TUniStoredProc;
    CUSTOMER_IMAGE_COMMENT_SELID: TIntegerField;
    CUSTOMER_IMAGE_COMMENT_SELIMAGE_COMMET: TStringField;
    dsCUSTOMER_IMAGE_COMMENT_SEL: TDataSource;
    CUSTOMER_IMAGE_COMMENT_UPD: TUniStoredProc;
    CUSTOMER_IMAGE_COMMENT_INS: TUniStoredProc;
    CUSTOMER_IMAGE_DESCRIPT_DEL: TUniStoredProc;
    CUSTOMER_DESCRIPT_IMAGE_IU: TUniStoredProc;
    CUSTOMER_DESCRIPT_IMAGE_SEL: TUniStoredProc;
    CUSTOMER_DESCRIPT_IMAGE_SELID: TIntegerField;
    CUSTOMER_DESCRIPT_IMAGE_SELDESCRIPT_NO: TIntegerField;
    CUSTOMER_DESCRIPT_IMAGE_SELIMAGE_ID: TStringField;
    CUSTOMER_DESCRIPT_IMAGE_SELDESC_IMAGE: TBlobField;
    CUSTOMER_DESCRIPT_IMAGE_SELDESC_DRAW: TBlobField;
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
    CUSTOMER_IMAGE_DESCRIPT_SELIMAGE_ID: TStringField;
    CUSTOMER_IMAGE_DESCRIPT_SELDESCRIPT_NAME: TStringField;
    frmImageEditor21: TfrmImageEditor2;
    procedure frmImageEditor21btnSaveDrawClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmImageEditor21ImageEnVect1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure FormResize(Sender: TObject);
    procedure frmImageEditor21btnCropClick(Sender: TObject);
    procedure frmImageEditor21btnExportImageClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IMAGE_ID : Integer;
    IMAGE_IDX : Integer;
    IMAGE_FILE_NAME : string;
    MODIFY_SAVED : Boolean;
    DRAG_ITEM_NAME : string;
    SEX_KIND : Integer;
    POS_KIND : Integer;
    SAVE_STATUS : Boolean;
    procedure SetImageIndex(idx : Integer);
  end;

var
  fmPostureEditor2: TfmPostureEditor2;

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

procedure TfmPostureEditor2.FormCreate(Sender: TObject);
begin
  Height := Screen.Height - 50;
end;

procedure TfmPostureEditor2.FormResize(Sender: TObject);
begin
//  frmImageEditor21.ImageEnView1.Width := 250;
//  frmImageEditor21.ImageEnView2.Width := 250;
end;

procedure TfmPostureEditor2.FormShow(Sender: TObject);
var
  i, r, cnt, width, height : integer;
  mem_stream, drw_stream : TMemoryStream;
  muscle_name, bone_name : string;
begin
  SAVE_STATUS := False;
  POS_KIND := 1;
  SEX_KIND := 0;
//  LockControl(frmImageEditor21, True);
  Caption := '자세분석' + ' - ' +
    IMAGE_FILE_NAME + IntToStr(IMAGE_ID);
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
//  frmImageEditor21.ImageEnVect1.AutoFit := True;
//  frmImageEditor21.ImageEnVect1.AutoStretch := True;
//  frmImageEditor21.ImageEnVect1.AutoShrink := True;
//  frmImageEditor21.ImageEnVect1.Update;
//  LockControl(frmImageEditor21,False);
end;

procedure TfmPostureEditor2.SetImageIndex(idx: Integer);
begin
  IMAGE_IDX := idx;
end;

procedure TfmPostureEditor2.frmImageEditor21btnCropClick(Sender: TObject);
begin
  frmImageEditor21.btnCropClick(Sender);
end;

procedure TfmPostureEditor2.frmImageEditor21btnExportImageClick(Sender: TObject);
begin
  frmImageEditor21.btnExportImageClick(Sender);

end;

procedure TfmPostureEditor2.frmImageEditor21btnSaveDrawClick(Sender: TObject);
var
  ImageName, IEV_Name : string;
  id : Integer;
  mStream, dStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  dStream := TMemoryStream.Create;
  frmImageEditor21.ImageEnVect1.IO.SaveToStreamJpeg(mStream);
  frmImageEditor21.ImageEnVect1.SaveToStreamIEV(dStream);
  mStream.Position := 0;
  dStream.Position := 0;

  dmDBCommon.IMAGES_UPD.ParamByName('ID').Value := CustomerImages.ImageID;
  dmDBCommon.IMAGES_UPD.ParamByName('IMAGE_DATA').LoadFromStream(mStream, ftBlob);
  dmDBCommon.IMAGES_UPD.ParamByName('DRAW_DATA').LoadFromStream(dStream, ftBlob);
  dmDBCommon.IMAGES_UPD.ExecProc;
  dmDBCommon.ds_IMAGES_SEL.DataSet.Refresh;
  mStream.Free;
  dStream.Free;
  ModalResult := mrOk;
end;

procedure TfmPostureEditor2.frmImageEditor21ImageEnVect1DragDrop(Sender,
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

end.
