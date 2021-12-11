package Common;

import Bean.Contract;
import Bean.Customer;
import Bean.Employee;
import Bean.Service;

public interface IValidate {
    boolean checkCustomer(Customer customerObj);
    boolean checkEmployee(Employee employeeObj);
    boolean checkService(Service serviceObj);
    boolean checkContract(Contract contractObj);
}
