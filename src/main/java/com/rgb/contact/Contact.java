package com.rgb.contact;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="contact")
public class Contact {
	
	@Id
	@Column(name="contact_id", nullable=false, unique=true)
	private long id;
	private String email;
	private long phone;
	
	public Contact() {}
	
	public Contact(long id, String email, long phone) {
		super();
		this.id = id;
		this.email = email;
		this.phone = phone;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}
	
	
	
	

}
