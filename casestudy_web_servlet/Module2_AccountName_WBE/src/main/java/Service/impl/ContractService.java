package Service.impl;

import Bean.Contract;
import Repository.IContractRepository;
import Repository.impl.ContractRepository;
import Service.IContractService;

import java.util.List;

public class ContractService implements IContractService {
    IContractRepository contractRepo = new ContractRepository();
    @Override
    public List<Contract> showListContract() {
        return this.contractRepo.showListContract();
    }

    @Override
    public void createContract(Contract contractObj) {
        contractRepo.createContract(contractObj);
    }
}
