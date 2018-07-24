package com.rgb.repository;


import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.rgb.model.Contact;

public interface ContactRepository extends CrudRepository<Contact, Long>{

	@Query(value="select * from contact where tourist_id = :id;", nativeQuery=true)
	public Iterable<Contact> findContactByTouristId(@Param("id") long tourist_id);

	@Modifying
	@Transactional
	@Query(value="insert into contact(email,phone,tourist_id) values(:email,:phone,:id);", nativeQuery=true)
	public void addContactByTouristId(@Param("email") String email, @Param("phone") long phone, @Param("id") long tourist_id);
	
	


}
