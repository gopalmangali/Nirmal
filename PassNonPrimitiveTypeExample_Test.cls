@isTest
private class PassNonPrimitiveTypeExample_Test{
   static testMethod void test_createTemperatureHistory_UseCase1(){
    PassNonPrimitiveTypeExample obj01 = new PassNonPrimitiveTypeExample();
    PassNonPrimitiveTypeExample.createTemperatureHistory();
  }
   static testMethod void test_reference_UseCase1(){
    PassNonPrimitiveTypeExample obj01 = new PassNonPrimitiveTypeExample();
    PassNonPrimitiveTypeExample.reference(new List<Integer>());
  }
   static testMethod void test_referenceNew_UseCase1(){
    PassNonPrimitiveTypeExample obj01 = new PassNonPrimitiveTypeExample();
    PassNonPrimitiveTypeExample.referenceNew(new List<Integer>());
  }
}