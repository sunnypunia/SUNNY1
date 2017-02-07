package com.niit.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.DAO.ProductDAOImpl;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;



@Controller
public class ProductController {

	
	@Autowired
		ProductDAOImpl productDAOImpl ;
	
	@RequestMapping("/addp")
	public ModelAndView addp()
	{
		ModelAndView mv=new ModelAndView("product","command",new Product());
		List<Category> l1=productDAOImpl.getCategoryName();
		mv.addObject("listC",l1);
		List<Supplier> l2=productDAOImpl.getSupplierName();
		mv.addObject("listS",l2);
		return mv;
	}
	
	@RequestMapping("/whey")
	public ModelAndView displayProducts()
	{
		ModelAndView mv=new ModelAndView("whey");
		List<Product> list=productDAOImpl.getProductData();
		Gson g=new Gson();
		String str=g.toJson(list);
		System.out.println("JSon DATA is"+str);
		mv.addObject("pr",str);
		return mv;
	}
	@RequestMapping("/productDetails/{product_id}")
	public ModelAndView productDetails(@PathVariable String product_id)
	{
		Product p=productDAOImpl.getProductById(product_id);
		ModelAndView mv=new ModelAndView("productDetails");
		mv.addObject("product",p);
		return mv;
	}
	
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public ModelAndView addProduct1(@ModelAttribute Product p)
	{
		System.out.println("inside");
		String filename=null;
		byte[] bytes;
		if(!p.getFile().isEmpty())
		{
			
		try
		{
			bytes=p.getFile().getBytes();
		
		productDAOImpl.saveProduct(p);
		String Path="F:/workspace/MuscleHuntFront/src/main/webapp/resources/images/"+p.getProduct_id()+".jpg";
		File f=new File(Path);
		BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
		bs.write(bytes);
		bs.close();
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
		}
		return new ModelAndView("redirect:/viewproduct");
		
	}
	@RequestMapping("/viewproduct")
	public ModelAndView m1()
	{
			ModelAndView mv=new ModelAndView("view");
			List<Product> l=productDAOImpl.getProductData();
			mv.addObject("list",l);
			return mv;
	}
	@RequestMapping("/deleteP/{product_id}")
	public ModelAndView delete(@PathVariable String product_id)
	{
		productDAOImpl.deleteProduct(product_id);
		return new ModelAndView("redirect:/viewproduct");
	
	}

	@RequestMapping("/editP/{product_id}")
	public ModelAndView edit(@PathVariable String product_id)
	{
		Product p=productDAOImpl.getProductById(product_id);
		return new ModelAndView("editproduct","command",p);
	}
	@RequestMapping("/editsave")
	public ModelAndView editsave(@ModelAttribute Product p)
	{
		System.out.println("edit product 1");
		productDAOImpl.editProduct1(p);
		System.out.println("edit product 2");
		return new ModelAndView("redirect:/viewproduct");
	}
}
