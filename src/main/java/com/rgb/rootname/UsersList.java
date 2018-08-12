package com.rgb.rootname;

import java.util.List;


import com.fasterxml.jackson.annotation.JsonProperty;
import com.rgb.model.Users;

public class UsersList {

    String name;
	
	@JsonProperty("users")
	private List<Users> users;

	public UsersList(String name, List<Users> users) {
		super();
		this.name = name;
		this.users = users;
	}

	

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}
	
	
	

}
