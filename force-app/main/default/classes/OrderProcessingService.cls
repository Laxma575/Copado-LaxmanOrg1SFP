public with sharing class OrderProcessingService {

    public static Decimal calculateDiscount(Decimal amount) {

        if (amount == null || amount <= 0) {
            return 0;
        }

        if (amount >= 10000) {
            return amount * 0.20;
        }
        else if (amount >= 5000) {
            return amount * 0.10;
        }
        else {
            return amount * 0.05;
        }
    }

    public static String processOrder(Decimal amount) {

        if (amount == null || amount <= 0) {
            return 'Invalid order amount';
        }

        Decimal discount = calculateDiscount(amount);
        Decimal finalAmount = amount - discount;

        return 'Order processed. Final Amount: ' + finalAmount;
    }
}