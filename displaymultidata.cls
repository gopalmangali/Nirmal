public class displaymultidata {

public List <dental_doctor__c> doc = new List<dental_doctor__c>();

    public List <dental_doctor__c> getRecords()
     {
     
     
    doc = [select language__c,no_of_paisents__c,fee__c from dental_doctor__c ];
        return doc;
    }

   public List<dental__c> dental = new List<dental__c>();
   public List <dental__c> getRecards()
   {
   
  dental = [select fee__c,language__c from dental__c ];
  return dental;

    }
}