
class Calculation {
  
  String result = "";
  
  Calculation(){
  }

    int add(int a, int b) {
        int answer = a+b;
        return answer;          
    }

    void calculate(String value){
           String finalCalculation = result; 
           
      if (finalCalculation.contains("+")){;
        value = "";
      }
        
      if (value == "Del"){
        value = "";
        if (result.length() >0){
            finalCalculation=finalCalculation.substring(0, finalCalculation.length()-1);
            //println(output);
        }
      }
      
      if (value == "R") {
       value = "";
        finalCalculation = "";        
      }
    
     
        if (value == "=") {
       String numbers = finalCalculation;
        if (numbers.contains("+")); {
          String[] nums = split(numbers, '+'); //split the string using "+"
            int one = Integer.parseInt(nums[0]); //parse from string to integer
            int two = Integer.parseInt(nums[1]); 
             
            int answer = add(one, two);
            finalCalculation = answer + "";
        } 
     }
         
    
      
      
    //String[] result = splitTokens(value);
    //println(result);
        
    finalCalculation = finalCalculation + value;
    result = finalCalculation;
}   
  
   
    
    //method to return button character when mouse is pressed
    String showResult(){
      return result;
    }
  }
 
 
 
