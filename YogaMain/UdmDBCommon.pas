unit UdmDBCommon;

interface

uses
  SysUtils, Classes, UniProvider, InterBaseUniProvider, DB, DBAccess, Uni, Messages, Dialogs,
  MemDS, VirtualTable, WideStrings, DBXFirebird, SqlExpr, DBClient, Provider, iemview,
  dxmdaset, Graphics, IdHTTP, PngImage, jpeg, GIFImg, imageenview, ievect, WinInet, Windows,
  cxImageComboBox, Clipbrd, imageenio, ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMultipartFormData, IdGlobal;

type
  TdmDBCommon = class(TDataModule)
    UniDBConnection: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    d_picture_data: TDataSource;
    q_NSTATIC_CHECK_DATA: TUniQuery;
    d_NSTATIC_CHECK_DATA: TDataSource;
    q_NSTATIC_CHECK_DATAID: TIntegerField;
    q_NSTATIC_CHECK_DATACUSTOMER_UID: TStringField;
    q_NSTATIC_CHECK_DATAC_DATE: TStringField;
    q_NSTATIC_CHECK_DATAC_IDX: TIntegerField;
    q_NSTATIC_CHECK_RESULT: TUniQuery;
    d_NSTATIC_CHECK_RESULT: TDataSource;
    q_NSTATIC_CHECK_RESULTID: TIntegerField;
    q_NSTATIC_CHECK_RESULTDATA_ID: TIntegerField;
    q_NSTATIC_CHECK_RESULTITEM_MAIN: TIntegerField;
    q_NSTATIC_CHECK_RESULTITEM_SUBITEM: TIntegerField;
    q_NSTATIC_CHECK_RESULTITEM_SUBITEM2: TIntegerField;
    q_NSTATIC_CHECK_RESULTRESULT_VALUE: TIntegerField;
    usp_NSTATIC_CHECK_RESULT_IU: TUniStoredProc;
    q_NSTATIC_CHECK_RESULTPRACTICE_ID: TStringField;
    q_npractice_assign: TUniQuery;
    d_NPRACTICE: TDataSource;
    d_npractice_assign: TDataSource;
    q_npractice_assignID: TIntegerField;
    q_npractice_assignRESULT_ID: TIntegerField;
    q_npractice_assignPRACTICE_ID: TIntegerField;
    t_NPRACTICE_look: TUniTable;
    d_NPRACTICE_look: TDataSource;
    t_NPRACTICE_lookID: TIntegerField;
    t_NPRACTICE_lookP_NAME: TStringField;
    CUSTOMER_SEL: TUniStoredProc;
    d_CUSTOMER_SEL: TUniDataSource;
    CUSTOMER_SELUID: TStringField;
    CUSTOMER_SELCNAME: TStringField;
    CUSTOMER_SELSEX: TStringField;
    CUSTOMER_SELCTEL: TStringField;
    CUSTOMER_SELCEMAIL: TStringField;
    CUSTOMER_SELCBIGO: TStringField;
    CUSTOMER_SELREG_DATE: TDateField;
    CUSTOMER_SELJOBKIND: TStringField;
    CUSTOMER_SELHOBBY: TStringField;
    CUSTOMER_SELHOW_TO_COME: TStringField;
    CUSTOMER_SELPURPOSE: TStringField;
    CUSTOMER_SELBLOOD: TStringField;
    CUSTOMER_SELBLOOD_PRESSURE: TStringField;
    CUSTOMER_SELBODY_STATUS: TStringField;
    CUSTOMER_SELFOOD_KIND: TStringField;
    CUSTOMER_SELFOOD_HOW_MUCH: TStringField;
    CUSTOMER_SELFOOD_HOW_OFTEN: TStringField;
    CUSTOMER_BASIC_SEL: TUniStoredProc;
    d_CUSTOMER_BASIC_SEL: TUniDataSource;
    CUSTOMER_BASIC_SELUID: TStringField;
    CUSTOMER_BASIC_SELCNAME: TStringField;
    CUSTOMER_BASIC_SELSEX: TStringField;
    CUSTOMER_BASIC_SELCTEL: TStringField;
    CUSTOMER_BASIC_SELCEMAIL: TStringField;
    CUSTOMER_BASIC_SELREG_DATE: TDateField;
    CUSTOMER_BASIC_SELJOBKIND: TStringField;
    LESSON_CUSTOMER_MIXSEL: TUniStoredProc;
    d_LESSON_CUSTOMER_MIXSEL: TUniDataSource;
    LESSON_CUSTOMER_MIXSELID: TStringField;
    LESSON_CUSTOMER_MIXSELREG_DATE: TDateField;
    LESSON_CUSTOMER_MIXSELMEMBER_UID: TStringField;
    LESSON_CUSTOMER_MIXSELSTART_DATE: TDateField;
    LESSON_CUSTOMER_MIXSELEND_DATE: TDateField;
    LESSON_CUSTOMER_MIXSELCOMPANY_ID: TStringField;
    LESSON_CUSTOMER_MIXSELIS_DONE: TSmallintField;
    LESSON_CUSTOMER_MIXSELCNAME: TStringField;
    LESSON_CUSTOMER_MIXSELSEX: TStringField;
    LESSON_CUSTOMER_MIXSELCTEL: TStringField;
    LESSON_SEL_LOOK: TUniStoredProc;
    d_LESSON_SEL_LOOK: TUniDataSource;
    LESSON_SEL_LOOKID: TStringField;
    LESSON_SEL_LOOKL_NAME: TStringField;
    LESSON_CUSTOMER_MIXSELLEC_CODE: TStringField;
    LESSON_ATTENDANCE_SEL: TUniStoredProc;
    d_LESSON_ATTENDANCE_SEL: TUniDataSource;
    LESSON_ATTENDANCE_SELID: TStringField;
    LESSON_ATTENDANCE_SELATT_DATE: TDateField;
    LESSON_ATTENDANCE_SELLEC_CODE: TStringField;
    LESSON_ATTENDANCE_SELMEMBER_ID: TStringField;
    LESSON_ATTENDANCE_SELIN_TIME: TStringField;
    LESSON_ATTENDANCE_SELCOMPANY_ID: TStringField;
    LESSON_ATTENDANCE_SELL_NAME: TStringField;
    LESSON_ATTENDANCE_SELCNAME: TStringField;
    LESSON_ATTENDANCE_SELSEX: TStringField;
    LESSON_ATTENDANCE_SELCTEL: TStringField;
    LESSON_ATTENDANCE_SELJOBKIND: TStringField;
    CUSTOMER_TEL_SEL: TUniStoredProc;
    d_CUSTOMER_TEL_SEL: TUniDataSource;
    CUSTOMER_SEL_LOOK: TUniStoredProc;
    d_CUSTOMER_SEL_LOOK: TUniDataSource;
    CUSTOMER_SEL_LOOKUID: TStringField;
    CUSTOMER_SEL_LOOKCNAME: TStringField;
    LESSON_CUSTOMER_MIXSELM_KIND: TSmallintField;
    LESSON_CUSTOMER_MIXSELLOCKER_NO: TStringField;
    LESSON_CUSTOMER_MIXSELNEW_OR_RENEW: TSmallintField;
    LESSON_CUSTOMER_MIXSELLEC_PRICE: TFloatField;
    LESSON_CUSTOMER_MIXSELPAY_KIND: TSmallintField;
    LESSON_CUSTOMER_MIXSELLEC_MONTH: TSmallintField;
    CASH_INOUT_SEL: TUniStoredProc;
    CASH_INOUT_KIND_SEL: TUniStoredProc;
    d_CASH_INOUT_KIND_SEL: TUniDataSource;
    CASH_INOUT_KIND_SELID: TIntegerField;
    CASH_INOUT_KIND_SELK_NAME: TStringField;
    CASH_INOUT_KIND_SELCOMPANY_ID: TStringField;
    CASH_INOUT_KIND_SEL_LOOK: TUniStoredProc;
    d_CASH_INOUT_KIND_SEL_LOOK: TUniDataSource;
    CASH_INOUT_KIND_SEL_LOOKID: TIntegerField;
    CASH_INOUT_KIND_SEL_LOOKK_NAME: TStringField;
    CASH_INOUT_INS: TUniStoredProc;
    CASH_INOUT_UPD: TUniStoredProc;
    CASH_INOUT_DEL: TUniStoredProc;
    CASH_INOUT_UPD_BY_LESSON: TUniStoredProc;
    CASH_INOUT_DEL_BY_LESSON: TUniStoredProc;
    LOCKER_DATA_SEL: TUniStoredProc;
    d_LOCKER_DATA_SEL: TUniDataSource;
    LOCKER_DATA_SELID: TIntegerField;
    LOCKER_DATA_SELLOCKER_STATUS: TSmallintField;
    LOCKER_DATA_SELLOCKER_USER: TStringField;
    LOCKER_DATA_SELBIGO: TStringField;
    CUSTOMER_SELCAGE: TStringField;
    CUSTOMER_SELHOW_TO_COME_ETC: TStringField;
    CUSTOMER_SELPURPOSE_ETC: TStringField;
    CUSTOMER_SELPURPOSE_DESC: TStringField;
    LOCKER_DATA_SELLOCKER_NO: TStringField;
    LESSON_CUSTOMER_MIXSELOUT_DATE: TStringField;
    LESSON_CUSTOMER_MIXSELOUT_PRICE: TFloatField;
    LESSON_CUSTOMER_MIXSELOUT_KIND: TSmallintField;
    LESSON_CUSTOMER_MIXSELOUT_REASON: TStringField;
    PRODUCT_SALE_SEL: TUniStoredProc;
    d_PRODUCT_SALE_SEL: TUniDataSource;
    CASH_INOUT_REST_SEL: TUniStoredProc;
    d_CASH_INOUT_REST_SEL: TUniDataSource;
    CASH_INOUT_REST_SELID: TIntegerField;
    CASH_INOUT_REST_SELC_DATE: TStringField;
    CASH_INOUT_REST_SELK_CODE: TIntegerField;
    CASH_INOUT_REST_SELC_DESC: TStringField;
    CASH_INOUT_REST_SELLESSON_ID: TStringField;
    CASH_INOUT_REST_SELCASH_ID: TStringField;
    PRODUCTS_SEL: TUniStoredProc;
    d_PRODUCTS_SEL: TUniDataSource;
    PRODUCTS_SELID: TIntegerField;
    PRODUCTS_SELPRODUCT_NAME: TStringField;
    PRODUCTS_SELPRODUCTS_BIGO: TStringField;
    PRODUCTS_SEL_LOOK: TUniStoredProc;
    d_PRODUCTS_SEL_LOOK: TUniDataSource;
    PRODUCTS_SEL_LOOKID: TIntegerField;
    PRODUCTS_SEL_LOOKPRODUCT_NAME: TStringField;
    PRODUCT_SALE_SELID: TStringField;
    PRODUCT_SALE_SELS_DATE: TDateField;
    PRODUCT_SALE_SELITEM_ID: TIntegerField;
    PRODUCT_SALE_SELS_DESC: TStringField;
    PRODUCT_SALE_SELS_QTY: TFloatField;
    PRODUCT_SALE_SELQ_PRICE: TFloatField;
    PRODUCT_SALE_SELT_PRICE: TFloatField;
    PRODUCT_SALE_SELPAY_WAY: TSmallintField;
    PRODUCT_SALE_SELPAYED: TFloatField;
    PRODUCTS_INS: TUniStoredProc;
    PRODUCTS_UPD: TUniStoredProc;
    PRODUCTS_DEL: TUniStoredProc;
    PRODUCT_SALE_INS: TUniStoredProc;
    PRODUCT_SALE_UPD: TUniStoredProc;
    PRODUCT_SALE_DEL: TUniStoredProc;
    PICTURE_DATA_SEL: TUniStoredProc;
    PICTURE_DATA_SELUID: TStringField;
    PICTURE_DATA_SELCUST_UID: TStringField;
    PICTURE_DATA_SELPICTURE_DATE: TDateField;
    PICTURE_DATA_SELPIC_CNT: TIntegerField;
    PICTURE_DATA_UPD_COUNT: TUniStoredProc;
    q_NSTATIC_CHECK_RESULTRESULT_LEVEL: TSmallintField;
    q_NSTATIC_CHECK_DATAC_COMMENTS: TStringField;
    q_NSTATIC_CHECK_RESULTDIRECTION_KIND: TSmallintField;
    NCUSTOMER_DRAW_SEL: TUniStoredProc;
    NCUSTOMER_DRAW_SELDRAW_DATA: TBlobField;
    NCUSTOMER_DRAW_UPD: TUniStoredProc;
    ds_NCUSTOMER_DRAW_SEL: TDataSource;
    LESSON_CUSTOMER_MIXSELUSED_CNT: TSmallintField;
    CUSTOMER_SELECT_NAME: TUniStoredProc;
    dsCUSTOMER_SELECT_NAME: TDataSource;
    CUSTOMER_SELECT_NAMEUID: TStringField;
    CUSTOMER_SELECT_NAMECNAME: TStringField;
    CUSTOMER_SELECT_NAMESEX: TStringField;
    CUSTOMER_SELECT_NAMECTEL: TStringField;
    CUSTOMER_SELECT_NAMECEMAIL: TStringField;
    CUSTOMER_SELECT_NAMEREG_DATE: TDateField;
    CUSTOMER_SELECT_NAMEJOBKIND: TStringField;
    CUSTOMER_TEL_SELCNAME: TStringField;
    CUSTOMER_TEL_SELCTEL: TStringField;
    CUSTOMER_TEL_SELSEX: TStringField;
    CUSTOMER_TEL_SELID: TStringField;
    CUSTOMER_TEL_SELREG_DATE: TDateField;
    CUSTOMER_TEL_SELLEC_CODE: TStringField;
    CUSTOMER_TEL_SELMEMBER_UID: TStringField;
    CUSTOMER_TEL_SELSTART_DATE: TDateField;
    CUSTOMER_TEL_SELEND_DATE: TDateField;
    CUSTOMER_TEL_SELIS_DONE: TSmallintField;
    CUSTOMER_TEL_SELLOCKER_NO: TStringField;
    CUSTOMER_TEL_SELCOMPANY_ID: TStringField;
    CUSTOMER_TEL_SELL_NAME: TStringField;
    CUSTOMER_TEL_SELM_KIND: TSmallintField;
    CUSTOMER_TEL_SELLEC_MONTH: TSmallintField;
    CUSTOMER_TEL_SELUSED_CNT: TSmallintField;
    LESSON_CUSTOMER_MIXSELLEC_DESC: TStringField;
    IMAGE_DESCRIPT_LIST: TUniTable;
    IMAGE_DESCRIPT_LISTID: TIntegerField;
    IMAGE_DESCRIPT_LISTDESCRIPTS: TStringField;
    dsIMAGE_DESCRIPT_LIST: TDataSource;
    CUSTOMER_SELIS_ACTIVE: TIntegerField;
    LESSON_CUSTOMER_MIXSELIS_ACTIVE: TIntegerField;
    ds_REGISTED_CENTER_SEL: TDataSource;
    LESSON_ATTENDANCE_SELIS_ACTIVE: TIntegerField;
    CUSTOMER_SELECT_NAMEIS_ACTIVE: TIntegerField;
    DAY_LOG_UPD: TUniStoredProc;
    ds_DAY_LOG_SEL: TDataSource;
    DAY_LOG_SEL: TUniStoredProc;
    DAY_LOG_INS: TUniStoredProc;
    DAY_LOG_SELID: TIntegerField;
    DAY_LOG_SELIN_DATE: TDateField;
    DAY_LOG_SELIN_TIME: TStringField;
    DAY_LOG_SELIN_KIND: TIntegerField;
    DAY_LOG_SELRECEIVED: TStringField;
    DAY_LOG_SELDAMDANG: TStringField;
    DAY_LOG_SELCALLER: TStringField;
    DAY_LOG_SELIN_DESC: TStringField;
    DAY_LOG_SELIS_DONE: TIntegerField;
    DAY_LOG_SELRETURN_DESC: TStringField;
    DAY_LOG_SELCENTER_ID: TIntegerField;
    CASH_INOUT_REST_SELCENTER_ID: TIntegerField;
    PRODUCT_SALE_SELCENTER_ID: TIntegerField;
    vtCustomerImage: TVirtualTable;
    vtCustomerImageID: TStringField;
    vtCustomerImageCHECK_ID: TStringField;
    vtCustomerImageCUST_UID: TStringField;
    vtCustomerImageIMAGE_IDX: TIntegerField;
    vtCustomerImagePICTURE_DATE: TDateTimeField;
    vtCustomerImageIMAGE_DATA: TBlobField;
    vtCustomerImageDRAW_DATA: TBlobField;
    d_compare_data: TDataSource;
    q_compare_data: TUniQuery;
    q_compare_dataID: TIntegerField;
    q_compare_dataMEMBER_ID: TStringField;
    q_compare_dataCOMPARE_NAME: TStringField;
    q_compare_dataIMAGE_CNT: TSmallintField;
    CUST_COMPARE_MULTI_SEL: TUniStoredProc;
    CUST_COMPARE_MULTI_SELID: TIntegerField;
    CUST_COMPARE_MULTI_SELDATA_ID: TIntegerField;
    CUST_COMPARE_MULTI_SELIMAGE_ID: TStringField;
    CUST_COMPARE_MULTI_SELIMAGE_DATE: TDateTimeField;
    CUST_COMPARE_MULTI_SELIMAGE_IDX: TIntegerField;
    CASH_INOUT_REST_SELCASH_IN: TFloatField;
    CASH_INOUT_REST_SELCASH_OUT: TFloatField;
    CASH_INOUT_REST_SELCASH_REST: TFloatField;
    CUSTOMER_FAVORITE_SELECT: TUniStoredProc;
    d_CUSTOMER_FAVORITE_SELECT: TDataSource;
    CUSTOMER_FAVORITE_SELECTUID: TStringField;
    CUSTOMER_FAVORITE_SELECTCNAME: TStringField;
    CUSTOMER_FAVORITE_SELECTSEX: TStringField;
    CUSTOMER_FAVORITE_SELECTCTEL: TStringField;
    CUSTOMER_FAVORITE_SELECTCEMAIL: TStringField;
    CUSTOMER_FAVORITE_SELECTREG_DATE: TDateField;
    CUSTOMER_FAVORITE_SELECTJOBKIND: TStringField;
    CUSTOMER_FAVORITE_SELECTIS_ACTIVE: TIntegerField;
    CUSTOMER_FAVORITE_INS: TUniStoredProc;
    CUSTOMER_FAVORITE_DEL: TUniStoredProc;
    t_customer_kind: TUniTable;
    t_customer_kindID: TIntegerField;
    t_customer_kindK_NAME: TStringField;
    d_customer_kind: TDataSource;
    CUSTOMER_SELC_KIND: TIntegerField;
    CUSTOMER_SELSMS_YESNO: TSmallintField;
    LESSON_CUSTOMER_MIXSELSMS_YESNO: TSmallintField;
    CUSTOMER_UPD_SMS: TUniStoredProc;
    LESSON_CUSTOMER_MIXSELBREAK_START: TDateField;
    LESSON_CUSTOMER_MIXSELBREAK_END: TDateField;
    LESSON_CUSTOMER_BREAK_SEL: TUniStoredProc;
    ds_LESSON_CUSTOMER_BREAK_SEL: TDataSource;
    LESSON_CUSTOMER_BREAK_SELID: TIntegerField;
    LESSON_CUSTOMER_BREAK_SELLECTURE_ID: TStringField;
    LESSON_CUSTOMER_BREAK_SELSTART_DATE: TDateField;
    LESSON_CUSTOMER_BREAK_SELEND_DATE: TDateField;
    LESSON_CUSTOMER_BREAK_SELREASONS: TStringField;
    LESSON_CUSTOMER_BREAK_SELBREAK_STATUS: TIntegerField;
    CHECK_CUSTOMER_EXISTS: TUniStoredProc;
    CHECK_CUSTOMER_EXISTSREC_CNT: TIntegerField;
    LESSON_CUSTOMER_MIXSELCENTER_ID: TSmallintField;
    UniConnUsers: TUniConnection;
    UniTransaction1: TUniTransaction;
    UniConnImage: TUniConnection;
    IMAGE_TEMP_INS: TUniStoredProc;
    IMAGE_DELETE_ACTION_INS: TUniStoredProc;
    IdHTTP1: TIdHTTP;
    NPRACTICE_SEL: TUniStoredProc;
    NPRACTICE_SELID: TIntegerField;
    NPRACTICE_SELP_NAME: TStringField;
    NPRACTICE_SELFOR_PAIN: TStringField;
    NPRACTICE_SELFOR_BODY: TStringField;
    LATEST_CUSTOMER_SEL: TUniStoredProc;
    LATEST_CUSTOMER_INS: TUniStoredProc;
    LATEST_CUSTOMER_DEL: TUniStoredProc;
    ds_LATEST_CUSTOMER_SEL: TDataSource;
    LATEST_CUSTOMER_SELID: TIntegerField;
    LATEST_CUSTOMER_SELCUST_ID: TStringField;
    LATEST_CUSTOMER_SELCUST_NAME: TStringField;
    LATEST_CUSTOMER_SELCUST_TEL: TStringField;
    LATEST_CUSTOMER_SELUSER_ID: TStringField;
    REGISTED_CENTER_SEL: TUniStoredProc;
    REGISTED_CENTER_SELID: TIntegerField;
    REGISTED_CENTER_SELC_NAME: TStringField;
    REGISTED_CENTER_LOOK: TUniStoredProc;
    REGISTED_CENTER_LOOKID: TIntegerField;
    REGISTED_CENTER_LOOKC_NAME: TStringField;
    ds_REGISTED_CENTER_LOOK: TDataSource;
    REGISTED_CENTER_INS: TUniStoredProc;
    REGISTED_CENTER_UPD: TUniStoredProc;
    REGISTED_CENTER_DEL: TUniStoredProc;
    UniConnImageDB: TUniConnection;
    IMAGES_SEL: TUniStoredProc;
    IMAGES_INS: TUniStoredProc;
    IMAGES_UPD: TUniStoredProc;
    IMAGES_DEL: TUniStoredProc;
    ds_IMAGES_SEL: TDataSource;
    IMAGES_SELID: TIntegerField;
    IMAGES_SELIMAGE_DATA: TBlobField;
    IMAGES_SELDRAW_DATA: TBlobField;
    IMAGES_SELIDX: TIntegerField;
    IMAGES_SEL_BYDATE: TUniStoredProc;
    ds_IMAGES_SEL_BYDATE: TDataSource;
    IMAGES_SEL_BYDATEP_DATE: TDateField;
    IMAGES_SEL_BYDATECNT: TIntegerField;
    IMAGES_SEL_BYDATECUST_ID: TStringField;
    IMAGES_DEL_DATE: TUniStoredProc;
    IMAGES_UPD_IDX: TUniStoredProc;
    IMAGES_SEL_BYDATE_PERIOD: TUniStoredProc;
    ds_IMAGES_SEL_BYDATE_PERIOD: TDataSource;
    IMAGES_SEL_BYDATE_PERIODP_DATE: TDateField;
    IMAGES_SEL_BYDATE_PERIODCNT: TIntegerField;
    IMAGES_SEL_BYDATE_PERIODCUST_ID: TStringField;
    ds_CUSTOMER_SEL_LOOK_TEL: TDataSource;
    CUSTOMER_SEL_LOOK_TEL: TUniStoredProc;
    CUSTOMER_SEL_LOOK_TELUID: TStringField;
    CUSTOMER_SEL_LOOK_TELCNAME: TStringField;
    CUSTOMER_SEARCH: TUniStoredProc;
    ds_CUSTOMER_SEARCH: TDataSource;
    CUSTOMER_SEARCHUID: TStringField;
    CUSTOMER_SEARCHCNAME: TStringField;
    CUSTOMER_SEARCHCTEL: TStringField;
    CUSTOMER_SEARCHSEX: TStringField;
    LATEST_CUSTOMER_SELCUST_SEX: TSmallintField;
    IMAGES_SEL_ID: TUniStoredProc;
    IMAGES_SEL_IDID: TIntegerField;
    IMAGES_SEL_IDIMAGE_DATA: TBlobField;
    IMAGES_SEL_IDDRAW_DATA: TBlobField;
    ds_IMAGES_SEL_ID: TDataSource;
    CHECK_ITEM_TREE_BODY_SEL: TUniStoredProc;
    CHECK_ITEM_TREE_BODY_SELID: TIntegerField;
    CHECK_ITEM_TREE_BODY_SELITEM_NAME: TStringField;
    d_CHECK_ITEM_TREE_BODY_SEL: TDataSource;
    CHECK_ITEM_TREE_RESULT_SEL: TUniStoredProc;
    CHECK_ITEM_TREE_RESULT_SELID: TIntegerField;
    CHECK_ITEM_TREE_RESULT_SELITEM_NAME: TStringField;
    d_CHECK_ITEM_TREE_RESULT_SEL: TDataSource;
    NSTATIC_RESULT_PRACTICE_SEL: TUniStoredProc;
    NSTATIC_RESULT_PRACTICE_SELID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELRESULT_ID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELPRACTICE_ID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELDATA_ID: TIntegerField;
    NSTATIC_RESULT_PRACTICE_SELIS_SELECTED: TIntegerField;
    ds_NSTATIC_RESULT_PRACTICE_SEL: TDataSource;
    NSTATIC_RESULT_PRACTICE_INS: TUniStoredProc;
    NSTATIC_RESULT_PRACTICE_DEL: TUniStoredProc;
    NSTATIC_RESULT_PRACTICE_UPD: TUniStoredProc;
    NSTATIC_CHECK_DATA_UPD: TUniStoredProc;
    NSTATIC_CHECK_RESULT_UPD: TUniStoredProc;
    q_update_result: TUniQuery;
    q_check_item_tree: TUniQuery;
    q_check_item_treeID: TIntegerField;
    q_check_item_treePARENT_ID: TIntegerField;
    q_check_item_treeIMAGE_ID: TIntegerField;
    q_check_item_treeITEM_NAME: TStringField;
    q_check_item_treeBODY_ID: TIntegerField;
    q_check_item_treeRESULT_ID: TIntegerField;
    q_check_item_treeHOWTO_IMAGE: TSmallintField;
    q_check_item_treeVIDEO_ID: TStringField;
    d_check_item_tree: TDataSource;
    NSTATIC_CHECK_RESULTIMG_SEL: TUniStoredProc;
    NSTATIC_CHECK_RESULTIMG_SELID: TIntegerField;
    NSTATIC_CHECK_RESULTIMG_SELRESULT_IMG: TBlobField;
    NSTATIC_CHECK_RESULTIMG_IU: TUniStoredProc;
    NPRACTICE_ASSIGN_SEL: TUniStoredProc;
    NPRACTICE_ASSIGN_SELPRACTICE_ID: TIntegerField;
    q_check_picture: TUniQuery;
    q_check_pictureID: TIntegerField;
    IMAGE_LAYERS_DEL: TUniStoredProc;
    IMAGE_LAYERS_INS: TUniStoredProc;
    IMAGE_LAYERS_UPD: TUniStoredProc;
    IMAGE_LAYERS_SEL: TUniStoredProc;
    IMAGE_LAYERS_SELID: TIntegerField;
    IMAGE_LAYERS_SELMEMBER_ID: TStringField;
    IMAGE_LAYERS_SELP_DATE: TDateField;
    IMAGE_LAYERS_SELC_NAME: TStringField;
    IMAGE_LAYERS_SELC_COMMENT: TMemoField;
    ds_IMAGE_LAYERS_SEL: TDataSource;
    IMAGE_LAYERS_SEL_IMAGE: TUniStoredProc;
    IMAGE_LAYERS_SEL_IMAGEC_IMAGE: TBlobField;
    ds_IMAGE_LAYERS_SEL_IMAGE: TDataSource;
    CUST_COMPARE_WIN_DEL: TUniStoredProc;
    CUST_COMPARE_WIN_UPD: TUniStoredProc;
    CUST_COMPARE_WIN_INS: TUniStoredProc;
    CUST_COMPARE_WIN_SEL: TUniStoredProc;
    CUST_COMPARE_WIN_SELID: TStringField;
    CUST_COMPARE_WIN_SELMEMBER_ID: TStringField;
    CUST_COMPARE_WIN_SELMAKE_DATE: TDateField;
    CUST_COMPARE_WIN_SELCOMPARE_NAME: TStringField;
    CUST_COMPARE_WIN_SELCOMPANY_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE1_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE2_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE3_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE4_ID: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE1: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE2: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE3: TStringField;
    CUST_COMPARE_WIN_SELIMAGE_DATE4: TStringField;
    ds_CUST_COMPARE_WIN_SEL: TDataSource;
    q_NSTATIC_CHECK_RESULTIMAGE_ID: TIntegerField;
    NSTATIC_CHECK_RESULT_INS: TUniStoredProc;
    MUSCLE_MAIN_SEL: TUniStoredProc;
    ds_MUSCLE_MAIN_SEL: TDataSource;
    MUSCLE_MAIN_SELID: TIntegerField;
    MUSCLE_MAIN_SELM_NAME: TStringField;
    MUSCLE_IMAGES_SEL: TUniStoredProc;
    MUSCLE_IMAGES_SELID: TIntegerField;
    MUSCLE_IMAGES_SELM_NAME: TStringField;
    MUSCLE_IMAGES_SELM_IMAGE: TBlobField;
    MUSCLE_IMAGES_SELM_KIND: TIntegerField;
    MUSCLE_IMAGES_SELM_DESC: TMemoField;
    MUSCLE_IMAGES_SELM_IDX: TIntegerField;
    MUSCLE_IMAGES_SELM_POINT: TIntegerField;
    MUSCLE_IMAGES_SELM_SEX: TIntegerField;
    ds_MUSCLE_IMAGES_SEL: TDataSource;
    IMAGES_UPD_DRAWONLY: TUniStoredProc;
    CUSTOMER_SEL_BYID: TUniStoredProc;
    ds_CUSTOMER_SEL_BYID: TDataSource;
    CUSTOMER_SEL_BYIDUID: TStringField;
    CUSTOMER_SEL_BYIDCNAME: TStringField;
    CUSTOMER_SEL_BYIDSEX: TStringField;
    CUSTOMER_SEL_BYIDCAGE: TStringField;
    CUSTOMER_SEL_BYIDCTEL: TStringField;
    CUSTOMER_SEL_BYIDCEMAIL: TStringField;
    CUSTOMER_SEL_BYIDCBIGO: TStringField;
    CUSTOMER_SEL_BYIDREG_DATE: TDateField;
    CUSTOMER_SEL_BYIDJOBKIND: TStringField;
    CUSTOMER_SEL_BYIDHOBBY: TStringField;
    CUSTOMER_SEL_BYIDHOW_TO_COME: TStringField;
    CUSTOMER_SEL_BYIDPURPOSE: TStringField;
    CUSTOMER_SEL_BYIDBLOOD: TStringField;
    CUSTOMER_SEL_BYIDBLOOD_PRESSURE: TStringField;
    CUSTOMER_SEL_BYIDBODY_STATUS: TStringField;
    CUSTOMER_SEL_BYIDFOOD_KIND: TStringField;
    CUSTOMER_SEL_BYIDFOOD_HOW_MUCH: TStringField;
    CUSTOMER_SEL_BYIDFOOD_HOW_OFTEN: TStringField;
    CUSTOMER_SEL_BYIDHOW_TO_COME_ETC: TStringField;
    CUSTOMER_SEL_BYIDPURPOSE_ETC: TStringField;
    CUSTOMER_SEL_BYIDPURPOSE_DESC: TStringField;
    CUSTOMER_SEL_BYIDIS_ACTIVE: TIntegerField;
    CUSTOMER_SEL_BYIDPHOTO: TBlobField;
    CUSTOMER_SEL_RECENT_REG: TUniStoredProc;
    ds_CUSTOMER_SEL_RECENT_REG: TDataSource;
    CUSTOMER_SEL_RECENT_REGUID: TStringField;
    CUSTOMER_SEL_RECENT_REGCNAME: TStringField;
    CUSTOMER_SEL_RECENT_REGSEX: TStringField;
    CUSTOMER_SEL_RECENT_REGCTEL: TStringField;
    CUSTOMER_SEL_RECENT_REGREG_DATE: TDateField;
    MUSCLE_IMAGE_POINT_SEL: TUniStoredProc;
    ds_MUSCLE_IMAGE_POINT_SEL: TDataSource;
    MUSCLE_IMAGE_POINT_UPD: TUniStoredProc;
    MUSCLE_IMAGE_POINT_SELID: TIntegerField;
    MUSCLE_IMAGE_POINT_SELMUSCLE_IMAGE: TBlobField;
    MUSCLE_IMAGE_POINT_SELMUSCLE_POSITION: TBlobField;
    MUSCLE_IMAGE_POINT_SELBONE_IMAGE: TBlobField;
    MUSCLE_IMAGE_POINT_SELBONE_POSITION: TBlobField;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure DownloadImage(imgName: string);
    procedure DownloadImage2(imgName, ievName: string);
    procedure UpdateMemberImage(image_name: string; ImageEnVect: TImageEnVect);
    procedure UploadImageToServer(imgName: string);
    procedure UploadImageToServer2(imgName, ievName: string);
    { Private declarations }
  public
    { Public declarations }
    function CheckUrl(url: string): boolean;
    procedure AddCheckData(DATA_ID, ITEM_MAIN, ITEM_SUBITEM, ITEM_SUBITEM2,
      RESULT_VALUE: Integer);
    procedure SetCenter(var srcItems: TcxImageComboBox);
    procedure SelectLocalPictureByID(check_id: string);
    procedure CreateCompareImage(var ImageEnMView : TImageEnMView; data_id: Integer);
    procedure AddCustomerFavorite(UID : string);
    procedure DeleteCustomerFavorite(ID : string);
    function CheckCustomerExists(c_name, c_tel : string) : Integer;
    procedure InsertLatestCustomer;
    procedure RetrievePictureByDate;
    procedure SelectMember(search_str : string);
    procedure RetrieveMemberInfo;
    procedure UpdateImageDraw(id: Integer; dStream: TMemoryStream);
    procedure SelectCustomerByID(cust_id : string);
    procedure LoadCheckInitData;

  end;

