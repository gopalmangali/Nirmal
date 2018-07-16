public with sharing class DynamicColums
 {

  public Boolean showPhone {get; set;}
  public Boolean showType {get; set;}
  public Boolean showName {get; set;}
  public String selPicklist{get;set;}

  public List<Account> accounts {get; set;}

  public DynamicColums(){
    //Get reference to the custom setting
   // ColumDisplay__c columnSettings = ColumDisplay__c.getInstance('cs2');

    //Set individual variables based on custom setting fields
    //showPhone = columnSettings.showPhone__c;
   // showType = columnSettings.showType__c;
   // showName = columnSettings.showName__c;
    accounts = [SELECT Name, Type, Phone from Account];
    
  }
  
   Public List<SelectOption> getpicklistval()
   {
    List<SelectOption> temp = new List<SelectOption>();
    for(Account a : [SELECT Name, Type, Phone from Account where type!=null] )
    {
     temp.add(new SelectOption(a.type,a.type));
    }
   return temp;
}



}