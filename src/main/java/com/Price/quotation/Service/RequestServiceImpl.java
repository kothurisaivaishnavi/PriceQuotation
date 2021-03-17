package com.Price.quotation.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.Price.quotation.Model.Product;
import com.Price.quotation.Model.User;

public class RequestServiceImpl implements RequestService{
	@Autowired
    private JdbcTemplate jdbcTemplate;
    // --------------------------------------------------------
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
	public boolean addRequest(User req) {	
		String sql = "insert into request_form(priceQuotation,productId) values(?,?)";
			
		 try {
	            int counter = jdbcTemplate.update(sql, new Object[] { req.getPriceQuotation(), req.getProductId()});

	 
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public List<User> viewRequest() {
		List<User> reqList = jdbcTemplate.query("select * from request_form r inner join product_table p on r.productId=p.id", new RowMapper<User>() {
        	
            @Override
            public User mapRow(ResultSet set, int rowNum) throws SQLException {
                User user = new User();
                user.setRequestId(set.getString("requestId"));
                user.setPriceQuotation(set.getString("priceQuotation"));
                user.setProductId(set.getInt("productId"));
                user.setProductName(set.getString("productName"));
                user.setProductPrice(set.getInt("price"));
                return user;
            }
        });
        return reqList;
	}
	
	@Override
	public int update(User user){    
	    String sql="update request_form set priceQuotation='"+user.getPriceQuotation()+"',productId='"+user.getProductId()+"' where requestId="+user.getRequestId()+""; 
	    return jdbcTemplate.update(sql);    
	} 
}
