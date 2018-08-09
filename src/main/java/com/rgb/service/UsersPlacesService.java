package com.rgb.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rgb.model.UsersPlaces;
import com.rgb.repository.UsersPlacesRepo;

@Service
public class UsersPlacesService {

	@Autowired
	private UsersPlacesRepo usersPlacesRepo;
	
	public void postRating(UsersPlaces rating) {
		usersPlacesRepo.save(rating);
	}

	

	public Optional<UsersPlaces> getRating(int id) {
		Optional<UsersPlaces> rating = usersPlacesRepo.findById(id);
		return rating;
	}
}
