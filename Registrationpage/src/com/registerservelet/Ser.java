package com.registerservelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Ser")
public class Ser extends HttpServlet {
	
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String hobbies=request.getParameter("hobbies");
		String country=request.getParameter("country");
		String address=request.getParameter("address");
		UserDAO ud=new UserDAO();
		User u=ud.SaveUser(username, password, gender, hobbies, country, address);
		PrintWriter out=response.getWriter();
		out.println(u.username);
		out.println(u.password);
		out.println(u.gender);
		out.println(u.hobbies);
		out.println(u.country);
		out.println(u.address);
		
	}

}
