package com.Price.quotation.Service;

import java.util.List;

import com.Price.quotation.Model.User;

public interface RequestService {
	public boolean addRequest(User req);
	public List<User> viewRequest();
	public int update(User user);
	
}
