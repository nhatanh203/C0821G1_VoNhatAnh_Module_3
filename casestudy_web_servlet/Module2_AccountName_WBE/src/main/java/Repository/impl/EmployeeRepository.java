package Repository.impl;

import Bean.Employee;
import Repository.IEmployeeRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IEmployeeRepository {
    @Override
    public List<Employee> showListEmployee() {
        List<Employee> employeeList = new ArrayList<>();
        Statement statement = null;
        try {
            statement = BaseRepository.connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select ma_nhan_vien,ho_va_ten,ngay_sinh," +
                    "so_cmnd,so_dien_thoai,email,dia_chi from nhan_vien;");
            Employee employeeObj = null;
            while (resultSet.next()) {
                employeeObj = new Employee();
                employeeObj.setId(Integer.parseInt(resultSet.getString("ma_nhan_vien")));
                employeeObj.setName(resultSet.getString("ho_va_ten"));
                employeeObj.setBirthday(resultSet.getString("ngay_sinh"));
                employeeObj.setIndentityCard(Integer.parseInt(resultSet.getString("so_cmnd")));
                employeeObj.setPhoneNumber(Integer.parseInt(resultSet.getString("so_dien_thoai")));
                employeeObj.setEmail(resultSet.getString("email"));
                employeeObj.setAddress(resultSet.getString("dia_chi"));

                employeeList.add(employeeObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public void createEmployee(Employee employeeObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("INSERT INTO `furama_resort`.`nhan_vien` " +
                    "(`ma_nhan_vien`, `ho_va_ten`, `ngay_sinh`, `so_cmnd`, `so_dien_thoai`, `email`, `dia_chi`)\n" +
                    " VALUES (?,?,?,?,?,?,?);");

            preparedStatement.setString(1, String.valueOf(employeeObj.getId()));
            preparedStatement.setString(2, employeeObj.getName());
            preparedStatement.setString(3, employeeObj.getBirthday());
            preparedStatement.setString(4, String.valueOf(employeeObj.getIndentityCard()));
            preparedStatement.setString(5, String.valueOf(employeeObj.getPhoneNumber()));
            preparedStatement.setString(6, employeeObj.getEmail());
            preparedStatement.setString(7, employeeObj.getAddress());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteEmployee(Employee employeeObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement
                    ("delete from nhan_vien where ma_nhan_vien = ?;");

            preparedStatement.setString(1, String.valueOf(employeeObj.getId()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void editEmployee(Employee employeeObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("UPDATE `furama_resort`.`nhan_vien` " +
                    "SET `ho_va_ten` = ?, `ngay_sinh` = ?, `so_cmnd` = ?, `so_dien_thoai` = ?," +
                    " `email` = ?, `dia_chi` = ? WHERE (`ma_nhan_vien` = ?);");

            preparedStatement.setString(1, employeeObj.getName());
            preparedStatement.setString(2, employeeObj.getBirthday());
            preparedStatement.setString(3, String.valueOf(employeeObj.getIndentityCard()));
            preparedStatement.setString(4, String.valueOf(employeeObj.getPhoneNumber()));
            preparedStatement.setString(5, employeeObj.getEmail());
            preparedStatement.setString(6, employeeObj.getAddress());
            preparedStatement.setString(7, String.valueOf(employeeObj.getId()));

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Employee> searchEmployee(int id) {
        List<Employee> employeeList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("select ma_nhan_vien,ho_va_ten,ngay_sinh,so_cmnd," +
                    "so_dien_thoai,email,dia_chi from nhan_vien where ma_nhan_vien = ?;");

            preparedStatement.setString(1, String.valueOf(id));
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Employee employeeObj = new Employee();
                employeeObj.setId(Integer.parseInt(resultSet.getString("ma_nhan_vien")));
                employeeObj.setName(resultSet.getString("ho_va_ten"));
                employeeObj.setBirthday(resultSet.getString("ngay_sinh"));
                employeeObj.setIndentityCard(Integer.parseInt(resultSet.getString("so_cmnd")));
                employeeObj.setPhoneNumber(Integer.parseInt(resultSet.getString("so_dien_thoai")));
                employeeObj.setEmail(resultSet.getString("email"));
                employeeObj.setAddress(resultSet.getString("dia_chi"));

                employeeList.add(employeeObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employeeList;
    }
}
