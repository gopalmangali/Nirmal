@isTest
private class EmailMissionSpecialist_Test{
   static testMethod void test_sendMail_UseCase1(){
    EmailMissionSpecialist obj01 = new EmailMissionSpecialist();
    obj01.sendMail('m.gopal507@gmail.com','test data','test data');
  }
}