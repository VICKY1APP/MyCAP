using norris.report as crc from '../db/data-module';


service CatalogService {
    entity Defects as
        select from crc.ZTCompany
        left join crc.ZTDefects
            on ZTCompany.companycode = ZTDefects.companycode
        {
            ZTCompany.companycode,
            ZTCompany.compnayname,
            ZTDefects.obj_no,
            ZTDefects.obj_rev
        }
}
