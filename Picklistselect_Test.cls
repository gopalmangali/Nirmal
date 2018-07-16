@isTest
private class Picklistselect_Test{
   static testMethod void test_getpicklst_UseCase1(){
    Picklistselect obj01 = new Picklistselect();
    obj01.selected = 'test data';
    obj01.getpicklst();
  }
}