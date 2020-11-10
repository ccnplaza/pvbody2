unit UfmExtractMemberPicture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, StdCtrls, MemDS,
  DBAccess, Uni;

type
  TfmExtractMemberPicture = class(TForm)
    pnl1: TPanel;
    gridList: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    UniQuery1: TUniQuery;
    ds1: TDataSource;
    UniQuery1ID: TStringField;
    UniQuery1CHECK_ID: TStringField;
    UniQuery1CUST_UID: TStringField;
    UniQuery1IMAGE_IDX: TIntegerField;
    UniQuery1PICTURE_DATE: TDateTimeField;
    gridListID: TcxGridDBColumn;
    gridListCHECK_ID: TcxGridDBColumn;
    gridListCUST_UID: TcxGridDBColumn;
    gridListIMAGE_IDX: TcxGridDBColumn;
    gridListPICTURE_DATE: TcxGridDBColumn;
    edtID: TEdit;
    btn1: TButton;
    btn2: TButton;
    UniQuery2: TUniQuery;
    StringField1: TStringField;
    BlobField1: TBlobField;
    ds2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmExtractMemberPicture: TfmExtractMemberPicture;

implementation

uses UdmDBCommon;

{$R *.dfm}

procedure TfmExtractMemberPicture.btn1Click(Sender: TObject);
begin
  UniQuery1.ParamByName('id').Value := edtID.Text;
  UniQuery1.Active := True;
  ds1.DataSet.Refresh;
end;

procedure TfmExtractMemberPicture.btn2Click(Sender: TObject);
var
  fname, img_id : string;
  i, cnt : integer;
  memStream : TMemoryStream;
begin
  cnt := gridList.DataController.RecordCount;
  gridList.DataController.GotoFirst;
  for i := 0 to cnt - 1 do begin
    UniQuery2.ParamByName('id').Value := UniQuery1ID.Value;
    UniQuery2.Active := True;
    ds2.DataSet.Refresh;

    fname := 'd:\pvimage\' + UniQuery1ID.Value + '.jpg';
    memStream := TMemoryStream.Create;
    TBlobField(ds2.DataSet.FieldByName('IMAGE_DATA')).SaveToStream(memStream);
    memStream.Position := 0;
    memStream.SaveToFile(fname);
    memStream.Free;
    ShowMessage('저장완료!');
    gridList.DataController.GotoNext;
  end;
end;

procedure TfmExtractMemberPicture.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmExtractMemberPicture]);
end.
