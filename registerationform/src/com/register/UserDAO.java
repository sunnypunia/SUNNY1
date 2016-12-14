package com.register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
	public User SaveUser(String yourname,String password,String gender,String hobbies,String country,String address)
	{
		
	try {
		Class.forName("org.h2.Driver");
		Connection con=DriverManager.getConnection("jdbc:h2:~/test","sa","sa");
		PreparedStatement ps=con.prepareStatement("insert into Register values(?,?,?,?,?,?)");
		
			ps.setString(1,yourname);
			ps.setString(2,password);
			ps.setString(3,gender);
			ps.setString(4,hobbies);
			ps.setString(5,country);
			ps.setString(6,address);
			ps.executeUpdate();
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	User u=new User();
	u.setYourname(yourname);
	u.setPassword(password);
	u.setGender(gender);
	u.setHobbies(hobbies);
	u.setCountry(country);
	u.setAddress(address);
	return u;
	 
	
	}



	}


