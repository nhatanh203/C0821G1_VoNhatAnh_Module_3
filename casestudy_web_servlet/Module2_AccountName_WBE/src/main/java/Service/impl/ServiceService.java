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
    public void createService(Service serviceObj) {
        serviceRepo.createService(serviceObj);
    }

    @Override
    public void deleteService(Service serviceObj) {
        serviceRepo.deleteService(serviceObj);
    }

    @Override
    public void editService(Service serviceObj) {
        serviceRepo.editService(serviceObj);
    }

    @Override
    public List<Service> searchService(int id) {
        return serviceRepo.searchService(id);
    }
}
