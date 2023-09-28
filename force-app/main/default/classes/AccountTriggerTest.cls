@isTest
public with sharing class AccountTriggerTest {
    @TestSetup
    static void makeData(){
        Account ac = new account();
        ac.Name     = 'Ankit';
        insert ac ; 
    }
    @isTest
    public static testmethod1(){
        ac = [Select id , name from Account WHERE name = 'Ankit'];
        AccountTriggerhandler.AccountTriggerhandler1();
    }
}