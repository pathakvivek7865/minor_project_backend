package com.rgb.model;

import javax.persistence.*;


@Entity
@Table(name="geo_location")
public class Location {
	
	@Id
	@Column(name="geo_location_id", nullable = false, unique = true)
	private long id;
	
	private double latitude;
	private double longitude;
	
	@OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "place_id", nullable = false)
    private Place place;
	
	public Location() {}
	
	public Location(long id, double latitude, double longitude) {
		super();
		this.id = id;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	
	
	

}
