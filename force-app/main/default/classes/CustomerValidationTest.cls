@IsTest
private class CustomerValidationTest {

    @IsTest
    static void testValidCustomer() {
        Boolean result =
            CustomerValidation.validateCustomer('John');

        System.assertEquals(true, result);
    }

    @IsTest
    static void testNullCustomer() {
        Boolean result =
            CustomerValidation.validateCustomer(null);

        System.assertEquals(false, result);
    }

    @IsTest
    static void testEmptyCustomer() {
        Boolean result =
            CustomerValidation.validateCustomer('   ');

        System.assertEquals(false, result);
    }
}