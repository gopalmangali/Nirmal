@isTest
private class ClassName_Test{
   static testMethod void test_button2Action_UseCase1(){
    ClassName obj01 = new ClassName();
    obj01.secondButton = false;
    obj01.firstButton = false;
    obj01.button2Action();
  }
   static testMethod void test_button1Action_UseCase1(){
    ClassName obj01 = new ClassName();
    obj01.secondButton = false;
    obj01.firstButton = false;
    obj01.button1Action();
  }
}