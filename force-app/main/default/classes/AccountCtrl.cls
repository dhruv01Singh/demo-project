public class AccountCtrl {
    public Id accId {get;set;}
    public Id conId {get;set;}

    public AccountCtrl(Id accountId, Id contactId) {
        this.accId = accountId;
        this.conId = contactId;
    }

    public String fetchAccount(String strQuery) {
        return JSON.serialize(Database.query(strQuery)); 
    }

     public String fetchAccountByStatus(String strQuery) {
         strQuery += ' WHERE status = \'Active\'';
        return JSON.serialize(Database.query(strQuery)); 
    }
}