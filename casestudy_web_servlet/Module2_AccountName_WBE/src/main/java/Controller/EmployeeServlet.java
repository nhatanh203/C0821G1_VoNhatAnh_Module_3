package Controller;

import Bean.Customer;
import Bean.Employee;
import Service.IEmployeeService;
import Service.impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EmployeeServlet", value = "/employeeServlet")
public class EmployeeServlet extends HttpServlet {
    private IEmployeeService employeeService = new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                request.getRequestDispatcher("employee/create_employee.jsp").forward(request, response);
                break;
            case "delete":
                request.getRequestDispatcher("employee/delete_employee.jsp").forward(request, response);
                break;
            case "edit":
                request.getRequestDispatcher("employee/edit_employee.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("employeeListServlet", this.employeeService.showListEmployee());
                request.getRequestDispatcher("employee/home_employee.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createEmployee(request, response);
                break;
            case "delete":
                deleteEmployee(request, response);
                break;
            case "edit":
                editEmployee(request, response);
                break;
            case "search":
                searchEmployee(request, response);
            default:
                break;
        }
    }

    private void searchEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("employeeListServlet", employeeService.searchEmployee(id));
        try {
            request.getRequestDispatcher("employee/home_employee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        int indentityCard = Integer.parseInt(request.getParameter("indentityCard"));
        int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Employee employee = new Employee(id, name, birthday, indentityCard, phoneNumber, email, address);
        employeeService.editEmployee(employee);
        request.setAttribute("employeeListServlet", employeeService.showListEmployee());
        try {
            request.getRequestDispatcher("employee/home_employee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Employee employee : employeeService.showListEmployee()) {
            if (id == employee.getId()) {
                employeeService.deleteEmployee(employee);
            }
        }
        request.setAttribute("employeeListServlet", employeeService.showListEmployee());
        request.getRequestDispatcher("employee/home_employee.jsp").forward(request, response);
    }

    private void createEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        int indentityCard = Integer.parseInt(request.getParameter("indentityCard"));
        int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        Employee employee = new Employee(id, name, birthday, indentityCard, phoneNumber, email, address);
        employeeService.createEmployee(employee);
        request.setAttribute("employeeListServlet", employeeService.showListEmployee());
        try {
            request.getRequestDispatcher("employee/home_employee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
