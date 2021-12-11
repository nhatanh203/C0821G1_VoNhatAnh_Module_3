package Controller;

import Bean.Service;
import Service.IServiceService;
import Service.impl.ServiceService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServiceServlet", value = "/serviceServlet")
public class ServiceServlet extends HttpServlet {
    private IServiceService serviceService = new ServiceService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                request.getRequestDispatcher("service/create_service.jsp").forward(request, response);
                break;
            case "delete":
                request.getRequestDispatcher("service/delete_service.jsp").forward(request, response);
                break;
            case "edit":
                request.getRequestDispatcher("service/edit_service.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("serviceListServlet", this.serviceService.showListService());
                request.getRequestDispatcher("service/home_service.jsp").forward(request, response);
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
                createService(request, response);
                break;
            case "delete":
                deleteService(request, response);
                break;
            case "edit":
                editService(request, response);
                break;
            case "search":
                searchService(request, response);
            default:
                break;
        }
    }

    private void searchService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("serviceListServlet", serviceService.searchService(id));
        try {
            request.getRequestDispatcher("service/home_service.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double rentalCost = Double.parseDouble(request.getParameter("rentalCost"));
        int maxOfPeople = Integer.parseInt(request.getParameter("maxOfPeople"));
        String roomStandard = request.getParameter("roomStandard");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloor = Integer.parseInt(request.getParameter("numberOfFloor"));

        Service service = new Service(id,name,area,rentalCost,maxOfPeople,roomStandard,description,poolArea,numberOfFloor);
        serviceService.editService(service);
        request.setAttribute("serviceListServlet", this.serviceService.showListService());
        try {
            request.getRequestDispatcher("service/home_service.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        for (Service service : serviceService.showListService()) {
            if (id == service.getId()) {
                serviceService.deleteService(service);
            }
        }
        request.setAttribute("serviceListServlet", this.serviceService.showListService());
        request.getRequestDispatcher("service/home_service.jsp").forward(request, response);
    }

    private void createService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double rentalCost = Double.parseDouble(request.getParameter("rentalCost"));
        int maxOfPeople = Integer.parseInt(request.getParameter("maxOfPeople"));
        String roomStandard = request.getParameter("roomStandard");
        String description = request.getParameter("description");
        double poolArea = Double.parseDouble(request.getParameter("poolArea"));
        int numberOfFloor = Integer.parseInt(request.getParameter("numberOfFloor"));

        Service service = new Service(id,name,area,rentalCost,maxOfPeople,roomStandard,description,poolArea,numberOfFloor);
        serviceService.createService(service);
        request.setAttribute("serviceListServlet", this.serviceService.showListService());
        try {
            request.getRequestDispatcher("service/home_service.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
