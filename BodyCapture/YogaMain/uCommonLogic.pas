unit uCommonLogic;

interface
uses
    Windows, Classes, DB, ADODB, SysUtils, Forms, Graphics,
    Registry, Dialogs, Controls, DBCtrls, iemview,
    DBClient, IdHashMessageDigest, idHash, ievect, Uni, InterBaseUniProvider,
    DateUtils, Types, Messages;

function CreateUniqTimeString : string;


implementation

function CreateUniqTimeString : string;
begin
  result := FormatDateTime('yyyymmddhhnnsszzz', now);
end;

//procedure RetrieveThumbnail;
//var
//  i, t : Integer;
//  m : array [1..10] of TMemoryStream;
//begin
//  if fmMain.udsImage.DataSet.RecordCount > 0 then begin
//    for i := 1 to 10 do begin
//      m[i] := TMemoryStream.Create;
//    end;
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture1')).SaveToStream(m[1]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture2')).SaveToStream(m[2]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture3')).SaveToStream(m[3]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture4')).SaveToStream(m[4]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture5')).SaveToStream(m[5]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture6')).SaveToStream(m[6]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture7')).SaveToStream(m[7]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture8')).SaveToStream(m[8]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture9')).SaveToStream(m[9]);
//    TBlobField(fmMain.udsImage.DataSet.FieldByName('posture10')).SaveToStream(m[10]);
//    for i := 1 to 10 do begin
//      m[i].Position := 0;
//    end;
//    fmMain.ImageEnMView.Clear;
//    //fmMain.udsCheckResult.DataSet.First;
//    for i := 1 to 10 do begin
//      t := fmMain.ImageEnMView.AppendImage;
//      if m[i].Size > 0 then
//        fmMain.ImageEnMView.SetImageFromStream(t, m[i], 0);
//      //fmMain.udsCheckResult.DataSet.Next;
//    end;
//    fmMain.ImageEnMView.Update;
//    fmMain.ImageEnMView.SelectedImage := 0;
//  end;
//end;



end.
