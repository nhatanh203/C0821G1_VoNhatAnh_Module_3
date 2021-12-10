package Repository;

import Bean.Customer;
import Bean.Employee;

import java.util.List;

public interface IEmployeeRepository {
    public List<Employee> showListEmployee();
    public void createEmployee(Employee employeeObj);
    public void deleteEmployee(Employee employeeObj);
    public void editEmployee(Employee employeeObj);
    public List<Employee> searchEmployee(int id);
}
