package Service;

import Bean.Customer;

import java.util.List;

public interface ICustomerService {
    public List<Customer> findAll();
    public boolean createCustomer(Customer customerObj);
    public void deleteCustomer(Customer customerObj);
    public boolean editCustomer(Customer customerObj);
    public List<Customer> searchCustomer(CharSequence id);
}
