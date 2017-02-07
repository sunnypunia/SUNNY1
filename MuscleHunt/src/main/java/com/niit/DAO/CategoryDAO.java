package com.niit.DAO;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface CategoryDAO {
	public Category getCategoryById(String category_id);
	public List<Category> viewCategory();
	public void saveCategory (Category c);
	public void editCategory (String category_id);
	public void deleteCategory (String category_id);
	public void editCategory1(Category c);
}
