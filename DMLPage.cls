Public Class DMLPage{
    public  Account acc{get;set;}
    
    public DMLPage(){
        acc = New Account();
    }
    
    public pageReference saveData(){
        insert acc;
        
        pageReference pagRef = New PageReference('/'+acc.id);
        return pagRef;
    }
    
    
    public void saveNewData(){
        insert acc;
        acc = New Account();
    }
    
    
}