package com.Price.quotation.Service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.Price.quotation.Model.Admin;

@Service
public interface AdminService {
	
	public List<Admin> read();
	
}