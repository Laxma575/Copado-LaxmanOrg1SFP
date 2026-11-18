@isTest
private class OrderCalculationServiceTest {

    @isTest
    static void testCalculateTotal() {

        Integer result =
            OrderCalculationService.calculateTotal(100, 2);

        System.assertEquals(200, result);
    }
}