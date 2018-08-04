package com.rgb.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Users;
import com.rgb.repository.UsersRepository;
import com.rgb.service.UsersService;

@RestController
public class UsersController {
	
	@Autowired
	private UsersService userService;
	
	@Autowired
	private UsersRepository usersRepository;
	
	
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public void signUp(@RequestBody Users user) {
		userService.signUp(user);
	}
	
	
	
	
	@GetMapping("/login")
	public int getCurrentLogin() {
		return userService.getCurrentUser();
    }

}
