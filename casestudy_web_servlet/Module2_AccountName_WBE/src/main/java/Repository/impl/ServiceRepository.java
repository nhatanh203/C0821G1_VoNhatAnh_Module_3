package Repository.impl;

import Bean.Service;
import Repository.IServiceRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ServiceRepository implements IServiceRepository {
    @Override
    public List<Service> showListService() {
        List<Service> serviceList = new ArrayList<>();
        Statement statement = null;
        try {
            statement = BaseRepository.connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang\n" +
                    "from dich_vu;");
            Service serviceObj = null;
            while (resultSet.next()) {
                serviceObj = new Service();
                serviceObj.setId(Integer.parseInt(resultSet.getString("ma_dich_vu")));
                serviceObj.setName(resultSet.getString("ten_dich_vu"));
                serviceObj.setArea(Integer.parseInt(resultSet.getString("dien_tich")));
                serviceObj.setRentalCost(Double.parseDouble(resultSet.getString("chi_phi_thue")));
                serviceObj.setMaxOfPeople(Integer.parseInt(resultSet.getString("so_nguoi_toi_da")));
                serviceObj.setRoomStandard(resultSet.getString("tieu_chuan_phong"));
                serviceObj.setDescription(resultSet.getString("mo_ta_tien_nghi_khac"));
                serviceObj.setPoolArea(Double.parseDouble(resultSet.getString("dien_tich_ho_boi")));
                serviceObj.setNumberOfFloor(Integer.parseInt(resultSet.getString("so_tang")));

                serviceList.add(serviceObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return serviceList;
    }

    @Override
    public void createService(Service serviceObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("INSERT INTO `furama_resort`.`dich_vu` (`ma_dich_vu`, `ten_dich_vu`, `dien_tich`, `chi_phi_thue`," +
                    " `so_nguoi_toi_da`, `tieu_chuan_phong`, `mo_ta_tien_nghi_khac`, `dien_tich_ho_boi`, `so_tang`) VALUES (?,?,?,?,?,?,?,?,?);");

            preparedStatement.setString(1, String.valueOf(serviceObj.getId()));
            preparedStatement.setString(2, serviceObj.getName());
            preparedStatement.setString(3, String.valueOf(serviceObj.getArea()));
            preparedStatement.setString(4, String.valueOf(serviceObj.getRentalCost()));
            preparedStatement.setString(5, String.valueOf(serviceObj.getMaxOfPeople()));
            preparedStatement.setString(6, serviceObj.getRoomStandard());
            preparedStatement.setString(7, serviceObj.getDescription());
            preparedStatement.setString(8, String.valueOf(serviceObj.getPoolArea()));
            preparedStatement.setString(9, String.valueOf(serviceObj.getNumberOfFloor()));

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteService(Service serviceObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement
                    ("delete from dich_vu where ma_dich_vu = ?;");

            preparedStatement.setString(1, String.valueOf(serviceObj.getId()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void editService(Service serviceObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("UPDATE `furama_resort`.`dich_vu` SET `ten_dich_vu` = ?, `dien_tich` = ?, `chi_phi_thue` = ?, `so_nguoi_toi_da` = ?, `tieu_chuan_phong` = ?, `mo_ta_tien_nghi_khac` = ?, " +
                    "`dien_tich_ho_boi` = ?, `so_tang` = ? WHERE (`ma_dich_vu` = ?);");

            preparedStatement.setString(1, serviceObj.getName());
            preparedStatement.setString(2, String.valueOf(serviceObj.getArea()));
            preparedStatement.setString(3, String.valueOf(serviceObj.getRentalCost()));
            preparedStatement.setString(4, String.valueOf(serviceObj.getMaxOfPeople()));
            preparedStatement.setString(5, serviceObj.getRoomStandard());
            preparedStatement.setString(6, serviceObj.getDescription());
            preparedStatement.setString(7, String.valueOf(serviceObj.getPoolArea()));
            preparedStatement.setString(8, String.valueOf(serviceObj.getNumberOfFloor()));
            preparedStatement.setString(9, String.valueOf(serviceObj.getId()));

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Service> searchService(int id) {
        List<Service> serviceList = new ArrayList<>();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = BaseRepository.connection.prepareStatement("select ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang\n" +
                    "from dich_vu where ma_dich_vu = ?;");

            preparedStatement.setString(1, String.valueOf(id));
            ResultSet resultSet = preparedStatement.executeQuery();

            Service serviceObj = null;
            while (resultSet.next()) {
                serviceObj = new Service();
                serviceObj.setId(Integer.parseInt(resultSet.getString("ma_dich_vu")));
                serviceObj.setName(resultSet.getString("ten_dich_vu"));
                serviceObj.setArea(Integer.parseInt(resultSet.getString("dien_tich")));
                serviceObj.setRentalCost(Double.parseDouble(resultSet.getString("chi_phi_thue")));
                serviceObj.setMaxOfPeople(Integer.parseInt(resultSet.getString("so_nguoi_toi_da")));
                serviceObj.setRoomStandard(resultSet.getString("tieu_chuan_phong"));
                serviceObj.setDescription(resultSet.getString("mo_ta_tien_nghi_khac"));
                serviceObj.setPoolArea(Double.parseDouble(resultSet.getString("dien_tich_ho_boi")));
                serviceObj.setNumberOfFloor(Integer.parseInt(resultSet.getString("so_tang")));

                serviceList.add(serviceObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return serviceList;
    }
}
