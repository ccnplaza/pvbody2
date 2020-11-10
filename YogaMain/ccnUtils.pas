unit ccnUtils;

interface
  uses
    Windows, Classes, DB, SysUtils, DBCtrls, Uni, InterBaseUniProvider,
    IdHashMessageDigest, idHash, Registry, TLHelp32,
    IdSMTP, IdMessage, IdBaseComponent, IdComponent, IniFiles;

    function MD5(const text_str : string) : string;
    function GetRegistryValue(keyName, itemName: string): string;
    procedure SetRegistryValue(keyname, keyvalue : string);
    function GetFileVersion(szFullPath: pChar): String;
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


end.
