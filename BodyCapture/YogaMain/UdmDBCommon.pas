unit UdmDBCommon;

interface

uses
  SysUtils, Classes, UniProvider, InterBaseUniProvider, DB, DBAccess, Uni, Messages, Dialogs,
  MemDS, VirtualTable, WideStrings, DBXFirebird, SqlExpr, DBClient, Provider, iemview,
  dxmdaset, Graphics, IdHTTP, PngImage, jpeg, GIFImg, imageenview, ievect, WinInet, Windows,
  cxImageComboBox;

type
  TdmDBCommon = class(TDataModule)
    UniDBConnection: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    d_picture_data: TDataSource;
    dsCUSTOMER_IMAGE3_SEL: TDataSource;
    CUSTOMER_SEL: TUniStoredProc;
    d_CUSTOMER_SEL: TUniDataSource;
    CUSTOMER_SELUID: TStringField;
    CUSTOMER_SELCNAME: TStringField;
    CUSTOMER_SELSEX: TStringField;
    CUSTOMER_SELCTEL: TStringField;
    CUSTOMER_SELCEMAIL: TStringField;
    CUSTOMER_SELCBIGO: TStringField;
    CUSTOMER_SELREG_DATE: TDateField;
    CUSTOMER_SELJOBKIND: TStringField;
    CUSTOMER_SELHOBBY: TStringField;
    CUSTOMER_SELHOW_TO_COME: TStringField;
    CUSTOMER_SELPURPOSE: TStringField;
    CUSTOMER_SELBLOOD: TStringField;
    CUSTOMER_SELBLOOD_PRESSURE: TStringField;
    CUSTOMER_SELBODY_STATUS: TStringField;
    CUSTOMER_SELFOOD_KIND: TStringField;
    CUSTOMER_SELFOOD_HOW_MUCH: TStringField;
    CUSTOMER_SELFOOD_HOW_OFTEN: TStringField;
    CUSTOMER_BASIC_SEL: TUniStoredProc;
    d_CUSTOMER_BASIC_SEL: TUniDataSource;
    CUSTOMER_BASIC_SELUID: TStringField;
    CUSTOMER_BASIC_SELCNAME: TStringField;
    CUSTOMER_BASIC_SELSEX: TStringField;
    CUSTOMER_BASIC_SELCTEL: TStringField;
    CUSTOMER_BASIC_SELCEMAIL: TStringField;
    CUSTOMER_BASIC_SELREG_DATE: TDateField;
    CUSTOMER_BASIC_SELJOBKIND: TStringField;
    CUSTOMER_TEL_SEL: TUniStoredProc;
    d_CUSTOMER_TEL_SEL: TUniDataSource;
    CUSTOMER_SEL_LOOK: TUniStoredProc;
    d_CUSTOMER_SEL_LOOK: TUniDataSource;
    CUSTOMER_SEL_LOOKUID: TStringField;
    CUSTOMER_SEL_LOOKCNAME: TStringField;
    CUSTOMER_SELCAGE: TStringField;
    CUSTOMER_SELHOW_TO_COME_ETC: TStringField;
    CUSTOMER_SELPURPOSE_ETC: TStringField;
    CUSTOMER_SELPURPOSE_DESC: TStringField;
    dxMemConnection: TdxMemData;
    dxMemConnections_addr: TStringField;
    dxMemConnections_ports: TIntegerField;
    dxMemConnections_db: TStringField;
    dxMemConnections_provider: TStringField;
    dxMemConnections_pass: TStringField;
    dxMemConnections_uname: TStringField;
    PICTURE_DATA_SEL: TUniStoredProc;
    PICTURE_DATA_SELUID: TStringField;
    PICTURE_DATA_SELCUST_UID: TStringField;
    PICTURE_DATA_SELPICTURE_DATE: TDateField;
    PICTURE_DATA_SELPIC_CNT: TIntegerField;
    PICTURE_DATA_SELCHASU: TSmallintField;
    CUSTOMER_IMAGE3_SEL: TUniStoredProc;
    CUSTOMER_IMAGE3_SELID: TStringField;
    CUSTOMER_IMAGE3_SELCHECK_ID: TStringField;
    CUSTOMER_IMAGE3_SELCUST_UID: TStringField;
    CUSTOMER_IMAGE3_SELIMAGE_IDX: TIntegerField;
    CUSTOMER_IMAGE3_SELPICTURE_DATE: TDateTimeField;
    CUSTOMER_IMAGE3_UPD_IMAGES: TUniStoredProc;
    CUSTOMER_IMAGE3_DEL: TUniStoredProc;
    CUSTOMER_IMAGE3_INS: TUniStoredProc;
    PICTURE_DATA_UPD_COUNT: TUniStoredProc;
    NCUSTOMER_DRAW_SEL: TUniStoredProc;
    NCUSTOMER_DRAW_SELDRAW_DATA: TBlobField;
    NCUSTOMER_DRAW_UPD: TUniStoredProc;
    ds_NCUSTOMER_DRAW_SEL: TDataSource;
    CUSTOMER_IMAGE3_SELIMAGE_DATA: TBlobField;
    CUSTOMER_IMAGE3_SELDRAW_DATA: TBlobField;
    CUSTOMER_SELECT_NAME: TUniStoredProc;
    dsCUSTOMER_SELECT_NAME: TDataSource;
    CUSTOMER_SELECT_NAMEUID: TStringField;
    CUSTOMER_SELECT_NAMECNAME: TStringField;
    CUSTOMER_SELECT_NAMESEX: TStringField;
    CUSTOMER_SELECT_NAMECTEL: TStringField;
    CUSTOMER_SELECT_NAMECEMAIL: TStringField;
    CUSTOMER_SELECT_NAMEREG_DATE: TDateField;
    CUSTOMER_SELECT_NAMEJOBKIND: TStringField;
    CUSTOMER_TEL_SELCNAME: TStringField;
    CUSTOMER_TEL_SELCTEL: TStringField;
    CUSTOMER_TEL_SELSEX: TStringField;
    CUSTOMER_TEL_SELID: TStringField;
    CUSTOMER_TEL_SELREG_DATE: TDateField;
    CUSTOMER_TEL_SELLEC_CODE: TStringField;
    CUSTOMER_TEL_SELMEMBER_UID: TStringField;
    CUSTOMER_TEL_SELSTART_DATE: TDateField;
    CUSTOMER_TEL_SELEND_DATE: TDateField;
    CUSTOMER_TEL_SELIS_DONE: TSmallintField;
    CUSTOMER_TEL_SELLOCKER_NO: TStringField;
    CUSTOMER_TEL_SELCOMPANY_ID: TStringField;
    CUSTOMER_TEL_SELL_NAME: TStringField;
    CUSTOMER_TEL_SELM_KIND: TSmallintField;
    CUSTOMER_TEL_SELLEC_MONTH: TSmallintField;
    CUSTOMER_TEL_SELUSED_CNT: TSmallintField;
    CUSTOMER_SELIS_ACTIVE: TIntegerField;
    t_center: TUniTable;
    t_centerID: TIntegerField;
    t_centerC_NAME: TStringField;
    d_center: TDataSource;
    CUSTOMER_SELECT_NAMEIS_ACTIVE: TIntegerField;
    PICTURE_DATA_INS: TUniStoredProc;
    PICTURE_DATA_DEL: TUniStoredProc;
    vtCustomerImage: TVirtualTable;
    vtCustomerImageID: TStringField;
    vtCustomerImageCHECK_ID: TStringField;
    vtCustomerImageCUST_UID: TStringField;
    vtCustomerImageIMAGE_IDX: TIntegerField;
    vtCustomerImagePICTURE_DATE: TDateTimeField;
    vtCustomerImageIMAGE_DATA: TBlobField;
    vtCustomerImageDRAW_DATA: TBlobField;
    CUSTOMER_IMAGE3_SEL_CUSTID: TUniStoredProc;
    dxMemDataLocalPicture: TdxMemData;
    dxMemDataLocalPictureID: TStringField;
    dxMemDataLocalPictureCHECK_ID: TStringField;
    dxMemDataLocalPictureCUST_UID: TStringField;
    dxMemDataLocalPictureIMAGE_IDX: TIntegerField;
    dxMemDataLocalPicturePICTURE_DATE: TSQLTimeStampField;
    dxMemDataLocalPictureIMAGE_DATA: TBlobField;
    dxMemDataLocalPictureDRAW_DATA: TBlobField;
    dxLocalPicture: TdxMemData;
    dxLocalPictureid: TStringField;
    dxLocalPicturecheck_id: TStringField;
    dxLocalPicturecust_id: TStringField;
    dxLocalPictureimage_idx: TIntegerField;
    dxLocalPicturepicture_date: TSQLTimeStampField;
    dxLocalPictureimage_data: TBlobField;
    dxLocalPicturedraw_data: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckUrl(url: string): boolean;
    procedure RetrieveMemberPicture(mem_id:string);
    procedure RetrieveThumbnailList(var ImageEnMView : TImageEnMView);
    procedure RetrieveThumbnails(var ImageEnMView : TImageEnMView);
    procedure RetrieveDrawings(var ImageEnVect: TImageEnVect; img_id: string);
    procedure SetCenter(var srcItems: TcxImageComboBox);
    procedure CreateMemberLocalPicture(mem_id: string);
    procedure SelectLocalPictureByID(check_id: string);
    procedure RetrieveLocalThumbnails(var ImageEnMView: TImageEnMView);
    procedure RetrieveLocalDrawings(var ImageEnVect: TImageEnVect; img_id: string);

  end;

