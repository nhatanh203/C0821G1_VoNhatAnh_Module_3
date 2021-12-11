package Repository;

import Bean.Service;

import java.util.List;

public interface IServiceRepository {
    public List<Service> showListService();
    public void createService(Service serviceObj);
    public void deleteService(Service serviceObj);
    public void editService(Service serviceObj);
    public List<Service> searchService(int id);
}
