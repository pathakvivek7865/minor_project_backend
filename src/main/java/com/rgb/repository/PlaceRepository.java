package com.rgb.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.rgb.model.Place;

public interface PlaceRepository extends CrudRepository<Place, Long>{
	
	@Transactional
    @Query(value="SELECT * FROM place WHERE place_id IN (:p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :p13"
    		+ ", :p14, :p15, :p16, :p17, :p18, :p19, :p20);", nativeQuery=true)
	List<Place> getRecomendedPlace(@Param(value = "p1") long p1, @Param(value = "p2") long p2,
			                       @Param(value = "p3") long p3, @Param(value = "p4") long p4,
			                       @Param(value = "p5") long p5, @Param(value = "p6") long p6,
			                       @Param(value = "p7") long p7, @Param(value = "p8") long p8,
			                       @Param(value = "p9") long p9, @Param(value = "p10") long p10,
			                       @Param(value = "p11") long p11, @Param(value = "p12") long p12,
			                       @Param(value = "p13") long p13, @Param(value = "p14") long p14,
			                       @Param(value = "p15") long p15, @Param(value = "p16") long p16,
			                       @Param(value = "p17") long p17, @Param(value = "p18") long p18,
			                       @Param(value = "p19") long p19, @Param(value = "p20") long p20
			           );

}