var
  dmDBCommon: TdmDBCommon;

implementation

uses GlobalVar;

{$R *.dfm}

Function TdmDBCommon.CheckUrl(url:string) : boolean;
var
  hSession, hfile, hRequest: hInternet;
  dwindex,dwcodelen : dword;
  dwcode:array[1..20] of char;
  res : pchar;
begin
  if pos('http://',lowercase(url))=0 then
     url := 'http://'+url;
  Result := false;
  hSession := InternetOpen('InetURL:/1.0', INTERNET_OPEN_TYPE_PRECONFIG,nil, nil, 0);
  if assigned(hsession) then begin
    hfile := InternetOpenUrl(hsession, pchar(url), nil, 0, INTERNET_FLAG_RELOAD, 0);
    dwIndex  := 0;
    dwCodeLen := 10;
    HttpQueryInfo(hfile, HTTP_QUERY_STATUS_CODE, @dwcode, dwcodeLen, dwIndex);
    res := pchar(@dwcode);
    result:= (res ='200') or (res ='302');
    if assigned(hfile) then
      InternetCloseHandle(hfile);
    InternetCloseHandle(hsession);
  end;
end;

procedure TdmDBCommon.DataModuleCreate(Sender: TObject);
begin
  UniDBConnection.Server := '210.122.36.244';
  UniDBConnection.Port := 3050;
  UniDBConnection.Database := 'D:\fb_data\PVBodyYoga\' + LoginUserCompID + '\GOODPOSTURE.FDB';
  UniDBConnection.LoginPrompt := False;
  UniDBConnection.ProviderName := 'InterBase';
  UniDBConnection.Password := 'masterkey';
  UniDBConnection.Username := 'sysdba';
  UniDBConnection.Connected := True;

  t_center.Active := True;
  d_center.DataSet.Refresh;
  vtCustomerImage.Open;
  vtCustomerImage.Active := True;
