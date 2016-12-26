package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController
 {
	 @RequestMapping("/")
	 public ModelAndView index()
	 {
		 ModelAndView mv=new ModelAndView("index");
		 return mv;
	 }
	 
	 @RequestMapping("/sunny")
	 public ModelAndView home()
	 {
		 ModelAndView mv=new ModelAndView("home");
		 return mv;
	 }
	 
 }