var
  dmDBCommon: TdmDBCommon;

implementation

uses GlobalVar, UfrmMemberSelect;

{$R *.dfm}

procedure TdmDBCommon.AddCustomerFavorite(UID: string);
begin
  CUSTOMER_FAVORITE_INS.ParamByName('CUST_UID').Value := UID;
  CUSTOMER_FAVORITE_INS.Execute;
end;

function TdmDBCommon.CheckCustomerExists(c_name, c_tel: string): Integer;
begin
  CHECK_CUSTOMER_EXISTS.ParamByName('C_NAME').Value := c_name;
  CHECK_CUSTOMER_EXISTS.ParamByName('C_TEL').Value := c_tel;
  CHECK_CUSTOMER_EXISTS.Active := True;
  CHECK_CUSTOMER_EXISTS.Refresh;
  Result := CHECK_CUSTOMER_EXISTSREC_CNT.Value;
end;

Function TdmDBCommon.CheckUrl(url:string) : boolean;
var
  hSession, hfile, hRequest: hInternet;
  dwindex,dwcodelen : dword;
  dwcode:array[1..20] of char;
  res : pchar;
begin
  if pos('http://',lowercase(url))=0 then
     url := 'http://'+url;
  Result := false;
  hSession := InternetOpen('InetURL:/1.0', INTERNET_OPEN_TYPE_PRECONFIG,nil, nil, 0);
  if assigned(hsession) then begin
    hfile := InternetOpenUrl(hsession, pchar(url), nil, 0, INTERNET_FLAG_RELOAD, 0);
    dwIndex  := 0;
    dwCodeLen := 10;
    HttpQueryInfo(hfile, HTTP_QUERY_STATUS_CODE, @dwcode, dwcodeLen, dwIndex);
    res := pchar(@dwcode);
    result:= (res ='200') or (res ='302');
    if assigned(hfile) then
      InternetCloseHandle(hfile);
    InternetCloseHandle(hsession);
  end;
