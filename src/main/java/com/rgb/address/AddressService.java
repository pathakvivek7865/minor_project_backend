package com.rgb.address;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddressService {
	
	@Autowired
	private AddressRepository addressRepository;
	
	public List<Address> getAllAddressByTouristId(){
		List<Address> address = new ArrayList<>();
		
		//addressRepository.getAddressByTouristId(tourist_id).forEach(address::add);
		addressRepository.findAll().forEach(address::add);

		return address;
	}

	public void addAddressByTouristId(Address address, long tourist_id) {
		addressRepository.saveAddressByTouristId(address.getCountry(), address.getState(), address.getCity(), address.getZipCode(),
				address.getStreet(), address.getHouseNumber(),tourist_id);		
	}
	
}
