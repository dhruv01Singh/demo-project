@isTest
public class AccountCtrlTest {
    @isTest
    public static void runNegativeTest() {
        Test.startTest();
        AccountCtrl ac = new AccountCtrl();
        String str = ac.fetchAccount('SELECT id, name from Account Limit 10');
        List<Account> listOfAccounts = (List<Account>) JSON.deserialize(str, Account.class);
        System.assertEquals(10, listOfAccounts.size());
        Test.stopTest();
    }
}