end;

procedure TdmDBCommon.DataModuleCreate(Sender: TObject);
const
  server_id = '210.122.36.244';
begin
  try
    UniDBConnection.Server := server_id;
    UniDBConnection.Port := 3050;
    UniDBConnection.Database := 'D:\fb_data\newBodyCheck\GOODPOSTURE2.FDB';
    UniDBConnection.LoginPrompt := False;
    UniDBConnection.ProviderName := 'InterBase';
    UniDBConnection.Password := 'masterkey';
    UniDBConnection.Username := 'sysdba';
    UniDBConnection.Connected := True;

    UniConnImageDB.Server := server_id;
    UniConnImageDB.Port := 3050;
    UniConnImageDB.Database := 'D:\fb_data\newBodyCheck\image_db\' + LoginUserCompID + '\CUSTOMER_IMAGES.FDB';
    UniConnImageDB.LoginPrompt := False;
    UniConnImageDB.ProviderName := 'InterBase';
    UniConnImageDB.Password := 'masterkey';
    UniConnImageDB.Username := 'sysdba';
    UniConnImageDB.Connected := True;

    IMAGE_DESCRIPT_LIST.Active := True;
    dsIMAGE_DESCRIPT_LIST.DataSet.Refresh;
    NPRACTICE_SEL.Open;
    REGISTED_CENTER_LOOK.ParamByName('COMP_ID').Value := LoginUserCompID;
    REGISTED_CENTER_LOOK.Open;
    ds_REGISTED_CENTER_LOOK.DataSet.Refresh;
    t_customer_kind.Active := True;
    d_customer_kind.DataSet.Refresh;
    vtCustomerImage.Open;
    vtCustomerImage.Active := True;
    t_NPRACTICE_look.Active := True;
    d_NPRACTICE_look.DataSet.Refresh;
  except on E: Exception do
    ShowMessage('서버에 연결할 수 없습니다.');
  end;
