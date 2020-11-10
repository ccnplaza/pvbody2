unit UfmDiaryEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Menus,
  ComCtrls, dxCore, cxDateUtils, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxDropDownEdit, cxCalendar, cxButtons, cxDBEdit,
  cxMaskEdit, cxImageComboBox, cxTextEdit, cxMemo, ExtCtrls, cxGroupBox, ShlObj,
  cxShellCommon, cxListView, cxShellListView, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxCurrencyEdit, DebenuPDFLibrary1114;

type
  TfmDiaryEdit = class(TForm)
    cxGroupBox1: TcxGroupBox;
    pnl4: TPanel;
    pnl5: TPanel;
    pnl10: TPanel;
    pnl11: TPanel;
    pnl19: TPanel;
    pnl20: TPanel;
    pnl31: TPanel;
    pnl32: TPanel;
    pnl33: TPanel;
    pnl34: TPanel;
    pnl7: TPanel;
    pnl8: TPanel;
    edtWDate: TcxDateEdit;
    edtTime: TEdit;
    cbActionKind: TcxLookupComboBox;
    edtFromName: TEdit;
    edtToName: TEdit;
    edtSubject: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    edtResponse: TMemo;
    Panel3: TPanel;
    Panel4: TPanel;
    cbResult: TcxLookupComboBox;
    edtDDate: TcxDateEdit;
    edtDTime: TEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    icbUser: TcxLookupComboBox;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    cxGroupBox2: TcxGroupBox;
    gridFile: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridFileID: TcxGridDBColumn;
    gridFileFILE_NAME: TcxGridDBColumn;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    gridFileFILE_SIZE: TcxGridDBColumn;
    gridFileFILE_DATE: TcxGridDBColumn;
    Panel7: TPanel;
    btnFileAdd: TcxButton;
    btnFileDel: TcxButton;
    btnFileDown: TcxButton;
    btnFileView: TcxButton;
    lblFileMsg: TLabel;
    procedure btnFileAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFileDownClick(Sender: TObject);
    procedure btnFileDelClick(Sender: TObject);
    procedure btnFileViewClick(Sender: TObject);
    procedure gridFileCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    WORK_UNIQ_ID : Int64;
    PDFLibrary: TDebenuPDFLibrary1114;
    ViewPrintPageNum : Integer;
  end;

var
  fmDiaryEdit: TfmDiaryEdit;

implementation
uses
  UDataModule, UfmImageViewer, UfmPDFViewer;
{$R *.dfm}

procedure TfmDiaryEdit.btnFileAddClick(Sender: TObject);
var
  fname : string;
  mStream :TMemoryStream;
  fdate : TDateTime;
begin
  if OpenDialog1.Execute then begin
    Screen.Cursor := crHourGlass;
    lblFileMsg.Caption := '파일 업로드중...잠시 기다려주세요.';
    lblFileMsg.Visible := True;
    fname := OpenDialog1.FileName;
    fdate := FileDateToDateTime(FileAge(fname));
    mStream := TMemoryStream.Create;
    mStream.LoadFromFile(fname);
    mStream.Position := 0;

    DataModule1.FILE_LIST_INS.ParamByName('WORK_UNIQ_ID').Value := WORK_UNIQ_ID;
    DataModule1.FILE_LIST_INS.ParamByName('FILE_NAME').Value := ExtractFileName(fname);
    DataModule1.FILE_LIST_INS.ParamByName('FILE_BLOB').LoadFromStream(mStream, ftBlob);
    DataModule1.FILE_LIST_INS.ParamByName('FILE_SIZE').Value := mStream.Size;
    DataModule1.FILE_LIST_INS.ParamByName('FILE_DATE').Value := fdate;
    DataModule1.FILE_LIST_INS.ExecProc;

    DataModule1.ds_FILE_LIST_SEL.DataSet.Refresh;
    lblFileMsg.Visible := False;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmDiaryEdit.btnFileDelClick(Sender: TObject);
