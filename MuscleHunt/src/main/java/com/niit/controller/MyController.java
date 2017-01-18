package com.niit.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.UserDAOImpl;
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
	@RequestMapping("/login")
	public ModelAndView Login()
	{
		ModelAndView mv=new ModelAndView("Login");
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
	@RequestMapping("/Login1")
	public ModelAndView homepage(HttpServletRequest Request)
	{
		String username=Request.getParameter("username");
		String password=Request.getParameter("password");
		boolean x=userDAOImpl.validate(username, password);
		if(x)
		{
			return new ModelAndView("welcome","msg","welcome to the page");
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
		System.out.println(u);
		userDAOImpl.isSave(u);
		return new ModelAndView("Login","msg","Login to continue");
	}

}			

