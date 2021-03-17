package com.Price.quotation.Service;

import java.util.List;
import org.springframework.stereotype.Service;

import com.Price.quotation.Model.User;
import com.Price.quotation.Model.Vendor;

@Service
public interface VendorService {
    //this method is used for to add vendor data in Database(Price Quotation)
    public boolean addVendor(Vendor vendor);
    public List<Vendor> getVendor();
    //this method is used to fetch Vendor data from Database(Price Quotation)
    public List<Vendor> read();
	public int delete(int vId);
    
}