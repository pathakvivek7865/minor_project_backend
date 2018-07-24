package com.rgb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Contact;
import com.rgb.service.ContactService;

@RestController
public class ContactController {
	
	@Autowired
	private ContactService contactService;

	@RequestMapping(value="/tourists/{tourist_id}/contacts")
	public List<Contact> getAllContact(@PathVariable long tourist_id){
		
		return contactService.getAllContactByTouristId(tourist_id);
		
	}
	
	@RequestMapping(value="/tourists/{tourist_id}/contacts", method= RequestMethod.POST)
	public void addContact(@RequestBody Contact contact, @PathVariable long tourist_id) {
		
		contactService.addContactByTouristId(contact, tourist_id);
		
	}
	
	
	
	
	
}
