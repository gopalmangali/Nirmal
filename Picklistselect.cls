public with sharing class Picklistselect {

 public string selected{get;set;}
 
  public Picklistselect()
  {
    
  }
  
  public List<SelectOption> getpicklst()
  {
    List<SelectOption> option=new List<SelectOption>();
    List<Account> acclst=[Select Name,website from Account];
    
    option.add(new SelectOption('-None-','-None-'));
    for(Account ob:acclst)
    {
      option.add(new SelectOption(ob.id,ob.Name));
    }
    
    return option;
  }
}