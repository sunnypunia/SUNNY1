package com.niit.DAO;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Supplier;

public interface SupplierDAO {
	public Supplier getSupplierById(String supplier_id);
	public List<Supplier> viewSupplier();
	public void saveSupplier(Supplier s);
	public void editSupplier(String supplier_id);
	public void deleteSupplier(String supplier_id);
	public void editSupplier1(Supplier s);
}
