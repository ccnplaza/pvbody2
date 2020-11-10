unit uCommonLogic;

interface
uses
    Windows, Classes, DB, ADODB, SysUtils, Forms, Graphics, ExtCtrls,
    Registry, Dialogs, Controls, DBCtrls, iemview, cxGridDBTableView,
    DBClient, IdHashMessageDigest, idHash, ievect, Uni, InterBaseUniProvider,
    DateUtils, Types, Messages, cxGridDBBandedTableView;

procedure LockControl(c: TWinControl; lock: boolean);
function GetFileVersion(szFullPath: pChar): String;
function GetUniqInt64: Int64;
function CreateUniqTimeString : string;
procedure SavePosition(var DataGrid : TcxGridDBTableView); overload;
procedure GotoPosition(var DataGrid : TcxGridDBTableView); overload;
procedure SavePosition(var DataGrid : TcxGridDBBandedTableView); overload;
procedure GotoPosition(var DataGrid : TcxGridDBBandedTableView); overload;
function CompareApplicationVersion(lVersion, sVersion : string) : Integer;


implementation
uses GlobalVar;

function GetUniqInt64: Int64;
var
  ST: SystemTime;
  DT: TDateTime;
begin
  GetSystemTime(ST);
  DT := EncodeDate(ST.wYear, ST.wMonth, ST.wDay) +
        EncodeTime(ST.wHour, ST.wMinute, ST.wSecond, ST.wMilliseconds);
  Result := MilliSecondsBetween(DT, UnixDateDelta);
end;

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

function CreateUniqTimeString : string;
begin
  result := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

procedure SavePosition(var DataGrid : TcxGridDBTableView);
begin
  TopRowIndex := DataGrid.Controller.TopRowIndex;
  DataGrid.DataController.SaveBookmark;
end;

procedure GotoPosition(var DataGrid : TcxGridDBTableView);
begin
  DataGrid.Controller.TopRowIndex := TopRowIndex;
  if DataGrid.DataController.IsBookmarkAvailable then
    DataGrid.DataController.GotoBookmark
  else
    DataGrid.DataController.GotoLast;
end;

procedure SavePosition(var DataGrid : TcxGridDBBandedTableView);
begin
  TopRowIndex := DataGrid.Controller.TopRowIndex;
  DataGrid.DataController.SaveBookmark;
end;

procedure GotoPosition(var DataGrid : TcxGridDBBandedTableView);
begin
  DataGrid.Controller.TopRowIndex := TopRowIndex;
  DataGrid.DataController.GotoBookmark;
end;

function CompareApplicationVersion(lVersion, sVersion : string) : Integer;
var
  l_version, s_version : TStringList;
  i : Integer;
  chk_val : array[0..3] of Integer;
begin
  l_version := TStringList.Create;
  s_version := TStringList.Create;
  try
    ExtractStrings(['.'],[], PWideChar(lVersion), l_version);
    ExtractStrings(['.'],[], PWideChar(sVersion), s_version);
    for i := 0 to 3 do
      if StrToInt(l_version[i]) >= StrToInt(s_version[i]) then chk_val[i] := 0 else chk_val[i] := 1;

    Result := chk_val[0] + chk_val[1] + chk_val[2] + chk_val[3];
  finally
    l_version.Free;
    s_version.Free;
  end;
end;

end.
