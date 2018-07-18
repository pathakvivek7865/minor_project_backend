package com.rgb.geolocation;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface LocationRepository extends CrudRepository<Location, Long> {

	//@Query(value="select * form geo_location where geo_location.place_id = place.place_id", nativeQuery=true)
	//Location findByPlaceId(long placeId);

}
