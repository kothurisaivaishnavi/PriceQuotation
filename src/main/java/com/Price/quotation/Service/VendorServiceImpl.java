package com.Price.quotation.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.Price.quotation.Model.User;
import com.Price.quotation.Model.Vendor;



@Service("vendorService")
public class VendorServiceImpl implements VendorService {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    // --------------------------------------------------------
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    // --------------------------------------------------------
    public boolean addVendor(Vendor register) {
        String sql = "insert into vendor_table(firstName,lastName,gender,contact_number,vendorId,password,address) values(?,?,?,?,?,?,?)";
            
        try {
            int counter = jdbcTemplate.update(sql,
                    new Object[] { register.getFirstName(), register.getLastName(), 
                            register.getGender(), register.getContactNumber(),
                            register.getVendorId(), register.getPassword(),register.getAddress()});
            return true;
            
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    // -----------------------------------------------
    @Override
    public List<Vendor> read() {
        List<Vendor> vendorList = jdbcTemplate.query("select * from vendor_table v inner join product_table p on v.vId=p.id inner join user_table u on v.vId=u.id", new RowMapper<Vendor>() {
        	
            @Override
            public Vendor mapRow(ResultSet set, int rowNum) throws SQLException {
                Vendor vendor = new Vendor();
                vendor.setVendorId(set.getString("vendorId"));
                vendor.setFirstName(set.getString(1));
                vendor.setAddress(set.getString(7));
                vendor.setContactNumber(set.getString(4));
                vendor.setUserName(set.getString(18));
                vendor.setUserContact(set.getString(22));
                vendor.setUserAddress(set.getString(25));
                vendor.setProductId(set.getInt(9));
                vendor.setProductName(set.getString(10));
                vendor.setProductPrice(set.getInt(16));
                return vendor;
            }
        });
        return vendorList;
    }     
    @Override
    public List<Vendor> getVendor() {
        List<Vendor> vendorList = jdbcTemplate.query("select * from vendor_table ", new RowMapper<Vendor>() {
        	
            @Override
            public Vendor mapRow(ResultSet set, int rowNum) throws SQLException {
                Vendor vendor = new Vendor();
                vendor.setVendorId(set.getString("vendorId"));
                vendor.setPassword(set.getString("password"));
                return vendor;
            }
        });
        return vendorList;
    }     
    public int delete(int vId){    
        String sql="delete from vendor_table where vId="+vId+"";    
        return jdbcTemplate.update(sql);    
    }    
}