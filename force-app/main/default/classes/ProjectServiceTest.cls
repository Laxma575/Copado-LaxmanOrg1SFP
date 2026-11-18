@isTest
private class ProjectServiceTest {
    @isTest
    static void testCreateProject() {
        Test.startTest();
        ProjectService.createProject();
        Test.stopTest();

        List<Project__c> projects = [
            SELECT Id, Name
            FROM Project__c
            WHERE Name = 'Copado Practice Project'
        ];

        System.assertEquals(1, projects.size());
    }
}