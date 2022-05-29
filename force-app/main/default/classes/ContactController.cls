public with sharing class ContactController {
    @AuraEnabled(cacheable = true)
   public static List<Contact> getContacts() {
       return [SELECT firstName, lastName, email FROM Contact];
   }
}
