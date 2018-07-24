package com.rgb.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rgb.model.Location;
import com.rgb.repository.LocationRepository;


@Service
public class LocationService {
	
	@Autowired
	private LocationRepository locationRepository;

	public List<Location> getAllLocation() {
		List<Location> location = new ArrayList<>();
		locationRepository.findAll().forEach(location::add);
		return location;
		
	}

}
