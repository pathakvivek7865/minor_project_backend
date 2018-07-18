package com.rgb.place;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
