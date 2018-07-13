package com.rgb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;

import com.fasterxml.jackson.databind.SerializationFeature;

@SpringBootApplication
public class ItgApplication {

	public static void main(String[] args) {
		SpringApplication.run(ItgApplication.class, args);
	}
	
	

	/*@Configuration
	public class JacksonConfig {

	    @Bean
	    public Jackson2ObjectMapperBuilder jacksonBuilder() {
	        Jackson2ObjectMapperBuilder builder = new Jackson2ObjectMapperBuilder();
	        builder.featuresToEnable(SerializationFeature.WRAP_ROOT_VALUE); // enables wrapping for root elements
	       return builder;
	    }
	}*/
	
	
}
