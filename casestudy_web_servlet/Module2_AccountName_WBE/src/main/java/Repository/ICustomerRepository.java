package Repository;

import Bean.Customer;

import java.util.List;

public interface ICustomerRepository {
    public List<Customer> findAll();
    public void createCustomer(Customer customerObj);
    public void deleteCustomer(Customer customerObj);
    public void editCustomer(Customer customerObj);
    public List<Customer> searchCustomer(int id);
}
