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
		return bankingDao.showmember(bankUser);
	}
}
