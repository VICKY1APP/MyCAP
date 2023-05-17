
context norris.report {

}

@cds.persistence.exists 
Entity CV_USERDETAILS {
        COMPANYCODE: String(5000) not null  @title: 'COMPANYCODE' ; 
        COMPNAYNAME: String(5000)  @title: 'COMPNAYNAME' ; 
        DEVELOPER_ID: String(5000)  @title: 'DEVELOPER_ID' ; 
}

@cds.persistence.exists 
Entity CV_COMPDETAIL {
        COMPNAYNAME: String(5000)  @title: 'COMPNAYNAME' ; 
        DEVELOPER_ID: String(5000)  @title: 'DEVELOPER_ID' ; 
}

@cds.persistence.exists 
Entity CV_COMP {
        COMPNAYNAME: String(5000)  @title: 'COMPNAYNAME' ; 
        DEVELOPER_ID: String(5000)  @title: 'DEVELOPER_ID' ; 
}