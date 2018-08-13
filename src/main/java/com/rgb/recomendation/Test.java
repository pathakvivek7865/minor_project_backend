package com.rgb.recomendation;

import java.util.ArrayList;
import java.util.Arrays;

public class Test {
	
	public static void main(String[] args) {
		
		Recomendation prdt = new Recomendation();
		prdt.pridict();
		for(int i=1; i<=6; i++) {
			
		
			System.out.print(prdt.getRecomendedPlaces(1)[i] + " ");

		}
	}

	

}
