@IsTest
private class BackPromotionDemoTest {

    @IsTest
    static void testGetMessage() {

        String result = BackPromotionDemo.getMessage();

        System.assertEquals(
            'Back Promotion Practice',
            result
        );
    }
}