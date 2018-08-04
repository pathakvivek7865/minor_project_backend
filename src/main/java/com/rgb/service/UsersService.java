package com.rgb.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.rgb.model.Users;
import com.rgb.repository.UsersRepository;

@Service
public class UsersService {
	
	@Autowired
	private UsersRepository usersRepository;
	

	/*public EntityExistsException signUp(Users user) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String initialPassword = user.getPassword();
		user.setPassword(passwordEncoder.encode(initialPassword));
		
		
		String email = user.getEmail();
		Optional<Users> user1 = usersRepository.findByEmail(email);
		if (user1 != null) {
			return new EntityExistsException(
		              "There is an account with that email adress: " + user.getEmail());
		}
		
		usersRepository.save(user);
		return null;
		
	}*/
	
	
	public void signUp(Users user) {
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String initialPassword = user.getPassword();
		user.setPassword(passwordEncoder.encode(initialPassword));
		
		usersRepository.save(user);

		
	}
	
		

	public int getCurrentUser() {
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
			int userId = user.getId();
			return userId;
		}else {
			return 0;
		}
		
	}

}
