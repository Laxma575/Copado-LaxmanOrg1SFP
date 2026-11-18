@isTest
private class EmployeeServiceTest {

    @isTest
    static void testEmployeeUpdate() {

        Employee__c emp = new Employee__c(
            Name = 'Test Employee',
            Employee_Code__c = 'EMP001'
        );

        insert emp;

        Test.startTest();
        EmployeeService.updateEmployee(emp);
        Test.stopTest();

        Employee__c result = [
            SELECT Id, Employee_Code__c
            FROM Employee__c
            WHERE Id = :emp.Id
        ];

        System.assertEquals(
            'EMP001',
            result.Employee_Code__c
        );
    }
}