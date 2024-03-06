@isTest
public class AccountTriggerHandlerTest {

    @isTest
    public static void accountTest()
    {
        Account acc=new Account();
        acc.name='simple example';
        insert acc;
        
        List<Contact> con = [select id,AccountId,lastname from Contact where accountId=:acc.id];
        system.assertequals(1,con.size());
    }
}