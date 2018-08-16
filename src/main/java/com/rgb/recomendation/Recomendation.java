package com.rgb.recomendation;

import static java.lang.Float.NaN;

import java.util.List;


public class Recomendation {
	
	/*public static void main(String[] args) {
		
		Prediction prdt = new Prediction();
		prdt.pridict();
		//prdt.sim();
//		/*for(int i=1; i<=6; i++) {
//		
//			System.out.print(prdt.getRecomendedPlaces(5)[i] + " ");
//
//		}*/
	//}*/
//}
	
//class Prediction {
	int R = 22, C =21;
	int i,j,n;
    float[] AVG = new float[22];
    float[][] SIM = new float[22][22];
    float[][] SIM_SET = new float[22][22];
    float[][] PRE_DIC = new float[21][22];
    float[][] PRE_DIC_SET = new float[21][22];
    
    
    
	public int[] getRecomendedPlaces(int id) {
    	/*List<Float> recomendedPlaceLength = null;
    	for(j=1; j<=6; j++) {
    		if(PRE_DIC_SET[u][j] != 0.0f) {
    			recomendedPlaceLength.add(PRE_DIC_SET[u][j]);
    		}
    	}*/
    	int[] recomendedPlace = new int[R];
    	for(j=1; j<=R-1; j++) {
    		if(PRE_DIC_SET[id][j] != 0.0) {
        		recomendedPlace[j] =  (int) PRE_DIC_SET[id][j];
    		}
    	}
    	
    	return recomendedPlace;
    }
    
    

