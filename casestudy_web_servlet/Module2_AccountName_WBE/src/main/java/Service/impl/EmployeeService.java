package Service.impl;

import Bean.Employee;
import Repository.IEmployeeRepository;
import Repository.impl.EmployeeRepository;
import Service.IEmployeeService;

import java.util.List;

public class EmployeeService implements IEmployeeService {
    IEmployeeRepository employeeRepo = new EmployeeRepository();

    @Override
    public List<Employee> showListEmployee() {
        return this.employeeRepo.showListEmployee();
    }

    @Override
    public void createEmployee(Employee employeeObj) {
        employeeRepo.createEmployee(employeeObj);
    }

    @Override
    public void deleteEmployee(Employee employeeObj) {
        employeeRepo.deleteEmployee(employeeObj);
    }

    @Override
    public void editEmployee(Employee employeeObj) {
        employeeRepo.editEmployee(employeeObj);
    }

    @Override
    public List<Employee> searchEmployee(int id) {
        return employeeRepo.searchEmployee(id);
    }
}
