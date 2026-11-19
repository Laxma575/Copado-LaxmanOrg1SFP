@IsTest
private class OrderProcessingServiceTest {

    @IsTest
    static void testHighValueOrder() {

        Test.startTest();
        Decimal result =
            OrderProcessingService.calculateDiscount(15000);
        Test.stopTest();

        System.assertEquals(3000, result);
    }

    @IsTest
    static void testMediumValueOrder() {

        Decimal result =
            OrderProcessingService.calculateDiscount(6000);

        System.assertEquals(600, result);
    }

    @IsTest
    static void testLowValueOrder() {

        Decimal result =
            OrderProcessingService.calculateDiscount(2000);

        System.assertEquals(100, result);
    }

    @IsTest
    static void testInvalidAmount() {

        Decimal result =
            OrderProcessingService.calculateDiscount(0);

        System.assertEquals(0, result);
    }

    @IsTest
    static void testNullAmount() {

        Decimal result =
            OrderProcessingService.calculateDiscount(null);

        System.assertEquals(0, result);
    }

    @IsTest
    static void testProcessOrder() {

        String result =
            OrderProcessingService.processOrder(10000);

        System.assertEquals(
            'Order processed. Final Amount: 8000.00',
            result
        );
    }

    @IsTest
    static void testInvalidOrder() {

        String result =
            OrderProcessingService.processOrder(-100);

        System.assertEquals('Invalid order amount', result);
    }
}