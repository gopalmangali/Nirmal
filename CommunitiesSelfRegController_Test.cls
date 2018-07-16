@isTest
private class CommunitiesSelfRegController_Test{
   static testMethod void test_registerUser_UseCase1(){
    CommunitiesSelfRegController obj01 = new CommunitiesSelfRegController();
    obj01.firstName = 'test data';
    obj01.lastName = 'test data';
     System.assert(obj01.registerUser() == null); 
    obj01.email = 'test data';
    obj01.password = 'test data';
    System.assert(obj01.registerUser() == null); 
    obj01.confirmPassword = 'test data';
    obj01.communityNickname = 'test data';
    obj01.registerUser();
    System.assert(obj01.registerUser() == null);  
  }
}

/*@IsTest public with sharing class CommunitiesSelfRegControllerTest {
    @IsTest(SeeAllData=true) 
    public static void testCommunitiesSelfRegController() {
        CommunitiesSelfRegController controller = new CommunitiesSelfRegController();
        controller.firstName = 'FirstName';
        controller.lastName = 'LastName';
        controller.email = 'test@force.com';
        controller.communityNickname = 'test';
        
        // registerUser will always return null when the page isn't accessed as a guest user
        System.assert(controller.registerUser() == null);    
        
        controller.password = 'abcd1234';
        controller.confirmPassword = 'abcd123';
        System.assert(controller.registerUser() == null);  
    }    
}
*/