end;

procedure TdmDBCommon.RetrieveMemberPicture(mem_id: string);
begin
  PICTURE_DATA_SEL.ParamByName('c_uid').AsString := mem_id;
  PICTURE_DATA_SEL.Active := True;
  d_picture_data.DataSet.Refresh;
  d_picture_data.DataSet.First;
  GLOVAL_CHECK_DATA_UID := PICTURE_DATA_SELUID.Value;
end;

procedure TdmDBCommon.RetrieveThumbnailList(var ImageEnMView : TImageEnMView);
begin
  GLOVAL_CHECK_DATA_UID := d_picture_data.DataSet.FieldByName('UID').AsString;
  CUSTOMER_IMAGE3_SEL.ParamByName('chk_id').AsString := GLOVAL_CHECK_DATA_UID;
  CUSTOMER_IMAGE3_SEL.Active := True;
  dsCUSTOMER_IMAGE3_SEL.DataSet.Refresh;
  RetrieveThumbnails(ImageEnMView);
end;

procedure TdmDBCommon.CreateMemberLocalPicture(mem_id : string);
var
  i, cnt : Integer;
  data_mid : string;
begin
  data_mid := dxLocalPicture.FieldByName('cust_uid').AsString;
  if mem_id <> data_mid then begin
    vtCustomerImage.Clear;
    CUSTOMER_IMAGE3_SEL_CUSTID.ParamByName('uid').Value := mem_id;
    CUSTOMER_IMAGE3_SEL_CUSTID.Active := True;
    CUSTOMER_IMAGE3_SEL_CUSTID.Refresh;
    vtCustomerImage.Assign(CUSTOMER_IMAGE3_SEL_CUSTID);
    vtCustomerImage.Active := True;
    vtCustomerImage.Refresh;
  end;
end;

procedure TdmDBCommon.SelectLocalPictureByID(check_id : string);
begin
  vtCustomerImage.Filter := 'check_id = "' + check_id + '"';
  vtCustomerImage.Filtered := True;
end;

procedure TdmDBCommon.RetrieveThumbnails(var ImageEnMView : TImageEnMView);
var
  i, r, cnt : integer;
  img_id : string;
  mem_stream : TMemoryStream;
