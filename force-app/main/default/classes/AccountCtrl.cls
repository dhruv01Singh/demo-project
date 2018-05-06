public without sharing class AccountCtrl {
    //Properties
    public Id accId {get;set;}
    public Id conId {get;set;}
    public String accountName {get;set;}
    public String contactName {get;set;}

    // Constructor
    public String fetchAccount(String strQuery) {
        //fetch accounts.
        return JSON.serialize(Database.query(strQuery)); 
    }

    public String fetchAccountByStatus(String strQuery) {
        //fetch accounts by Status
        strQuery += ' WHERE status = \'Active\'';
        return JSON.serialize(Database.query(strQuery)); 
    }

    public String fetchAccountByEmail(String strQuery, String emailAddress) {
        //fetch acccount by email address.
        strQuery += ' WHERE email = ' + emailAddress;
        return JSON.serialize(Database.query(strQuery)); 
    }
}