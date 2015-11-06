
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
           
      if( (finalCalculation.contains("+") || finalCalculation.contains("-") || finalCalculation.contains("*") || finalCalculation.contains("/")) && 
        (value == "+" || value == "-" || value == "*" || value == "/")  ){
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
       //String numbers = finalCalculation;
        if (finalCalculation.contains("+")); {
          String[] nums = split(finalCalculation, '+'); //split the string using "+"
            int one = Integer.parseInt(nums[0]); //parse from string to integer
            int two = Integer.parseInt(nums[1]); 
             
        //    int answer = add(one, two);
            finalCalculation = add(one,two) + "";
        } 
        value = "";
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
 
 
 
