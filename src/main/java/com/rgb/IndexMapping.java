package com.rgb;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IndexMapping implements ErrorController {
	
	private static final String PATH = "/error";

	@Override
	public String getErrorPath() {
		return PATH;
	}
	
	
	@RequestMapping(PATH)
	public String error() {
		return "No Mapping Availiable";
	}
	
	

}
