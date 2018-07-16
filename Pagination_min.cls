public with sharing class Pagination_min { 
    Public Integer noOfRecords{get; set;}  
    Public Integer size{get;set;} 
    public ApexPages.StandardSetController setCon { 

        get{  
            if(setCon == null){ 

                size = 500;  
                string OwnersId =  userinfo.getUserId() ; 
 
                string Rectypeid =   '01240000000Uexl'; 
 
                string Rectypeid2 = '01240000000cnJS'; 
 
                string queryString = 'Select Name, StageName,FED__c,Broker__c,Broker_Name__c,Core_Product__c,LeadSource,Number_Quoted__c,CreatedDate FROM Opportunity Where OwnerId = :OwnersId AND IsClosed = False AND (RecordTypeId = :Rectypeid OR RecordTypeId= :RecTypeId2) order by FED__c'; 

                setCon = new ApexPages.StandardSetController(Database.getQueryLocator(queryString)); 

                setCon.setPageSize(size); 

                noOfRecords = setCon.getResultSize(); 
 
            } 
            return setCon; 
 
        }set; 

    } 
 
        
    Public List<Opportunity> getOpps(){ 
 
        List<Opportunity> oppList = new List<Opportunity>(); 
 
        for(Opportunity o : (List<Opportunity>)setCon.getRecords()) 
 
            oppList.add(o); 
 
        return oppList; 
 
    }  
        
    public pageReference refresh() { 
 
        setCon = null; 
 
        getOpps(); 
 
        setCon.setPageNumber(1); 
 
        return null;  
 
    } 
 
}