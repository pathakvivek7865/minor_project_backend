package com.rgb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rgb.model.Tourist;

public interface TouristRepository extends JpaRepository<Tourist, Long> {

}
