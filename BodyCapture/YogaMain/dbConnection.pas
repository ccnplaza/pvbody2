unit dbConnection;

interface
  uses
    Classes, DB, SysUtils, DBCtrls, Uni, InterBaseUniProvider;

    procedure ConnectServer(var conn : TUniConnection; db_path : string);

implementation

procedure ConnectServer(var conn: TUniConnection; db_path : string);
begin
  conn.Server := '210.122.7.39';
  conn.Port := 3050;
  conn.Database := 'D:\fb_data\PVBodyYoga\' + db_path + '\GOODPOSTURE.FDB';
  conn.LoginPrompt := False;
  conn.ProviderName := 'InterBase';
  conn.Password := 'masterkey';
  conn.Username := 'sysdba';
  conn.Connected := True;
end;

end.
