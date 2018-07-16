@isTest
private class dynamicpicklist_Test{
   static testMethod void test_getcitynames_UseCase1(){
    dynamicpicklist obj01 = new dynamicpicklist();
    obj01.city = 'test data';
    obj01.town = 'test data';
    obj01.village = 'test data';
    obj01.newpicklistvalue = 'test data';
    obj01.getcitynames();
  }
   static testMethod void test_gettownnames_UseCase1(){
    dynamicpicklist obj01 = new dynamicpicklist();
    obj01.city = 'test data';
    obj01.town = 'test data';
    obj01.village = 'test data';
    obj01.newpicklistvalue = 'test data';
    obj01.gettownnames();
  }
   static testMethod void test_getvillagenames_UseCase1(){
    dynamicpicklist obj01 = new dynamicpicklist();
    obj01.city = 'test data';
    obj01.town = 'test data';
    obj01.village = 'test data';
    obj01.newpicklistvalue = 'test data';
    obj01.getvillagenames();
  }
   static testMethod void test_saverec_UseCase1(){
    dynamicpicklist obj01 = new dynamicpicklist();
    obj01.city = 'test data';
    obj01.town = 'test data';
    obj01.village = 'test data';
    obj01.newpicklistvalue = 'test data';
    obj01.saverec();
  }
}