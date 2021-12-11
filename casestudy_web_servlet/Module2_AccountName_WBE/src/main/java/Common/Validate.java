package Common;

import Bean.Contract;
import Bean.Customer;
import Bean.Employee;
import Bean.Service;

import java.util.regex.Pattern;

public class Validate implements IValidate{
    @Override
    public boolean checkCustomer(Customer customerObj) {
        if (!Pattern.matches("^(KH|DV|HD|NV)\\d{4}$", customerObj.getId())) {
            return false;
        }
        return true;
    }

    @Override
    public boolean checkEmployee(Employee employeeObj) {
        return false;
    }

    @Override
    public boolean checkService(Service serviceObj) {
        return false;
    }

    @Override
    public boolean checkContract(Contract contractObj) {
        return false;
    }
}
