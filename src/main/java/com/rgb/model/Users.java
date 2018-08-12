package com.rgb.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "user")
public class Users {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id", nullable= false, unique=true)
    private Long id;
    
    @Column(name = "email",nullable = false, unique = true)
    private String email;
    
    @Column(name = "password", nullable= false)
    private String password;
    
    @Column(name = "first_name")
    private String firstName;
    @Column(name = "last_name")
    private String lastName;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id",unique=false, referencedColumnName = "role_id"))
    private Set<Role> roles;
    
    
    @OneToMany
	@JoinColumn(name="user_id", nullable=false)
	private List<Contact> contacts = new ArrayList<>();
    
    @OneToMany
	@JoinColumn(name="user_id", nullable=false)
	private List<Address> address = new ArrayList<>();
   

   public Users() {}
    
	public Users(Users users) {
        this.email = users.getEmail();
        this.roles = users.getRoles();
        this.firstName = users.getFirstName();
        this.lastName =users.getLastName();
        this.id = users.getId();
        this.password = users.getPassword();
        this.contacts = users.getContacts();
    }




	public Users(Long id, String email, String password, String firstName, String lastName, Set<Role> roles,
			List<Contact> contacts, List<Address> address) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.roles = roles;
		this.contacts = contacts;
		this.address = address;
	}




	public Long getId() {
		return id;
	}




	public void setId(Long id) {
		this.id = id;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getFirstName() {
		return firstName;
	}




	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}




	public String getLastName() {
		return lastName;
	}




	public void setLastName(String lastName) {
		this.lastName = lastName;
	}




	public Set<Role> getRoles() {
		return roles;
	}




	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}




	public List<Contact> getContacts() {
		return contacts;
	}




	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}




	public List<Address> getAddress() {
		return address;
	}




	public void setAddress(List<Address> address) {
		this.address = address;
	}
    

}