end;

procedure TdmDBCommon.LoadCheckInitData;
begin
  if NPRACTICE_SEL.Active = False then begin
    NPRACTICE_SEL.Active := True;
    d_NPRACTICE.DataSet.Refresh;
  end;
  if t_NPRACTICE_look.Active = False then begin
    t_NPRACTICE_look.Active := True;
    d_NPRACTICE_look.DataSet.Refresh;
  end;
  if CHECK_ITEM_TREE_BODY_SEL.Active = False then begin
    CHECK_ITEM_TREE_BODY_SEL.Active := True;
    d_CHECK_ITEM_TREE_BODY_SEL.DataSet.Refresh;
  end;
  if CHECK_ITEM_TREE_RESULT_SEL.Active = False then begin
    CHECK_ITEM_TREE_RESULT_SEL.Active := True;
    d_CHECK_ITEM_TREE_RESULT_SEL.DataSet.Refresh;
  end;
  if q_CHECK_ITEM_TREE.Active then begin
    q_CHECK_ITEM_TREE.Active := True;
    d_CHECK_ITEM_TREE.DataSet.Refresh;
  end;
end;

procedure TdmDBCommon.DeleteCustomerFavorite(ID: string);
begin
  CUSTOMER_FAVORITE_DEL.ParamByName('ID').Value := ID;
  CUSTOMER_FAVORITE_DEL.Execute;
