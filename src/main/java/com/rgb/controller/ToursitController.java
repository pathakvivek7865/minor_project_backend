package com.rgb.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Tourist;
import com.rgb.service.TouristService;


@RestController
public class ToursitController {
	
	@Autowired
	private TouristService touristService;
	
	@RequestMapping(value="/tourists")
	public List<Tourist> getAllTourist(){
		return touristService.getAllTourist();
	}
	
	@RequestMapping(value="/tourists/{id}")
	public Optional<Tourist> getTourist(@PathVariable long id){
		return touristService.getTourist(id);
	}
	
    @PreAuthorize("hasAnyRole('ADMIN')")
	@RequestMapping(method=RequestMethod.POST,value="/tourists")
	public void addTourist(@RequestBody Tourist tourist) {
		touristService.addTourist(tourist);
	}
	
    @PreAuthorize("hasAnyRole('ADMIN')")
	@RequestMapping(method=RequestMethod.DELETE, value="/tourists/{id}")
	public void deleteTourist(@PathVariable long id) {
		touristService.deleteTourist(id);
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/tourists/{id}")
	public void updateTourist(@PathVariable long id, @RequestBody Tourist tourist) {
		touristService.updateTourist(id, tourist);
	}

}
