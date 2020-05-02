package com.ucm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ucm.beans.BankUser;
import com.ucm.dao.BankingDao;
import com.ucm.service.BankingService;

@Service
public class BankingServiceImpl implements BankingService {
	@Autowired
	BankingDao bankingDao;

	@Override
	public BankUser searchAccount(BankUser bankUser) {
		return bankingDao.searchAccount(bankUser);
	}

	@Override
	public boolean doDeposit(String accountNumber,int depositedAmount) {
		
		return bankingDao.doDeposit(accountNumber,depositedAmount);
	}

	@Override
	public boolean doWithdraw(String accountNumber, int withdrawAmount,int currentBalance) {
	
		return bankingDao.doWithdraw(accountNumber,withdrawAmount,currentBalance);
	}

	@Override
	public boolean isValidAccount(String accountNumber) {
		
		return bankingDao.isValidAccount(accountNumber);
	}
}
