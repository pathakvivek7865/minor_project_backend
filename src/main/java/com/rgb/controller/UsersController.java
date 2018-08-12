package com.rgb.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rgb.model.Users;
import com.rgb.rootname.UsersList;
import com.rgb.service.UsersService;

@RestController
public class UsersController {
	
	@Autowired
	private UsersService userService;
	
	
	@RequestMapping(value="/signup", method = RequestMethod.POST, headers = "Content-Type=Application/json")
	public void signUp(@RequestBody Users user) {
		userService.signUp(user);
	}
	
	
	
	
	@GetMapping("/login")
	public long getCurrentLogin() {
		return userService.getCurrentUser();
    }
	
	 @PreAuthorize("hasAnyRole('ADMIN')")
	@RequestMapping(value="/users", method = RequestMethod.GET)
	public UsersList getAllUsers(){
		return userService.getAllUsers();
	}
	 
		@RequestMapping(value="/users/{id}")
		public Optional<Users> getTourist(@PathVariable long id){
			return userService.getUserById(id);
		}
	 
	 
		@RequestMapping(method=RequestMethod.PUT, value="/users/{id}", headers = "Content-Type=Application/json")
		public ResponseEntity<Object> updateTourist(@PathVariable long id, @RequestBody Users user) {
			return userService.updateUser(id, user);
		}
		
	    @PreAuthorize("hasAnyRole('ADMIN')")
		@RequestMapping(method=RequestMethod.DELETE, value="/users/{id}")
		public void deleteUser(@PathVariable long id) {
			userService.deleteUser(id);
		}

}
