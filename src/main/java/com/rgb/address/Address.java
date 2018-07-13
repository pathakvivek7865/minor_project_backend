package com.rgb.address;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class Address{
	
	@Id
	@Column(name="address_id", nullable=false, unique = true)
	private long id;
	private String country;
	private String state;
	private String city;
	private int zipCode;
	private String street;
	private String houseNumber;
	
	public Address() {}
	
	public Address(long id, String country, String state, String city, int zipCode, String street,
			String houseNumber) {
		super();
		this.id = id;
		this.country = country;
		this.state = state;
		this.city = city;
		this.zipCode = zipCode;
		this.street = street;
		this.houseNumber = houseNumber;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getZipCode() {
		return zipCode;
	}

	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}
	
	
	
	
}