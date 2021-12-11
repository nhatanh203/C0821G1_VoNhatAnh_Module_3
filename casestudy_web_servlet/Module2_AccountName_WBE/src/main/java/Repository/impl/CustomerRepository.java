package Repository.impl;

import Bean.Customer;
import Repository.ICustomerRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {

    @Override
    public List<Customer> searchCustomer(CharSequence id) {
        List<Customer> customerList = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.connection.prepareStatement("select ma_khach_hang, " +
                    "ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,dia_chi " +
                    "from khach_hang where ma_khach_hang = ?;");
            statement.setString(1, String.valueOf(id));
            ResultSet resultSet = statement.executeQuery();

            Customer customerObj = null;
            while (resultSet.next()) {
                customerObj = new Customer();
                customerObj.setId(resultSet.getString("ma_khach_hang"));
                customerObj.setTypeOfId(Integer.parseInt(resultSet.getString("ma_loai_khach")));
                customerObj.setName(resultSet.getString("ho_ten"));
                customerObj.setBirthday(resultSet.getString("ngay_sinh"));
                customerObj.setGender(resultSet.getString("gioi_tinh"));
                customerObj.setAddress(resultSet.getString("dia_chi"));

                customerList.add(customerObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new ArrayList<>();
        try {
            Statement statement = BaseRepository.connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select ma_khach_hang," +
                    " ma_loai_khach,ho_ten,ngay_sinh,gioi_tinh,dia_chi\n" +
                    "from khach_hang;");
            Customer customerObj = null;
            while (resultSet.next()) {
                customerObj = new Customer();
                customerObj.setId(resultSet.getString("ma_khach_hang"));
                customerObj.setTypeOfId(Integer.parseInt(resultSet.getString("ma_loai_khach")));
                customerObj.setName(resultSet.getString("ho_ten"));
                customerObj.setBirthday(resultSet.getString("ngay_sinh"));
                customerObj.setGender(resultSet.getString("gioi_tinh"));
                customerObj.setAddress(resultSet.getString("dia_chi"));

                customerList.add(customerObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void createCustomer(Customer customerObj) {
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = BaseRepository.connection.prepareStatement("INSERT INTO `furama_resort`.`khach_hang` (`ma_khach_hang`, `ma_loai_khach`, `ho_ten`, `ngay_sinh`, `gioi_tinh`, `dia_chi`) " +
                    "VALUES (?,?,?,?,?,?);");

            preparedStatement.setString(1, String.valueOf(customerObj.getId()));
            preparedStatement.setString(2, String.valueOf(customerObj.getTypeOfId()));
            preparedStatement.setString(3, customerObj.getName());
            preparedStatement.setString(4, customerObj.getBirthday());
            preparedStatement.setString(5, customerObj.getGender());
            preparedStatement.setString(6, customerObj.getAddress());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCustomer(Customer customerObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement
                    ("delete from khach_hang where ma_khach_hang = ?;");

            preparedStatement.setString(1, String.valueOf(customerObj.getId()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void editCustomer(Customer customerObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("UPDATE `furama_resort`.`khach_hang` SET `ma_loai_khach` = ?, `ho_ten` = ?, `ngay_sinh` = ?," +
                    " `gioi_tinh` = ?, `dia_chi` = ? WHERE (`ma_khach_hang` = ?);");

            preparedStatement.setString(1, String.valueOf(customerObj.getTypeOfId()));
            preparedStatement.setString(2,customerObj.getName());
            preparedStatement.setString(3,customerObj.getBirthday());
            preparedStatement.setString(4,customerObj.getGender());
            preparedStatement.setString(5, customerObj.getAddress());
            preparedStatement.setString(6, String.valueOf(customerObj.getId()));

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
