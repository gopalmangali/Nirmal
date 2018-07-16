@isTest
    private class TestRestrictContactByName
        {
            @istest static void TestRestrictContactByName()   
                {
                   List<Contact> listcontact = new list<contact>();
                    Contact con1 = new Contact(FirstName='Francesco', LastName='Riggio' , email='Test@test.com');
                    Contact con2 = new Contact(FirstName='Francesco1', LastName = 'INVALIDNAME',email='Test@test.com');
                    listContact.add(con1);
                    listContact.add(con2);                                    
                        
            Test.startTest();
            try
            {
                insert listContact;
            }
            catch(Exception ee)
            {
            }
        
        Test.stopTest(); 
  }                     
}