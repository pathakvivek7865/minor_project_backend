package com.rgb.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.rgb.model.Address;

@Repository
public interface AddressRepository extends JpaRepository<Address, Long> {

	@Modifying
	@Transactional
	@Query(value = "insert into address(country,state,city,zip_code,street,house_number,tourist_id) VALUES (:a,:b,:c,:d,:e,:f,:id);", nativeQuery = true)
	public void saveAddressByTouristId(@Param("a") String country,@Param("b") String state, @Param("c") String city,
			@Param("d") int zipCode, @Param("e") String street, @Param("f") String houseNumber, @Param("id") long tourist_id);

}
