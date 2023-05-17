namespace norris.report;


using {
    cuid,
    managed
} from '@sap/cds/common';

// context norris.report {
entity ZTCompany {
    key companycode : String;
        compnayname : String;

}
entity ZTDefects {

    key companycode: String;
    key developer_id: String;
        obj_no : Integer;
        obj_rev: Integer
}
// }

// @cds.persistence.exists 
// Entity CV_USERDETAILS {
//         COMPANYCODE: String(5000) not null  @title: 'COMPANYCODE' ; 
//         COMPNAYNAME: String(5000)  @title: 'COMPNAYNAME' ; 
//         DEVELOPER_ID: String(5000)  @title: 'DEVELOPER_ID' ; 
// }