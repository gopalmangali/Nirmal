@isTest
private class addition_Test{
   static testMethod void test_myAdditionMethod_UseCase1(){
    addition obj01 = new addition();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.num3 = 10;
    obj01.additionvalue = 10;
    obj01.myAdditionMethod();
  }
   static testMethod void test_mysubmethed_UseCase1(){
    addition obj01 = new addition();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.num3 = 10;
    obj01.additionvalue = 10;
    obj01.mysubmethed();
  }
   static testMethod void test_mymulmethed_UseCase1(){
    addition obj01 = new addition();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.num3 = 10;
    obj01.additionvalue = 10;
    obj01.mymulmethed();
  }
   static testMethod void test_add_UseCase1(){
    addition obj01 = new addition();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.num3 = 10;
    obj01.additionvalue = 10;
    obj01.add();
  }
}