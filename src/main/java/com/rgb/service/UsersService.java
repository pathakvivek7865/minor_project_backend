package com.rgb.service;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.core.*;
import org.springframework.stereotype.Service;

import com.rgb.model.Users;
import com.rgb.repository.UsersRepository;
import com.rgb.rootname.PlaceList;
import com.rgb.rootname.UsersList;

@Service
public class UsersService {
	
	@Autowired
	private UsersRepository usersRepository;
	

	
	
	public void signUp(Users user) {
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String initialPassword = user.getPassword();
		user.setPassword(passwordEncoder.encode(initialPassword));
		
		usersRepository.save(user);

		
	}
	
		

	public long getCurrentUser() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String user_name;

		if (principal instanceof UserDetails) {
		  String username = ((UserDetails)principal).getUsername();
		  user_name = username;
		} else {
		  String username = principal.toString();
		  user_name = username;
		}
		
		
		
		if(user_name != null) {
			Users user = usersRepository.findIdByEmail(user_name);
			long userId = user.getId();
			return userId;
		}else {
			return 0;
		}
		
	}



	public UsersList getAllUsers() {
		List<Users> users = new ArrayList<>();
		usersRepository.findAll().forEach(users::add);
		UsersList usersList = new UsersList("users", users );
		return usersList;
	}



	public ResponseEntity<Object> updateUser(long id, Users user) {
		
		Optional<Users> tempUser = usersRepository.findById(id);
		
		if (!tempUser.isPresent()) {
			return ResponseEntity.notFound().build();
		}
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String initialPassword = user.getPassword();
		user.setPassword(passwordEncoder.encode(initialPassword));

		usersRepository.save(user);
		return ResponseEntity.noContent().build();
	}



	public Optional<Users> getUserById(long id) {
		
		return usersRepository.findById(id);
	}



	public void deleteUser(long id) {

		usersRepository.deleteById(id);
	}

}
