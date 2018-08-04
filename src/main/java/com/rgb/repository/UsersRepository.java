package com.rgb.repository;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.rgb.model.Users;

public interface UsersRepository extends JpaRepository<Users, Integer> {
    Optional<Users> findByEmail(String username);
    
	@Transactional
    @Query(value="select * from user where user.email = :username ;", nativeQuery=true)
    Users findIdByEmail(@Param("username") String username);
   
}