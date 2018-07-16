@isTest
private class EmailManager_Test{
   static testMethod void test_sendMail_UseCase1(){
    EmailManager obj01 = new EmailManager();
    obj01.sendMail('test data','test data','test data');
  }
}