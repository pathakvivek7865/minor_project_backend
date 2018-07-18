package com.rgb.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PlaceController {

	@Autowired
	private PlaceService placeService;
	
	@RequestMapping(value="/places")
	public List<Place> getAllPlaces(){
		return placeService.getAllPlaces();
	}
}
