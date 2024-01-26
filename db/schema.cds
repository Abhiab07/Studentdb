namespace com.abhi.studentdb;

entity Student {
    @title: 'Student ID'
    key studentid: String(5);
    @title: 'First Name'
    first_name: String(40) @mandatory;
    @title: 'Last Name'
    last_name: String(40) @mandatory;
    @title: 'Email ID'
    emailid: String(100) @mandatory;
    @title: 'PAN Number'
    pan_no: String(100) @mandatory;
    @title: 'Date of Birth'
    dob: Date @mandatory;
    @title: 'Age'
    virtual age: Integer @Core.Computed;
    @title: 'Gender'
    gender: String(1);//Association to Gender;
    virtual gen_description: String(10)
    
}

@cds.persistence.skip
entity Gender{
     @title: 'code'
     key code:String(1);
     @title: 'description'  
     description: String(10);
}