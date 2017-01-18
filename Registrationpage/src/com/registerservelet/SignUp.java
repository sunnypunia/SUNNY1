package com.registerservelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		System.out.println("starting");
		boolean x=UserDAO.Validation(username,password);
		if(x)
		{
			RequestDispatcher r=request.getRequestDispatcher("sunny.jsp");
			r.forward(request, response);
		}
		
		
			
			else
			{
				PrintWriter out=response.getWriter();
				out.println("invalid credential...please try again");
				RequestDispatcher r=request.getRequestDispatcher("Login.jsp");
				r.include(request, response);
			}
	}

}
