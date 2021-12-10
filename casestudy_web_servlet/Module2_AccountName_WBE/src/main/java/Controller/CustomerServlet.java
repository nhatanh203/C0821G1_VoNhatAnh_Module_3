package Controller;

import Bean.Customer;
import Service.ICustomerService;
import Service.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CustomerServlet", value = "/customerServlet")
public class CustomerServlet extends HttpServlet {
    private ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                request.getRequestDispatcher("create_customer.jsp").forward(request, response);
                break;
            case "delete":
                request.getRequestDispatcher("delete_customer.jsp").forward(request, response);
                break;
            case "edit":
                request.getRequestDispatcher("edit_customer.jsp").forward(request,response);
                break;
            default:
                request.setAttribute("customerListServlet", this.customerService.findAll());
                request.getRequestDispatcher("home_customer.jsp").forward(request, response);
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
                createCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            case "edit":
                editCustomer(request,response);
                break;
            case "search" :
                searchCustomer(request,response);
            default:
                break;
        }
    }

    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("customerListServlet", customerService.searchCustomer(id));
        try {
            request.getRequestDispatcher("home_customer.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int typeOfId = Integer.parseInt(request.getParameter("typeOfId"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");

        Customer customer = new Customer(id, typeOfId, name, birthday, gender, address);
        customerService.editCustomer(customer);
        request.setAttribute("customerListServlet", customerService.findAll());
        try {
            request.getRequestDispatcher("home_customer.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Customer customer : customerService.findAll()) {
            if (id == customer.getId()) {
                customerService.deleteCustomer(customer);
            }
        }
        request.setAttribute("customerListServlet", customerService.findAll());
        request.getRequestDispatcher("home_customer.jsp").forward(request, response);
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int typeOfId = Integer.parseInt(request.getParameter("typeOfId"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");

        Customer customer = new Customer(id, typeOfId, name, birthday, gender, address);
        customerService.createCustomer(customer);
        request.setAttribute("customerListServlet", customerService.findAll());
        try {
            request.getRequestDispatcher("home_customer.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
