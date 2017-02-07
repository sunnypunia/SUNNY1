package com.niit.DAO;

import com.niit.model.User;

public interface UserDAO {
	public boolean validate(String username,String password);
	public void isSave(User u);
}
