package com.rgb.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="place")
public class Place {
	
	@Id
	@Column(name = "place_id", nullable = false, unique = true)
	private long id;
	private String name;
	private String address;
	private String description;
	private String established;
	private String importance;
	private String preferedActivities;
	private String featuredImage;
	
	 @OneToOne(fetch = FetchType.LAZY,cascade =  CascadeType.ALL)
	 @JoinColumn(name = "place_id")
	 private Location location;
	 
	 @OneToMany
	 @JoinColumn(name = "place_id", nullable=false)
	 private List<Image> image = new ArrayList<>();
	
	/*
	@OneToOne
	@JoinColumn(name="place_id", nullable=false, unique = true)
	private List<Location> location = new ArrayList<>();*/

	
	/*public Lis<Location> getLocation() {
		return location;
	}

	public void setLocation(List<Location> location) {
		this.location = location;
	}*/

	

	public List<Image> getImage() {
		return image;
	}

	public void setImage(List<Image> image) {
		this.image = image;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	public Place() {}
	
	public Place(long id, String name, String address, String description, String established, String importance,
			 String preferedActivities, String featuredImage) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.description = description;
		this.established = established;
		this.importance = importance;
		this.preferedActivities = preferedActivities;
		this.featuredImage = featuredImage;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEstablished() {
		return established;
	}

	public void setEstablished(String established) {
		this.established = established;
	}

	public String getImportance() {
		return importance;
	}

	public void setImportance(String importance) {
		this.importance = importance;
	}



	public String getPreferedActivities() {
		return preferedActivities;
	}

	public void setPreferedActivities(String preferedActivities) {
		this.preferedActivities = preferedActivities;
	}
	
	public String getFeaturedImage() {
		return featuredImage;
	}

	public void setFeaturedImage(String featuredImage) {
		this.featuredImage = featuredImage;
	}
	
	
	
	
	
	

}
