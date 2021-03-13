package com.Price.quotation.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

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
        List<Vendor> vendorList = jdbcTemplate.query("select * from vendor_table", new RowMapper<Vendor>() {
        	
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