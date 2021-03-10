package com.Price.quotation.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import com.Price.quotation.Model.User;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	// --------------------------------------------------------
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	// --------------------------------------------------------
	public boolean addUser(User register) {
		
		
		String sql = "insert into user_table(firstName,lastName,dateOfBirth,gender,contact_number,userId,password,address) values(?,?,?,?,?,?,?,?)";
			
		 try {
	            int counter = jdbcTemplate.update(sql,
	                    new Object[] { register.getFirstName(), register.getLastName(), register.getDateOfBirth(),
	                            register.getGender(), register.getContactNumber(),
	                            register.getUserId(), register.getPassword(),register.getAddress()});

	 
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	// -----------------------------------------------
	@Override
	public List<User> read() {
		List<User> userList = jdbcTemplate.query("select * from user_table", new RowMapper<User>() {

			@Override
			public User mapRow(ResultSet set, int rowNum) throws SQLException {
				User user = new User();
				user.setUserId(set.getString("userId"));
				user.setPassword(set.getString("password"));
				return user;
			}
		});
		return userList;
	}
	
	
}


