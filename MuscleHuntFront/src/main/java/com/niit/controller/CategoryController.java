package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAOImpl;
import com.niit.model.Category;


@Controller
public class CategoryController {
			@Autowired
			CategoryDAOImpl categoryDAOImpl;
			
			@RequestMapping("/addc")
			public ModelAndView addc()
			{
				ModelAndView mv=new ModelAndView("addcategory","command",new Category());
				return mv;
			}
			@RequestMapping("/addcategory")
			public ModelAndView addCategory(@ModelAttribute Category c)
			{
					categoryDAOImpl.saveCategory(c);
					ModelAndView mv=new ModelAndView("redirect:/viewcategory");
					return mv;
			}
			@RequestMapping("/viewcategory")
			public ModelAndView m2()
			{
					ModelAndView mv=new ModelAndView("viewcategory");
					List<Category> l=categoryDAOImpl.viewCategory();
					mv.addObject("list",l);
					return mv;
			}
			@RequestMapping("deletec/{category_id}")
			public ModelAndView delete(@PathVariable String category_id)
			{
				categoryDAOImpl.deleteCategory(category_id);
				return new ModelAndView("redirect:/viewcategory");
			
			}

			@RequestMapping("editc/{category_id}")
			public ModelAndView edit(@PathVariable String category_id)
			{
				Category c=categoryDAOImpl.getCategoryById(category_id);
			return new ModelAndView("editcategory","command",c);
			}
			@RequestMapping("/editcategory")
			public ModelAndView editsave1(@ModelAttribute Category c)
			{
				categoryDAOImpl.editCategory1(c);
				return new ModelAndView("redirect:/viewcategory");
			}
			
		}