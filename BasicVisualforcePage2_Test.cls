@isTest
private class BasicVisualforcePage2_Test{
   static testMethod void test_myAdditionMethod_UseCase1(){
    BasicVisualforcePage2 obj01 = new BasicVisualforcePage2();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.additionValue = 10;
    obj01.myAdditionMethod();
  }
   static testMethod void test_mysubMethod_UseCase1(){
    BasicVisualforcePage2 obj01 = new BasicVisualforcePage2();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.additionValue = 10;
    obj01.mysubMethod();
  }
   static testMethod void test_myMulMethod_UseCase1(){
    BasicVisualforcePage2 obj01 = new BasicVisualforcePage2();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.additionValue = 10;
    obj01.myMulMethod();
  }
   static testMethod void test_myDIVMethod_UseCase1(){
    BasicVisualforcePage2 obj01 = new BasicVisualforcePage2();
    obj01.num1 = 10;
    obj01.num2 = 10;
    obj01.additionValue = 10;
    obj01.myDIVMethod();
  }
}