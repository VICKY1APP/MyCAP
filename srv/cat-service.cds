using norris.report as crc from '../db/data-module';
using CV_USERDETAILS from '../db/data-module';


service CatalogService {
    entity Defects as
        select from crc.ZTCompany
        left join crc.ZTDefects
            on ZTCompany.companycode = ZTDefects.companycode
        {
            ZTCompany.companycode,
            ZTCompany.compnayname,
            ZTDefects.developer_id,
            Sum(
                ZTDefects.obj_rev
            )        as total_rev    : Integer
        }
        group by
            ZTCompany.companycode,
            ZTCompany.compnayname,
            ZTDefects.developer_id;

  entity totalsrv as select from CV_USERDETAILS as user
             { 
              user.COMPANYCODE,
              user.DEVELOPER_ID

             } 

}
