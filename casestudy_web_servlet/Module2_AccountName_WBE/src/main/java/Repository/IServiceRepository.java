package Repository;

import Bean.Service;

import java.util.List;

public interface IServiceRepository {
    public List<Service> showListService();
    public void createService(Service employeeObj);
    public void deleteService(Service employeeObj);
    public void editService(Service employeeObj);
    public List<Service> searchService(int id);
}
