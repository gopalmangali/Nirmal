@isTest   
private class phonevalidation_Test2{   
    static testMethod void test1(){  
        list<Lead> leads = new list<Lead>(); 
        Lead lead1 = new Lead( Lastname='Demo1', Company='accenture', Phone='111111111', email='test@gmail.com');  
        leads.add(lead1);  
        Lead lead2 = new Lead( Lastname='Demo2',Company='accenture', Phone='111111111', email='test@gmail.com'); 
 
        leads.add(lead2); 
         
       // System.assertEquals('phonevalidation()');                         

 
        insert leads;  
    } 

}