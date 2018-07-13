package com.rgb.contact;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactService {
	
	@Autowired
	private ContactRepository contactRepository;

	public List<Contact> getAllContactByTouristId(long tourist_id) {
		List<Contact> contacts = new ArrayList<>();
		contactRepository.findContactByTouristId(tourist_id).forEach(contacts::add);
		return contacts;
	}

	public void addContactByTouristId(Contact contact, long tourist_id) {
		
		contactRepository.addContactByTouristId(contact.getEmail(), contact.getPhone(), tourist_id);
		
	}

}
