package com.rgb.model;

import javax.persistence.*;

@Entity
public class UserPlace {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="user_id", nullable=false)
	private int userId;
	@Column(name="place_id", nullable=false)
	private long placeId;
	@Column(name="rating", nullable=false)
	private int rating;
	
	public UserPlace() {}
	
	public UserPlace(int id, int userId, long placeId, int rating) {
		super();
		this.id = id;
		this.userId = userId;
		this.placeId = placeId;
		this.rating = rating;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public long getPlaceId() {
		return placeId;
	}

	public void setPlaceId(long placeId) {
		this.placeId = placeId;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}
	
	
	
	
}
