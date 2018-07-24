package com.rgb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Image;
import com.rgb.service.ImageService;

@RestController
public class ImageController {
	
	@Autowired
	private ImageService imageService;
	
	
	@RequestMapping(value="/images")
	public List<Image> getAllImages(){
		return imageService.getAllImages();
	}
	
	//public List<Image> getImagesByPlaceId(value="/places/{placeId}/images")

}
