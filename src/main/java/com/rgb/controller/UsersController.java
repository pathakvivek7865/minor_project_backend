package com.rgb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Users;
import com.rgb.service.UsersService;

@RestController
public class UsersController {
	
	@Autowired
	private UsersService userService;
	
	
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public void signUp(@RequestBody Users user) {
		userService.signUp(user);
	}

}
