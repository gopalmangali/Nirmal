@isTest
private class DMLPage_Test{
   static testMethod void test_saveData_UseCase1(){
    DMLPage obj01 = new DMLPage();
    obj01.acc = new Account(); 
    obj01.saveData();
  }
   static testMethod void test_saveNewData_UseCase2(){
    DMLPage obj01 = new DMLPage();
     
    obj01.acc = new Account();
  
    obj01.saveNewData();
  }
}