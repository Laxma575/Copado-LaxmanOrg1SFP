public class CustomerValidation {

    public static Boolean validateCustomer(String customerName) {
        return customerName != null && customerName.trim().length() > 0;
    }

}