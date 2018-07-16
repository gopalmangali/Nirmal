@isTest
Public class leaddup1Test
             {
          static testMethod void test_LeadTrigger()
                           {
                        test.startTest();
                            list<lead> l1 = new list<lead>();
                            lead l2= new lead();
                             l2.phone = '9739979134';
                             l2.email = 'm.gopal507@gmail.com';
                             l2.MobilePhone = '9642660661';
                             l2.LastName = 'gopi'; 
                             l2.Company = 'accenture';  
                           l1.add(l2);
                            insert l1;
                                                 
                            test.stopTest();
}

}