@isTest
public with sharing class SampleAccountTriggerTest {
// test test test test test test test test test test test test test test test testtest test test
    public static testmethod void t1() {
        helloMethod();

        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger abcabctest

        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }

    public static String getPhone() {
        return 'SamplePhone#';
    }
    
    public static void helloMethod() {
        System.debug('Hello World');
    }
}