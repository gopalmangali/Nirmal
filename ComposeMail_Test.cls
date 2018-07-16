@isTest
private class ComposeMail_Test{
   static testMethod void test_sendmai_UseCase1(){
    ComposeMail obj01 = new ComposeMail();
    obj01.attach = new Attachment();
    obj01.text1 = 'gopal';
    obj01.subject1 = 'm.gopal507@gmail.com';
    obj01.toaddre = 'm.gopal507@gmail.com';
    obj01.sendmai();
  }
}