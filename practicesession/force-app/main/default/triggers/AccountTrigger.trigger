trigger AccountTrigger on Account (before insert,after insert) {
if(trigger.isInsert && trigger.isAfter)
{
    AccountTriggerHandler.insertAccount(trigger.new);
}
}