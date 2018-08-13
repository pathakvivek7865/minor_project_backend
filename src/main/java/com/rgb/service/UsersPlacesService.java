package com.rgb.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rgb.model.UserPlace;
import com.rgb.repository.UsersPlacesRepo;

@Service
public class UsersPlacesService {

	@Autowired
	private UsersPlacesRepo usersPlacesRepo;
	
	public void postRating(UserPlace rating) {
		usersPlacesRepo.save(rating);
	}

	

	public Optional<UserPlace> getRating(int id) {
		Optional<UserPlace> rating = usersPlacesRepo.findById(id);
		return rating;
	}



}
