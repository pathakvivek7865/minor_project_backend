package com.rgb.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rgb.model.Users;

public interface UsersRepository extends JpaRepository<Users, Integer> {
    Optional<Users> findByEmail(String username);
}