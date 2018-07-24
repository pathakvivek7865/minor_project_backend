package com.rgb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Address;
import com.rgb.service.AddressService;

@RestController
public class AddressController {

	@Autowired
	private AddressService addressService;
	
	@RequestMapping(value="/tourists/{tourist_id}/address")
	public List<Address> getAllAddress(){
		
		return addressService.getAllAddressByTouristId();
	}
	
	@RequestMapping(value="/tourists/{tourist_id}/address", method= RequestMethod.POST)
	public void addTourist(@RequestBody Address address, @PathVariable long tourist_id){
		addressService.addAddressByTouristId(address,tourist_id);
		
	}
	
	
	
}
