@isTest
private class mySecondController_Test{
  static testMethod void test_getAccount_UseCase1(){
    mySecondController obj01 = new mySecondController();
    obj01.getAccount();
  }
  static testMethod void test_save_UseCase1(){
    //Account obj = new Account(Name = 'TestAcc',Site='Test123');
    //insert obj;
    
   // Pagerefernce pageRef = new Pagereference('/'+obj.id);
   // Test.setCurrentPage(pageRef);
   
    //ApexPages.StandardController sc = new ApexPages.StandardController(obj);
    mySecondController obj01 = new mySecondController();
     Account obj = obj01.getAccount();
     obj.Name = 'TestAcc';
     obj.Site='Test123';
    obj01.save();
  }
}