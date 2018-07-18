package com.rgb.image;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="image")
public class Image {

	@Id
	@Column(name="image_id", nullable = false, unique = true)
	private long id;
	private String image;
	
	
	public Image() {}
	
	public Image(long id, String image) {
		super();
		this.id = id;
		this.image = image;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

}
	
	
	
	