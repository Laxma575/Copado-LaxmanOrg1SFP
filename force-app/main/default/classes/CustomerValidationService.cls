public class CustomerValidationService {

    public static Boolean validateCustomer(String customerName) {

        if (String.isBlank(customerName)) {
            return false;
        }

        return true;
    }
}