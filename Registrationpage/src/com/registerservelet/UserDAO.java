package com.registerservelet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

	
	
	public User SaveUser(String username,String password,String gender,String hobbies,String country,String address)
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("test driver");
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db", "root", "sunny@3280");
			System.out.println("test connection");
			PreparedStatement ps=conn.prepareStatement("insert into user values(?,?,?,?,?,?)");
			ps.setString(1,username);
			ps.setString(2,password);
			ps.setString(3,gender);
			ps.setString(4,hobbies);
			ps.setString(5,country);
			ps.setString(6,address);
			ps.executeUpdate();
		
					
		} catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}
		User u=new User();
		u.setUsername(username);
		u.setPassword(password);
		u.setGender(gender);
		u.setHobbies(hobbies);
		u.setCountry(country);
		u.setAddress(address);
		return u;
		
		
		
	}
	
	 public static boolean Validation(String username,String password) 
     {
        boolean flag=false;
		
         try {
        	 Class.forName("com.mysql.jdbc.Driver");
    		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","sunny@3280");
    		
			 PreparedStatement ps =con.prepareStatement("select * from user where username=? and password=?");
			 ps.setString(1, username);
			 ps.setString(2, password);
			 ResultSet rs =ps.executeQuery();
			  while(rs.next())
			  {
				  if(rs.getString("username").equals(username)&& rs.getString("password").equals(password))
				  {
					  flag=true;
				  }
			  }
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         return flag;
     }
}
     


