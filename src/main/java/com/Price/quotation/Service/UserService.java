package com.Price.quotation.Service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.Price.quotation.Model.User;

@Service
public interface UserService {
	//this method is used for to add user data in Database(Price Quotation)
	public boolean addUser(User user);
	
	//this method is used to fetch User data from Database(Price Quotation)
	

	public User getUserById(int id);

	public int update(User profile);

	public List<User> getUser();
	
}


