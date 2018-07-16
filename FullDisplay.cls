public with sharing class FullDisplay {
public List<dental__c>doc = new List<dental__c>();


    public List<dental__c> getRecords() {
    doc = [select Id,age__c,language__c from dental__c limit 10];
        return doc ;
    }

}