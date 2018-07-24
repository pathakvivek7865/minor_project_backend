package com.rgb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rgb.model.Place;
import com.rgb.repository.PlaceRepository;

@Service
public class PlaceService {

	@Autowired
	private PlaceRepository placeRepository;
	
	public List<Place> getAllPlaces() {
		List<Place> places = new ArrayList<>();
	  
		placeRepository.findAll().forEach(places::add);
		
		return places;
	}

}
