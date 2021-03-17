package com.Price.quotation.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.Price.quotation.Model.Product;
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
	public List<User> getUser(){    
	    return jdbcTemplate.query("select * from user_table",new RowMapper<User>(){    
	        public User mapRow(ResultSet rs, int row) throws SQLException {  
	            User user = new User();
	            user.setFirstName(rs.getString(1));
	            user.setLastName(rs.getString(2));
	            user.setDateOfBirth(rs.getString(3));
	            user.setGender(rs.getString(4));
	            user.setContactNumber(rs.getString(5));
	            user.setUserId(rs.getString(6));
	            user.setPassword(rs.getString(7));
	            user.setAddress(rs.getString(8));
	            user.setId(rs.getInt(9));
	            return user;
	        }    
	    });    
	}    
	@Override
	@ExceptionHandler(SQLException.class)
	public User getUserById(int id) {
		
		String sql="select * from user_table where id=?";    
	    return jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<User>(User.class)); 
	}																																																						
	@Override
	public int update(User p) {
		String sql="update user_table set firstName='"+p.getFirstName()+"',lastName='"+p.getLastName()+"',dateOfBirth='"+p.getDateOfBirth()+"',gender='"+p.getGender()+"',contact_number='"+p.getContactNumber()+"',userId='"+p.getUserId()+"',password='"+p.getPassword()+"',address='"+p.getAddress()+"' where id="+p.getId()+""; 
	    return jdbcTemplate.update(sql);  
	}
	
	
}


