package com.niit.DAO;


import java.util.List;



import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

public interface ProductDAO {
	public Product getProductById(String product_id);
	public List<Product> getProductData();
	public void saveProduct(Product p);
	public void editProduct(String product_id);
	public void deleteProduct(String product_id);
	public void editProduct1(Product p);
	public List<Supplier>getSupplierName();
	public List<Category>getCategoryName();
}
