using norris.report as crc from '../db/data-module';
using CV_USERDETAILS from '../db/data-module';


service CatalogServiceReport {

    entity company as projection on crc.ZTCompany;
    entity Defects as projection on crc.ZTDefects;

    @readonly
    entity cv_userdetails as projection on CV_USERDETAILS;
    

}
