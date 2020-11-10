unit GlobalVar;

interface
uses 
    Windows, Classes, DB, ADODB, SysUtils, Forms, Graphics, 
    DBClient, Uni, InterBaseUniProvider, imageenview, ievect, imageenio;

const
  RegistryKeyName = 'CCNSOFT\PostureViewer(BODY)';
  GPOSITION_NAME : array[0..6] of string = (
    '  [ �����ڼ� ]  ',
    '  [ �����ڼ� ]  ',
    '  [ �����ڼ� ]  ',
    '  [ �ĸ��ڼ�1 ]  ',
    '  [ �ĸ��ڼ�2 ]  ',
    '  [ ���� ]  ',
    '  [ ��Ÿ�ڼ� ]  '
    );

type
  TCustomerImage = record
    CheckID : string;
    CheckOldID : string;
    CustID : string;
    CustOldID : string;
    CustName : string;
    CustTel : string;
    CustSex : Integer;
    PDate : TDateTime;
    ImageName : array[0..6] of string;
    ImageID : Integer;
  end;

var
    CustomerImages : TCustomerImage;
    GImageVect : array[0..6] of TImageEnVect;
    //COMP_DATABASE_FILE : string;
    SYSTEM_SERIAL : string;
    EXE_FILE : string;
    ExecuteMode : Integer;
    LoginUserNo : String;
    LoginUserID : String;
    LoginUserPass : string;
    LoginUserName : String;
    LoginUserCompID :String;
    LoginUserKIND : integer;  //0=�ŷ�ó�����, 1=�ŷ�ó ������, 2=���۰�����
    LoginCounter : integer;
    LoginUserCenterID : Integer;

    GLOVAL_MEMBER_UID : string;
    GLOVAL_MEMBER_NAME : String;
    GLOVAL_MEMBER_TEL : String;
    GLOVAL_MEMBER_CHARTNO : String;
    GLOVAL_CHECK_DATA_UID : String;

    UserKind : Integer;
    LoginGUID : string;
    CustGUID, ResultGUID : string;
    gsDefaultFolder : string;
    gsServerImageFolder : string;
    gsLocalImageFolder : string;
    DBServerIP : string;
    DBServerPort : integer;
    DBFilename : string;
    AppVersion : string;
    UpdateFileName : string;
    posX, posY : string;

    giLineGap, giLineGap2 : Integer;
    giItemNo, giResult : Integer;
    StartX, StartY, EndX, EndY : Integer;
    isStartOrEnd : Integer;
    isDrawing : Boolean;

    ctrlch : Boolean;
    SelectedObjectID : Integer;
    CHECK_DATE : String;
    CurrentCustResultNo : Integer;
    CurrentCustomerNo : Integer;
    CurrentCustomerName : string;
    CustFilterString : string;

    CHECK_DATA_UID : string;
    MEMBER_UID : string;

    HasNewObject : boolean;
    isInArea : Boolean;
    OldX, OldY : Integer;
    mLineRect, mLengthRect : Array[0..8] of TRect;
    mLineDistance : Array[0..8] of Integer;
    CurrentCompareWindow : integer;
    CompareFile1, CompareFile2, CompareFile3, compareFile4 : string;
    GDragObject : Integer;    //1 = icon, 2 = text;
    GDragText : string;
    TopRowIndex : Integer;

implementation

    
end.
