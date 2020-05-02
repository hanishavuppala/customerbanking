package com.ucm.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BankingRowMapper implements RowMapper {
	@Override
	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		BankingResultsetExtractor bankingResultsetExtractor = new BankingResultsetExtractor();
		Object ob = bankingResultsetExtractor.extractData(rs);
		return ob;
	}
}
