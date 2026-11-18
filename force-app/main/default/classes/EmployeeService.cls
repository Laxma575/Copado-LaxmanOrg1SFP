public class EmployeeService {
    public static void updateEmployee(Employee__c emp) {
        emp.Employee_Code__c = 'EMP001';
        update emp;
    }
}