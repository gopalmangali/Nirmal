@isTest
private class multiAccountInsert_Test{
   static testMethod void test_addrow_UseCase1(){
    multiAccountInsert obj01 = new multiAccountInsert();
    obj01.accts = new List<Account>();
    obj01.addrow();
  }
   static testMethod void test_save_UseCase1(){
    multiAccountInsert obj01 = new multiAccountInsert();
    obj01.accts = new List<Account>();
    obj01.save();
  }
}