package com.ucm.service;

import com.ucm.beans.BankUser;

public interface BankingService {
	
	BankUser searchAccount(BankUser bankUser);

	boolean doDeposit(String accountNumber,int depositedAmount);

	boolean doWithdraw(String accountNumber, int withdrawAmount,int currentBalance);

}