begin
  try
    ImageEnMView.Clear;
    cnt := dsCUSTOMER_IMAGE3_SEL.DataSet.RecordCount;

    if cnt < 1 then Exit;
    dsCUSTOMER_IMAGE3_SEL.DataSet.First;
    for i := 0 to cnt - 1 do begin
      mem_stream := TMemoryStream.Create;
      img_id := dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('id').AsString;
      TBlobField(dsCUSTOMER_IMAGE3_SEL.DataSet.FieldByName('image_data')).SaveToStream(mem_stream);
      if mem_stream.Size > 0 then begin
        mem_stream.Position := 0;
        r := ImageEnMView.AppendImage;
        //ImageEnMView.ImageTopText[r].Caption := '사진[' + IntToStr(r+1) + ']';
        ImageEnMView.SetImageFromStream(r, mem_stream, 0);
        ImageEnMView.ImageFileName[r] := img_id;
      end;
      mem_stream.Free;
      dsCUSTOMER_IMAGE3_SEL.DataSet.Next;
    end;
  finally
    ImageEnMView.Update;
    ImageEnMView.SelectedImage := 0;
  end;
end;

procedure TdmDBCommon.RetrieveLocalThumbnails(var ImageEnMView : TImageEnMView);
var
  i, r, cnt : integer;
  img_id : string;
  mem_stream : TMemoryStream;
begin
  try
    ImageEnMView.Clear;
    cnt := vtCustomerImage.RecordCount;

    if cnt < 1 then Exit;
    vtCustomerImage.First;
    for i := 0 to cnt - 1 do begin
      mem_stream := TMemoryStream.Create;
      img_id := vtCustomerImage.FieldByName('ID').AsString;
      TBlobField(vtCustomerImage.FieldByName('IMAGE_DATA')).SaveToStream(mem_stream);
      if mem_stream.Size > 0 then begin
        mem_stream.Position := 0;
        r := ImageEnMView.AppendImage;
        //ImageEnMView.ImageTopText[r].Caption := '사진[' + IntToStr(r+1) + ']';
        ImageEnMView.SetImageFromStream(r, mem_stream, 0);
        ImageEnMView.ImageFileName[r] := img_id;
      end;
      mem_stream.Free;
      vtCustomerImage.Next;
    end;
  finally
    ImageEnMView.Update;
    ImageEnMView.SelectedImage := 0;
  end;
end;

procedure TdmDBCommon.RetrieveLocalDrawings(var ImageEnVect : TImageEnVect; img_id : string);
var
  draw_stream : TMemoryStream;
begin
  vtCustomerImage.Locate('ID', img_id, []);
  try
    draw_stream := TMemoryStream.Create;
    TBlobField(vtCustomerImage.FieldByName('draw_data')).SaveToStream(draw_stream);
    draw_stream.Position := 0;
    ImageEnVect.LoadFromStreamIEV(draw_stream);
  finally
    draw_stream.Free;
  end;
end;

procedure TdmDBCommon.RetrieveDrawings(var ImageEnVect : TImageEnVect; img_id : string);
var
  draw_stream : TMemoryStream;
begin
  NCUSTOMER_DRAW_SEL.ParamByName('chk_id').Value := img_id;
  NCUSTOMER_DRAW_SEL.Active := True;
  ds_NCUSTOMER_DRAW_SEL.DataSet.Refresh;
  if NCUSTOMER_DRAW_SEL.RecordCount > 0 then begin
    try
      draw_stream := TMemoryStream.Create;
      NCUSTOMER_DRAW_SELDRAW_DATA.SaveToStream(draw_stream);
      draw_stream.Position := 0;
      ImageEnVect.LoadFromStreamIEV(draw_stream);
    finally
      draw_stream.Free;
    end;
  end;
end;

procedure TdmDBCommon.SetCenter(var srcItems: TcxImageComboBox);
var
  Items : TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
  i, cnt : Integer;
begin
  Items := srcItems.Properties.Items;
  Items.BeginUpdate;
  Item := Items.Add as TcxImageComboBoxItem;
  Item.Description := '전체';
  Item.Value := 0;
  cnt := t_center.RecordCount;
  t_center.First;
  for i := 0 to cnt - 1 do begin
    Item := Items.Add as TcxImageComboBoxItem;
    Item.Description  := t_centerC_NAME.Value;
    Item.Value        := t_centerID.Value;
    t_center.Next;
  end;
  Items.EndUpdate;
  srcItems.ItemIndex := 0;
end;


end.
