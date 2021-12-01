package servlet;

import customer_package.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "servlet.CustomerServlet",urlPatterns={"", "/customerServlet"})
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Võ Nhật Anh","2003/06/04","Quảng Bình","img1.png"));
    customerList.add(new Customer("Mai Văn Hoàn","1983/12/08","Hà Nội","img1.png"));
    customerList.add(new Customer("Nguyễn Văn Nam","1999/03/09","Quảng Nam","img1.png"));
    customerList.add(new Customer("Trần Đăng Khoa","1995/07/12","Đà Nẵng","img1.png"));
    customerList.add(new Customer("Nguyễn Thái Hoà","1992/09/26","Bình Định","img1.png"));

    request.setAttribute("customerListServlet",customerList);
    request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
