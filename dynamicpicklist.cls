public class dynamicpicklist
{
public String city{get; set;}
public String town{get; set;}
public String village{get; set;}


public List<SelectOption> getcitynames()
{
  List<SelectOption> options = new List<SelectOption>();
  List<DynamicPicklist__c> citylist = new List<DynamicPicklist__c>();
  citylist = [Select Id, PicklistValue__c FROM DynamicPicklist__c ];
  options.add(new SelectOption('--None--','--None--'));
  for (Integer j=0;j<citylist.size();j++)
  {
      options.add(new SelectOption(citylist[j].PicklistValue__c,citylist[j].PicklistValue__c));
  }
  return options;
}

public List<SelectOption> gettownnames()
{
  List<SelectOption> options = new List<SelectOption>();
  List<DynamicPicklist__c> Townlist= new List<DynamicPicklist__c>();
  Townlist = [Select Id, PicklistValue__c FROM DynamicPicklist__c ];
  options.add(new SelectOption('--None--','--None--'));
  for (Integer j=1;j<Townlist.size();j++)
  {
      options.add(new SelectOption(Townlist[j].PicklistValue__c,Townlist[j].PicklistValue__c));
  }
  return options;
}



public List<SelectOption> getvillagenames()
{
  List<SelectOption> options = new List<SelectOption>();
  List<DynamicPicklist__c> villagelist= new List<DynamicPicklist__c>();
  villagelist = [Select Id, PicklistValue__c FROM DynamicPicklist__c ];
  options.add(new SelectOption('--None--','--None--'));
  for (Integer j=2;j<villagelist.size();j++)
  {
      options.add(new SelectOption(villagelist[j].PicklistValue__c,villagelist[j].PicklistValue__c));
  }
  return options;
}

public String newpicklistvalue{get; set;}

public void saverec()
{
  DynamicPicklist__c newrec = new DynamicPicklist__c(PicklistValue__c=newpicklistvalue);
  insert newrec;
  newpicklistvalue=NULL;
}

}