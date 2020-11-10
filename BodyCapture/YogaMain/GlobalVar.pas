unit GlobalVar;

interface
uses 
    Windows, Classes, DB, ADODB, SysUtils, Forms, Graphics, 
    DBClient, Uni, InterBaseUniProvider;

const
    RegistryKeyName = 'CCNSOFT\PostureViewer(BODY)';

var
    //COMP_DATABASE_FILE : string;
    SYSTEM_SERIAL : string;
    EXE_FILE : string;
    ExecuteMode : Integer;
    LoginUserNo : String;
    LoginUserID : String;
    LoginUserPass : string;
    LoginUserName : String;
    LoginUserCompID :String;
    LoginUserKIND : integer;  //0=거래처사용자, 1=거래처 관리자, 2=슈퍼관리자
    LoginCounter : integer;

    GLOVAL_MEMBER_UID : string;
    GLOVAL_MEMBER_NAME : String;
    GLOVAL_MEMBER_TEL : String;
    GLOVAL_MEMBER_CHARTNO : String;
    GLOVAL_CHECK_DATA_UID : String;

    UserKind : Integer;
    LoginGUID : string;
    CustGUID, ResultGUID : string;
    gsDefaultFolder : string;
    gsImageFolder : string;
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

implementation

    
end.
