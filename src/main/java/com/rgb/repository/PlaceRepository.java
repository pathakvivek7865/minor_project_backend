package com.rgb.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.rgb.model.Place;

public interface PlaceRepository extends CrudRepository<Place, Long>{
	
	@Transactional
    @Query(value="SELECT * FROM place WHERE place_id IN (:p1, :p2, :p3, :p4, :p5, :p6);", nativeQuery=true)
	List<Place> getRecomendedPlace(@Param(value = "p1") long p1, @Param(value = "p2") long p2,
			                       @Param(value = "p3") long p3, @Param(value = "p4") long p4,
			                       @Param(value = "p5") long p5, @Param(value = "p6") long p6);

}
