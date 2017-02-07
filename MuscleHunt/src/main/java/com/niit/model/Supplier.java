package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Supplier {
		@Id
		public String supplier_id;
		public String supplier_name;
		public String supplier_address;
		public String getSupplier_id() {
			return supplier_id;
		}
		public void setSupplier_id(String supplier_id) {
			this.supplier_id = supplier_id;
		}
		public String getSupplier_name() {
			return supplier_name;
		}
		public void setSupplier_name(String supplier_name) {
			this.supplier_name = supplier_name;
		}
		public String getSupplier_address() {
			return supplier_address;
		}
		public void setSupplier_address(String supplier_address) {
			this.supplier_address = supplier_address;
		}
		
}
