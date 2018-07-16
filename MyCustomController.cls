public class MyCustomController{

public Account acc{get;set;}
public MyCustomController(){
acc=new Account();

}

public void saveAccount(){
    upsert acc;
}

public void populateParentAccount(){
    if(this.acc.Type=='Other') 
        acc.ParentID=[Select id from account where name='ACC'][0].id;
}
}