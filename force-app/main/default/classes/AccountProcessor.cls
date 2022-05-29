public with sharing class AccountProcessor {
    @future
    public static void CountContacts(List<Id> recordIds) {
        //recup les comptes
        //recup les contact
        List<Account> AccountsIds = [SELECT Id ,(SELECT Id FROM Contacts) FROM Account WHERE Id IN :recordIds];
        
        //compter le nombre de contact pour chaque compte
        for (Account acc : AccountsIds){
                acc.Number_Of_Contacts__c = acc.Contacts.size();
        }
        //MAJ des comptes
        update AccountsIds;
    }
}
