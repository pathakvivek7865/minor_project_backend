package com.rgb.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Place;
import com.rgb.rootname.PlaceList;
import com.rgb.rootname.RecomendList;
import com.rgb.service.PlaceService;

@RestController
public class PlaceController {

	@Autowired
	private PlaceService placeService;
	
	@RequestMapping(value="/places")
	public PlaceList getAllPlaces(){
		return placeService.getAllPlaces();
	}
	
	/*@RequestMapping(value="/recommend/")
	public PlaceList getAllRecommendedPlaces(){
		return placeService.getAllPlaces();
	}*/
	
	@RequestMapping(value="/places",  method = RequestMethod.POST, headers = "Content-Type=Application/json")
	public void postPlace(@RequestBody Place place) {
		placeService.postPlace(place);
	}
	
	
	@RequestMapping(value="/recomendation/{id}",  method = RequestMethod.GET)
	public RecomendList getRating(@PathVariable int id) {
		return placeService.getRecomendedPlace(id);
	}
	
}
