package Repository.impl;

import Bean.Contract;
import Repository.IContractRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContractRepository implements IContractRepository {

    @Override
    public List<Contract> showListContract() {
        List<Contract> contractList = new ArrayList<>();
        Statement statement = null;
        try {
            statement = BaseRepository.connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select ma_hop_dong,ngay_lam_hop_dong," +
                    " ngay_ket_thuc,tien_dat_coc,tong_tien from hop_dong;");
            Contract contractObj = null;
            while (resultSet.next()) {
                contractObj = new Contract();
                contractObj.setId(Integer.parseInt(resultSet.getString("ma_hop_dong")));
                contractObj.setStartDay(resultSet.getDate("ngay_lam_hop_dong"));
                contractObj.setEndDay(resultSet.getDate("ngay_ket_thuc"));
                contractObj.setDeposit(Double.valueOf(resultSet.getString("tien_dat_coc")));
                contractObj.setTotalMoney(Double.valueOf(resultSet.getString("tong_tien")));

                contractList.add(contractObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contractList;
    }

    @Override
    public void createContract(Contract contractObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("INSERT INTO `furama_resort`.`hop_dong` (`ma_hop_dong`, `ngay_lam_hop_dong`, " +
                    "`ngay_ket_thuc`, `tien_dat_coc`, `tong_tien`) VALUES (?,?,?,?, ?);\n");

            preparedStatement.setString(1, String.valueOf(contractObj.getId()));
            preparedStatement.setString(2, String.valueOf(contractObj.getStartDay()));
            preparedStatement.setString(3, String.valueOf(contractObj.getEndDay()));
            preparedStatement.setString(4, String.valueOf(contractObj.getDeposit()));
            preparedStatement.setString(5, String.valueOf(contractObj.getTotalMoney()));

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