end;

procedure TdmDBCommon.RetrievePictureByDate;
begin
  IMAGES_SEL.ParamByName('CUST_ID').Value := CustomerImages.CustID;
  IMAGES_SEL.ParamByName('P_DATE').Value := IMAGES_SEL_BYDATEP_DATE.Value;
  IMAGES_SEL.Open;
  ds_IMAGES_SEL.DataSet.Refresh;
end;

procedure TdmDBCommon.CreateCompareImage(var ImageEnMView : TImageEnMView; data_id : Integer);
var
  i, cnt, r : Integer;
  image_id : string;
  image_date : TDateTime;
  mem_stream : TMemoryStream;
begin
//  ImageEnMView.Clear;
//  CUST_COMPARE_MULTI_SEL.ParamByName('d_id').Value := data_id;
//  CUST_COMPARE_MULTI_SEL.Active := True;
//  CUST_COMPARE_MULTI_SEL.Refresh;
//  cnt := CUST_COMPARE_MULTI_SEL.RecordCount;
//  CUST_COMPARE_MULTI_SEL.First;
//  for i := 0 to cnt - 1 do begin
//    IMAGE_ID := CUST_COMPARE_MULTI_SELIMAGE_ID.Value;
//    IMAGE_DATE := CUST_COMPARE_MULTI_SELIMAGE_DATE.Value;
//
//    CUSTOMER_IMAGE3_SEL_UID.ParamByName('UID').Value := IMAGE_ID;
//    CUSTOMER_IMAGE3_SEL_UID.Active := True;
//    CUSTOMER_IMAGE3_SEL_UID.Refresh;
//
//    mem_stream := TMemoryStream.Create;
//    TBlobField(CUSTOMER_IMAGE3_SEL_UID.FieldByName('image_data')).SaveToStream(mem_stream);
//    if mem_stream.Size > 0 then begin
//      mem_stream.Position := 0;
//      r := ImageEnMView.AppendImage;
//      //ImageEnMView.ImageTopText[r].Caption := '사진[' + IntToStr(r+1) + ']';
//      ImageEnMView.SetImageFromStream(r, mem_stream, 0);
//      ImageEnMView.ImageFileName[r] := IMAGE_ID;
//    end;
//    mem_stream.Free;
//    CUST_COMPARE_MULTI_SEL.Next;
//  end;
end;

