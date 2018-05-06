public class AccountCtrl {
    public Id accId {get;set;}
    public Id conId {get;set;}
    public String accountName {get;set;}
    public String contactName {get;set;}

    public String fetchAccount(String strQuery) {
        return JSON.serialize(Database.query(strQuery)); 
    }

    public String fetchAccountByStatus(String strQuery) {
        strQuery += ' WHERE status = \'Active\'';
        return JSON.serialize(Database.query(strQuery)); 
    }

    public String fetchAccountByName(String strQuery, String accountName) {
        strQuery += ' WHERE name = ' + accountName;
        return JSON.serialize(Database.query(strQuery)); 
    }
}