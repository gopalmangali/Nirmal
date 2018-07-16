@isTest
private class LoginPages_Test{
   static testMethod void test_registerUser_UseCase1(){
    LoginPages obj01 = new LoginPages();
    obj01.password = 'test data';
    obj01.username = 'test data';
    obj01.registerUser();
  }
}