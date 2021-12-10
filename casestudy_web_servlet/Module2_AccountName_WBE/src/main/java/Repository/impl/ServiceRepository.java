package Repository.impl;

import Bean.Service;
import Repository.IServiceRepository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ServiceRepository implements IServiceRepository {
    @Override
    public List<Service> showListService() {
        List<Service> serviceList = new ArrayList<>();
        try {
            Statement statement = BaseRepository.connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select ma_dich_vu,ten_dich_vu," +
                    "dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong," +
                    "mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang\n" +
                    "from dich_vu;");
            Service serviceObj = null;
            while (resultSet.next()) {
                serviceObj = new Service();
                serviceObj.setId(Integer.parseInt(resultSet.getString("ma_dich_vu")));
                serviceObj.setName(resultSet.getString("ten_dich_vu"));
                serviceObj.setArea(Integer.parseInt(resultSet.getString("dien_tich")));
                serviceObj.setRentalCost(Integer.parseInt(resultSet.getString("chi_phi_thue")));
                serviceObj.setMaxOfPeople(Integer.parseInt(resultSet.getString("so_nguoi_toi_da")));
                serviceObj.setRoomStandard(resultSet.getString("tieu_chuan_phong"));
                serviceObj.setDescription(resultSet.getString("mo_ta_tien_nghi_khach"));
                serviceObj.setPoolAre(Integer.parseInt(resultSet.getString("dien_tich_ho_boi")));
                serviceObj.setNumberOfFloor(Integer.parseInt(resultSet.getString("so_tang")));

                serviceList.add(serviceObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return serviceList;
    }

    @Override
    public void createService(Service employeeObj) {

    }

    @Override
    public void deleteService(Service employeeObj) {

    }

    @Override
    public void editService(Service employeeObj) {

    }

    @Override
    public List<Service> searchService(int id) {
        return null;
    }
}
