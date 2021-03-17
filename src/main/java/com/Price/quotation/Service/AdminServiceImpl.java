package com.Price.quotation.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.Price.quotation.Model.Admin;

@Component("adminServiceImpl")
public  class AdminServiceImpl implements AdminService {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	public AdminServiceImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	
	@Override
	@ExceptionHandler({ClassNotFoundException.class,SQLException.class})
	public List<Admin> read() {
		List<Admin> RegisterList = jdbcTemplate.query("SELECT * FROM ADMIN", new RowMapper<Admin>() {

			@Override
			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				Admin admin = new Admin();

			
				admin.setUserId(rs.getString("USER_ID"));
				admin.setPassword(rs.getString("PASSWORD"));
				

				return admin;
			}

		});

		return RegisterList;
	}
	
}