unit UfmCustomerQuestion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxTextEdit, Menus, DBAccess,
  Uni, UniProvider, InterBaseUniProvider, MemDS, cxButtons, StdCtrls, Buttons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, ieview, iemview, ExtCtrls,
  hyieutils, iexBitmaps, hyiedefs, iesettings, iexLayers, iexRulers,
  iexToolbars, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White;

type
  TfmCustomerQuestion = class(TForm)
    pnlTumbnail: TPanel;
    ImageEnMView: TImageEnMView;
    Panel1: TPanel;
    pnlMember: TPanel;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    gridCheck: TcxGridDBTableView;
    gridCheckColumn1: TcxGridDBColumn;
    gridCheckUID: TcxGridDBColumn;
    gridCheckCUST_UID: TcxGridDBColumn;
    gridCheckPICTURE_DATE: TcxGridDBColumn;
    gridCheckPIC_CNT: TcxGridDBColumn;
    cxL1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    pnlName: TPanel;
    pnlNo: TPanel;
    btnSelectMember: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    btnAddQuestion: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    tblCheck_Question: TUniTable;
    tblCheck_QuestionUID: TStringField;
    tblCheck_QuestionITEM_NAME: TStringField;
    dsCheck_Question: TUniDataSource;
    t_member: TUniTable;
    t_memberUID: TStringField;
    t_memberCNAME: TStringField;
    t_memberCID: TStringField;
    t_memberSEX: TStringField;
    t_memberCTEL: TStringField;
    t_memberREG_DATE: TDateField;
    t_memberCHART_NO: TStringField;
    t_memberJOBKIND: TStringField;
    t_memberCAGE: TStringField;
    t_memberBIRTH: TDateField;
    t_memberIS_ACTIVE: TSmallintField;
    d_member: TDataSource;
    d_image: TDataSource;
    q_image: TUniQuery;
    q_imageID: TIntegerField;
    q_imageCHECK_ID: TStringField;
    q_imageCUST_UID: TStringField;
    q_imageIMAGE_IDX: TIntegerField;
    q_imageIMAGE_NAME: TStringField;
    q_imageDRAW_NAME: TStringField;
    q_imagePICTURE_DATE: TDateTimeField;
    q_picture_data: TUniQuery;
    q_picture_dataUID: TStringField;
    q_picture_dataCUST_UID: TStringField;
    q_picture_dataPICTURE_DATE: TDateField;
    q_picture_dataPIC_CNT: TIntegerField;
    d_picture_data: TDataSource;
    cxGrid4: TcxGrid;
    cxGridQuestion: TcxGridDBTableView;
    cxGridQuestionUID: TcxGridDBColumn;
    cxGridQuestionNo: TcxGridDBColumn;
    cxGridQuestionITEM_NAME: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    procedure btnSelectMemberClick(Sender: TObject);
    procedure gridCheckCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure RetrieveThumbnails;
    procedure ConnectDatabase;
    { Private declarations }
  public
    { Public declarations }
    MEMBER_UID : string;
    CHECK_DATA_UID : string;
  end;

var
  fmCustomerQuestion: TfmCustomerQuestion;

implementation

uses uMemberSelect, UdmDBCommon;

{$R *.dfm}

procedure TfmCustomerQuestion.ConnectDatabase;
begin
  t_member.Active := True;
  tblCheck_Question.Active := True;
end;

procedure TfmCustomerQuestion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmCustomerQuestion.btnSelectMemberClick(Sender: TObject);
begin
  fmMemberSelect := TfmMemberSelect.Create(Self);
  try
    fmMemberSelect.ShowModal;
    if fmMemberSelect.ModalResult = mrOk then begin
      pnlName.Caption := fmMemberSelect.gridMember.GetColumnByFieldName('cname').EditValue;
      pnlNo.Caption := fmMemberSelect.gridMember.GetColumnByFieldName('chart_no').EditValue;
      MEMBER_UID := fmMemberSelect.gridMember.GetColumnByFieldName('uid').EditValue;
      q_picture_data.ParamByName('cust_uid').AsString := MEMBER_UID;
      q_picture_data.Active := True;
      d_picture_data.DataSet.Refresh;
      if d_picture_data.DataSet.RecordCount > 0 then begin
        d_picture_data.DataSet.First;
        CHECK_DATA_UID := d_picture_data.DataSet.FieldByName('UID').AsString;
        RetrieveThumbnails;
      end;
    end;
  finally
    fmMemberSelect.Free;
  end;
end;

procedure TfmCustomerQuestion.RetrieveThumbnails;
var
  i, cnt, img_id : integer;
  fname : string;
begin
  try
    Screen.Cursor := crHourGlass;
    ImageEnMView.LockPaint;
    ImageEnMView.Clear;
    q_image.ParamByName('check_id').AsString := CHECK_DATA_UID;
    q_image.Active := True;
    d_image.DataSet.Refresh;
    cnt := d_image.DataSet.RecordCount;
    d_image.DataSet.DisableControls;
    d_image.DataSet.First;
    while not d_image.DataSet.Eof do begin
      img_id := d_image.DataSet.FieldByName('id').AsInteger;
      fname := d_image.DataSet.FieldByName('image_name').AsString;
      if FileExists(fname) then begin
        i := ImageEnMView.AppendImage;
//        ImageEnMView.ImageTopText[i].Caption := '»çÁø[' + IntToStr(i+1) + ']';
        ImageEnMView.SetImageFromFile(i, fname, 0);
        ImageEnMView.ImageFileName[i] := fname;
        ImageEnMView.ImageID[i] := img_id;
        d_image.DataSet.Next;
      end;
    end;
    d_picture_data.DataSet.DisableControls;
    d_picture_data.DataSet.Edit;
    d_picture_data.DataSet.FieldByName('PIC_CNT').AsInteger := cnt;
    d_picture_data.DataSet.Post;
    d_picture_data.DataSet.EnableControls;
  finally
    d_image.DataSet.EnableControls;
    ImageEnMView.Update;
    ImageEnMView.UnLockPaint;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmCustomerQuestion.gridCheckCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  recno : integer;
begin
  recno := gridCheck.DataController.GetFocusedRecordIndex;
  CHECK_DATA_UID := gridCheck.DataController.GetValue(recno, 1);
  RetrieveThumbnails;
end;

initialization RegisterClasses([TfmCustomerQuestion]);

end.
