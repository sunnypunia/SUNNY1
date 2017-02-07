package com.niit.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Repository
public class ProductDAOImpl implements ProductDAO{
       @Autowired
       SessionFactory sessionFactory;
       
       public ProductDAOImpl(SessionFactory sessionFactory)
       {
    	   
    	   this.sessionFactory=sessionFactory;
       }
      /* public Session getSession() {
		return sessionFactory.openSession();
		}*/
       
       public List<Product> getProductData() {
   		Session sess=sessionFactory.openSession();
   		Transaction tx=sess.beginTransaction();
   		String hql="from Product";
   		Query q=sess.createQuery(hql);
   		List<Product> l=q.list();
   		return l;
   		
   	}

	public void saveProduct(Product p) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		sess.close();
	}

	public void editProduct(String product_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Product p=(Product)sess.get(Product.class, product_id);
		sess.update(p);
		tx.commit();
		sess.close();
	}

	public void deleteProduct(String product_id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		Product p=(Product) sess.get(Product.class, product_id);
		sess.delete(p);
		tx.commit();
		sess.close();

	}
	

	public Product getProductById(String product_id) {
		Session sess=sessionFactory.openSession();
		Product p=(Product)sess.get(Product.class, product_id);
		return p;
	}

	public void editProduct1(Product p) {
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.update(p);
		tx.commit();
		sess.close();
	}

	public List<Category> getCategoryName() {
		Session sess=sessionFactory.openSession();
   		Transaction tx=sess.beginTransaction();
   		String hql="select category_name from Category ";
   		Query q=sess.createQuery(hql);
   		List<Category> l=q.list();
   		return l;
	}

	public List<Supplier> getSupplierName() {
		Session sess=sessionFactory.openSession();
   		Transaction tx=sess.beginTransaction();
   		String hql="select supplier_name from Supplier";
   		Query q=sess.createQuery(hql);
   		List<Supplier> l=q.list();
   		return l;
	}


	
	}
	



