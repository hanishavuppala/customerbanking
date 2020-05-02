package com.ucm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ucm.beans.BankUser;
import com.ucm.mapper.BankingRowMapper;
import com.ucm.service.impl.BankingServiceImpl;

@Repository
public class BankingDao {

	@Autowired
	BankingServiceImpl bankingServiceImpl;

	@Autowired
	JdbcTemplate jdbc;

	@Autowired
	NamedParameterJdbcTemplate nameJdbc;

	public BankUser searchAccount(BankUser bankUser) {
		String sql = "select a.account_number as account_number,a.customer_id as customer_id,a.first_name as first_name,a.last_name as last_name,a.email as email,a.gender as gender,b.account_type as account_type,b.balance as balance,b.currency as currency from customer_details a join account_details b on a.customer_id=b.customer_id where a.account_number=?";
		Object params[] = new Object[] { bankUser.getAccountNumber() };
		BankUser bankUserResult = (BankUser) jdbc.queryForObject(sql, params, new BankingRowMapper());
		return bankUserResult;
	}

	public boolean doDeposit(String accountNumber, int depositedAmount) {
		boolean b = false;
		String sql = "update account_details set balance=balance+? where account_number=?";
		Object params[] = new Object[] { depositedAmount, accountNumber };
		int i = jdbc.update(sql, params);
		if (i == 1) {
			b = true;
		} else
			b = false;
		return b;
	}

	public boolean doWithdraw(String accountNumber, int withdrawAmount, int currentBalance) {
		boolean b = false;
		String sql = "update account_details set balance=balance-? where account_number=?";
		Object params[] = new Object[] { withdrawAmount, accountNumber };
		int i = jdbc.update(sql, params);
		if (i == 1) {
			b = true;
		} else
			b = false;
		return b;
	}

	public boolean isValidAccount(String accountNumber) {
		List<String> accountNumbers = jdbc.queryForList(
				"select account_number from customer_details where account_number='" + accountNumber + "'",
				String.class);
		return (accountNumbers.size() > 0) ? true : false;
	}
}
