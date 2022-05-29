@isTest
private class TestVerifyDate {

    @isTest static void TestCheckDates(){
        Date firstDate = Date.newInstance(2022,04,14);
        Date secondDate = Date.newInstance(2022,04,20);
        Date expectedDates = VerifyDate.CheckDates(firstDate, secondDate);
        system.assertEquals( secondDate, expectedDates);
    }

    @istest static void TestElseCheckDates(){
        Date firstDate = Date.newInstance(2022,04,14);
        Date secondDate = Date.newInstance(2022,06,02);
        Date expectedDates = Date.newInstance(2022,04,30);
        Date resultDates = VerifyDate.CheckDates(firstDate, secondDate);
        system.assertEquals( expectedDates, resultDates);
    }

    @isTest static void TestSetEndOfMonthDate(){
        Date expectedDate = Date.newInstance(2022, 04, 30);
        Date givenDate = Date.newInstance(2022,04, 14);
        Date newdate = VerifyDate.SetEndOfMonthDate(givenDate);
        system.assertEquals(expectedDate, Newdate);
}}