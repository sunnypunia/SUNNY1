
package com.niit.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.niit.DAO.UserDAOImpl;
import com.niit.model.User;

@Controller
public class MyController {
	
	
    @Autowired
    UserDAOImpl userDAOImpl;
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/index")
	public ModelAndView Home()
	{
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/login")
	public ModelAndView Login()
	{
		ModelAndView mv=new ModelAndView("Login");
		return mv;
	}
	
	@RequestMapping("/logout1")
	public ModelAndView Logout(HttpSession session)
	{
		session.setAttribute("username","");
		session.invalidate();
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/registration")
	public ModelAndView registration()
	{
		ModelAndView mv=new ModelAndView("registration");
		return mv;
	}
	@RequestMapping("/contactus")
	public ModelAndView contactus()
	{
		ModelAndView mv=new ModelAndView("contactus");
		return mv;
	}
	@RequestMapping("/Admin")
	public ModelAndView admin()
	{
		ModelAndView mv=new ModelAndView("Admin");
		return mv;
	}
	@RequestMapping("/AdminLogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView("AdminLogin");
		return mv;
	}
	@RequestMapping("/LoginError")
	public ModelAndView adminloginerror()
	{
		ModelAndView mv=new ModelAndView("LoginError");
		return mv;
	}
	
	
	@RequestMapping("/login1")
	public ModelAndView homepage(HttpServletRequest request,HttpSession session)
	{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean x=userDAOImpl.validate(username,password);
		if(x)
		{
			session.setAttribute("username",username);
			return new ModelAndView("index");
		}
		else
		{
			return new ModelAndView("Login","msg","invalind credentials");
		}
	}

	@RequestMapping("/register")
	public ModelAndView register(@ModelAttribute User u)
	{
		System.out.println("starting of register");
		u.setRole("role_user");
		u.setEnabled(true);
		System.out.println(u);
		userDAOImpl.isSave(u);
		return new ModelAndView("Login","msg","Login to continue");
	}
	

}			


