package Controller;

import Bean.Contract;
import Service.IContractService;
import Service.impl.ContractService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "HomeServlet", value = "/contractServlet")
public class ContractServlet extends HttpServlet {
   private IContractService contractService = new ContractService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                request.getRequestDispatcher("contract/create_contract.jsp").forward(request, response);
                break;
            default:
                request.setAttribute("contractListServlet", this.contractService.showListContract());
                request.getRequestDispatcher("contract/home_contract.jsp").forward(request, response);
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
                createContract(request, response);
                break;
            default:
                break;
        }
    }

    private void createContract(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Date startDay = Date.valueOf(request.getParameter("startDay"));
        Date endDay = Date.valueOf(request.getParameter("endDay"));
        Double deposit = Double.valueOf(request.getParameter("deposit"));
        Double totalMoney = Double.valueOf(request.getParameter("totalMoney"));

        Contract contract = new Contract(id,startDay,endDay,deposit,totalMoney);
        contractService.createContract(contract);
        request.setAttribute("contractListServlet", this.contractService.showListContract());
        try {
            request.getRequestDispatcher("contract/home_contract.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