    public void pridict(){


        int[][] data = new int[][]{ 
        	{0,  0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0},
        	
        	{0,  5,0,0,0, 0,0,0,5, 0,0,5,0, 2,3,5,0, 5,0,5,4},
        	{0,  0,0,4,0, 0,5,0,0, 0,0,0,0, 0,0,0,2, 0,0,0,0},
        	{0,  0,0,3,0, 0,3,0,0, 2,0,0,2, 0,0,5,0, 0,5,0,4},
        	{0,  0,1,0,0, 0,0,5,0, 5,4,0,5, 2,0,0,0, 0,5,0,0},
        	
        	{0,  4,0,0,3, 0,5,0,4, 0,0,0,0, 0,5,0,5, 3,0,5,0},
        	{0,  0,0,0,0, 0,0,0,0, 0,0,5,0, 0,0,4,0, 0,0,0,4},
        	{0,  0,3,0,0, 0,0,4,0, 0,5,0,4, 0,0,4,0, 0,4,0,0},
        	{0,  0,0,5,5, 4,0,0,5, 4,0,0,0, 0,5,0,5, 4,0,5,0},
        	
        	{0,  0,0,0,0, 0,3,0,0, 0,0,0,0, 5,0,0,0, 0,0,0,4},
        	{0,  0,5,0,0, 0,0,0,0, 4,4,4,0, 0,0,0,0, 1,0,0,0},
        	{0,  2,0,0,0, 0,0,0,0, 0,0,0,3, 0,0,5,5, 0,2,0,0},
        	{0,  0,0,0,4, 0,2,3,0, 0,2,0,0, 0,5,0,0, 0,0,4,4},
        	
        	{0,  0,0,5,0, 0,0,0,4, 0,0,0,0, 4,0,0,0, 0,0,0,0},
        	{0,  0,0,0,2, 0,0,0,0, 3,0,5,5, 0,0,5,5, 0,4,0,3},
        	{0,  0,5,0,0, 0,1,0,0, 0,4,0,0, 0,0,0,0, 5,0,0,0},
        	{0,  0,0,0,0, 5,0,2,0, 0,0,0,0, 5,4,0,0, 0,0,5,0},
        	
        	{0,  0,0,3,0, 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,4},
        	{0,  3,0,0,3, 0,5,0,3, 3,0,3,1, 0,0,5,4, 0,5,0,0},
        	{0,  0,0,0,0, 0,0,5,0, 0,5,0,0, 0,0,0,0, 5,0,2,0},
        	{0,  0,0,1,0, 3,0,0,0, 0,0,0,2, 0,2,5,0, 0,0,0,0},
        	{0,  0,0,3,0, 0,3,0,0, 2,0,0,2, 0,0,5,0, 0,5,0,4}
        
        };
        // Calculating Average Rating for each item
        for(i=1; i<=R-1; i++){
            int sum = 0;
            int count = 0;
            float avg;

            for (j=1; j<=C-1; j++){
                sum = sum + data[i][j];
                if(data[i][j] != 0){
                    count = count + 1;
                }
            }
            //System.out.println("Count : " + count);
           // System.out.println("Sum :" + sum);


            if(count == 0){
                avg = count;
            }else {
                avg = (float) sum / (float)count;
            }

            AVG[i] = avg;
        }// end of average calculation


        // data normalization
        float[][] norDatas = new float[R][C];
        for(i=1; i<=R-1; i++){
           for(j=1; j<=C-1; j++){
               if(data[i][j] == 0){
                   norDatas[i][j] = 0.0f;
               }else {
                   norDatas[i][j] = data[i][j] - AVG[i];
               }
           }
        } // end of data normalization
        
        
//        // for printing the Normalized Data
//        for (i=1;i<=6;i++){
//            for (j=1;j<=12; j++){
//                System.out.print(norDatas[i][j] + " ");
//            }
//            System.out.println();
//        }


        
        
        // Calculates Similarity among a item(i) and items(j)
        for (i=1; i<=R-1; i++){
            for(j=1; j<=R-1; j++){
                float a = 0.0f, b = 0.0f, c = 0.0f;
                for(n=1; n<=C-1; n++){
                    a = a + (norDatas[i][n]* norDatas[j][n]); // Multiplies a item(i) and items(j) and, Adds for each user data from Normalized data set
                    b = b +  norDatas[i][n] * norDatas[i][n]; // Squares a item(i) for each user data, and Adds from Normalized data
                    c = c + norDatas[j][n] * norDatas[j][n];  // Squares items(j)  for each user data, and Adds from Normalized data
                }

                float A = 0.0f, B= 0.0f, C= 0.0f;

                A = a; // Assigns var 'a' to var 'A'
                B = (float) Math.sqrt(b); // Square root of Added data of var 'a'
                C = (float) Math.sqrt(c); // Square root of Added data of var 'b'

                //System.out.print( A + " ");

                SIM[i][j] = A/(B*C); // Inserts similarity values between ith item against jth items from 1 to 6
                //System.out.print(SIM[i][j] + " ");

            }
            //System.out.println();
        }

        
        // Filters 'SIM' similarity values with the most similar values and others are treated as 0.0 
        for (i=1; i<=R-1; i++){
            for (j=1; j<=R-1; j++){

                if(SIM[i][j] <1 && SIM[i][j] >0){ // Check condition for Most Similar ones
                    SIM_SET[i][j] = SIM[i][j];
                }
                //System.out.print(SIM[i][j] + " ");
            }
            //System.out.println();
        }


       /* // Prints the set of most similar items to item(i) if 0.0 this is not an item
        for (i=1; i<=6; i++){
            for (j=1; j<=6; j++){
                System.out.print(SIM_SET[i][j] + "            ");
            }

            System.out.println();
        }*/


        // Predicts the rating for user(n) in items(i)
        for(n=1; n<=C-1; n++){         // n = users
            for(i=1; i<=R-1; i++){      // i = items
                float a=0.0f, b=0.0f;
                if(data[i][n] == 0){

                    for (j=1; j<=R-1; j++){            // j = similar set of items
                        if(SIM_SET[i][j] != 0.0f){   // Skips element on Similar Set 'SIM_SET' having 0.0f values

                            a = a + (data[j][n]* SIM_SET[i][j]); // Multiplies [a item(i) user(n)] & Similarity Value for that item(i) And Adds
                            b = b + SIM_SET[i][j];
                        }

                    }
                }

                PRE_DIC[n][i] = a/b;
               // System.out.print(PRE_DIC[n][i] + "                   ");

            }
           // System.out.println("\n");
        }

        
        // print predicted value for user n
        for (n=1; n<=C-1; n++){
            int[] items = new int[R];
            int count = 1;
            for (i=1; i<=R-1; i++){
                if(PRE_DIC[n][i] != NaN && PRE_DIC[n][i] > 0.0f){ // Checks condition for predicted value having NaN and 0.0f
                    items[count] = i;
                    count++;
                    
                 PRE_DIC_SET[n][i] = i;
                    
                }else {
                	items[count] = 0;

                	count++;
                }
               // System.out.print(items[i]);

              //  System.out.print(PRE_DIC_SET[n][i] + "            ");
            }
           // System.out.println();
        }
       





    }


}



