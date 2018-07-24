package com.rgb.repository;

import org.springframework.data.repository.CrudRepository;

import com.rgb.model.Image;

public interface ImageRepository extends CrudRepository<Image, Long> {

}
