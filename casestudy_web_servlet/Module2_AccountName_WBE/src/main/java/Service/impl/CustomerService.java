package Service.impl;

import Bean.Customer;
import Repository.ICustomerRepository;
import Repository.impl.CustomerRepository;
import Service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepo = new CustomerRepository();

    @Override
    public List<Customer> findAll() {
        return this.customerRepo.findAll();
    }

    @Override
    public void createCustomer(Customer customerObj) {
        customerRepo.createCustomer(customerObj);
    }

    @Override
    public void deleteCustomer(Customer customerObj) {
        customerRepo.deleteCustomer(customerObj);
    }

    @Override
    public void editCustomer(Customer customerObj) {
        customerRepo.editCustomer(customerObj);
    }

    @Override
    public List<Customer> searchCustomer(int id) {
        return customerRepo.searchCustomer(id);
    }
}
