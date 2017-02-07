package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Category {
		@Id
		public String category_id;
		public String category_name;
		public String category_description;
		public String getCategory_id() {
			return category_id;
		}
		public void setCategory_id(String category_id) {
			this.category_id = category_id;
		}
		public String getCategory_name() {
			return category_name;
		}
		public void setCategory_name(String category_name) {
			this.category_name = category_name;
		}
		public String getCategory_description() {
			return category_description;
		}
		public void setCategory_description(String category_description) {
			this.category_description = category_description;
		}
		
}