begin
  if Application.MessageBox('선택한 자료를 삭제합니다. ' + #13#10 + '삭제한 후에는 되돌릴 수 없습니다.'
    + #13#10 + '정말 삭제할까요?', 'Application.Title', MB_YESNO + MB_ICONWARNING) =
    IDYES then
  begin
    DataModule1.FILE_LIST_DEL.ParamByName('ID').Value := gridFileID.EditValue;
    DataModule1.FILE_LIST_DEL.ExecProc;
    DataModule1.ds_FILE_LIST_SEL.DataSet.Refresh;
  end;
end;

procedure TfmDiaryEdit.btnFileDownClick(Sender: TObject);
var
  fname : string;
begin
  SaveDialog1.FileName := gridFileFILE_NAME.EditValue;
  if SaveDialog1.Execute then begin
    Screen.Cursor := crHourGlass;
    lblFileMsg.Caption := '파일 다운로드중...잠시 기다려주세요.';
    lblFileMsg.Visible := True;
    fname := SaveDialog1.FileName;
    DataModule1.FILE_LIST_SEL_FILE.ParamByName('ID').Value := gridFileID.EditValue;
    DataModule1.FILE_LIST_SEL_FILE.Active := True;
    DataModule1.ds_FILE_LIST_SEL_FILE.DataSet.Refresh;
    DataModule1.FILE_LIST_SEL_FILEFILE_BLOB.SaveToFile(fname);
    ShowMessage('파일저장완료.');
    lblFileMsg.Visible := False;
    Screen.Cursor := crArrow;
  end;
end;

procedure TfmDiaryEdit.btnFileViewClick(Sender: TObject);
var
  f_name, f_ext : string;
  mStream, MS : TMemoryStream;
  UnlockResult, DPI : Integer;
  CanProceed: Boolean;
  BlankBM: TBitmap;
  i, cnt, imgid : Integer;
begin
  f_name := gridFileFILE_NAME.EditValue;
  f_ext := ExtractFileExt(f_name);

  mStream := TMemoryStream.Create;
  DataModule1.FILE_LIST_SEL_FILE.ParamByName('ID').Value := gridFileID.EditValue;
  DataModule1.FILE_LIST_SEL_FILE.Active := True;
  DataModule1.ds_FILE_LIST_SEL_FILE.DataSet.Refresh;
  DataModule1.FILE_LIST_SEL_FILEFILE_BLOB.SaveToStream(mStream);
  mStream.Position := 0;

  if (LowerCase(f_ext) = '.jpg') or
     (LowerCase(f_ext) = '.png') or
     (LowerCase(f_ext) = '.bmp')
  then begin
    fmImageViewer := TfmImageViewer.Create(Self);
    try
      fmImageViewer.IMAGE_STREAM := mStream;
      fmImageViewer.ShowModal;
    finally
      fmImageViewer.Free;
    end;
  end;
  if LowerCase(f_ext) = '.pdf' then begin
    PDFLibrary := TDebenuPDFLibrary1114.Create;
    fmPDFViewer := TfmPDFViewer.Create(Self);
    try
      UnlockResult := PDFLibrary.UnlockKey('j39163i38a653748u9f66rb5y');
      PDFLibrary.LoadFromStream(mStream, '');
      cnt := PDFLibrary.PageCount;
      for i := 0 to cnt - 1 do begin
        MS := TMemoryStream.Create;
        PDFLibrary.RenderPageToStream(96, i + 1, 0, MS);
        MS.Position := 0;
        imgid := fmPDFViewer.ImageEnMView1.AppendImage;
        fmPDFViewer.ImageEnMView1.SetImageFromStream(imgid, MS);
        fmPDFViewer.ImageEnMView1.ImageBottomText[imgid].Caption := 'Page: ' + IntToStr(i+1);
      end;
      fmPDFViewer.ImageEnMView1.SelectImage(0);
      fmPDFViewer.ShowModal;
    finally
      fmPDFViewer.Free;
      PDFLibrary.Free;
    end;
  end;
end;

procedure TfmDiaryEdit.FormShow(Sender: TObject);
begin
  DataModule1.FILE_LIST_SEL.ParamByName('LOG_ID').Value := WORK_UNIQ_ID;
  DataModule1.FILE_LIST_SEL.Active := True;
  DataModule1.ds_FILE_LIST_SEL.DataSet.Refresh;
end;

procedure TfmDiaryEdit.gridFileCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnFileView.Click;
end;

end.
