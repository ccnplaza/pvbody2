unit UfmUserMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, ComCtrls,
  cxDBLookupComboBox;

type
  TfmUserMessage = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    q_receive_message: TUniQuery;
    q_send_message: TUniQuery;
    d_receive_message: TDataSource;
    d_send_message: TDataSource;
    q_receive_messageID: TStringField;
    q_receive_messageWRITER_ID: TStringField;
    q_receive_messageRECEIVER_ID: TStringField;
    q_receive_messageMSG_KIND: TIntegerField;
    q_receive_messageMSG_CONTENT: TStringField;
    q_send_messageID: TStringField;
    q_send_messageWRITER_ID: TStringField;
    q_send_messageRECEIVER_ID: TStringField;
    q_send_messageMSG_KIND: TIntegerField;
    q_send_messageMSG_CONTENT: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1WRITER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1RECEIVER_ID: TcxGridDBColumn;
    cxGrid1DBTableView1MSG_KIND: TcxGridDBColumn;
    cxGrid1DBTableView1MSG_CONTENT: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1WRITER_ID: TcxGridDBColumn;
    cxGridDBTableView1RECEIVER_ID: TcxGridDBColumn;
    cxGridDBTableView1MSG_KIND: TcxGridDBColumn;
    cxGridDBTableView1MSG_CONTENT: TcxGridDBColumn;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    q_send_messageWRITE_DATE: TDateTimeField;
    cxGridDBTableView1WRITE_DATE: TcxGridDBColumn;
    q_send_messageMSG_TITLE: TStringField;
    q_receive_messageWRITE_DATE: TDateTimeField;
    q_receive_messageMSG_TITLE: TStringField;
    cxGrid1DBTableView1WRITE_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1MSG_TITLE: TcxGridDBColumn;
    cxGridDBTableView1MSG_TITLE: TcxGridDBColumn;
    btnEditSend: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    BitBtn4: TBitBtn;
    btnReceiveEdit: TBitBtn;
    BitBtn6: TBitBtn;
    t_user_look: TUniTable;
    t_user_lookID: TStringField;
    t_user_lookUSER_NAME: TStringField;
    t_user_lookLOGIN_ID: TStringField;
    d_user_look: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnEditSendClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnReceiveEditClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmUserMessage: TfmUserMessage;

implementation

uses GlobalVar, UdmDBCommon, UfmMessage;

{$R *.dfm}

procedure TfmUserMessage.FormCreate(Sender: TObject);
begin
  t_user_look.Active := True;

  DateTimePicker3.Date := Date;
  DateTimePicker4.Date := Date;
  q_receive_message.ParamByName('user_id').AsString := LoginUserName;
  q_receive_message.ParamByName('sdate').AsDate := DateTimePicker3.Date;
  q_receive_message.ParamByName('edate').AsDate := DateTimePicker4.Date;
  q_receive_message.Active := True;

  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  q_send_message.ParamByName('user_id').AsString := LoginUserNo;
  q_send_message.ParamByName('sdate').AsDate := DateTimePicker1.Date;
  q_send_message.ParamByName('edate').AsDate := DateTimePicker2.Date;
  q_send_message.Active := True;

end;

procedure TfmUserMessage.BitBtn1Click(Sender: TObject);
begin
  q_send_message.ParamByName('user_id').AsString := LoginUserNo;
  q_send_message.ParamByName('sdate').AsDate := DateTimePicker1.Date;
  q_send_message.ParamByName('edate').AsDate := DateTimePicker2.Date;
  q_send_message.Active := True;
  d_send_message.DataSet.Refresh;
end;

procedure TfmUserMessage.BitBtn2Click(Sender: TObject);
begin
  fmMessage := TfmMessage.Create(Self);
  try
    fmMessage.isEditMode := True;
    fmMessage.ShowModal;
    if fmMessage.ModalResult = mrOk then begin
      q_send_message.Append;
      q_send_messageID.AsString := FormatDateTime('yyyymmddhhnnsszzz', now);
      q_send_messageWRITER_ID.AsString := LoginUserNo;
      q_send_messageRECEIVER_ID.AsString := fmMessage.edtReceiver.Text;
      q_send_messageWRITE_DATE.AsDateTime := Date;
      q_send_messageMSG_TITLE.AsString := fmMessage.edtTitle.Text;
      q_send_messageMSG_CONTENT.AsString := fmMessage.edtMessage.Text;
      q_send_message.Post;
      d_send_message.DataSet.Refresh;
    end;
  finally
    fmMessage.Free;
  end;
end;

procedure TfmUserMessage.BitBtn4Click(Sender: TObject);
begin
  q_receive_message.ParamByName('user_id').AsString := LoginUserName;
  q_receive_message.ParamByName('sdate').AsDate := DateTimePicker3.Date;
  q_receive_message.ParamByName('edate').AsDate := DateTimePicker4.Date;
  q_receive_message.Active := True;
  d_receive_message.DataSet.Refresh;
end;

procedure TfmUserMessage.btnReceiveEditClick(Sender: TObject);
begin
  fmMessage := TfmMessage.Create(Self);
  try
    fmMessage.isEditMode := False;
    fmMessage.edtTitle.Text := q_receive_messageMSG_TITLE.AsString;
    fmMessage.edtMessage.Text := q_receive_messageMSG_CONTENT.AsString;
    fmMessage.edtReceiver.Text := q_receive_messageRECEIVER_ID.AsString;
    fmMessage.ShowModal;
  finally
    fmMessage.Free;
  end;
end;

procedure TfmUserMessage.btnEditSendClick(Sender: TObject);
begin
  fmMessage := TfmMessage.Create(Self);
  try
    fmMessage.isEditMode := True;
    fmMessage.edtTitle.Text := q_send_messageMSG_TITLE.AsString;
    fmMessage.edtMessage.Text := q_send_messageMSG_CONTENT.AsString;
    fmMessage.edtReceiver.Text := q_send_messageRECEIVER_ID.AsString;
    fmMessage.ShowModal;
    if fmMessage.ModalResult = mrOk then begin
      q_send_message.Edit;
      q_send_messageRECEIVER_ID.AsString := fmMessage.edtReceiver.Text;
      q_send_messageMSG_TITLE.AsString := fmMessage.edtTitle.Text;
      q_send_messageMSG_CONTENT.AsString := fmMessage.edtMessage.Text;
      q_send_message.Post;
      d_send_message.DataSet.Refresh;
    end;
  finally
    fmMessage.Free;
  end;
end;

procedure TfmUserMessage.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnReceiveEditClick(Sender);
end;

procedure TfmUserMessage.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnEditSendClick(Sender);
end;

procedure TfmUserMessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization RegisterClasses([TfmUserMessage]);

end.
