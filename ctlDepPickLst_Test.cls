@isTest
private class ctlDepPickLst_Test{
   static testMethod void test_getCountries_UseCase1(){
    ctlDepPickLst obj01 = new ctlDepPickLst();
    obj01.country = 'test data';
    obj01.state = 'test data';
    obj01.city = 'test data';
    obj01.getCountries();
  }
   static testMethod void test_getStates_UseCase1(){
    ctlDepPickLst obj01 = new ctlDepPickLst();
    obj01.country = 'test data';
    obj01.state = 'test data';
    obj01.city = 'test data';
    obj01.getStates();
  }
   static testMethod void test_getCitys_UseCase1(){
    ctlDepPickLst obj01 = new ctlDepPickLst();
    obj01.country = 'test data';
    obj01.state = 'test data';
    obj01.city = 'test data';
    obj01.getCitys();
  }
}