public with sharing class displays {

public List <dental_doctor__c> doc = new List<dental_doctor__c>();

   public List <dental_doctor__c> getRecords()
     {
     
     
    doc = [select language__c,no_of_paisents__c,fee__c from dental_doctor__c ];
        return doc;
    }
    
    }