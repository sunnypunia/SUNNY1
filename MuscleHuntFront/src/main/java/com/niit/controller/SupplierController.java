package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.SupplierDAOImpl;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAOImpl supplierDAOImpl;
	
	@RequestMapping("/adds")
	public ModelAndView adds()
	{
			
			ModelAndView mv=new ModelAndView("addsupplier","command",new Supplier());
			return mv;
	}
	@RequestMapping("/addsupplier")
	public ModelAndView addSupplier(@ModelAttribute Supplier s)
	{
		supplierDAOImpl.saveSupplier(s);
			ModelAndView mv=new ModelAndView("redirect:/viewsupplier");
			return mv;
	}
	@RequestMapping("/viewsupplier")
	public ModelAndView m3()
	{
			ModelAndView mv=new ModelAndView("viewsupplier");
			List<Supplier> l=supplierDAOImpl.viewSupplier();
			mv.addObject("list",l);
			return mv;
	}
	@RequestMapping("deletes/{supplier_id}")
	public ModelAndView deletes(@PathVariable String supplier_id)
	{
		supplierDAOImpl.deleteSupplier(supplier_id);
		return new ModelAndView("redirect:/viewsupplier");
	
	}

	@RequestMapping("edits/{supplier_id}")
	public ModelAndView edits(@PathVariable String supplier_id)
	{
		Supplier s=supplierDAOImpl.getSupplierById(supplier_id);
		
		return new ModelAndView("editsupplier","command",s);
	
	}
	
	@RequestMapping("/editsupplier")
	public ModelAndView editsave2(@ModelAttribute Supplier s)
	{
		supplierDAOImpl.editSupplier1(s);
		return new ModelAndView("redirect:/viewsupplier");
	}
}
