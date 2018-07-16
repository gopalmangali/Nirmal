@isTest
private class TestCalculator_Test{
   static testMethod void test_calculate_UseCase1(){
    TestCalculator obj01 = new TestCalculator();
    obj01.inputField1 = 10;
    obj01.outputField1 = 10;
    obj01.outputField2 = 10;
    obj01.outputField3 = 10;
    obj01.calculate();
  }
}