namespace norris.report;

using {
    cuid,
    managed
} from '@sap/cds/common';


entity ZTCompany {
    key companycode : String;
        compnayname : String;

}

entity ZTDefects {

    key companycode: String;
        obj_no : Integer;
        obj_rev: Integer
}