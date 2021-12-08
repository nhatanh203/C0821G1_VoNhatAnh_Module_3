package Service;

import Bean.Customer;

import java.util.List;

public interface ICustomerService {
    public List<Customer> findAll();
    public void createCustomer(Customer customerObj);
    public void deleteCustomer(Customer customerObj);
    public void editCustomer(Customer customerObj);
    public List<Customer> searchCustomer(int id);
}
