/*public class ContactAndLeadSearch
{
    public static List<List<SObject>> searchContactsAndLeads(String str)
    {
        List<List<sObject>> searchList = [FIND :str IN ALL FIELDS RETURNING Contact(FirstName,LastName) ,Lead(FirstName,Lastname)];
        return searchList;
    }

}*/



Public Class ContactAndLeadSearch
{
        Public static List<List<sObject>> searchContactsAndLeads(String searchword)
        {
            String searchQuery = 'FIND \'' + searchword + '\' IN ALL FIELDS RETURNING Lead(Name,FirstName,LastName ), Contact(FirstName,LastName )';
            List<List<sObject>> searchConLead = search.query(searchQuery);
            return searchConLead;
        }
}