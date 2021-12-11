package Service;

import Bean.Contract;

import java.util.List;

public interface IContractService {
    public List<Contract> showListContract();
    public void createContract(Contract contractObj);
}
