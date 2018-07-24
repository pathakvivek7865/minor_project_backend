package com.rgb.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="tourist")
public class Tourist{
	
	@Id
	private long id;
	private String name;
	private int status;
	
	@OneToMany
	@JoinColumn(name="tourist_id", nullable=false)
	private List<Address> address = new ArrayList<>();
	
	@OneToMany
	@JoinColumn(name="tourist_id", nullable=false)
	private List<Contact> contacts = new ArrayList<>();
	
	
	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}
	
	public List<Address> getAddress() {
		return address;
	}

	public void setAddress(List<Address> address) {
		this.address = address;
	}

	public Tourist() {}
	
	public Tourist(long id, String name, int status) {
		super();
		this.id = id;
		this.name = name;
		this.status = status;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
	
}