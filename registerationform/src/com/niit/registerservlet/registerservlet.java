package com.niit.registerservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.register.User;
import com.register.UserDAO;


@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String yourname=request.getParameter("yourname");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String hobbies=request.getParameter("hobbies");
		String country=request.getParameter("country");
		String address=request.getParameter("address");
		PrintWriter out=response.getWriter();
	   UserDAO ud=new UserDAO();
	   User u = ud.SaveUser(yourname, password, gender, hobbies, country, address);
	   out.println(u.yourname);
	   out.println(u.password);   
	   out.println(u.gender);
	   out.println(u.hobbies);
	   out.println(u.country);
	   out.println(u.address);
	}

	
}


