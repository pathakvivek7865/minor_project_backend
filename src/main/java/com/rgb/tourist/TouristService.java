package com.rgb.tourist;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TouristService {
	
	@Autowired
	private TouristRepository touristRepository;
	
	
	public List<Tourist> getAllTourist(){
		List<Tourist> tourists = new ArrayList<>();
		touristRepository.findAll().forEach(tourists::add);
		return tourists;
	}
	
	
	
	public Optional<Tourist> getTourist(long id){
		return touristRepository.findById(id);
	}
	
	
	public void addTourist(Tourist tourist) {
		touristRepository.save(tourist); 
	}
	
	public void deleteTourist(long id) {
		touristRepository.deleteById(id);
	}
	
	public void updateTourist(long id, Tourist tourist) {
		touristRepository.save(tourist);
	}

}
