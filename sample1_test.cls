@isTest
public class sample1_test {
@isTest static void testgetStates()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.Village='Koderma';
       sam.getStates();
       Test.stopTest();
   }
   @isTest static void testgetCities1()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.state='TN';
       sam.getCities();
       Test.stopTest();
   }
   @isTest static void testgetCities2()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.state='AP';
       sam.getCities();
       Test.stopTest();
   }
   @isTest static void testgetCities3()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.state='KL';
       sam.getCities();
       Test.stopTest();
   }
   @isTest static void testgetCities4()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.state='KA';
       sam.getCities();
       Test.stopTest();
   }
   @isTest static void testgetCities5()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.state='AA';
       sam.getCities();
       Test.stopTest();
   }
   @isTest static void testgetvillages1()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='KUR';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages2()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='KDP';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages3()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='CHE';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages4()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='CBE';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages5()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='COA';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages6()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='MVL';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages7()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='BAN';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages8()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='My';
       sam.getvillages();
       Test.stopTest();
   }
   @isTest static void testgetvillages9()
   {
       Test.startTest();
       sample1 sam = new sample1();
       sam.City='AAA';
       sam.getvillages();
       Test.stopTest();
   }
}