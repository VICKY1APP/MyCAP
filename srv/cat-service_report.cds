using norris.report as crc from '../db/data-module';
using CV_USERDETAILS from '../db/data-moduleRep';
using CV_COMPDETAIL from '../db/data-moduleRep';
using CV_COMP from '../db/data-moduleRep';


service CatalogServiceReport {

    entity company           as projection on crc.ZTCompany;
    entity Defects           as projection on crc.ZTDefects;

    @readonly
    entity cv_userdetails    as projection on CV_USERDETAILS;

    @readonly
    entity cv_compdetail     as projection on CV_COMPDETAIL;

    @readonly
    entity cv_comp_viewtable as projection on CV_COMP;


    @readonly
    entity join_comp          as
        select from CV_USERDETAILS {
            COMPANYCODE as CompID,
            COMPNAYNAME,
            comp : Association to crc.ZTCompany on comp.companycode = CompID
        };

}
