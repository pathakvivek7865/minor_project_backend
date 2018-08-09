package com.rgb.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.UsersPlaces;
import com.rgb.service.UsersPlacesService;

@RestController
public class UsersPlacesController {
	
	@Autowired
	private UsersPlacesService usersPlacesService;
	
	
	@RequestMapping(value="/rating",  method = RequestMethod.POST, headers = "Content-Type=Application/json")
	public void postRating(@RequestBody UsersPlaces rating) {
		usersPlacesService.postRating(rating);
	}
	
	@RequestMapping(value="/rating/{id}",  method = RequestMethod.GET, headers = "Content-Type=Application/json")
	public Optional<UsersPlaces> getRating(@PathVariable int id) {
		return usersPlacesService.getRating(id);
	}

}
