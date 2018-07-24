package com.rgb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;

import com.rgb.model.Image;
import com.rgb.repository.ImageRepository;

@Service
public class ImageService {
		
	private final ImageRepository imageRepository;
	private final ResourceLoader resourceLoader;
	
	@Autowired
	public ImageService(ImageRepository imageRepository, ResourceLoader resourceLoader) {
		this.imageRepository = imageRepository;
		this.resourceLoader = resourceLoader;
	}
	
	
	
	
	
	
	
	
	public List<Image> getAllImages() {
		List<Image> images = new ArrayList<>();
		imageRepository.findAll().forEach(images::add);
		return images;
	}

}