procedure TdmDBCommon.SelectCustomerByID(cust_id: string);
begin
  CUSTOMER_SEL_BYID.ParamByName('CUSTOMER_ID').Value := cust_id;
  CUSTOMER_SEL_BYID.Open;
  ds_CUSTOMER_SEL_BYID.DataSet.Refresh;
end;

procedure TdmDBCommon.SelectLocalPictureByID(check_id : string);
begin
  vtCustomerImage.Filter := 'check_id = "' + check_id + '"';
  vtCustomerImage.Filtered := True;
end;

procedure TdmDBCommon.AddCheckData(DATA_ID, ITEM_MAIN, ITEM_SUBITEM, ITEM_SUBITEM2, RESULT_VALUE : Integer);
begin
  usp_NSTATIC_CHECK_RESULT_IU.ParamByName('DATA_ID').Value := DATA_ID;
  usp_NSTATIC_CHECK_RESULT_IU.ParamByName('ITEM_MAIN').Value := ITEM_MAIN;
  usp_NSTATIC_CHECK_RESULT_IU.ParamByName('ITEM_SUBITEM').Value := ITEM_SUBITEM;
  usp_NSTATIC_CHECK_RESULT_IU.ParamByName('ITEM_SUBITEM2').Value := ITEM_SUBITEM2;
  usp_NSTATIC_CHECK_RESULT_IU.ParamByName('RESULT_VALUE').Value := RESULT_VALUE;
  usp_NSTATIC_CHECK_RESULT_IU.ExecProc;
