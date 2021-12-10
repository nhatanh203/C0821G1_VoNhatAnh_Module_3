package Service;

import Bean.Employee;

import java.util.List;

public interface IEmployeeService {
    public List<Employee> showListEmployee();
    public void createEmployee(Employee employeeObj);
    public void deleteEmployee(Employee employeeObj);
    public void editEmployee(Employee employeeObj);
    public List<Employee> searchEmployee(int id);
}
