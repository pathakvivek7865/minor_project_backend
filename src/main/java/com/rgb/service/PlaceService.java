package com.rgb.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.rgb.model.Place;
import com.rgb.model.UserPlace;
import com.rgb.recomendation.Recomendation;
import com.rgb.repository.PlaceRepository;
import com.rgb.rootname.PlaceList;

@Service
public class PlaceService {

	@Autowired
	private PlaceRepository placeRepository;
	
	/*public List<Place> getAllPlaces() {
		List<Place> places = new ArrayList<>();
	  
		placeRepository.findAll().forEach(places::add);
		
		return places;
	}*/
	
	
public PlaceList getAllPlaces() {
		
		List<Place> places = new ArrayList<>();
		 
		placeRepository.findAll()
		 .forEach(places::add);
		
		PlaceList placeList = new PlaceList("places", places );
		return placeList;
	}

public void postPlace(Place place) {
	placeRepository.save(place);
}

public List<Place> getRecomendedPlace(int id) {
	
	List<Place> recomendedPlaces = new ArrayList<>();
	Recomendation recomendation = new Recomendation();
	recomendation.pridict();
	int[] placeId = recomendation.getRecomendedPlaces(id);
	

/*	if(id >= 1 && id<=12) {
		
		
		for(int i=1; i<=6; i++) {
			if(placeId[i] != 0) {
			   // return placeRepository.findById((long) 1);
			}
		}
				
		
   }*/
	placeRepository.getRecomendedPlace(placeId[1],placeId[2],
			                           placeId[3],placeId[4],
			                           placeId[5],placeId[6])
	
	       .forEach(recomendedPlaces :: add);
	
	return recomendedPlaces;
}




}
