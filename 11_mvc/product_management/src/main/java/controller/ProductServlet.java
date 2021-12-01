package controller;

import bean.Product;
import service.IProductService;
import service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    private static IProductService iProductService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                goPageCreate(request,response);
                break;
            default:
                getListProduct(request,response);
                break;
        }
    }

    private void goPageCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/create.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                createProduct(request,response);
            break;
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String producer = request.getParameter("producer");
        Product product = new Product(name,price,producer);
        boolean isCreate = iProductService.saveProduct(product);
        if(isCreate){
            request.setAttribute("message","Add new complete !");
        }else{
            request.setAttribute("message","Add new false");
        }
        request.getRequestDispatcher("/list.jsp").forward(request,response);
    }

    //    1.Hiển thị danh sách sản phẩm :
    private void getListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = iProductService.getAll();

        if(products == null){
            request.setAttribute("message","No values to display !");
        }else{
            request.setAttribute("products",products);
        }
        request.getRequestDispatcher("/list.jsp").forward(request,response);
    }
}
