@isTest

 public class showAccountTest
 {
     public static testmethod void Test1()
     
     {
      
      Account acc = new account();
       acc.Name = 'Gopal';
       acc.phone = '9642660661';
       //acc.lastname = 'gopi';
       insert acc;
       
       ApexPages.currentPage().getParameters().put('id',acc.id);
        showAccount  showObj = new showAccount();  
        showObj.save();
        //System.assertEquals(showObj.acc.id != null);
       
     }
 
 }