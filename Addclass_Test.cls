@isTest
private class Addclass_Test{
   static testMethod void test_add_UseCase122(){
    Addclass obj01 = new Addclass();
    obj01.res = 15;
    obj01.add(10,10);
  }
   static testMethod void test_sub_UseCase1(){
    Addclass obj01 = new Addclass();
    obj01.res = 10;
    obj01.sub(10,10);
  }
   static testMethod void test_contact_UseCase1(){
    Addclass obj01 = new Addclass();
    obj01.res = 10;
    obj01.contact(10,10,'test data');
  }
}