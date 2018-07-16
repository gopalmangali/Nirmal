public with sharing class stdwithclass {

ApexPages.StandardController newcon;

    public stdwithclass(ApexPages.StandardController controller) {
    newcon = controller;
    }
public pagereference dosave()
{
 newcon.save();
 
 return (new pagereference('/apex/today').setredirect(true));
}

}