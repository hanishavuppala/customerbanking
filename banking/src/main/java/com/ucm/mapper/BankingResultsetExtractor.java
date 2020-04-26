package com.ucm.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ucm.beans.BankUser;

public class BankingResultsetExtractor {

	public Object extractData(ResultSet r) throws SQLException {
		BankUser bankUser = new BankUser();
		bankUser.setCustomerId(r.getLong("customer_id"));
		bankUser.setFirstName(r.getString("first_name"));
		bankUser.setLastName(r.getString("last_name"));
		bankUser.setEmail(r.getString("email"));
		bankUser.setGender(r.getString("gender"));
		bankUser.setAccountType(r.getString("account_type"));
		bankUser.setAccountBalance(r.getInt("balance"));
		bankUser.setCurrency(r.getString("currency"));
		bankUser.setAccountNumber(r.getLong("account_number"));
		return bankUser;
	}
}
