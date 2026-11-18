public class ProjectService {
    public static void createProject() {
        Project__c project = new Project__c(
            Name = 'Copado Practice Project'
        );
        insert project;
    }
}