package Repository;

import Bean.Contract;

import java.util.List;

public interface IContractRepository {
    public List<Contract> showListContract();
    public void createContract(Contract contractObj);
}
