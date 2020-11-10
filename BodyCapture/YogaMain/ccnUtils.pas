unit ccnUtils;

interface
  uses
    Windows, Classes, DB, SysUtils, DBCtrls, Uni, InterBaseUniProvider,
    IdHashMessageDigest, idHash, Registry, TLHelp32,
    IdSMTP, IdMessage, IdBaseComponent, IdComponent, IniFiles, WebCopy;

    function MD5(const text_str : string) : string;
    function GetRegistryValue(keyName, itemName: string): string;
    procedure SetRegistryValue(keyname, keyvalue : string);
    function GetFileVersion(szFullPath: pChar): String;
    procedure UploadDrawToServer(image_id, image_name, user_compid : string);
    procedure DownloadDrawToLocal(img_id, draw_url, local_folder : string);
implementation

function MD5(const text_str : string) : string;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(text_str);
  finally
    idmd5.Free;
  end;
end;

function GetRegistryValue(keyName, itemName: string): string;
var
  Registry: TRegistry;
  regVal : string;
begin
  Registry := TRegistry.Create(KEY_READ);
  try
    Registry.RootKey := HKEY_CURRENT_USER;
    if Registry.OpenKey(keyName, False) then
      regVal := Registry.ReadString(itemName)
    else
      regVal := '';
    Result := regVal;
  finally
    Registry.Free;
  end;
end;

procedure SetRegistryValue(keyname, keyvalue : string);
var
  Registry : TRegistry;
begin
  Registry := TRegistry.Create(KEY_WRITE);
  Registry.RootKey := HKEY_CURRENT_USER;
  Registry.CreateKey(keyname);
  Registry.OpenKey(keyname,True);
  Registry.WriteString('', keyvalue);
end;

function GetFileVersion(szFullPath: pChar): String;
var
  Size, Size2: DWord;
  Pt, Pt2: Pointer;
begin
  Result := '';
  Size := GetFileVersionInfoSize(szFullPath, Size2);
  if Size > 0 then begin
    GetMem(Pt, Size);
    try
      GetFileVersionInfo(szFullPath, 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo(Pt2^) do begin
        Result := Format('%d.%d.%d.%d', [HiWord(dwFileVersionMS),
                                         LoWord(dwFileVersionMS),
                                         HiWord(dwFileVersionLS),
                                         LoWord(dwFileVersionLS)]);
      end;
    finally
      FreeMem(Pt);
    end;
  end;
end;

procedure UploadDrawToServer(image_id, image_name, user_compid : string);
var
  wp : TWebCopy;
begin
  wp := TWebCopy.Create(nil);
  try
    with wp.Items.Add do begin
      ftphost := '210.122.7.39';
      ftpuserid := 'ftp_user';
      ftppassword := '@CcnSoft!@#';
      protocol := wpFtpUpload;
      targetdir := '/posture_image/' + user_compid + '/';
      targetfilename := image_id + '.iev';
      url := image_name;
    end;
    wp.Execute;
  finally
    wp.Free;
  end;
end;

procedure DownloadDrawToLocal(img_id, draw_url, local_folder : string);
var
  WebCopy1 : TWebCopy;
begin
  WebCopy1 := TWebCopy.Create(nil);
  try
    with WebCopy1.Items.Add do begin
      FTPHost := '210.122.7.39';
      FTPUserID := 'ftp_user';
      FTPPassword := '@CcnSoft!@#';
      URL := draw_url;
      Protocol := wpFTP;
      FileDate := Date;
      CopyNewerOnly := false;
      TargetDir := local_folder;
      TargetFilename := img_id + '.iev';
    end;
    WebCopy1.Execute;
  finally
    WebCopy1.Free;
  end;
end;

end.
