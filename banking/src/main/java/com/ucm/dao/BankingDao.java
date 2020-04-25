package com.ucm.dao;

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

	public BankUser showmember(BankUser bankUser) {
		String sql = "select a.customer_id as customer_id,a.first_name as first_name,a.last_name as last_name,a.email as email,a.gender as gender,b.account_type as account_type,b.balance as balance,b.currency as currency from customer_details a join account_details b on a.customer_id=b.customer_id where a.account_number=?";
		Object params[] = new Object[] { bankUser.getAccountNumber()};
		BankUser bankUserResult = (BankUser) jdbc.queryForObject(sql, params,new BankingRowMapper());
		return bankUserResult;
	}
}
