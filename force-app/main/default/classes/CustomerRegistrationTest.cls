@IsTest
private class CustomerRegistrationTest {

    @IsTest
    static void testRegisterCustomer() {
        String result =
            CustomerRegistration.registerCustomer('John');

        System.assertEquals(
            'Customer registered successfully: John',
            result
        );
    }
}