end;

procedure TdmDBCommon.SetCenter(var srcItems: TcxImageComboBox);
var
  Items : TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
  i, cnt : Integer;
begin
  Items := srcItems.Properties.Items;
  Items.BeginUpdate;
  Item := Items.Add as TcxImageComboBoxItem;
  Item.Description := '전체';
  Item.Value := 0;
  cnt := REGISTED_CENTER_LOOK.RecordCount;
  REGISTED_CENTER_LOOK.First;
  for i := 0 to cnt - 1 do begin
    Item := Items.Add as TcxImageComboBoxItem;
    Item.Description  := REGISTED_CENTER_LOOKC_NAME.Value;
    Item.Value        := REGISTED_CENTER_LOOKID.Value;
    REGISTED_CENTER_LOOK.Next;
  end;
  Items.EndUpdate;
  if LoginUserCenterID > 0 then
    srcItems.ItemIndex := LoginUserCenterID
  else
    srcItems.ItemIndex := 1;
end;


procedure TdmDBCommon.UpdateImageDraw(id: Integer; dStream: TMemoryStream);
begin
  IMAGES_UPD_DRAWONLY.ParamByName('ID').Value := id;
  IMAGES_UPD_DRAWONLY.ParamByName('DRAW_DATA').LoadFromStream(dStream, ftBlob);
  IMAGES_UPD_DRAWONLY.ExecProc;
