package Service.impl;

import Bean.Service;
import Repository.IServiceRepository;
import Repository.impl.ServiceRepository;
import Service.IServiceService;

import java.util.List;

public class ServiceService implements IServiceService {
    IServiceRepository serviceRepo = new ServiceRepository();

    @Override
    public List<Service> showListService() {
        return this.serviceRepo.showListService();
    }

    @Override
    public void createService(Service employeeObj) {

    }

    @Override
    public void deleteService(Service employeeObj) {

    }

    @Override
    public void editService(Service employeeObj) {

    }

    @Override
    public List<Service> searchService(int id) {
        return null;
    }
}
