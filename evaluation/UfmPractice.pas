unit UfmPractice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, Uni, UniProvider, InterBaseUniProvider, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS, DBClient,
  Provider, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  ExtCtrls, ieview, imageenview, dxGDIPlusClasses, ExtDlgs, cxContainer,
  cxImage, cxDBEdit, dxSkinMetropolis, dxSkinMetropolisDark;

type
  TfmPractice = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnItemIn: TBitBtn;
    btnItemEdit: TBitBtn;
    btnItemDel: TBitBtn;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    d_PRACTICE: TDataSource;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PRACTICE_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1PRACTICE_DESCRIPT: TcxGridDBColumn;
    btnOpenImage: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel5: TPanel;
    Image1: TImage;
    cxDBImage1: TcxDBImage;
    q_PRACTICE_IMAGE: TUniQuery;
    d_PRACTICE_IMAGE: TDataSource;
    q_PRACTICE_IMAGEID: TStringField;
    q_PRACTICE_IMAGEPRACTICE_NAME: TStringField;
    q_PRACTICE_IMAGEPRACTICE_DESCRIPT: TBlobField;
    q_PRACTICE: TUniQuery;
    q_PRACTICEID: TStringField;
    q_PRACTICEPRACTICE_NAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnItemInClick(Sender: TObject);
    procedure btnItemEditClick(Sender: TObject);
    procedure btnOpenImageClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    image_id : string;
  end;

var
  fmPractice: TfmPractice;

implementation

uses GlobalVar, UdmDBCommon;

{$R *.dfm}


procedure TfmPractice.btnOpenImageClick(Sender: TObject);
var
  fname : string;
begin
  if OpenPictureDialog1.Execute then begin
    fname := OpenPictureDialog1.FileName;
    //Image1.Picture.LoadFromFile(fname);
    d_PRACTICE_IMAGE.DataSet.Edit;
    TBlobField(cxDBImage1.DataBinding.DataSource.DataSet.FieldByName('PRACTICE_DESCRIPT')).LoadFromFile(fname);
    d_PRACTICE_IMAGE.DataSet.Post;
    //cds_PRACTICE.ApplyUpdates(-1);
    d_PRACTICE.DataSet.Refresh;
  end;
end;

procedure TfmPractice.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  image_id := q_PRACTICEID.AsString;
  q_PRACTICE_IMAGE.ParamByName('id').AsString := image_id;
  q_PRACTICE_IMAGE.Active := True;
  d_PRACTICE_IMAGE.DataSet.Refresh;
end;

procedure TfmPractice.btnItemEditClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := q_PRACTICE.FieldByName('PRACTICE_NAME').AsString;
  if InputQuery('신규자료 등록', '운동이름을 입력하세요.', sValue) then begin
    q_PRACTICE.Edit;
    q_PRACTICE.FieldByName('PRACTICE_NAME').AsString := sValue;
    q_PRACTICE.Post;
    d_PRACTICE.DataSet.Refresh;
  end;
end;

procedure TfmPractice.btnItemInClick(Sender: TObject);
var
  sValue : string;
begin
  sValue := '';
  if InputQuery('신규자료 등록', '운동이름을 입력하세요.', sValue) then begin
    q_PRACTICE.Append;
    q_PRACTICE.FieldByName('ID').AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
    q_PRACTICE.FieldByName('PRACTICE_NAME').AsString := sValue;
    q_PRACTICE.Post;
    d_PRACTICE.DataSet.Refresh;
  end;
end;

procedure TfmPractice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmPractice.FormShow(Sender: TObject);
begin
  q_PRACTICE.Active := True;
  d_PRACTICE.DataSet.Refresh;
  image_id := q_PRACTICEID.AsString;
  q_PRACTICE_IMAGE.ParamByName('id').AsString := image_id;
  q_PRACTICE_IMAGE.Active := True;
  d_PRACTICE_IMAGE.DataSet.Refresh;
end;

initialization RegisterClasses([TfmPractice]);

end.
