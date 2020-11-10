unit UfmWebVideoPlayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, MSHTML, Math;

type
  TfmWebVideoPlayer = class(TForm)
    wb1: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure wb1DocumentComplete(ASender: TObject; const pDisp: IDispatch;
      var URL: OleVariant);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VideoID : Integer;
  end;

var
  fmWebVideoPlayer: TfmWebVideoPlayer;
   MouHookID: THandle;
   KbdHookID: THandle;

implementation

{$R *.dfm}

function KeyProc(nCode: Integer; wParam, lParam: Longint): Longint; stdcall;
const
   ie_name = 'Internet Explorer_Server';
begin
   if (nCode < 0) then
   begin
     Result := CallNextHookEx(KbdHookID, nCode, wParam, lParam);
   end else
   begin
     case wParam of
       27 {esc}:
         begin
           Result := HC_SKIP;
           PostMessage(fmWebVideoPlayer.Handle, WM_CLOSE, 0, 0);
         end;
     else
       Result := CallNextHookEx(KbdHookID, nCode, wParam, lParam);
     end;
   end;
end;

function MouseProc(nCode: Integer; wParam, lParam: Longint): Longint; stdcall;
var
   szClassName: array[0..255] of Char;
const
   ie_name = 'Internet Explorer_Server';
begin
   if (nCode < 0) then
   begin
     Result := CallNextHookEx(MouHookID, nCode, wParam, lParam);
   end else
   begin
     case wParam of
       WM_RBUTTONDOWN, WM_RBUTTONUP:
         begin
           GetClassName(PMOUSEHOOKSTRUCT(lParam)^.HWND, szClassName, SizeOf(szClassName));
           if lstrcmp(@szClassName[0], @ie_name[1]) = 0 then
             Result := HC_SKIP
           else
             Result := CallNextHookEx(MouHookID, nCode, wParam, lParam);
         end;
     else
       Result := CallNextHookEx(MouHookID, nCode, wParam, lParam);
     end;
   end;
end;

procedure TfmWebVideoPlayer.FormCreate(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  MouHookID := SetWindowsHookEx(WH_MOUSE, MouseProc, 0, GetCurrentThreadId());
  KbdHookID := SetWindowsHookEx(WH_Keyboard, KeyProc, 0, GetCurrentThreadId());
  Screen.Cursor := crDefault;
end;

procedure TfmWebVideoPlayer.FormDestroy(Sender: TObject);
begin
  if MouHookID <> 0 then
    UnHookWindowsHookEx(MouHookID);
  if KbdHookID <> 0 then
    UnHookWindowsHookEx(KbdHookID);
end;

procedure TfmWebVideoPlayer.FormShow(Sender: TObject);
begin
  wb1.Navigate('http://210.122.36.244/yoga/videoplayer.php?id=' + IntToStr(VideoID));
end;

procedure TfmWebVideoPlayer.wb1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
  wb1.OleObject.document.body.style.overflowY := 'hidden';
  wb1.OleObject.document.body.style.overflowX := 'hidden';
end;

end.
