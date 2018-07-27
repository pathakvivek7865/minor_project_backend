package com.rgb.rootname;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.rgb.model.Tourist;

public class TouristList {
	
    String name;
	
	@JsonProperty("tourists")
	private List<Tourist> tourists;

	public TouristList(String name, List<Tourist> tourists) {
		super();
		this.name = name;
		this.tourists = tourists;
	}


	public List<Tourist> getTourists() {
		return tourists;
	}

	public void setTourists(List<Tourist> tourists) {
		this.tourists = tourists;
	}
	
	
	
	

}