end;

procedure TdmDBCommon.UpdateMemberImage(image_name: string; ImageEnVect : TImageEnVect);
var
  mStream : TMemoryStream;
begin
  mStream := TMemoryStream.Create;
  try
    ImageEnVect.IO.SaveToStreamJpeg(mStream);
    mStream.Position := 0;
    IMAGE_TEMP_INS.ParamByName('CENTER_ID').Value := LoginUserCompID;
    IMAGE_TEMP_INS.ParamByName('IMAGE_NAME').Value := image_name;
    IMAGE_TEMP_INS.ParamByName('IMAGE_DATA').LoadFromStream(mStream, ftBlob);
    IMAGE_TEMP_INS.ExecProc;
  finally
    mStream.Free;
  end;
end;

procedure TdmDBCommon.UploadImageToServer(imgName: string);
var
  AUrl       : String;
  DataPath   : String;
  DataStream : TIdMultiPartFormDataStream;
  ResStream  : TMemoryStream;
  ResultStr : TStringList;
begin
  DataPath   := imgName;
  AUrl       := 'http://bodycheck.co.kr/upload_image.php';
  DataStream := TIdMultiPartFormDataStream.Create;
  ResStream  := TMemoryStream.Create;
  ResultStr  := TStringList.Create;
  try
    try
      DataStream.AddFormField('comp_id', LoginUserCompID);  //use form input data
      DataStream.AddFile('upfile', DataPath, '');
      //업로드
      IdHTTP1.Post(AUrl, DataStream, ResStream);
      ResStream.Position := 0;
      //서버에서받은 문자열을 표시
      ResultStr.Text := '';
      ResultStr.Add(IdGlobal.ReadStringFromStream(ResStream, -1));
      //ShowMessage(ResultStr.Text);
    finally
      FreeAndNil(DataStream);
      FreeAndNil(ResStream);
      FreeAndNil(ResultStr);
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TdmDBCommon.UploadImageToServer2(imgName, ievName: string);
var
  AUrl       : String;
  DataPath1   : String;
  DataPath2   : String;
  DataStream : TIdMultiPartFormDataStream;
  ResStream  : TMemoryStream;
  ResultStr : TStringList;
begin
  DataPath1   := imgName;
  DataPath2   := ievName;
  AUrl       := 'http://bodycheck.co.kr/upload_image.php';
  DataStream := TIdMultiPartFormDataStream.Create;
  ResStream  := TMemoryStream.Create;
  ResultStr  := TStringList.Create;
  try
    try
      DataStream.AddFormField('comp_id', LoginUserCompID);  //use form input data
      DataStream.AddFile('upfile', DataPath1, '');
      DataStream.AddFile('upfile', DataPath2, '');
      //업로드
      IdHTTP1.Post(AUrl, DataStream, ResStream);
      ResStream.Position := 0;
      //서버에서받은 문자열을 표시
      ResultStr.Text := '';
      ResultStr.Add(IdGlobal.ReadStringFromStream(ResStream, -1));
      //ShowMessage(ResultStr.Text);
    finally
      FreeAndNil(DataStream);
      FreeAndNil(ResStream);
      FreeAndNil(ResultStr);
    end;
  except on E: Exception do
    ShowMessage(E.Message);
  end;
end;

procedure TdmDBCommon.DownloadImage(imgName: string);
var
  mStream : TMemoryStream;
begin
  try
    mStream := TMemoryStream.Create;
    try
      IdHTTP1.Get(gsServerImageFolder + imgName, mStream);
      mStream.SaveToFile(gsLocalImageFolder + imgName);
    finally
      mStream.Free;
    end;
  except on E: Exception do

  end;
end;

procedure TdmDBCommon.DownloadImage2(imgName, ievName: string);
var
  mStream : TMemoryStream;
  mStream2 : TMemoryStream;
begin
  try
    mStream := TMemoryStream.Create;
    mStream2 := TMemoryStream.Create;
    try
      IdHTTP1.Get(gsServerImageFolder + imgName, mStream);
      mStream.SaveToFile(gsLocalImageFolder + imgName);
    finally
      mStream.Free;
      mStream2.Free;
    end;
  except on E: Exception do

  end;
end;

procedure TdmDBCommon.SelectMember(search_str : string);
begin
  CUSTOMER_SEARCH.ParamByName('COMP_ID').Value := LoginUserCompID;
  CUSTOMER_SEARCH.ParamByName('NAME').Value := search_str;
  CUSTOMER_SEARCH.Open;
  ds_CUSTOMER_SEARCH.DataSet.Refresh;
end;

procedure TdmDBCommon.RetrieveMemberInfo;
begin
  IMAGES_SEL_BYDATE.ParamByName('C_ID').Value := CustomerImages.CustID;
  IMAGES_SEL_BYDATE.Open;
  ds_IMAGES_SEL_BYDATE.DataSet.Refresh;
end;

procedure TdmDBCommon.InsertLatestCustomer;
begin
//  LATEST_CUSTOMER_SEL.ParamByName('LOGIN_USER').Value := LoginUserID;
//  LATEST_CUSTOMER_SEL.Open;
//  ds_LATEST_CUSTOMER_SEL.DataSet.Refresh;
  LATEST_CUSTOMER_INS.ParamByName('CUST_ID').Value := CustomerImages.CustID;
  LATEST_CUSTOMER_INS.ParamByName('CUST_NAME').Value := CustomerImages.CustName;
  LATEST_CUSTOMER_INS.ParamByName('CUST_TEL').Value := CustomerImages.CustTel;
  LATEST_CUSTOMER_INS.ParamByName('CUST_SEX').Value := CustomerImages.CustSex;
  LATEST_CUSTOMER_INS.ParamByName('USER_ID').Value := LoginUserID;
  LATEST_CUSTOMER_INS.ExecProc;
end;


end.
