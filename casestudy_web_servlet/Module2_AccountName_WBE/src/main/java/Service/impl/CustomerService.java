package Service.impl;

import Bean.Customer;
import Common.IValidate;
import Common.Validate;
import Repository.ICustomerRepository;
import Repository.impl.CustomerRepository;
import Service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepo = new CustomerRepository();
    IValidate validate = new Validate();

    @Override
    public List<Customer> findAll() {
        return this.customerRepo.findAll();
    }

    @Override
    public boolean createCustomer(Customer customerObj) {
        if(validate.checkCustomer(customerObj)) {
            customerRepo.createCustomer(customerObj);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public void deleteCustomer(Customer customerObj) {
        customerRepo.deleteCustomer(customerObj);
    }

    @Override
    public boolean editCustomer(Customer customerObj) {
        if(validate.checkCustomer(customerObj)) {
            customerRepo.editCustomer(customerObj);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public List<Customer> searchCustomer(CharSequence id) {
        return customerRepo.searchCustomer(id);
    }
}
