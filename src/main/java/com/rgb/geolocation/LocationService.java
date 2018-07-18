package com.rgb.geolocation;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
