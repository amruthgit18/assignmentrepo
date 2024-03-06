public class AccountTriggerHandler {
 public static void insertAccount(List<account> accList)
    {
        List<Contact> conList=new List<Contact>();
        for(Account acc:accList)
        {
            Contact con=new Contact();
            con.LastName=acc.name;
            con.AccountId=acc.id;
            conList.add(con);
        }
        
        if(!conList.isEmpty())
        {
            insert conList;
        }
    }

}