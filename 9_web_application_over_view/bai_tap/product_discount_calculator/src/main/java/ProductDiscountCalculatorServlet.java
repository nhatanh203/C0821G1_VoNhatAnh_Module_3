import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ProductDiscountCalculatorServlet",urlPatterns="/calculate")
public class ProductDiscountCalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int price = Integer.parseInt(request.getParameter("price"));
        int discountPercent = Integer.parseInt(request.getParameter("discount"));
        double discountAmount = (price * discountPercent * (0.01));
        double discountPrice = price - discountAmount;

        String productDescription = request.getParameter("productDescription");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h2>Description: " + productDescription + "</h2>");
        writer.println("<h2>Price: " + price + "</h2>");
        writer.println("<h2>Discount Percent: " + discountPercent + "</h2>");
        writer.println("<h2>Discount Amount: " + discountAmount + "</h2>");
        writer.println("<h2>Discount Price: " + discountPrice + "</h>");
        writer.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
