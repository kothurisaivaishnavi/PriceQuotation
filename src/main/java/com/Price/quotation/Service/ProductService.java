package com.Price.quotation.Service;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;
import com.Price.quotation.Model.Product;

@Service("productService")  
public class ProductService {    

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // --------------------------------------------------------
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    
    //--------------------------------------------------------

	public boolean save(Product pro){    
	    String sql="insert into product_table(productName,type,description,availability,color,quantity,price) values(?,?,?,?,?,?,?)"; 
	    try {
	    int counter = jdbcTemplate.update(sql,
                new Object[] { pro.getProductName(), pro.getType(), pro.getDescription(),
                		pro.getAvailability(), pro.getColor(), pro.getQuantity(), pro.getPrice()});
        return true;
        
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}    
	public int update(Product p){    
	    String sql="update product_table set productName='"+p.getProductName()+"',type='"+p.getType()+"',description='"+p.getDescription()+"',availability='"+p.getAvailability()+"',color='"+p.getColor()+"',quantity='"+p.getQuantity()+"',price='"+p.getPrice()+"',status='"+p.getStatus()+"' where id="+p.getId()+""; 
	    return jdbcTemplate.update(sql);    
	}    
	public int delete(int id){    
	    String sql="delete from product_table where id="+id+"";    
	    return jdbcTemplate.update(sql);    
	}    
	public Product getProductById(int id){    
	    String sql="select * from product_table where id=?";    
	    return jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Product>(Product.class));    
	}    
	public List<Product> getProduct(){    
	    return jdbcTemplate.query("select * from product_table",new RowMapper<Product>(){    
	        public Product mapRow(ResultSet rs, int row) throws SQLException {    
	            Product pro=new Product(); 
	            pro.setId(rs.getInt(1));
	            pro.setProductName(rs.getString(2));    
	            pro.setType(rs.getString(3));    
	            pro.setDescription(rs.getString(4));    
	            pro.setAvailability(rs.getString(5));  
	            pro.setColor(rs.getString(6));
	            pro.setQuantity(rs.getInt(7));
	            pro.setPrice(rs.getInt(8));
	            pro.setStatus(rs.getString(9));
	            return pro;    
	        }    
	    });    
	}    
	public List<Product> getOrder(){
		return jdbcTemplate.query("select *from product_table where status='yes'", new RowMapper<Product>() {
			public Product mapRow(ResultSet rs, int row) throws SQLException{
				Product pro=new Product();
				pro.setId(rs.getInt(1));
	            pro.setProductName(rs.getString(2));    
	            pro.setType(rs.getString(3));    
	            pro.setDescription(rs.getString(4));    
	            pro.setAvailability(rs.getString(5));  
	            pro.setColor(rs.getString(6));
	            pro.setQuantity(rs.getInt(7));
	            pro.setPrice(rs.getInt(8));
	            return pro;
			}
		});
	}
}   