@isTest
private class RandomContactFactory_Test{
   static testMethod void test_generateRandomContacts_UseCase1(){
    RandomContactFactory obj01 = new RandomContactFactory();
    RandomContactFactory.generateRandomContacts(10,'test data');
  }
}