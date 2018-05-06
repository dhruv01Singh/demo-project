public class AccountCtrl {
    public Id accId {get;set;}
    public Id conId {get;set;}
    public String accountName {get;set;}
    public String contactName {get;set;}

    // Constructor
    public String fetchAccount(String strQuery) {
        return JSON.serialize(Database.query(strQuery)); 
    }

    public String fetchAccountByStatus(String strQuery) {
        strQuery += ' WHERE status = \'Active\'';
        return JSON.serialize(Database.query(strQuery)); 
    }

    public String fetchAccountByEmail(String strQuery, String emailAddress) {
        //fetch acccount by email address.
        strQuery += ' WHERE email = ' + emailAddress;
        return JSON.serialize(Database.query(strQuery)); 
    }
}