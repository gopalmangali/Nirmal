public class showAccount 
{
  public Account account{get;set;}
  
    public showAccount()
    {
        Id idAccount = apexpages.currentPage().getParameters().get('id'); 
        account=[Select ID, Name from Account where id = : idAccount];
    }
    
    public pageReference save(){
        update account;
        PageReference pageRef = new PageReference('/apex/screen3');
        pageRef.getParameters().put('id', account.Id);
        return pageRef;
    }
}